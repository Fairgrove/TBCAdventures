--NAMESPACE
-------------------------------------
local _, core = ...; -- Namespace
local nodeDB = core.nodeDB.nodeData

--Debug Stuff
-------------------------------------
debug = true

--Actual Code
-------------------------------------


--Tooltip Creation
-------------------------------------
--these will be functions in the future, give it a sting and it makes it that color
local completedColor = "|cff90EE90" 
local whiteColor = "|cffffffff"

local function genItemText(items)
    local str ="Items Needed:\n"
            
    for i in pairs(items) do
        local itemName = items[i][1]
        local itemCount = GetItemCount(items[i][1])
        local itemReq = items[i][2]
        if itemCount >= itemReq then
            if itemReq == 1 then
                str = str .. "|cffffffff - |r|cff90EE90" .. itemName .. "|r\n"
            else
                str = str .. "|cffffffff - |r|cff90EE90" .. itemName .. " " .. itemCount .. "/" .. itemReq .. "|r\n"
            end
        else
            if itemReq == 1 then
                str = str .. "|cffffffff - " .. itemName .. "|r\n"
            else
                str = str .. "|cffffffff - " .. itemName .. " " .. itemCount .. "/" .. itemReq .. "|r\n"
            end
        end
    end
    return str
end

local function genQuestText(questIDs)
    local str ="Quest Requirements:\n"
    
    for i in pairs(questIDs) do
        if C_QuestLog.IsQuestFlaggedCompleted(questIDs[i]) then
            str = str .. "|cffffffff - |r|cff90EE90" .. C_QuestLog.GetTitleForQuestID(questIDs[i]) .. "|r\n"
        else
            str = str .. "|cffffffff - " .. C_QuestLog.GetTitleForQuestID(questIDs[i]) .. "|r\n"
        end
    end
    return str
end

local function genRepText(reps)
    --if hasRep or not isHeader then
    local str ="Reputations Needed:\n"
    
    for i in pairs(reps) do
        local name, _, standing= GetFactionInfoByID(reps[i][1])
        local repReq = reps[i][2]
        if standing >= repReq then
            str = str .. "|cffffffff - |r|cff90EE90" .. getglobal("FACTION_STANDING_LABEL" .. repReq) .. " with " .. name .. "|r\n"
        else
            str = str .. "|cffffffff - " .. getglobal("FACTION_STANDING_LABEL" .. repReq) .. " with " .. name .. "|r\n"
        end
    end
    return str
end

local function createTooltip(tooltipData)
    local str = "|cffff00ff" .. tooltipData['titleText'] .."|r\n"

    for key, objective in pairs(tooltipData['objectives']) do
        if key == 'item' then
            str = str .. genItemText(objective)
        end
        
        if key == 'quest' then
            str = str .. genQuestText(objective)
        end
        
        if key == 'reputation' then
            str = str .. genRepText(objective)
        end
        
        -- if key == 'bosskill' then
        --     str = str .. "Bosses Killed:\n"
        -- end
        
        
    end
    
    return str
end

local function CreateSubFrame(self, node)
    local f = CreateFrame("Button", "$parent_NODE"..#self.SubFrames+1, self)
    
    local iconDownscale = 19
    f:SetSize(100, 100)

    --icon
    f.Icon = f:CreateTexture(nil, "ARTWORK", nil, 1)
    --same as set SetAllPoints() this just resises the texture
    f.Icon:SetPoint("TOPLEFT", f ,"TOPLEFT", iconDownscale, -iconDownscale)  
    f.Icon:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -iconDownscale, iconDownscale)
    f.Icon:SetTexture(node['textures']['icon'])
    f.Icon:SetVertexColor(1, 1, 1, 1)

    --glow
    f.Glow = f:CreateTexture(nil, "ARTWORK", nil, 2)
    f.Glow:SetPoint("TOPLEFT", f ,"TOPLEFT", iconDownscale, -iconDownscale)
    f.Glow:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -iconDownscale, iconDownscale)
    f.Glow:SetTexture(node['textures']['glow'])
    f.Glow:SetVertexColor(0, 0, 0, 0)

    -- ring
    f.texture = f:CreateTexture(nil, "ARTWORK", nil, 3)
    f.texture:SetAllPoints()
    f.texture:SetTexture(node['textures']['ring'])
    f.texture:SetVertexColor(1, 1, 1, 1)
    
    --this could be used for ranks???? 
    --like for getting honored with Keepers of time, each rep rank is a rank on the node
    --also get a litte square arround the numbers
    --also get a bit more creative with the design, dont just copy artifact UI :)
    -- f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    -- f.text:SetPoint("CENTER")
    -- f.text:SetText(f:GetName())

    f:SetPoint("CENTER", node['x'], node['y'])
    
    --On mouseover
    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -25, 25);
        GameTooltip:SetText(createTooltip(node['tooltip']))
        GameTooltip:Show()
        f.Glow:SetVertexColor(0.5, 0.5, 0.5, 1)
    end)
    
    --On Mouseover leave
    f:SetScript("OnLeave", function(self)
        f.Glow:SetVertexColor(0, 0, 0, 0)
        GameTooltip:Hide()
    end)
    
    --On Click
    f:SetScript("OnClick", function(self)
        if debug then print("Clicked: " .. f:GetName()) end
    end)
    return f
end

local UI = CreateFrame("Frame", "Adventure_UI", UIParent, "BasicFrameTemplateWithInset")
UI:SetSize(1000, 800) --x, y
UI:SetPoint("CENTER", UIParent, "CENTER")
UI.SubFrames = {}

UI.title = UI:CreateFontString(nil, "OVERLAY")
UI.title:SetFontObject("GameFontHighlight")
UI.title:SetPoint("TOP", 0, -5)
UI.title:SetText("Adventure Guide")

for i= 1, 1 do
    tinsert(UI.SubFrames, CreateSubFrame(UI, nodeDB[0]))
end

-- for debugging
if debug then
    local DebugFrame = CreateFrame("Button", nil, UIParent)
    DebugFrame:SetSize(100, 100)
    DebugFrame:SetPoint("CENTER", UIParent, "CENTER", -800, 0)

    DebugFrame.Icon = DebugFrame:CreateTexture(nil, "ARTWORK", nil, 1)
    DebugFrame.Icon:SetAllPoints()
    DebugFrame.Icon:SetTexture("interface/icons/inv_mushroom_11")
    
    DebugFrame:SetScript("OnClick", function(self)
        UI:Show()
    end)
else
    UI:Hide()
end

-- this has to be at the end of the code, idk why.
-- tinsert(UISpecialFrames, UI:GetName())
-- UI:SetScript("OnEscapePressed", function()
--     UI:Hide()
-- end)