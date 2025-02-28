# Verify domain controllers
Get-ADDomainController -Filter * -Server garuda.net | Select-Object Name, IPv4Address, Site
