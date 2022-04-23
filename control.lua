local function setBar(event)
	local entity = event.created_entity
	if entity.type == "container" or entity.type == "logistic-container" then
		local chest_inv = entity.get_inventory(defines.inventory.chest)
		if chest_inv.supports_bar() then
			chest_inv.set_bar(2)
		end
	end
end

script.on_event(defines.events.on_built_entity, function(event)
	setBar(event)
end)
script.on_event(defines.events.on_robot_built_entity, function(event)
	setBar(event)
end)
