local function onStringCmd(stringCmd)
    if stringCmd:Get():gsub("%s+", "") == "give_community_sparkle_luger" then -- enter this to the console
        local lugerItemDefinition = itemschema.GetItemDefinitionByID(160)
        createdItem = inventory.CreateFakeItem(lugerItemDefinition, 0, -1, 3, 0, 50, true) -- edit for the effects ect ect
        createdItem:SetAttribute("attach particle effect", 4)
        stringCmd:Set(string.format("echo Added %s with item ID %i to inventory slot %i.", createdItem:GetName(), createdItem:GetItemID(), createdItem:GetInventoryPosition()))
    end
end
 
callbacks.Register("SendStringCmd", "hook", onStringCmd)
