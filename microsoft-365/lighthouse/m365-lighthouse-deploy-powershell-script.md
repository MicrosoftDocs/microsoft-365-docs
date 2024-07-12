---
title: "Deploy a PowerShell script from Microsoft 365 Lighthouse"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
ms.reviewer: arpere
ms.date: 07/12/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-lighthouse
ms.localizationpriority: medium
ms.collection:
- Tier1
- scotvorg
- M365-subscription-management
- Adm_O365
- essentials-manage
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, learn how to deploy a PowerShell script from Lighthouse."
---

# Deploy a PowerShell script from Microsoft 365 Lighthouse

PowerShell scripts are plain text files that you can use to automate processes. You can deploy PowerShell scripts and check script results for Intune-managed devices from Lighthouse instead of having to go to the Scripts page in Microsoft Intune for each customer tenant.

## Before you begin

Ensure that the target devices on which you're running the PowerShell script are running Windows 10 or later (excluding Windows 10 Home) and enrolled in Intune.

For a detailed list of requirements and to learn more about using PowerShell scripts, see [Use PowerShell scripts on Windows 10/11 devices in Intune](/mem/intune/apps/intune-management-extension).

## Create and deploy a PowerShell script

1. In the left navigation pane in Lighthouse, select **Tenants**.

2. From the list of tenants, select any tenant to open the tenant details.
 
3. Select the **Scripts** tab, and then select **Create script**.

4. From the **Target group** dropdown list, select the Microsoft Entra group to use to target the devices on which the script will run. The default is **All Devices**.

5. In the **Title** box, enter a name for the script. Script names appear on the **Scripts** tab in Lighthouse and in the <a href="https://go.microsoft.com/fwlink/p/?linkid=2109431" target="_blank">Microsoft Intune admin center</a>. 

6. (Optional) Enter a description of the script. 

7. In the **PowerShell script** box, enter the script or upload the script file. The maximum file size is 4 MB.

8. Select **Deploy**.
 
## Next steps

On the **Scripts** page in Lighthouse, select the script from the list to open the script details. From here, you can see a list of devices targeted to run the script and the status of the script. Keep in mind that it might take some time for the script to run. For help troubleshooting script issues, see [Common issues and resolutions when using PowerShell scripts on Windows 10/11 devices in Intune](/mem/intune/apps/intune-management-extension).

## Related content

[Manage Microsoft Entra groups and group membership](/entra/fundamentals/how-to-manage-groups) (article)\
[Use PowerShell scripts on Windows 10/11 devices in Intune](/mem/intune/apps/intune-management-extension) (article)