
local _, Peddler = ...

local frame = CreateFrame("Frame", nil, InterfaceOptionsFramePanelContainer)
frame.name = "Peddler"
frame:Hide()

frame:SetScript("OnShow", function(self)
	self:CreateOptions()
	self:SetScript("OnShow", nil)
end)

local function createCheckBox(parent, anchor, number, property, label, tooltip)
	local checkbox = CreateFrame("CheckButton", "PeddlerCheckBox" .. number, parent, "ChatConfigCheckButtonTemplate")
	checkbox:SetPoint("TOPLEFT", anchor, "BOTTOMLEFT", 16, number * -26)

	local checkboxLabel = _G[checkbox:GetName() .. "Text"]
	checkboxLabel:SetText(label)
	checkboxLabel:SetPoint("TOPLEFT", checkbox, "RIGHT", 5, 7)

	checkbox.tooltip = tooltip
	checkbox:SetChecked(property)

	return checkbox
end

local function changeModifierKey(self)
	UIDropDownMenu_SetSelectedID(ModifierKeyDropDown, self:GetID())
	ModifierKey = self.value
end

local function initModifierKeys(self, level)
	local modifierKeys = {"CTRL", "ALT", "SHIFT", "CTRL-SHIFT", "CTRL-ALT", "ALT-SHIFT"}
	for index, modifierKey in pairs(modifierKeys) do
		local modifierKeyOption = UIDropDownMenu_CreateInfo()
		modifierKeyOption.text = modifierKey
		modifierKeyOption.value = modifierKey
		modifierKeyOption.func = changeModifierKey
		UIDropDownMenu_AddButton(modifierKeyOption)

		if modifierKey == ModifierKey then
			UIDropDownMenu_SetSelectedID(ModifierKeyDropDown, index)
		end
	end
end

local function changeIconPlacement(self)
	UIDropDownMenu_SetSelectedID(IconPlacementDropDown, self:GetID())
	IconPlacement = self.value
end

local function initIconPlacement(self, level)
	local iconPlacements = {"TOPLEFT", "TOPRIGHT", "BOTTOMLEFT", "BOTTOMRIGHT"}
	for index, iconPlacement in pairs(iconPlacements) do
		local iconPlacementOption = UIDropDownMenu_CreateInfo()
		iconPlacementOption.text = iconPlacement
		iconPlacementOption.value = iconPlacement
		iconPlacementOption.func = changeIconPlacement
		UIDropDownMenu_AddButton(iconPlacementOption)

		if iconPlacement == IconPlacement then
			UIDropDownMenu_SetSelectedID(IconPlacementDropDown, index)
		end
	end
end

