#Parameters needed by the script.
Param(     
    [Parameter(Mandatory=$True)]
    [string] $FilePath,
    [Parameter(Mandatory=$True)]
    [string] $SyanpseDefaultADLSName,
    [Parameter(Mandatory=$True)]
    [string] $SyanpseDefaultADLSFileSystemName,
    [Parameter(Mandatory=$True)]
    [string] $MasterKeyPassword
)

$fullPath = $FilePath + "\microsoft-wpa-framework-code\SQLPoolObjects\SqlPoolDB\*.sql"
$filesToUpdate = Get-ChildItem -Path $fullPath -Recurse -Force
Write-Host "Retrieved sql scripts from source directory."
foreach ($file in $filesToUpdate)
{
    (Get-Content -Path $file.PSPath) | Foreach-Object -Process { $_ -replace "<SyanpseDefaultADLSName_Param>", $SyanpseDefaultADLSName } | Set-Content -Path $file.PSPath
    (Get-Content -Path $file.PSPath) | Foreach-Object -Process { $_ -replace "<SyanpseDefaultADLSFileSystemName_Param>", $SyanpseDefaultADLSFileSystemName } | Set-Content -Path $file.PSPath
    (Get-Content -Path $file.PSPath) | Foreach-Object -Process { $_ -replace "<masterKeyPassword>", $MasterKeyPassword } | Set-Content -Path $file.PSPath
}