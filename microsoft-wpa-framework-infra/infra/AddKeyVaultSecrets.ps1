#Parameters needed by the script.
Param(     
    [Parameter(Mandatory=$True)]
    [string] $KeyVaultName,
    [Parameter(Mandatory=$True)]
    [string] $MetadataSqlServerName,
    [Parameter(Mandatory=$True)]
    [string] $MetadataAdministratorLogin,
    [Parameter(Mandatory=$True)]
    [string] $MetadataAdministratorLoginPassword,
    [Parameter(Mandatory=$True)]
    [string] $SqlPoolName,
    [Parameter(Mandatory=$True)]
    [string] $SynapseSqlAdministratorLogin,
    [Parameter(Mandatory=$True)]
    [string] $SynapseSqlAdministratorLoginPassword,
    [Parameter(Mandatory=$True)]
    [string] $MasterKeyPassword
)

#Function main method
Function Provision-KeyVault-Secrets {

    $context = Get-AzContext;

    $objectId = $Context.Account.Id;

    Set-AzKeyVaultAccessPolicy -VaultName $KeyVaultName -ServicePrincipalName $objectId -PermissionsToSecrets Get,Set;

    Create-KeyVaultSecret $MetadataSqlServerName $KeyVaultName "MetadataSqlServerName";

    Create-KeyVaultSecret $MetadataAdministratorLogin $KeyVaultName "MetadataAdministratorLogin";

    Create-KeyVaultSecret $MetadataAdministratorLoginPassword $KeyVaultName "MetadataAdministratorLoginPassword";

    Create-KeyVaultSecret $SqlPoolName $KeyVaultName "SqlPoolServerName";

    Create-KeyVaultSecret $SynapseSqlAdministratorLogin $KeyVaultName "SynapseSqlAdministratorLogin";

    Create-KeyVaultSecret $SynapseSqlAdministratorLoginPassword $KeyVaultName "SynapseSqlAdministratorLoginPassword";

    Create-KeyVaultSecret $MasterKeyPassword $KeyVaultName "MasterKeyPassword";
}

# Function to add key vault secret.
Function Create-KeyVaultSecret($valueToStore, $vaultName, $secretName) {     
    $secretvalue = ConvertTo-SecureString $valueToStore -AsPlainText -Force  
    $secret = Set-AzKeyVaultSecret -VaultName $vaultName -Name $secretName -SecretValue $secretvalue
    Write-Host "Added Key Vault secret [$secretName]."
    return $secret
}

Provision-KeyVault-Secrets;