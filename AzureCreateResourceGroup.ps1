Logout-AzureRMAccount
Login-AzureRmAccount
Get-AzureRMLocation
$ResourceGroupName = 'rgdevops2'
$ResourceGroupLocation = 'Central US'
New-AzureRMResourceGroup -Name $ResourceGroupName -Location $ResourceGroupLocation

Test-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroupName -TemplateFile AzureDeploy1.json -Verbose
New-AzureRmResourceGroupDeployment -ResourceGroupName $ResourceGroupName -TemplateFile AzureDeploy1.json -Verbose