---
title: Ring deployment using Group Policy and Windows Server Update Services
description: Microsoft Defender for Endpoint is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article explains how to deploy Microsoft Defender for Endpoint in measured, staged cycles.
keywords: deploy Microsoft Defender for Endpoint, Ring deployment Microsoft Defender for Endpoint, cybersecurity, cloud security, analytics, threat intelligence, attack surface reduction, next-generation protection, automated investigation and remediation, microsoft threat experts, secure score, advanced hunting, Microsoft 365 Defender, cyber threat hunting
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: v-britweston
author: v-britweston
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
- m365-security
- tier1
ms.custom: intro-overview
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
ms.date: 05/24/2023
---

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**

- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- Microsoft Defender Antivirus

**Platforms**

- Windows
- Windows Server

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Microsoft Defender for Endpoint is an enterprise endpoint security platform designed to help enterprise networks prevent, detect, investigate, and respond to advanced threats.

> [!TIP]
> Microsoft Defender for Endpoint is available in two plans, Defender for Endpoint Plan 1 and Plan 2. A new Microsoft Defender Vulnerability Management add-on is now available for Plan 2.
>
> For more information on the features and capabilities included in each plan, including the new Defender Vulnerability Management add-on, see [Compare Microsoft Defender for Endpoint plans](defender-endpoint-plan-1-2.md).

# Microsoft Defender for Endpoint ring deployment using Group Policy and Windows Server Update Services

:::image type="content" source="images/mde-deploy-ring-group-policy-wsus.png" alt-text="Shows an example deployment schedule for Group Policy with WSUS deployments." lightbox="images/mde-deploy-ring-group-policy-wsus.png":::

### Resources

The following resources provide information for using and managing Windows Server Update Services (WSUS).
- [Deploy Windows Defender definition updates using WSUS - Configuration Manager](/troubleshoot/mem/configmgr/update-management/deploy-definition-updates-using-wsus)
- [Windows Server Update Services Help](/previous-versions/orphan-topics/ws.11/dn343567(v=ws.11)?redirectedfrom=MSDN)

## Setting up the pilot environment

This section provides information about setting up the pilot (UAT/Test/QA) environment using Group Policy and Windows Server Update Services (WSUS).

On about 10-500* Windows and/or Windows Server systems, depending on how many total systems that you all have.

> [!NOTE]
> If you have a Citrix enviroment, include at least one Citrix VM (non-persistent) and/or (persistent)

1. Launch the **Windows Server Update Services Configuration Wizard**.

1. On the **Before You Begin** page, review the preliminary information and attend to any configuration or credential matters, and then click **Next**.

1. ON the **Microsoft Update Improvement Program** page, if you would like to participate in the program, select **Yes, I would like to join the Microsoft Update Improvement Program**. Click **Next**.

1. On the **Choose Upstream Server** page, select **Synchronize from Microsoft Update** and then click **Next**.

1. On the **Specify Proxy Server** page, select **Next**.

1. On the **Choose Languages** page, select **Download updates only in these languages. Select the update languages that you want to download, and then click **Next**

1. On the **Choose Products** page, scroll down to **Forefront**, select **Forefront Client Security** and **System Center Endpoint Protection** This is shown in the following figure.
   
   :::image type="content" source="images/mde-deploy-ring-group-policy-wsus-choose-products-av.png" alt-text="Shows a screen capture of the WSUS configuration wizard Choose Products page." lightbox="images/mde-deploy-ring-group-policy-wsus-choose-products-av.png":::

   While still on the **Choose Products** page, scroll down to **Windows** and select **Microsoft Defender Antivirus**.

1.  Click **Next**. On the **Choose Classification** page, select: **critical Updates**, **Definition Updates**, and **Security Updates**, and then click **Next**.

1. On the **Configure Sync Schedule** page, do the following:

   | In: | Change: |
   |:---|:---|
   | **Synchronize automatically** | select (enable) |
   | **First synchronization** | Set time to _5:00:00 AM_ |
   | **Synchronizations per day** | Set to _1_ |

1. Click **Next**. On the **Finished** page, click **Next**.

1. On the **What's next** page, click **Finish**.

The Windows Server Update Services Configuration Wizard is complete. 

1. Open the **Update Services** snap-in console, and navigate to **YR2K19**. The console is shown in the following figure.

   :::image type="content" source="images/mde-deploy-ring-group-policy-wsus-update-service-synch.png" alt-text="Shows a screen capture of the Update Services snap-in console with synchronization in progress." lightbox="images/mde-deploy-ring-group-policy-wsus-update-service-synch.png":::

1. When synchronization is complete, you can see how many products and classifications have been added in the last 30 days. Check to ensure the status for **Last synchronization result** indicates _Succeeded_. You may see a warning indicating **Your WSUS server currently shows that no computers are registered to receive updates." This warning is normal at this point of the deployment configuration process. 

1. In the **Actions** column, click **Search**. **Search** opens. In **Text**, type _defender_, and press _ENTER_. The results field under **Update Title** lists updates that include the word **Defender** in the title. For example _Windows Defender_ and _Microsoft Defender Antivirus_ updates for _Platform_, _Engine_, and _Intelligence_. Example results are shown in the next image.

   See [ Viewing and Managing Updates](/windows-server/administration/windows-server-update-services/manage/viewing-and-managing-updates.md).

   :::image type="content" source="images/mde-deploy-ring-group-policy-wsus-update-service-search-defender.png" alt-text="Shows a screen capture of the Update Services snap-in console with synchronization in progress." lightbox="images/mde-deploy-ring-group-policy-wsus-update-service-search-defender.png":::

1. In the **Search** dialog, under **Update Title**, double-click one of the listed KB items. One of two things happens:

   - If you don't have **Microsoft Report Viewer 2012 Redistributable** installed, the following error message appears:
     
     :::image type="content" source="images/mde-deploy-ring-group-policy-wsus-report-viewer-error.png" alt-text="Shows a screen capture of an error message indicating the Microsoft Report Viewer 2012 Redistributable isn't installed." lightbox="images/mde-deploy-ring-group-policy-wsus-report-viewer-error.png":::

     Follow the link in the error message to install the Microsoft Report Viewer 2012 Redistributable before proceeding to the next numbered step of this procedure.

    - If **Microsoft Report Viewer 2012 Redistributable** installed, **Update Report for YR2k19** opens, presenting a report with information related to the KB you previously selected.  An example report is shown in the following image. 

     :::image type="content" source="images/mde-deploy-ring-group-policy-wsus-report-viewer-kb-update-info.png" alt-text="Shows a screen capture with details about a KB update reported in **Update Report for Yr2k19**." lightbox="images/mde-deploy-ring-group-policy-wsus-report-viewer-kb-update-info.png":::

   To find out which Platform Update version is the Current Channel (Broad), go to the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623).
 


 
## See also 

[Microsoft Defender for Endpoint ring deployment](microsoft-defender-endpoint-ring-deployment.md)


