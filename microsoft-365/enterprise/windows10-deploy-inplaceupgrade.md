---
title: Deploy Windows 10 Enterprise for existing devices as an in-place upgrade
description: Provides guidance on configuring and deploying a Windows 10 Enterprise image using Microsoft Endpoint Configuration Manager as an in-place upgrade.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment, in-place upgrade, Configuration Manager, Configuration Manager
author: greg-lindsay
localization_priority: Normal
ms.collection: M365-modern-desktop
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 08/30/2018
ms.author: greglin
---

# Step 2: Deploy Windows 10 Enterprise for existing devices as an in-place upgrade

*This article applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 3: Windows 10 Enterprise](./media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)

The simplest path to upgrade PCs currently running Windows 7 or Windows 8.1 to Windows 10 is through an in-place upgrade. You can use a Configuration Manager (Configuration Manager) task sequence to completely automate the process. 

If you have existing computers running Windows 7 or Windows 8.1, we recommend this path if your organization is deploying Windows 10. This leverages the Windows installation program (Setup.exe) to perform an in-place upgrade, which automatically preserves all data, settings, applications, and drivers from the existing operating system version. This requires the least IT effort, because there is no need for any complex deployment infrastructure.

Follow these steps to configure and deploy a Windows 10 Enterprise image using Configuration Manager as an in-place upgrade.

## The Windows 10 deployment with Configuration Manager poster

The Configuration Manager poster is one page in landscape mode (17x11). Click the image below to view a PDF in your browser. 

