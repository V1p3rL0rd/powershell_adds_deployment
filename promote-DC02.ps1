# Promote dc02 as an additional domain controller
Invoke-Command -ComputerName dc02 -ScriptBlock {
    Import-Module ADDSDeployment
    Install-ADDSDomainController `
        -DomainName "my-company.net" `
        -InstallDns:$true `
        -DatabasePath "C:\Windows\NTDS" `
        -LogPath "C:\Windows\NTDS" `
        -SysvolPath "C:\Windows\SYSVOL" `
        -SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) `
        -Credential (Get-Credential) `
        -Force
}
