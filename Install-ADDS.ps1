# Install AD DS on dc01
Invoke-Command -ComputerName dc01 -ScriptBlock {
    Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
}

# Install AD DS on dc02
Invoke-Command -ComputerName dc02 -ScriptBlock {
    Install-WindowsFeature -Name AD-Domain-Services -IncludeManagementTools
}
