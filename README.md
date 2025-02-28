# powershell_adds_deployment
Easy and fast installation of AD DS using Powershell
Script launch order:
1) Install-ADDS.ps1
2) Promote-DC01.ps1
3) promote-DC02.ps1
4) verify-DCs.ps1

### Notes:
1. **SafeModeAdministratorPassword**: Replace `"P@ssw0rd"` with a secure password for the Directory Services Restore Mode (DSRM) account.
2. **Credential**: When promoting `dc02`, you will be prompted to enter credentials for a domain administrator account.
3. **DNS**: Ensure that DNS is properly configured and that both servers can resolve each other's names.
4. **NetBIOS Name**: The NetBIOS name `MY-COMPANY` is used in this example. Adjust it if necessary.
5. **Domain and Forest Mode**: The script uses domain and forest mode "7" (Windows Server 2016). Adjust this according to your environment.

### Additional Considerations:
- Ensure that both servers have static IP addresses and proper DNS settings.
- Ensure that the servers can communicate with each other over the network.
- Consider configuring replication and site topology if you have a more complex network setup.

This script provides a basic deployment of AD DS on two servers. Depending on your environment, you may need to adjust the script to meet specific requirements.
