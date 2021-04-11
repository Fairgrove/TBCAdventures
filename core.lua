--Debug Stuff
-------------------------------------
debug = true

--NAMESPACE
-------------------------------------
local _, core = ...; -- Namespace
local nodeDB = core.nodeDB.nodeData
local nodeIDs = core.nodeDB.debugNodeIDs
-- if debug then
--     local nodeIDs = 
-- else
--     local nodeIDs = core.nodeDB.nodeIDs
-- end


--Creating UI Frame
-------------------------------------
local UI = CreateFrame("Frame", "Adventure_UI", UIParent, "BasicFrameTemplateWithInset")
UI:SetSize(1000, 800) --x, y
UI:SetPoint("CENTER", UIParent, "CENTER")
UI.SubFrames = {}

UI.title = UI:CreateFontString(nil, "OVERLAY")
UI.title:SetFontObject("GameFontHighlight")
UI.title:SetPoint("TOP", 0, -5)
UI.title:SetText("Adventure Guide")

--Tooltip Creation
-------------------------------------
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
        
        --NYI
        -- if key == 'bosskill' then
        --     str = str .. "Bosses Killed:\n"
        -- end
        
        
    end
    
    return str
end



local function updateNodes()
    for i, er in pairs(UI.SubFrames) do
        --save rank
            -- import from savedVariables for character name
        
        -- updateUnlockedStatus 
        local counter = 0 -- counter for counting # reqs are completed
        for j, v in pairs(UI.SubFrames[i].data['preReqs']) do --iterate prereqs for current node
            if v == -1 then -- prereq = -1 means no prereqs
                counter = counter + 1
            else
                if UI.SubFrames[v].data['completed'] == true then --v = prereqid, if prereqid = completed counter++
                    counter = counter + 1
                end
            end
        end
        if counter == #UI.SubFrames[i].data['preReqs'] then 
            UI.SubFrames[i].data['unlocked'] = true
        end

        -- updateText
        UI.SubFrames[i].text:SetText(tostring(UI.SubFrames[i].data['rank']) .. "/" .. tostring(UI.SubFrames[i].data['ranks']))

        -- updateTexture
        if UI.SubFrames[i].data['unlocked'] then
            UI.SubFrames[i].DesaturateMask:Hide()
            UI.SubFrames[i].text:Show()
            UI.SubFrames[i].Availabe:Show()
        else 
            UI.SubFrames[i].DesaturateMask:Show()
            UI.SubFrames[i].text:Hide()
            UI.SubFrames[i].Availabe:Hide()
        end
    end
end

local function CreateSubFrame(self, node)
    local f = CreateFrame("Button", "$parent_NODE"..#self.SubFrames+1, self)
    
    f.data = {
        ['rank'] = 0,
        ['ranks'] = node['ranks'][1],
        ['maxRank'] = node['ranks'][2],
        ['text'] = "",
        ['preReqs'] = node['preReqs'],
        ['unlocked'] = false,
        ['completed'] = false,
    }

    f:SetSize(100, 100)

    f.Icon = f:CreateTexture(nil, "ARTWORK", nil, 2)
    --same as set SetAllPoints() this just resises the texture
    f.Icon:SetPoint("TOPLEFT", f ,"TOPLEFT", 19, -19)  
    f.Icon:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -19, 19)
    f.Icon:SetTexture(node['icon'])
    f.Icon:SetVertexColor(1, 1, 1, 1)

    f.Glow = f:CreateTexture(nil, "ARTWORK", nil, 5)
    f.Glow:SetPoint("TOPLEFT", f ,"TOPLEFT", 10, -10)
    f.Glow:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -10, 10)
    f.Glow:SetTexture("Interface/Masks/CircleMaskScalable")
    f.Glow:SetVertexColor(0, 0, 0, 0)

    f.Ring = f:CreateTexture(nil, "ARTWORK", nil, 3)
    f.Ring:SetAllPoints()
    f.Ring:SetTexture("Interface/Artifacts/Artifacts-PerkRing-Final-Mask")
    f.Ring:SetVertexColor(1, 1, 1, 1)
    
    f.DesaturateMask = f:CreateTexture(nil, "ARTWORK", nil, 4)
    f.DesaturateMask:SetPoint("TOPLEFT", f ,"TOPLEFT", 20, -20)
    f.DesaturateMask:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -20, 20)
    f.DesaturateMask:SetTexture("Interface/Masks/CircleMaskScalable")
    f.DesaturateMask:SetVertexColor(0, 0, 0, 0.5)

    f.Availabe = f:CreateTexture(nil, "ARTWORK", nil, 1)
    f.Availabe:SetAllPoints()
    f.Availabe:SetTexture("Interface/Masks/CircleMaskScalable")
    f.Availabe:SetVertexColor(1, 1, 1, 1)

    f.text = f:CreateFontString(nil, "OVERLAY")
    f.text:SetFontObject("GameFontHighlight")
    f.text:SetPoint("BOTTOM", 0, 0)
    f.text:SetText(f.data['text'])

    f:SetPoint("CENTER", node['x'], node['y'])
    
    --On mouseover
    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -25, 25);
        GameTooltip:SetText(createTooltip(node['tooltip']))
        GameTooltip:Show()
        f.Glow:SetVertexColor(1, 1, 1, 0.2)
    end)
    
    --On Mouseover leave
    f:SetScript("OnLeave", function(self)
        f.Glow:SetVertexColor(0, 0, 0, 0)
        GameTooltip:Hide()
    end)
    
    --On Click
    f:SetScript("OnClick", function(self)
        if debug then print("Clicked: " .. f:GetName()) end
        
        --if criteria then -- get criteria
        if f.data['unlocked'] then
            if f.data['rank'] < f.data['maxRank'] then
                f.data['rank'] = f.data['rank'] + 1
            end
            if f.data['rank'] >= f.data['ranks'] then
                f.data['completed'] = true
            end
        end
        updateNodes()
    end)
    return f
end

--Creating Nodes
-------------------------------------
for i, v in pairs(nodeIDs) do
    tinsert(UI.SubFrames, CreateSubFrame(UI, nodeDB[v]))
end
updateNodes()

-- for debugging
if debug then
    local DebugFrame = CreateFrame("Button", nil, UIParent)
    DebugFrame:SetSize(100, 100)
    DebugFrame:SetPoint("CENTER", UIParent, "CENTER", -800, 0)

    DebugFrame.Icon = DebugFrame:CreateTexture(nil, "ARTWORK", nil, 1)
    DebugFrame.Icon:SetAllPoints()
    DebugFrame.Icon:SetTexture("interface/icons/inv_mushroom_11")
    
    DebugFrame:SetScript("OnClick", function(self)
        updateNodes()
        UI:Show()
    end)
else
    UI:Hide()
end





-- UI.SubFrames[1]:SetSize(100, 100)

-- this has to be at the end of the code, idk why.
-- tinsert(UISpecialFrames, UI:GetName())
-- UI:SetScript("OnEscapePressed", function()
--     UI:Hide()
-- end)


--this could be used for ranks???? 
    --like for getting honored with Keepers of time, each rep rank is a rank on the node
    --also get a litte square arround the numbers
    --also get a bit more creative with the design, dont just copy artifact UI :)
    -- f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    -- f.text:SetPoint("CENTER")
    -- f.text:SetText(f:GetName())