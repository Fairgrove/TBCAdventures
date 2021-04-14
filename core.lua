--Debug Stuff
-------------------------------------
debug = true
local function debugPrinter(thing)
    if debug then
        print(thing)
    end
end

--NAMESPACE
-------------------------------------
local _, core = ...; -- Namespace
local nodeDB = core.nodeDB.newData
local nodeIDs = core.nodeDB.newIDs

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
    local str = ""
    if #items > 0 then
        str ="Items Needed:\n"
    end
         
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

local function genLevelText(level)
    if level == 0 then
        return ""
    end
    if UnitLevel("player") >= tonumber(level) then
        return "|cff90EE90Reach Level " .. level .. "|r\n"
    else
        return "|cffffffffReach Level " .. level .. "|r\n"
    end
end

local function genSpellText(spellIDs)
    local str = ""
    if #spellIDs > 0 then
        str ="Skill Requirements:\n"
    end

    for i in pairs(spellIDs) do
        local spell = IsPlayerSpell(spellIDs[i])
        
        if spell then
            str = str .. "|cffffffff - |r|cff90EE90" .. GetSpellInfo(spellIDs[i]) .. "|r\n"
        else
            str = str .. "|cffffffffLearn " .. GetSpellInfo(spellIDs[i]) .. "|r\n"
        end
    end
    return str
end

local function genQuestText(questIDs)
    local str = ""
    if #questIDs > 0 then
        str ="Quest Requirements:\n"
    end

    for i in pairs(questIDs) do
        if IsQuestFlaggedCompleted(questIDs[i]) then
            str = str .. "|cffffffff - |r|cff90EE90" .. C_QuestLog.GetQuestInfo(questIDs[i]) .. "|r\n"
        else
            str = str .. "|cffffffff - " .. C_QuestLog.GetQuestInfo(questIDs[i]) .. "|r\n"
        end
    end
    return str
end

local function genRepText(reps)
    --if hasRep or not isHeader then
    local str = ""
    if #reps > 0 then
        str ="Reputations Needed:\n"
    end

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
        if key == 'level' then
            str = str .. genLevelText(objective)
        end

        if key == 'spell' then
            str = str .. genSpellText(objective)
        end

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

local function levelCriteria(level)
    if level > 0 then
        if UnitLevel("player") >= tonumber(level) then
            return 1
        else
            return 0
        end
    else
        return 0
    end
end

local function spellCriteria(spellIDs)
    if #spellIDs > 0 then
        local counter = 0
        for i, v in pairs(spellIDs) do
            local spell = IsPlayerSpell(v)
            if spell then
                counter = counter + 1
            end
        end
        if counter == #spellIDs then
            return 1
        else
            return 0
        end
    else
        return 0
    end
end

local function questCriteria(questList)
    if #questList > 0 then
        local counter = 0
        for i, v in pairs(questList) do
            if IsQuestFlaggedCompleted(v) then
                counter = counter + 1
            end
        end
        if counter == #questList then
            return 1
        else
            return 0
        end
    else 
        return 0
    end  
end

local function itemCriteria(itemList)
    if #itemList > 0 then
        local counter = 0
        for i in pairs(itemList) do
            local itemName = itemList[i][1]
            local itemCount = GetItemCount(itemList[i][1])
            local itemReq = itemList[i][2]
            if itemCount >= itemReq then
                counter = counter + 1
            end
        end
        if counter == #itemList then
            return 1
        else
            return 0
        end
    else 
        return 0
    end
end

local function repCriteria(repList)
    if #repList > 0 then
        local counter = 0
        local neutral = 4 --standingID for neutal
        for i in pairs(repList) do
            local name, _, standing= GetFactionInfoByID(repList[i][1])
            local repReq = repList[i][2]
            
            if standing >= 4 then
                counter = (repReq - neutral) - (repReq - standing)
            else
                counter = 0
            end
        end
        return counter
    else
        return 0
    end
end

local function getRanks(criteria)
    local ret = 0
    if #criteria['reputation'] > 0 then
        for i in pairs(criteria['reputation']) do
            ret = ret + (criteria['reputation'][i][2] - 4)
        end
    end
    
    if criteria['level'] > 0 then
        ret = ret + 1
    end

    if #criteria['spell'] > 0 then
        ret = ret + 1
    end

    if #criteria['item'] > 0 then
        ret = ret + 1
    end
    
    if #criteria['quest'] > 0 then
        ret = ret + 1
    end
    
    return ret
end

local function getCompleteStatus(self)
    if self.data['rank'] >= self.data['ranks'] then
        return true
    else
        return false
    end
end

local function getUnlockStatus(self)
    local counter = 0
    if #self.data['preReq'] > 0 then
        for i, ID in pairs(self.data['preReq']) do
            if getCompleteStatus(UI.SubFrames[ID]) then
                counter = counter + 1
            end
        end
        if counter >= #self.data['preReq'] then
            return true
        else 
            return false
        end
    else 
        return true
    end
end

local function updateAllNodes()
    for i, node in pairs(UI.SubFrames) do
        
        -- updateText
        node.text:SetText(tostring(node.data['rank']) .. "/" .. tostring(node.data['ranks']))
        
        -- updateTexture
        if getUnlockStatus(node) then
            if node:availableRanks() > 0 then
                node.Available:Show()
            else 
                node.Available:Hide()
            end
            node.DesaturateMask:Hide()
            node.text:Show()
            
        else 
            node.Available:Hide()
            node.DesaturateMask:Show()
            node.text:Hide()
        end

    end
