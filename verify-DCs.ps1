# Verify domain controllers
Get-ADDomainController -Filter * -Server my-company.net | Select-Object Name, IPv4Address, Site
