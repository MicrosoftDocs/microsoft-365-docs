---
title: Pilot ring deployment using Group Policy and Windows Server Update Services
description: Microsoft Defender Antivirus is an enterprise endpoint security platform that helps defend against advanced persistent threats. This article provides information about how to use a ring deployment method to update your Microsoft Defender Antivirus pilot clients using Group Policy and Windows Server Update Services (WSUS).
keywords: Deploy Microsoft Defender Antivirus updates, pilot ring deployment Microsoft Defender Antivirus, Microsoft Defender Antivirus Group Policy, Microsoft Defender Antivirus Windows Server Update Services (WSUS), Microsoft Defender Antivirus Group Policy Windows Server Update Services (WSUS), threat intelligence, cybersecurity, cloud security,
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dansimp
author: dansimp
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
ms.date: 07/21/2023
---

# Microsoft Defender Antivirus pilot ring deployment using Group Policy and Windows Server Update Services

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

### Resources

The following resources provide information for using and managing Windows Server Update Services (WSUS).
- [Deploy Windows Defender definition updates using WSUS - Configuration Manager](/troubleshoot/mem/configmgr/update-management/deploy-definition-updates-using-wsus)
- [Windows Server Update Services Help](/previous-versions/orphan-topics/ws.11/dn343567(v=ws.11)?redirectedfrom=MSDN)

## Setting up the pilot environment

This section provides information about setting up the pilot (UAT/Test/QA) environment using Group Policy and Windows Server Update Services (WSUS).

:::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus.png" alt-text="Screenshot that shows an example ring deployment schedule for Group Policy with WSUS environments." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus.png":::

> [!NOTE]
> Security intelligence update (SIU) is equivelant to signature updates, which is the same as definition updates.

On about 10-500* Windows and/or Windows Server systems, depending on how many total systems that you all have.

> [!NOTE]
> If you have a Citrix enviroment, include at least one Citrix VM (non-persistent) and/or (persistent)

1. Launch the **Windows Server Update Services Configuration Wizard**.

1. On the **Before You Begin** page, review the preliminary information and attend to any configuration or credential matters, and then select **Next**.

1. On the **Microsoft Update Improvement Program** page, if you would like to participate in the program, select **Yes, I would like to join the Microsoft Update Improvement Program**. Select **Next**.

1. On the **Choose Upstream Server** page, select **Synchronize from Microsoft Update** and then select **Next**.

1. On the **Specify Proxy Server** page, select **Next**.

1. On the **Choose Languages** page, select **Download updates only in these languages**. Select the update languages that you want to download, and then select **Next**

1. On the **Choose Products** page, scroll down to **Forefront**, select **Forefront Client Security** and **System Center Endpoint Protection** This is shown in the following figure.
   
   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-choose-products-av.png" alt-text="Screenshot that shows a screen capture of the WSUS configuration wizard Choose Products page." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-choose-products-av.png":::

   While still on the **Choose Products** page, scroll down to **Windows** and select **Microsoft Defender Antivirus**.

1.  Select **Next**. On the **Choose Classification** page, select: **critical Updates**, **Definition Updates**, and **Security Updates**, and then select **Next**.

1. On the **Configure Sync Schedule** page, do the following:

   | In: | Change: |
   |:---|:---|
   | **Synchronize automatically** | select (enable) |
   | **First synchronization** | Set time to _5:00:00 AM_ |
   | **Synchronizations per day** | Set to _1_ |

1. Select **Next**. On the **Finished** page, select **Next**.

1. On the **What's next** page, select **Finish**.

The Windows Server Update Services Configuration Wizard is complete. 

1. Open the **Update Services** snap-in console, and navigate to **YR2K19**. The console is shown in the following figure.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-update-service-synch.png" alt-text="Screenshot that shows a screen capture of the Update Services snap-in console with YR2K19 shown." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-update-service-synch.png":::

1. When synchronization is complete, you can see how many products and classifications have been added in the last 30 days. Check to ensure the status for **Last synchronization result** indicates _Succeeded_. You may see a warning indicating **"Your WSUS server currently shows that no computers are registered to receive updates"**. This warning is normal at this point of the deployment configuration process. 

#### View update details

1. In the **Update Services** console, in the navigation tree, go to > **Update Services** > **YR2K19** > **Updates** > **All Updates**.
1. In the **Actions** column, select **Search**. **Search** opens. In **Text**, type _defender_, and press _ENTER_. The results field under **Update Title** lists updates that include the word **Defender** in the title. For example _Windows Defender_ and _Microsoft Defender Antivirus_ updates for _Platform_, _Engine_, and _Intelligence_. Example results are shown in the next image.

   See [ Viewing and Managing Updates](/windows-server/administration/windows-server-update-services/manage/viewing-and-managing-updates).

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-update-service-search-defender.png" alt-text="Screenshot that shows a screen capture of the Update Services for Microsoft Defender Antivirus." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-update-service-search-defender.png":::

