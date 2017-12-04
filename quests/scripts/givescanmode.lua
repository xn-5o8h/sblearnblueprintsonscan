require "/quests/scripts/portraits.lua"

function init()
  setPortraits()
  local currentInspectionTool = player.essentialItem("inspectiontool")
  if not currentInspectionTool or currentInspectionTool.name == "inspectionmode" then
    player.giveEssentialItem("inspectiontool", "scanmode")
    quest.setFailureText("Your Matter Manipulator is now enabled with a scan mode. But, you know, Esther would have enabled it for free. This is a waste of resources for a slight time gain.")
  else
  	quest.setFailureText("Your Matter Manipulator's scan mode was already enabled. This is a waste of resources.")
  end
  quest.fail()
end