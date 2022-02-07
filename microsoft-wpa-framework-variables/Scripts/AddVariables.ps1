Param(     
    [Parameter(Mandatory=$True)]
    [string] $FilePath
)
$url = $FilePath + "\microsoft-wpa-framework-variables\Data\Variables.json"
$PAT1 = ${env:DEVOPS_USER_PAT} #Destination Personal Access Token
$ORG = ${env:DEVOPS_ORG}
$PROJECT = ${env:DEVOPS_PROJECT}
#$VARIABLE_GROUP_NAME = ${env:DEVOPS_VARIABLE_GROUP_NAME}
$VARIABLE_GROUP_NAME = "WPA-Var-Grp"
Write-Output $ORG
Write-Output $PROJECT
$base64AuthInfo1 = [System.Convert]::ToBase64String([System.Text.Encoding]::ASCII.GetBytes(":$($PAT1)"))
$destUrl = "https://dev.azure.com/$ORG/$PROJECT/_apis/distributedtask/variablegroups?api-version=5.1-preview.1"
$body = Get-Content $url| out-string
$body = $body.replace("<Variable_Group_Name>",$VARIABLE_GROUP_NAME)
Invoke-RestMethod -Uri $destUrl -Headers @{Authorization = "Basic {0}" -f $base64AuthInfo1} -ContentType "application/json"  -Method post -Body $body