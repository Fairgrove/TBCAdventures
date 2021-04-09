--NAMESPACE
-------------------------------------
local _, core = ...; -- Namespace


--Debug Stuff
-------------------------------------
debug = true

--Actual Code
-------------------------------------

local function CreateSubFrame(self, x, y)
    local f = CreateFrame("Button", "$parent_NODE"..#self.SubFrames+1, self)
    
    local iconDownscale = 19
    f:SetSize(100, 100)
    
    f.Icon = f:CreateTexture(nil, "ARTWORK", nil, 1)
    --same as set SetAllPoints() this just resises the texture
    f.Icon:SetPoint("TOPLEFT", f ,"TOPLEFT", iconDownscale, -iconDownscale)  
    f.Icon:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -iconDownscale, iconDownscale)
    f.Icon:SetTexture("interface/icons/inv_mushroom_11")
    f.Icon:SetVertexColor(1, 1, 1, 1)

    f.Glow = f:CreateTexture(nil, "ARTWORK", nil, 2)
    f.Glow:SetPoint("TOPLEFT", f ,"TOPLEFT", iconDownscale, -iconDownscale)
    f.Glow:SetPoint("BOTTOMRIGHT", f ,"BOTTOMRIGHT", -iconDownscale, iconDownscale)
    f.Glow:SetTexture("interface/icons/inv_mushroom_11")
    f.Glow:SetVertexColor(0, 0, 0, 0)

    f.texture = f:CreateTexture(nil, "ARTWORK", nil, 3)
    f.texture:SetAllPoints()
    f.texture:SetTexture("Interface/Artifacts/Artifacts-PerkRing-Final-Mask")
    f.texture:SetVertexColor(1, 1, 1, 1)
    
    --this could be used for ranks???? 
    --like for getting honored with Keepers of time, each rep rank is a rank on the node
    --also get a litte square arround the numbers
    --also get a bit more creative with the design, dont just copy artifact UI :)
    -- f.text = f:CreateFontString(nil, "OVERLAY", "GameFontNormal")
    -- f.text:SetPoint("CENTER")
    -- f.text:SetText(f:GetName())

    f:SetPoint("CENTER", x, y)
    
    --On mouseover
    f:SetScript("OnEnter", function(self)
        GameTooltip:SetOwner(self, "ANCHOR_BOTTOMRIGHT", -25, 25);
        GameTooltip:SetText(self:GetName())
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
        print(core.nodeDB:GetName()) -- name of node
    end)
    return f
end

local UI = CreateFrame("Frame", "Adventure_UI", UIParent, "BasicFrameTemplateWithInset")
UI:SetSize(1000, 800)
UI:SetPoint("CENTER", UIParent, "CENTER")
UI.SubFrames = {}

UI.title = UI:CreateFontString(nil, "OVERLAY")
UI.title:SetFontObject("GameFontHighlight")
UI.title:SetPoint("TOP", 0, -5)
UI.title:SetText("Adventure Guide")

for i= 1, 5 do
    tinsert(UI.SubFrames, CreateSubFrame(UI, math.random(-300, 300), math.random(-300, 300)))
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
tinsert(UISpecialFrames, UI:GetName())
UI:SetScript("OnEscapePressed", function()
    UI:Hide()
end)