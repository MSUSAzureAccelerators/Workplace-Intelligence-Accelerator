#Parameters needed by the script .
Param(
    [Parameter(Mandatory=$True)]
    [string] $ResourceGroupName,
    [Parameter(Mandatory=$True)]
    [string] $SyanpseDefaultADLSName,
    [Parameter(Mandatory=$True)]
    [string] $SyanpseDefaultADLSFileSystemName, 
    [Parameter(Mandatory=$True)]
    [string] $SourceADLSContainerName
)

$storageAccount = Get-AzStorageAccount -ResourceGroupName $ResourceGroupName -Name $SyanpseDefaultADLSName
$ctx = $storageAccount.Context

Function Create-StorageContainer($containerName, $ctx)
{
    if(Get-AzStorageContainer -Name $containerName -Context $ctx -ErrorAction SilentlyContinue)  
    {  
        Write-Host $containerName "- container already exists."  
    }  
    else  
    { 
        New-AzStorageContainer -Name $containerName -Context $ctx -Permission off
    }
}

Function Create-FolderInContainer($containerName, $ctx, $folderName)
{
    if(Get-AzDataLakeGen2Item -FileSystem $containerName -Path $folderName -Context $ctx -ErrorAction SilentlyContinue)  
    {  
        Write-Host $folderName "- folder already exists."  
    }  
    else  
    {              
        New-AzDataLakeGen2Item -Context $ctx -FileSystem $containerName -Path $folderName -Directory
    }
}

$containerName = $SourceADLSContainerName
Create-StorageContainer $containerName $ctx

$wpaBlobName = "wpa/"
Create-FolderInContainer $containerName $ctx $wpaBlobName

$wpaBlobName = "wpa_test/"
Create-FolderInContainer $containerName $ctx $wpaBlobName

$containerName = $SyanpseDefaultADLSFileSystemName

$rawBlobName = "raw/"
Create-FolderInContainer $containerName $ctx $rawBlobName

$rawBlobName = "raw_test/"
Create-FolderInContainer $containerName $ctx $rawBlobName

$classificationBlobName = "classification/"
Create-FolderInContainer $containerName $ctx $classificationBlobName