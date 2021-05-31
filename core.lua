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
local _, core = ... -- Namespace
local nodeDB = core.nodeDB.newData
local nodeIDs = core.nodeDB.newIDs

local clusterDB = core.clusterDB.clusters
local clusterIds = core.clusterDB.clusterIDs

--Type, Offset, Size, Color
local nodesomething = {
    {1, 0, 40, {1,1,1}}, --item
    {2, 0, 70, {1,1,0}},-- Raid
    {3, 0, 40, {0.2,0.2,1}}, -- Dungeon
    {4, 0, 40, {0,1,0.5}}, --Reputation
    {5, 0, 40, {0.5,0.5,0.5}}, -- Quest
    {6, 0, 70, {1,0,0}}, -- level 70
    {7, 0, 40, {0,1,0.5}}, -- Bonus Rep
    {8, 0, 40, {1,1,0}}, --Raid
    {9, 0, 40, {1,0,0}},-- Flying
}

--Creating UI Frame
-------------------------------------
local UI = CreateFrame("Frame", "Adventure_UI", UIParent, "BasicFrameTemplate")
UI:SetSize(1100, 900) --x, y
UI:SetFrameStrata("BORDER")
UI:SetPoint("CENTER", UIParent, "CENTER")
UI.nodes = {}
UI.clusters = {}

-- UI.background = UI:CreateTexture(nil, "BACKGROUND", nil, -1)
-- UI.background:SetTexture([[Interface\Addons\TBCAdventures\textures\background3]]) -- [[Interface\Addons\TBCAdventures\textures\background]] "Interface/icons/ability_warrior_savageblow"
-- UI.background:SetTexCoord(0, 1, 0, 0.8)
-- UI.background:SetAllPoints()

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
        local item = Item:CreateFromItemID(tonumber(items[i][1]))
        local itemName = ""
        item:ContinueOnItemLoad(function()
        	itemName = item:GetItemName()
        end)

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
        if C_QuestLog.IsQuestFlaggedCompleted(questIDs[i]) then
            str = str .. "|cffffffff - |r|cff90EE90" .. C_QuestLog.GetQuestInfo(questIDs[i]) .. "|r\n"
        else
            str = str .. "|cffffffff - " .. C_QuestLog.GetQuestInfo(questIDs[i]) .. "|r\n"
        end
    end --C_QuestLog.GetQuestInfo(questIDs[i])
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

local function shakeSreen()
    local SHAKE_DURATION = 0.1
    local SHAKE_FREQUENCY = 0.001
    local SHAKE_DELAY = 0.1
    local MAGNITUDE = 5

    local SHAKE = {}
	for i = 1, math.ceil(SHAKE_DURATION / SHAKE_FREQUENCY) do
		local xVariation, yVariation = RandomFloatInRange(-MAGNITUDE, MAGNITUDE), RandomFloatInRange(-MAGNITUDE, MAGNITUDE)
		SHAKE[i] = { x = xVariation, y = yVariation }
	end

    C_Timer.After(SHAKE_DELAY, function()
        ShakeFrame(UIParent, SHAKE, SHAKE_DURATION, SHAKE_FREQUENCY)
    end)
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
            if C_QuestLog.IsQuestFlaggedCompleted(tonumber(v)) then
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

local function OLD_repCriteria(repList)
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

