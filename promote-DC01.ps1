# Promote dc01 as the first domain controller
Invoke-Command -ComputerName dc01 -ScriptBlock {
    Import-Module ADDSDeployment
    Install-ADDSForest `
        -DomainName "my-company.net" `
        -DomainNetbiosName "MY-COMPANY" `
        -DomainMode "7" `
        -ForestMode "7" `
        -DatabasePath "C:\Windows\NTDS" `
        -LogPath "C:\Windows\NTDS" `
        -SysvolPath "C:\Windows\SYSVOL" `
        -SafeModeAdministratorPassword (ConvertTo-SecureString "P@ssw0rd" -AsPlainText -Force) `
        -Force
}