function frame:CreateOptions()
	local title = self:CreateFontString(nil, nil, "GameFontNormalLarge")
	title:SetPoint("TOPLEFT", 16, -16)
	title:SetText("Peddler v5.0")

	local sellLimit = createCheckBox(self, title, 1, SellLimit, "少量售卖", "“限制一次性出售的物品数量，这样你就可以买回所有的物品。.")
	sellLimit:SetScript("PostClick", function(self, button, down)
		SellLimit = self:GetChecked()
	end)

	local silentMode = createCheckBox(self, title, 2, Silent, "售卖总结", "在聊天输出关于价格和出售物品的信息。.")
	silentMode:SetScript("PostClick", function(self, button, down)
		Silent = self:GetChecked()
	end)

	local silenceSaleSummary = createCheckBox(self, title, 3, SilenceSaleSummary, "关闭销售总结", "关闭销售总结.")
	silenceSaleSummary:SetScript("PostClick", function(self, button, down)
		SilenceSaleSummary = self:GetChecked()
	end)
	silenceSaleSummary:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 190, 2 * -26)

	local modifierKeyLabel = self:CreateFontString(nil, nil, "GameFontNormal")
	modifierKeyLabel:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 16, -90)
	modifierKeyLabel:SetText("快捷键 (与右键单击一起使用来标记/不标记项目):")

	local modifierKey = CreateFrame("Button", "ModifierKeyDropDown", self, "UIDropDownMenuTemplate")
	modifierKey:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 16, -107)
	UIDropDownMenu_Initialize(ModifierKeyDropDown, initModifierKeys)
	UIDropDownMenu_SetWidth(ModifierKeyDropDown, 90);
	UIDropDownMenu_SetButtonWidth(ModifierKeyDropDown, 90)

	local iconPlacementLabel = self:CreateFontString(nil, nil, "GameFontNormal")
	iconPlacementLabel:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 16, -150)
	iconPlacementLabel:SetText("Icon Placement (the corner the coins icon should appear in - please reload to apply changes):")

	local iconPlacement = CreateFrame("Button", "IconPlacementDropDown", self, "UIDropDownMenuTemplate")
	iconPlacement:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 16, -167)
	UIDropDownMenu_Initialize(IconPlacementDropDown, initIconPlacement)
	UIDropDownMenu_SetWidth(IconPlacementDropDown, 110);
	UIDropDownMenu_SetButtonWidth(IconPlacementDropDown, 110);

	local autoSellLabel = self:CreateFontString(nil, nil, "GameFontNormal")
	autoSellLabel:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 16, -210)
	autoSellLabel:SetText("自动卖...")

	local autoSellSoulboundOnly = createCheckBox(self, title, 8, SoulboundOnly, "灵魂绑定的物品", "只允许小贩自动标记灵魂绑定物品出售(自然不限制灰色物品)机翻的不太懂啥意思.")
	autoSellSoulboundOnly:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 120, -205)
	autoSellSoulboundOnly:SetScript("PostClick", function(self, button, down)
		SoulboundOnly = self:GetChecked()
		Peddler.markWares()
	end)

	local autoSellGreyItems = createCheckBox(self, title, 9, AutoSellGreyItems, "垃圾", "“自动出售所有灰色/垃圾物品。.")
	autoSellGreyItems:SetScript("PostClick", function(self, button, down)
		AutoSellGreyItems = self:GetChecked()
		Peddler.markWares()
	end)

	local autoSellWhiteItems = createCheckBox(self, title, 10, AutoSellWhiteItems, "普通的", "自动出售所有白色/普通物品.")
	autoSellWhiteItems:SetScript("PostClick", function(self, button, down)
		AutoSellWhiteItems = self:GetChecked()
		Peddler.markWares()
	end)

	local autoSellGreenItems = createCheckBox(self, title, 11, AutoSellGreenItems, "优秀的", "自动出售所有绿色/不常见物品.")
	autoSellGreenItems:SetScript("PostClick", function(self, button, down)
		AutoSellGreenItems = self:GetChecked()
		Peddler.markWares()
	end)

	local autoSellBlueItems = createCheckBox(self, title, 12, AutoSellBlueItems, "精良的", "自动出售所有蓝色/稀有物品.")
	autoSellBlueItems:SetScript("PostClick", function(self, button, down)
		AutoSellBlueItems = self:GetChecked()
		Peddler.markWares()
	end)

	local autoSellPurpleItems = createCheckBox(self, title, 13, AutoSellPurpleItems, "史诗的", "“自动出售所有紫色/史诗物品.")
	autoSellPurpleItems:SetScript("PostClick", function(self, button, down)
		AutoSellPurpleItems = self:GetChecked()
		Peddler.markWares()
	end)

	local autoSellUnwantedItems = createCheckBox(self, title, 14, AutoSellUnwantedItems, "不需要的物品", "自动出售你当前职业不需要的所有物品(例如牧师不想要装备，所以所有装备都会被标记).")
	autoSellUnwantedItems:SetScript("PostClick", function(self, button, down)
		AutoSellUnwantedItems = self:GetChecked()
		Peddler.markWares()
	end)

	local clearWaresList = CreateFrame("Button", nil, self, "UIPanelButtonTemplate")
	clearWaresList:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 16, -420)
	clearWaresList:SetWidth(110)
	clearWaresList:SetText("Clear Items List")
	clearWaresList:SetScript("PostClick", function(self, button, down)
		ItemsToSell = {}
		Peddler.markWares()
	end)

	local clearWaresLabel = self:CreateFontString(nil, nil, "GameFontHighlightSmall")
	clearWaresLabel:SetPoint("TOPLEFT", title, "BOTTOMLEFT", 19, -450)
	clearWaresLabel:SetText("Clears the list of items you've manually marked for sale, for this character.")

	self:refresh()
end

InterfaceOptions_AddCategory(frame)

-- Handling Peddler's options.
SLASH_PEDDLER_COMMAND1 = '/peddler'
SlashCmdList['PEDDLER_COMMAND'] = function(command)
	InterfaceOptionsFrame_OpenToCategory('Peddler')
end