local function repCriteria(repList)
    --chekc FACTION
    --check if scryer or aldor
    --have horde/ally rep (mag'har/thrallmar  --  Honor Hold/Kurenei)
    --same for aldor/scryer
    if #repList > 0 then
        local counter = 0
        for i in pairs(repList) do
            local name, _, standing= GetFactionInfoByID(repList[i][1])
            local repReq = repList[i][2]

            if standing >= repReq then
                counter = counter + 1
            end
        end
        return counter
    else
        return 0
    end
end

local function getRanks(criteria)
    local counter = 0
    if #criteria['reputation'] > 0 then
        counter = counter + 1
    end

    if criteria['level'] > 0 then
        counter = counter + 1
    end

    if #criteria['spell'] > 0 then
        counter = counter + 1
    end

    if #criteria['item'] > 0 then
        counter = counter + 1
    end

    if #criteria['quest'] > 0 then
        counter = counter + 1
    end

    return counter
end

local function getCompleteStatus(self)
    if self.data['rank'] >= 1 then
        return true
    else
        return false
    end
end

local function getUnlockStatus(self)
    local counter = 0
    if #self.data['preReq'] > 0 then
        for i, ID in pairs(self.data['preReq']) do
            if getCompleteStatus(UI.nodes[ID]) then
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

local function updateAllClusters()
    for i, cluster in pairs(UI.clusters) do
        for j, line in pairs(cluster.lines) do
            if getUnlockStatus(cluster) then
                cluster.data['rank'] = 1
                line:SetColorTexture(0.5,0.5,0.5,1)
                line:SetThickness(10)

                if getCompleteStatus(UI.nodes[line.pointsTo]) then
                    line:SetColorTexture(1,0,0,1)
                    line:SetThickness(5)
                end
            else
                line:SetColorTexture(0.3,0.3,0.3,1)
                line:SetThickness(5)
            end
        end
    end
end

local function updateAllNodes()
    updateAllClusters()
    for i, node in pairs(UI.nodes) do

        -- updateText
        --node.text:SetText(tostring(node.data['rank']) .. "/ 1")

        if #node.data['preReq'] > 0 then
            --if i am completed make all  my lines red
            for j, preReqID in pairs(node.data['preReq']) do
                -- if prereq node is compeleted make line grey
                for k, line in pairs(node.lines) do
                    if line.pointsTo == preReqID then
                        if getCompleteStatus(UI.nodes[preReqID]) then
                            line:SetColorTexture(1,0.5,0.5,1)
                            line:SetThickness(10)
                        else
                        -- elseif preReq node is not completed make line black
                            line:SetColorTexture(0.3,0.3,0.3,1)
                            line:SetThickness(5)
                        end
                    end
                end
            end
            if getCompleteStatus(node) then
                for j, line in pairs(node.lines) do
                    line:SetColorTexture(1,0,0,1)
                    line:SetThickness(5)
                end
            end
        end

        -- updateTexture
        if getUnlockStatus(node) then
            node.Ring:SetVertexColor(node.data['ringColor'][1], node.data['ringColor'][2], node.data['ringColor'][3],1)
            if node:availableRanks() and node.data['rank'] == 0 then
                node.Available:Show()
                node.DesaturateMask:Hide()
            else
                node.Available:Hide()
                node.DesaturateMask:SetVertexColor(0, 0, 0, 0.6)
            end

            if node.data['rank'] == 1 then
                node.DesaturateMask:Hide()
            end

            --node.text:Show()

        else
            node.Available:Hide()
            node.DesaturateMask:Show()
            node.Ring:SetVertexColor(0,0,0,1)
            node.DesaturateMask:SetVertexColor(0, 0, 0, 0.6)
            --node.text:Hide()
        end

    end
end

local function showUI()
    updateAllNodes()
    UI:Show()
end

local function createLines(self, x, y, pointsTo)
    local l = self:CreateLine(nil, 'OVERLAY')
    l.pointsTo = pointsTo
    l:SetColorTexture(0,0,1,1)
    l:SetStartPoint("CENTER",self, x, y)
    l:SetEndPoint("CENTER",self, 0, 0)
    l:SetThickness(10)

    -- l:SetDrawLayer("OVERLAY", 6)
    -- print(l:GetDrawLayer())
    return l
end

local function calcPoint(diameter, circleX, circleY, pointX, pointY)
    local position = {0,0}
    position[1] = circleX + (diameter/2) * ((pointX - circleX)/(math.sqrt((pointX-circleX)^2+(pointY-circleY)^2)))
    position[2] = circleY + (diameter/2) * ((pointY - circleY)/(math.sqrt((pointX-circleX)^2+(pointY-circleY)^2)))

    return position
end

local function createClusterFrame(self, cluster)
    local f = CreateFrame("Frame", "$parent_NODE"..#self.clusters+1, self)

    f.data = {
        ['rank'] = 0,
        ['preReq'] = cluster['preReq'],
    }

    --calculate te position of the cluster my getting the centroid of the node's positions
    local position = {0,0}
    for i, preReq in pairs(cluster['preReq']) do
        local _, _, _, xOfs, yOfs = UI.nodes[preReq]:GetPoint()
        position[1] = position[1] + xOfs
        -- print(position)
        position[2] = position[2] + yOfs

    end
    position[1] = (1/#cluster['preReq']) * position[1]
    position[2] = (1/#cluster['preReq']) * position[2]

    f:SetSize(cluster['size'], cluster['size'])
    f:SetPoint("CENTER", cluster['x'], cluster['y'])

    f.lines = {}
    for i, pointsTo in pairs(cluster['pointsTo']) do
        --calculate the closest point on circle to node
        local _, _, _, xOfs, yOfs = UI.nodes[pointsTo]:GetPoint()
        local point = calcPoint(cluster['size'], cluster['x'], cluster['y'], xOfs, yOfs)

        tinsert(f.lines, createLines(self, point[1], point[2], pointsTo))

    end

    f.Ring = f:CreateTexture(nil, "ARTWORK", nil, 0)
    f.Ring:SetAllPoints()
    f.Ring:SetTexture("interface/Buttons/WHITE8X8") --"Interface/Artifacts/Artifacts-PerkRing-Final-Mask"
    f.Ring:SetVertexColor(1, 1, 1, 1)

    f.mask = f:CreateMaskTexture()
    f.mask:SetAllPoints()
    f.mask:SetTexture("Interface/CHARACTERFRAME/TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
    f.Ring:AddMaskTexture(f.mask)

    return f
end

local function CreateSubFrame(self, node)
    local f = CreateFrame("Button", "$parent_NODE"..#self.nodes+1, self)

    f.data = {
        ['rank'] = 0,
        --['ranks'] = getRanks(node['tooltip']['objectives']), --ranks to mark node as completed
        ['text'] = "",
        ['preReq'] = node['preReq'],
        ['ringColor'] = {nodesomething[node['type']][4][1], nodesomething[node['type']][4][2], nodesomething[node['type']][4][3]}
    }

    f.availableRanks = function (self)
        local a = repCriteria(node['tooltip']['objectives']['reputation'])
        local b = itemCriteria(node['tooltip']['objectives']['item'])
        local c = questCriteria(node['tooltip']['objectives']['quest'])
        local d = levelCriteria(node['tooltip']['objectives']['level'])
        local e = spellCriteria(node['tooltip']['objectives']['spell'])

        local g = a + b + c + d + e
        if g == getRanks(node['tooltip']['objectives']) then
            return true
        else
            return false
        end
    end

    f:SetSize(nodesomething[node['type']][3], nodesomething[node['type']][3])
    f:SetPoint("CENTER", node['x'], node['y'])

    f.lines = {}
    for i, preReqID in pairs(node['preReq']) do
        --check if preReqID is in exception array
        local drawLine = true
        if #node['lineExcept'] > 0 then
            for j, lineExceptID in pairs(node['lineExcept']) do
                if preReqID == lineExceptID then
                    drawLine = false
                end
            end
        end

        if drawLine then
            if (node['type'] == 4 and preReqID == 1) or (node['type'] == 7) then

            else
                tinsert(f.lines, createLines(self, node['x'], node['y'], preReqID))
            end
        end
    end

    -- create subframes of icon
    f.Icon = f:CreateTexture(nil, "ARTWORK", nil, 2)
    f.Icon:SetTexture(node['icon'])
    f.Icon:SetTexCoord(.1, .9, .1, .9)
    f.Icon:SetAllPoints()
    f.Icon:SetVertexColor(1, 1, 1, 1)
    --f.Icon:SetMask("Interface/ChatFrame/UI-ChatIcon-HotS")
    --SetPortraitToTexture(f.Icon, node['icon'])

    f.mask = f:CreateMaskTexture()
    f.mask:SetAllPoints()
    f.mask:SetTexture("Interface/CHARACTERFRAME/TempPortraitAlphaMask", "CLAMPTOBLACKADDITIVE", "CLAMPTOBLACKADDITIVE")
    f.Icon:AddMaskTexture(f.mask)

    f.Glow = f:CreateTexture(nil, "ARTWORK", nil, 5)
    f.Glow:SetTexture("Interface/GLUES/Models/UI_SCOURGE/T_VFX_Glow01_64")
    f.Glow:SetAllPoints()
    f.Glow:SetVertexColor(0, 0, 0, 0)

    ringScale = nodesomething[node['type']][3] * 0.3
    f.Ring = f:CreateTexture(nil, "ARTWORK", nil, 4)
    f.Ring:SetPoint("TOPLEFT", f ,"TOPLEFT", -ringScale, ringScale)
    f.Ring:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", ringScale, -ringScale)
    f.Ring:SetTexture("Interface/Artifacts/Artifacts-PerkRing-Final-Mask") -- [[Interface\Addons\TBCAdventures\textures\ring]]
    f.Ring:SetVertexColor(f.data['ringColor'][1], f.data['ringColor'][2], f.data['ringColor'][3],1)

    f.DesaturateMask = f:CreateTexture(nil, "ARTWORK", nil, 3)
    f.DesaturateMask:SetAllPoints()
    f.DesaturateMask:SetTexture("interface/Buttons/WHITE8X8") --"Interface/GLUES/Models/UI_PandarenCharacterSelect/gradient5Circle"
    f.DesaturateMask:SetVertexColor(0.5, 0.5, 0.5, 0.4)
    f.DesaturateMask:AddMaskTexture(f.mask)

    availScale = nodesomething[node['type']][3] * 0.8
    f.Available = f:CreateTexture(nil, "ARTWORK", nil, 1)
    f.Available:SetPoint("TOPLEFT", f ,"TOPLEFT", -availScale, availScale)
    f.Available:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", availScale, -availScale)
    f.Available:SetTexture("Interface/GLUES/Models/UI_Draenei/GenericGlow64")
    f.Available:SetVertexColor(1, 1, 1, 1)

    -- f.text = f:CreateFontString(nil, "OVERLAY")
    -- f.text:SetFontObject("GameFontHighlight")
    -- f.text:SetPoint("BOTTOM", 0, 0)
    -- f.text:SetText(f.data['text'])

    --On mouseover
    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", 0, 0);
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
            if f.availableRanks() then
                if f.data['rank'] < 1 then
                    f.data['rank'] = 1
                    shakeSreen()
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
    tinsert(UI.nodes, CreateSubFrame(UI, nodeDB[v]))
end

for i, v in pairs(clusterIds) do
    tinsert(UI.clusters, createClusterFrame(UI, clusterDB[v]))
end

--placing lines correctly
for i, node in pairs(UI.nodes) do
    for j, line in pairs(node.lines) do
        local _, relativeTo, _, xOfs, yOfs = UI.nodes[line.pointsTo]:GetPoint()
        line:SetEndPoint("CENTER",relativeTo:GetName(), xOfs, yOfs)
    end
end

for i, cluster in pairs(UI.clusters) do
    for j, line in pairs(cluster.lines) do
        local _, relativeTo, _, xOfs, yOfs = UI.nodes[line.pointsTo]:GetPoint()
        line:SetEndPoint("CENTER",relativeTo:GetName(), xOfs, yOfs)
    end
end

--Commands
-------------------------------------
SLASH_SHOWTBCUI1, SLASH_CLEARTBCDATA1 = '/tbcShow', "/TBCCLEAR"
function SlashCmdList.SHOWTBCUI(msg, editBox) -- 4.
    showUI()
end
function SlashCmdList.CLEARTBCDATA(msg, editBox) -- 4.
    for i, v in pairs(UI.nodes) do
        UI.nodes[i].data['rank'] = 0
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

-- local fra = CreateFrame("Frame")
-- fra:SetPoint("CENTER", 0, 0)
-- fra:SetSize(10,10)
-- local lin = CreateLine()
-- lin:SetColorTexture(1,0,0,1)
-- lin:SetStartPoint("TOPLEFT",10,10)
-- lin:SetEndPoint("BOTTOMRIGHT",10,10)
-- fra:Show()

-- Loading Saved Variables
-------------------------------------

local function loadQuestData(ID)
    C_QuestLog.GetQuestInfo(ID)
end


function QuestUtils_GetQuestName(questID)
	-- TODO: Make unified API for this?
	return C_TaskQuest.GetQuestInfoByQuestID(questID) or C_QuestLog.GetTitleForQuestID(questID) or "";
end


local function loadItemData(ID)
    local item = Item:CreateFromItemID(tonumber(ID))
    local itemName = ""
    item:ContinueOnItemLoad(function()
        itemName = item:GetItemName()
    end)
end

local function loadIDdata()
    for i, v in pairs(nodeIDs) do
        --nodeDB[v]['tooltip']['objectives']['reputation']
        --nodeDB[v]['tooltip']['objectives']['level']
        --nodeDB[v]['tooltip']['objectives']['spell']

        for j, ID in pairs(nodeDB[v]['tooltip']['objectives']['item']) do
            loadItemData(ID[1])
        end

        for j, ID in pairs(nodeDB[v]['tooltip']['objectives']['quest']) do
            loadQuestData(ID)
        end
    end
end

local SavedVariables = CreateFrame("Frame")
SavedVariables:RegisterEvent("PLAYER_LOGOUT")
SavedVariables:RegisterEvent("ADDON_LOADED")
SavedVariables:SetScript("OnEvent", function(self, event, arg1)
    if event == "ADDON_LOADED" and arg1 == "TBCAdventures" then
        loadIDdata()
        if NODE_DATA == nil then
            NODE_DATA = {}
        end
        --debugPrinter(#UI.nodes)
        for i, v in pairs(UI.nodes) do
            if NODE_DATA[i] == nil then
                UI.nodes[i].data['rank'] = 0
            else
                UI.nodes[i].data['rank'] = NODE_DATA[i]
            end
        end

        print(arg1 .. " Loaded")

        UI:Hide()
    end
    if event == "PLAYER_LOGOUT" then
        NODE_DATA = {}
        for i, v in pairs(UI.nodes) do
            NODE_DATA[#NODE_DATA + 1] = UI.nodes[i].data['rank']
        end
    end
end)