[![Deploy Windows 10 with Configuration Manager poster](./media/windows10-deploy-inplaceupgrade/windows10-deployment-config-manager.png)](https://docs.microsoft.com/windows/deployment/media/Windows10DeploymentConfigManager.pdf)

You can also download this poster in [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/deployment/media/Windows10DeploymentConfigManager.pdf) or [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/deployment/media/Windows10DeploymentConfigManager.vsdx) format.

## Part 1: Verify readiness to upgrade Windows

First, use the Upgrade Readiness capability of Windows Analytics to provide powerful insights and recommendations about the computers, applications, and drivers in your organization, at no extra cost and without additional infrastructure requirements. This new service guides you through upgrade and feature update projects using a workflow based on Microsoft recommended practices. Up-to-date inventory data allows you to balance cost and risk in your upgrade projects.

See [Manage Windows upgrades with Upgrade Readiness](https://docs.microsoft.com/windows/deployment/upgrade/manage-windows-upgrades-with-upgrade-readiness) to learn more, get started, use, and troubleshoot Upgrade Readiness.

Next, follow the guide to use Configuration Manager (Current Branch) to upgrade Windows 7 or later operating system to Windows 10. As with any high-risk deployment, we recommend backing up user data before proceeding. OneDrive cloud storage is ready to use for licensed Microsoft 365 users and can be used to securely store their files. For more info, see [OneDrive quick start guide](https://aka.ms/ODfBquickstartguide). To access this page, you must sign in as a tenant admin or global admin in an Office 365 or Microsoft 365 tenant.

For a list of Configuration Manager versions and the corresponding Windows 10 client versions that are supported, see [Support for Windows 10 for Configuration Manager](https://docs.microsoft.com/configmgr/core/plan-design/configs/support-for-windows-10).

**To verify readiness to upgrade Windows**

Review these requirements before starting your Windows 10 deployment:

- **Windows editions eligible for upgrade** - Your devices must be running editions of Windows 7 or Windows 8.1 that are eligible for upgrade to Windows 10 Enterprise. For a list of supported editions, see [Windows 10 upgrade paths](https://aka.ms/win10upgradepaths). 
- **Supported devices** - Most computers that are compatible with Windows 8.1 will be compatible with Windows 10. You may need to install updated drivers in Windows 10 for your devices to properly function. See [Windows 10 specifications](https://aka.ms/windows10specifications) for more info.
- **Deployment preparation** - Make sure you have the following before you start configuring the deployment:
    - Windows 10 installation media - The installation media must be located on a separate drive, with the ISO already mounted. You can obtain the ISO from [MSDN Subscriber Downloads](https://aka.ms/msdn-subscriber-downloads) or from the [Volume Licensing Service Center](https://aka.ms/mvlsc).
    - Backups of user data - Although user data will be migrated in the upgrade, best practice is to configure a backup scenario. For example, export all user data to a OneDrive account, BitLocker To Go-encrypted USB flash drive, or network file server. For more information, see [Back up or transfer data in Windows](https://aka.ms/backuptransferdatawindows).
- **Environment preparation** - You will use an existing Configuration Manager server structure to prepare for operating system deployment. In addition to the base setup, the following configurations should be made in the Configuration Manager environment:
    1. [Extend the Active Directory Schema](https://aka.ms/extendadschema) and [create a System Management container](https://aka.ms/createsysmancontainer).
    2. Enable Active Directory Forest Discovery and Active Directory System Discovery. For more info, see [Configure discovery methods for Configuration Manager](https://aka.ms/configurediscoverymethods).
    3. Create IP range boundaries and boundary group for content and site assignment. For more info, see [Define site boundaries and boundary groups for Configuration Manager](https://aka.ms/definesiteboundaries).
    4. Add and configure the Configuration Manager reporting services point role. For more info, see [Configuring Reporting in Configuration Manager](https://aka.ms/configurereporting).
    5. Create a file system folder structure for packages.
    6. Create a Configuration Manager console folder structure for packages.
    7. Install Configuration Manager (Current Branch) updates and any additional Windows 10 prerequisites.

## Part 2: Add a Windows 10 OS image using Configuration Manager
Now you'll need to create an operating system upgrade package that contains the full Windows 10 installation media. In the following steps, you’ll use Configuration Manager to create an upgrade package for Windows 10 Enterprise x64.

**To add a Windows 10 OS image using Configuration Manager**

1. Using the Configuration Manager console, in the **Software Library** workspace, right-click the **Operating System Upgrade Packages** node, and then select **Add Operating System Upgrade Package**.
2. On the **Data Source** page, specify the UNC path to the Windows 10 Enterprise x64 media, and then select **Next**.
3. On the **General** page, specify **Windows 10 Enterprise x64 Upgrade**, and then select **Next**. 
4. On the **Summary** page, select **Next**, and then select **Close**. 
5. Right-click the created **Windows 10 Enterprise x64 Update** package, and then select **Distribute Content**. 
6. Choose your distribution point.

## Part 3: Configure deployment settings
In this step, you'll configure an upgrade task sequence that contains the settings for the Windows 10 upgrade. You'll then identify the devices to upgrade, and then deploy the task sequence to those devices.

### Create a task sequence
To create an upgrade task sequence, perform the following steps:
  
1. In the Configuration Manager console, in the **Software Library** workspace, expand **Operating Systems**. 
2. Right-click the **Task Sequences** node, and then select **Create Task Sequence**.
3. On the **Create a new task sequence** page, select **Upgrade an operating system from upgrade package**, and then select **Next**.
4. On the **Task Sequence Information** page, specify **Windows 10 Enterprise x64 Upgrade**, and then select **Next**.
5. On the **Upgrade the Windows operating system** page, select **Browse** and choose the **Windows 10 Enterprise x64 Upgrade operating system upgrade package**, select **OK**, and then select **Next**.
6. Continue through the remaining wizard pages, and then select **Close**.

### Create a device collection
After you create the upgrade task sequence, you'll need to create a collection that contains the devices you will upgrade.

> [!NOTE]
> Use the following settings to test the deployment on a single device. You can use different membership rules to include groups of devices when you are ready. For more info, see [How to create collections in Configuration Manager](https://docs.microsoft.com/configmgr/core/clients/manage/collections/create-collections).

1. In the Configuration Manager console, in the **Assets and Compliance** workspace, right-click **Device Collections**, and then select **Create Device Collection**. 
2. In the Create Device Collection wizard, on the **General** page, enter the following settings and then select **Next**:
    - Name: Windows 10 Enterprise x64 Upgrade
    - Limiting Collection: All Systems
3. On the **Membership Rules** page, select **Add Rule** > **Direct rule** to launch the Create Direct Membership Rule Wizard.
4. On the **Welcome** page of the Create Direct Membership Rule Wizard, select **Next**.
5. On the **Search for Resources** page, enter the following settings, replacing the placeholder **Value** text with the name of the device you are upgrading: 
    - Resource Class: System Resource
    - Attribute Name: Name
    - Value: *PC0003*
6. On the **Select Resources** page, select your device, and select **Next**.
7. Complete the Create Direct Membership Rule wizard and the Create Device Collection Wizard.  
8. Review the Windows 10 Enterprise x64 Upgrade collection. Do not continue until you see the machines you added in the collection.

### Create an operating system deployment
Follow these steps to create a deployment for the task sequence.

1. In the Configuration Manager console, in the **Software Library** workspace, right-click the task sequence you created in a previous step, and then select **Deploy**.
2. On the **General** page, select the **Windows 10 Enterprise x64 Upgrade** collection, and then select **Next**.
3. On the **Content** page, select **Next**.
4. On the **Deployment Settings** page, select the following settings, and then select **Next**:

    > [!NOTE]
    > For this test deployment, you'll set the purpose to **Available**, which requires user intervention to start the deployment. In a production environment, you may wish to automate the deployment using the Required purpose, which involves configuring additional options such as scheduling when the deployment is run. 

    - Action: Install
    - Purpose: Available

5. On the **Scheduling** page, accept the default settings, and then select **Next**.
6. On the **User Experience** page, accept the default settings, and then select **Next**.
7. On the **Alerts** page, accept the default settings, and then select **Next**.
8. On the **Summary** page, select **Next**, and then select **Close**.

## Part 4: Start the Windows 10 upgrade task sequence
Follow these steps to start the Windows 10 Upgrade task sequence on the device that you are upgrading.
 
1. Log on to the Windows computer and start **Software Center**.
2. Select the task sequence that you created in a previous step, and then select **Install**.
3. When the task sequence begins, it automatically initiates the in-place upgrade process by invoking the Windows setup program (Setup.exe) with the necessary command-line parameters to perform an automated upgrade, which preserves all data, settings, apps, and drivers.
4. After the task sequence completes successfully, the computer will be fully upgraded to Windows 10.

If you experience issues when using Windows 10 in an enterprise environment, you can consult [top Microsoft Support solutions for the most common issues](https://docs.microsoft.com/windows/client-management/windows-10-support-solutions). These resources include KB articles, updates, and library articles.

During the rollout of updates across your organization, use the Update Compliance capability of Windows Analytics to provide a holistic view of OS update compliance, update deployment progress, and failure troubleshooting for Windows 10 devices. This new service uses diagnostic data including installation progress, Windows Update configuration and other information to provide such insights, at no extra cost and without additional infrastructure requirements. Whether it's used with Windows Update for Business or other management tools, you can be assured that your devices are properly updated.

See [Monitor Windows Updates and Windows Defender Antivirus with Update Compliance](https://docs.microsoft.com/windows/deployment/update/update-compliance-monitor) to learn more, get started, and use Update Compliance.

As an interim checkpoint, you can see the [exit criteria](windows10-exit-criteria.md#crit-windows10-step2) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 3](./media/stepnumbers/Step3.png)| [Deploy Windows 10 Enterprise for new devices with Windows Autopilot](windows10-deploy-autopilot.md) |
