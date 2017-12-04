function init()
	message.setHandler("objectScanned", function(...) onObjectScanned(...) end)
	script.setUpdateDelta(100)
end

function onObjectScanned(message, isLocal, objectName)
	if objectName and root.recipesForItem(objectName)[1] then player.giveBlueprint(objectName) end
end