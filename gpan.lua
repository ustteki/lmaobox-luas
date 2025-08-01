local function onStringCmd(stringCmd)
    if stringCmd:Get():gsub("%s+", "") == "give_golden_pan" then --enter this to the command panel
        local itemDef = itemschema.GetItemDefinitionByID(1071) 
        createdItem = inventory.CreateFakeItem(itemDef, 0, -1, 3, 0, 50, true) -- modify this for unusual or anything else
        createdItem:SetAttribute("attach particle effect", 4) 
        stringCmd:Set(string.format("echo Given %s with ID %i in slot %i", createdItem:GetName(), createdItem:GetItemID(), createdItem:GetInventoryPosition()))
    end
end
 
callbacks.Register("SendStringCmd", "hook_golden_pan", onStringCmd)
