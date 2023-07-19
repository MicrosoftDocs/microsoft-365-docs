---
title: Migrating servers from Microsoft Monitoring Agent to the unified solution
description: Learn how to migrate down-level servers from Microsoft Monitoring Agent to the new unified solution step-by-step from this article.
keywords: migrate server, server, 2012r2, 2016, server migration onboard Microsoft Defender for Endpoint servers, MECM, Microsoft Monitoring Agent, MMA, downlevel server, unified solution, UA
search.appverid: met150
ms.mktglfcycl: deploy
ms.sitesec: library
ms.service: microsoft-365-security
ms.subservice: mde
ms.pagetype: security
author: alekyaj
ms.author: macapara
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier1
ms.topic: conceptual
ms.date: 06/27/2022
---

# Migrating servers from Microsoft Monitoring Agent to the unified solution

**Applies to:**

- Windows Server 2012 R2
- Windows Server 2016

This article guides you in migrating down-level servers from Microsoft Monitoring Agent (MMA) to the unified solution.

## Prerequisites

- Microsoft Endpoint Configuration Manager (MECM) higher than 2207.
- Down-level OS devices in your environment onboarded with Microsoft Monitoring Agent. To confirm, verify that `MsSenseS.exe` is running in Task Manager.
- Presence of the MMA agent. You can verify it by checking if the correct Workspace ID is present in the Control Panel> Microsoft Monitoring Agent.
- Active Microsoft 365 Defender portal with devices onboarded.
- A **Device Collection** containing down-level servers such as Windows Server 2012 R2 or Windows Server 2016 using MMA agent is set up in your MECM instance.

For more information on installing the listed prerequisites, see [related topics](#related-topics) section.

## Gather required files

Copy the unified solution package, onboarding script and migration script to the same content source you deploy other apps with MECM.

1. Download Onboarding Script and the unified solution from [Microsoft 365 Defender settings page](https://sip.security.microsoft.com/preferences2/onboarding).
   :::image type="content" source="images/onboarding-script.png" alt-text="Screenshot of onboarding script and unified solution download" lightbox="images/onboarding-script.png":::
   > [!Note]
   > You must select the Group Policy from the Deployment method dropdown to obtain the .cmd file.
2. Download the migration script from the document: [Server migration scenarios from the previous, MMA-based Microsoft Defender for Endpoint solution](server-migration.md). This script can also be found on GitHub: [GitHub - microsoft/mdefordownlevelserver](https://github.com/microsoft/mdefordownlevelserver).
3. Save all three files in a shared folder used by MECM as a Software Source.

   :::image type="content" source="images/ua-migration.png" alt-text="Screenshot of saving the shared folder by MECM.":::

## Create the package as an application

1. In the MECM console, follow these steps: **Software Library>Applications>Create Application**.
2. Select **Manually specify the application information**.
   :::image type="content" source="images/manual-application-information.png" alt-text="Screenshot of manually specifying the application information selection." lightbox="images/manual-application-information.png":::
3. Select **Next** on the Software Center screen of the wizard.
4. On the Deployment Types, click **Add**.
5. Select **Manually to specify the deployment type information** and select **Next**.
6. Give a name to your script deployment and select **Next**.

   :::image type="content" source="images/manual-deployment-information.png" alt-text="Screenshot specifying the script deployment information.":::
7. On this step, copy the UNC path that your content is located. Example: `\\ServerName\h$\SOFTWARE_SOURCE\path`.

   :::image type="content" source="images/deployment-type-wizard.png" alt-text="Screenshot that shows UNC path copy.":::

8. Additionally, set the following as the installation program:

     ```powershell
      Powershell.exe -ExecutionPolicy ByPass -File install.ps1 -RemoveMMA <workspace ID> -OnboardingScript .\WindowsDefenderATPOnboardingScript.cmd
     ```

      Click **Next** and make sure to add your own Workspace ID in this section.
9. Click **Next** and click add a clause.
10. The detection method will be based on the registry key shown below.
      `HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\Sense`

      Check the option: **This registry setting must exit on the target system to indicate presence of this application.**

      :::image type="content" source="images/detection-wizard.png" alt-text="Screenshot that shows detection type wizard":::

      > [!TIP]
      > The registry key value was obtained by running the Powershell command shown below on a device that has the unified solution installed. Other creative methods of detection can also be used. The goal is to identify whether the unified solution has already been installed on a specific device. You can leave the Value and Data Type fields as blank.

     ```powershell
      get-wmiobject Win32_Product | Sort-Object -Property Name |Format-Table IdentifyingNumber, Name, LocalPackage -AutoSize
     ```

11. In the **User Experience** section, check the recommended settings shown in the screenshot. You can choose what suits your environment and click **Next**. For **Installation program visibility**, it's advisable to install with **Normal** during phase testing then change it to **Minimized** for general deployment.

     > [!TIP]
     > The maximum allowed runtime can be lowered from (default) 120 minutes to 60 minutes.

     :::image type="content" source="images/user-experience-in-deployment-type-wizard.png" alt-text="Screenshot that shows user experience in deployment-type wizard.":::

12. Add any additional requirements then select **Next**.
13. Under the Dependencies section, select **Next**.
14. Select **Next** until completion screen comes up, then **Close**.
15. Keep select **Next** until the completion of Application Wizard. Verify all have been green checked.
16. Close the wizard, right-click on the recently created application and deploy it to your down-level-server collection. Locally, the installation can be confirmed at Software Center. For details, check the CM logs at `C:\Windows\CCM\Logs\AppEnforce.log`.

    :::image type="content" source="images/deploy-application.png" alt-text="Screenshot that shows deployment of created application." lightbox="images/deploy-application.png":::

17. Verify the status of the migration at MECM > Monitoring > Deployments.

    :::image type="content" source="images/deployment-status.png" alt-text="Screenshot that shows deployment status check." lightbox="images/deployment-status.png":::

18. Troubleshooting .ETL files will be created and automatically saved locally in each server at this location `C:\Windows\ccmcache\#\`. These files can be leveraged by support to troubleshoot onboarding issues.

## Related topics

- [Microsoft Monitoring Agent Setup](/services-hub/health/mma-setup)
- [Deploy applications - Configuration Manager](/mem/configmgr/apps/deploy-use/deploy-applications)
- [Microsoft Defender for Endpoint - Configuration Manager](/mem/configmgr/protect/deploy-use/defender-advanced-threat-protection)
- [Onboard Windows servers to the Microsoft Defender for Endpoint service](configure-server-endpoints.md)
- [Microsoft Defender for Endpoint: Defending Windows Server 2012 R2 and 2016](https://techcommunity.microsoft.com/t5/microsoft-defender-for-endpoint/defending-windows-server-2012-r2-and-2016/ba-p/2783292)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
