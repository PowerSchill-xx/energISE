





$PSISE.CurrentPowerShellTab.AddOnsMenu.Submenus.Clear() 
$Edit = $PSISE.CurrentPowerShellTab.AddOnsMenu.Submenus.Add('Edit',$Null,$Null) 
$Edit.Submenus.Add("Block Comment", {Add-BlockComment},"ALT+F5") | Out-Null
$Edit.Submenus.Add("Remove Comment", {Remove-BlockComment},"ALT+F6") | Out-Null