1. In the **Search** dialog, under **Update Title**, double-click one of the listed KB items. One of two things happens:

   - If you don't have **Microsoft Report Viewer 2012 Redistributable** installed, the following error message appears:
     
     :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-viewer-error.png" alt-text="Screenshot that shows a screen capture of an error message indicating the Microsoft Report Viewer 2012 Redistributable isn't installed." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-viewer-error.png":::

     Follow the link in the error message to install the Microsoft Report Viewer 2012 Redistributable before proceeding to the next numbered step of this procedure.

    - If **Microsoft Report Viewer 2012 Redistributable** installed, **Update Report for YR2k19** opens, presenting a report with information related to the KB you previously selected.  An example report is shown in the following image. 

     :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-viewer-kb-update-info.png" alt-text="Screenshot that shows a screen capture with details about a KB update reported in **Update Report for Yr2k19**." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-viewer-kb-update-info.png":::

    To learn more about the different Microsoft Defender Antivirus Update channels, see [Manage the gradual rollout process for Microsoft Defender updates](/manage-gradual-rollout)

#### To find out which Platform Update version is the Current Channel (Broad)

1. Go to the [Microsoft Update Catalog](https://www.catalog.update.microsoft.com/Search.aspx?q=KB4052623). (_This link automatically loads a search filtered to KB4052623_)
1. Search for a KB by name. For example, In the search box, type _KB4052623_, and then select **Search**. 

   For example, on April 11, 2023, the latest production version is **4.18.2302.7**, where **23** == _2023_, **02** == _February_, and **.7** is the _minor revision_.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-viewer-kb-search.png" alt-text="Screenshot that shows a screen capture of the results from a Microsoft Update Catalog search for KB4052623." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-viewer-kb-search.png":::

#### To determine if updates are synchronized

1. In the **Update Services** console, go > **Update Services** > **YR2K19** > **Updates** > **All Updates**.
1. In **Approval**, select **Any Except Declined**, and the select **Refresh**.

   The **All Updates** view lists “Platform Updates” and “Security Intelligence Updates” (also known as signatures/definitions). For example, KB4052623 platform updates. KB4052623 platform update is shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-view-signature-platform-updates.png" alt-text="Screenshot that shows a screen capture of the results from a Microsoft Update Catalog search for KB4052623 platform updates." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-report-view-signature-platform-updates.png"::: 

1. Select **KB4052623** version **4.18.2302.7** to see the synchronization status. 
   
   > [!NOTE]
   > For the “Security Intelligence Updates”, please see [Appendix A](microsoft-defender-antivirus-ring-deployment-group-policy-wsus-appendices.md).
   > For the “Engine Updates”, please see [Appendix B](microsoft-defender-antivirus-ring-deployment-group-policy-wsus-appendices.md).
   > For the “Platform Updates”, please see [Appendix C](microsoft-defender-antivirus-ring-deployment-group-policy-wsus-appendices.md).  

#### Approve and deploy updates in WSUS

1. In the **Update Services** console, go > **Update Services** > **YR2K19** > **Computers** > **Options**. The **Options** window opens
1. Select **Automatic Approvals** to launch the **Automatic Approvals** configuration wizard. 
1. In **Automatic Approvals** page, on the **Update Rules** tab, select **OK**.
1. On the **Add Rule** page, is **Step 1**, select **When an update is in a specific classification** and **When an update is in a specific product**.
1. In **Choose Products**, scroll to **Forefront**, and then select **Forefront Client Security**.  Scroll to **Windows**, and then select **Microsoft Defender Antivirus**, and then select **OK**. The workflow returns you to the **Add Rule** page.
1. On the **Add Rule** page, in **Step 1: Select Properties**, ensure the following are selected:
   - **When an update is in a specific classification**
   - **When an updates is in a specific product**
   - **Set a deadline for the approval**

   In **Step 2: Edit the properties**:
   - In **When an update is in**, ensure **Forefront Client Security, System Center Endpoint Protection, Microsoft Defender Antivirus** are listed.
   - In **Set a deadline for**, select **The same day as the approval at 5:00 AM**. 
   
   In **Step 3: Specify a name**, type a name for your rule. For example, type _Microsoft Defender Antivirus updates_. These settings are shown in the following figure:

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-updates-add-rule.png" alt-text="Screenshot that shows a screen capture of the an example name for a rule." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-updates-add-rule.png"::: 

1. Select **OK**. The work flow returns to the **Update Rules** page. Select your new rule, For example, select **Microsoft Defender Antivirus updates**.
1. In **Rule Properties**, verify the information is correct, and then select **OK**.

#### Define the order of sources for downloading security intelligence updates

1. On your Group Policy management computer, open the **Group Policy Management Console**, right-click the _Group Policy Object_ you want to configure and select **Edit**.

1. In the **Group Policy Management Editor** go to **Computer configuration**, select **Policies**, then select **Administrative templates**.

1. Expand the tree to **Windows components** > **Windows Defender** > **Signature updates**.

   - Double-click the **Define the order of sources for downloading security intelligence updates** setting and set the option to **Enabled**.

   - In **Options**, type _InternalDefinitionUpdateServer_, and then select **OK**. The configured **Define the order of sources for downloading security intelligence updates** page is shown in the following figure.

   :::image type="content" source="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-download-order.png" alt-text="Screenshot that shows a screen capture of how to define the order of sources for downloading security intelligence updates." lightbox="images/microsoft-defender-antivirus-deploy-ring-group-policy-wsus-gp-download-order.png"::: 

For more information, see [Manage how and where Microsoft Defender Antivirus receives updates](manage-protection-updates-microsoft-defender-antivirus.md).

## See also 

[Microsoft Defender Antivirus ring deployment](microsoft-defender-antivirus-ring-deployment.md)

[Microsoft Defender Antivirus production ring deployment using Group Policy and Windows Server Update Services](microsoft-defender-antivirus-production-ring-deployment-group-policy-wsus.md)