end

local function showUI()
    updateAllNodes()
    UI:Show()
end

local function CreateSubFrame(self, node)
    local f = CreateFrame("Button", "$parent_NODE"..#self.SubFrames+1, self)

    f.data = {
        ['rank'] = 0,
        ['ranks'] = getRanks(node['tooltip']['objectives']), --ranks to mark node as completed
        ['text'] = "",
        ['preReq'] = node['preReq'],
    }
    
    f.availableRanks = function (self)
        local a = repCriteria(node['tooltip']['objectives']['reputation'])
        local b = itemCriteria(node['tooltip']['objectives']['item'])
        local c = questCriteria(node['tooltip']['objectives']['quest'])
        local d = levelCriteria(node['tooltip']['objectives']['level'])
        local e = spellCriteria(node['tooltip']['objectives']['spell'])
        
        return a + b + c + d + e - f.data['rank']
    end,
    
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
    f.Glow:SetTexture("Interface/GLUES/Models/UI_SCOURGE/T_VFX_Glow01_64")
    f.Glow:SetVertexColor(0, 0, 0, 0)

    f.Ring = f:CreateTexture(nil, "ARTWORK", nil, 3)
    f.Ring:SetAllPoints()
    f.Ring:SetTexture("Interface/Artifacts/Artifacts-PerkRing-Final-Mask")
    f.Ring:SetVertexColor(1, 1, 1, 1)
    
    f.DesaturateMask = f:CreateTexture(nil, "ARTWORK", nil, 4)
    f.DesaturateMask:SetAllPoints()
    --f.DesaturateMask:SetPoint("TOPLEFT", f ,"TOPLEFT", 20, -20)
    --f.DesaturateMask:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -20, 20)
    f.DesaturateMask:SetTexture("Interface/GLUES/Models/UI_PandarenCharacterSelect/gradient5Circle") --"Interface/Masks/CircleMaskScalable"
    f.DesaturateMask:SetVertexColor(1, 1, 1, 0.8)

    f.Available = f:CreateTexture(nil, "ARTWORK", nil, 1)
    f.Available:SetAllPoints()
    f.Available:SetTexture("Interface/GLUES/Models/UI_SCOURGE/a")
    f.Available:SetVertexColor(1, 1, 1, 1)

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
        f.Glow:SetVertexColor(1, 1, 1, 0.7)
        
    end)
    
    --On Mouseover leave
    f:SetScript("OnLeave", function(self)
        f.Glow:SetVertexColor(0, 0, 0, 0)
        GameTooltip:Hide()
    end)
    
    --On Click
    f:SetScript("OnClick", function(self)
        if getUnlockStatus(f) then
            if f.availableRanks() > 0 then
                if f.data['rank'] < f.data['ranks'] then
                    f.data['rank'] = f.data['rank'] + 1
                    updateAllNodes()
                end
            end
        end
    end)
    
    return f
end

--Creating Nodes
-------------------------------------
for i, v in pairs(nodeIDs) do
    tinsert(UI.SubFrames, CreateSubFrame(UI, nodeDB[v]))
end

--Commands
-------------------------------------
SLASH_SHOWTBCUI1, SLASH_CLEARTBCDATA1 = '/tbcShow', "/TBCCLEAR"
function SlashCmdList.SHOWTBCUI(msg, editBox) -- 4.
    showUI()
end
function SlashCmdList.CLEARTBCDATA(msg, editBox) -- 4.
    for i, v in pairs(UI.SubFrames) do
        UI.SubFrames[i].data['rank'] = 0
    end
   
end


-- Event Tracing
-------------------------------------
local function OnEvent(self, event, ...)
    updateAllNodes()

    --show graphical message that new nodes are available
end

local eventTrace = CreateFrame("Frame")
eventTrace:RegisterEvent("CHAT_MSG_COMBAT_FACTION_CHANGE")
eventTrace:RegisterEvent("QUEST_COMPLETE")
eventTrace:RegisterEvent("BAG_UPDATE")
eventTrace:RegisterEvent("PLAYER_LEVEL_UP")
eventTrace:RegisterEvent("LEARNED_SPELL_IN_TAB")
eventTrace:SetScript("OnEvent", OnEvent)


-- Loading Saved Variables
-------------------------------------
local SavedVariables = CreateFrame("Frame")
SavedVariables:RegisterEvent("PLAYER_LOGOUT")
SavedVariables:RegisterEvent("ADDON_LOADED")
SavedVariables:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "TBCAdventures" then
        
        if NODE_DATA == nil then
            NODE_DATA = {}
        end  
        debugPrinter(#UI.SubFrames)
        for i, v in pairs(UI.SubFrames) do
            if NODE_DATA[i] == nil then
                UI.SubFrames[i].data['rank'] = 0
            else
                UI.SubFrames[i].data['rank'] = NODE_DATA[i]
            end  
        end
        
        print(arg1 .. " Loaded")

        UI:Hide()
    end
    if event == "PLAYER_LOGOUT" then
        NODE_DATA = {}
        for i, v in pairs(UI.SubFrames) do
            NODE_DATA[#NODE_DATA + 1] = UI.SubFrames[i].data['rank']
        end
    end
end)