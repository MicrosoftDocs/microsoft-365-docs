---
title: Deploy Windows 10 Enterprise for new devices with Windows Autopilot
description: Provides guidance on configuring and deploying Windows 10 Enterprise with Windows Autopilot.
keywords: Microsoft 365, Microsoft 365 Enterprise, Microsoft 365 documentation, Windows 10 Enterprise, deployment, Windows Autopilot
author: greg-lindsay
localization_priority: Normal
ms.collection: M365-modern-desktop
audience: microsoft-business
ms.prod: microsoft-365-enterprise
ms.topic: article
ms.date: 08/30/2018
ms.author: greglin
---

# Step 3: Deploy Windows 10 Enterprise for new devices with Windows Autopilot

*This article applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 3: Windows 10 Enterprise](./media/deploy-foundation-infrastructure/win10enterprise_icon-small.png)

If you have new Windows 10 PCs, you can use Windows Autopilot to customize the out-of-box-experience (OOBE) for your organization and deploy a new system with apps and settings already configured. There are no images to deploy, no drivers to inject, and no infrastructure to manage. Users can go through the deployment process independently, without the need consult their IT administrator.

You can set up and pre-configure new Windows 10 devices and get them ready for productive use using Windows Autopilot. To learn more about Windows Autopilot, including benefits and Windows Autopilot scenarios, see [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-Autopilot/windows-10-Autopilot). When ready, follow these parts to start setting up new devices.

## The Windows Autopilot deployment process poster

The Windows Autopilot poster is two pages in portrait mode (11x17). Click the image below to view a PDF in your browser. 

[![Deploy Windows 10 with Autopilot poster](./media/windows10-deploy-autopilot/windows10-autopilot-flowchart.png)](https://opdhsblobprod04.blob.core.windows.net/contents/d0d41f25ce48460387a79ace64acad6b/d00f8fc01db0b512e4953663c8331588?sv=2015-04-05&sr=b&sig=bfzlEl8SrShCQyj8E2QUf6LJfxlKre6ortODE4qHjrc%3D&st=2019-10-24T22%3A18%3A33Z&se=2019-10-25T22%3A28%3A33Z&sp=r)

You can also download this poster in [PDF](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/deployment/media/Windows10AutopilotFlowchart.pdf) or [Visio](https://github.com/MicrosoftDocs/windows-itpro-docs/raw/public/windows/deployment/media/Windows10Autopilotflowchart.vsdx) format.

## Part 1: Start Windows Autopilot deployment
See [Overview of Windows Autopilot](https://docs.microsoft.com/windows/deployment/windows-Autopilot/windows-10-Autopilot) to:

1. Learn about and complete the prerequisites for Windows Autopilot deployment. The prerequisites include:
    - **Device registration and OOBE customization**

        To register devices, you need to acquire their hardware ID and register it. We are actively working with various hardware vendors to enable them to provide the required information to you, or upload it on your behalf. You also have the option to capture this information by yourself using a PowerShell script that generates a .csv file with the device's hardware ID.

        Once devices are registered, there are OOBE customization options that you can configure including skipping privacy settings and EULA.

    - **Company branding for OOBE**

        This allows you to add branding to appear during device OOBE.

    - **MDM auto-enrollment in Microsoft Intune**
        
        Automatic enrollment lets users enroll their Windows 10 devices in Intune for device management when they connect their devices to Azure AD. To enroll, users add their work account to their personally-owned devices or join corporate-owned devices to Azure AD. In the background, the device is also enrolled for management with Intune.

    - **Network connectivity to cloud services used by Windows Autopilot**

        The Windows Autopilot Deployment Program uses a number of cloud services to get your devices to a productive state and these services must be accessible from devices registered as Windows Autopilot devices. 

    - **Devices must be pre-installed with Windows 10, version 1703 or later**

2. Learn about and select the Windows Autopilot Deployment Program for your organization. You can select from these deployment programs:
    - **Microsoft Store for Business**
    - **Microsoft Intune**
    - **Partner Center**

## Part 2: Set up a Windows 10 device for Microsoft 365
Before you can set up Windows devices for Microsoft 365 users, make sure all the Windows devices are running Windows 10, version 1703 (Creators Update) or later.

After all Windows devices in your organization have either been upgraded to Windows 10 Creators Update or are already running Windows 10 Creators Update, you can join these devices to your organization’s Azure Active Directory.

### Set up a brand new or newly-upgraded Windows 10 device
Follow these steps to set up a device using the Windows 10 OOBE on a brand new device running Windows 10 Creators Update (or later) or on a device that was upgrade to Windows 10 Creators Update (or later) but has not gone through out-of-box setup.

1. If you don't have a wireless network configured, make sure you connect the device to the internet through a wired or Ethernet connection.
2. Go through the Windows device setup experience. On a new or reset device, the setup experience starts with the **Let's start with region. Is this right?** screen.
3. Go through Windows 10 device setup until you get to the **How would you like to set up?** page. Here, select **Set up for an organization**.
4. Sign in using the Microsoft 365 user's account and password. Depending on the user password setting, you may be prompted to update the password. 
5. Finish Windows 10 device setup.

After you’re done, the device will be connected to your organization’s Azure AD.

### Set up a device that has already completed out-of-box setup
If your device has Windows 10 Creators Update (or later) and has already gone through the out-of-box setup, follow these steps.

1. On your user's Windows PC that is running Windows 10, version 1703 (Creators Update), select the **Windows** logo, and then select the **Settings** icon.
2. In **Settings**, go to **Accounts**.
3. On the **Your info** page, select **Access work or school** > **Connect**.
4. On the **Set up a work or school account** dialog, under **Alternate actions**, select **Join this device to Azure Active Directory**.
5. On the **Let's get you signed in** page, enter your work or school account, and select **Next**.
6. On the **Enter password** page, enter your password, and select **Sign in**.
7. On the **Make sure this is your organization** page, verify that the information is correct, and select **Join**.
8. On the **You're all set!** page, select **Done**.

After you're done, the user will be connected to your organization's Azure AD.

### Verify the device is connected to Azure AD
Follow these steps to verify the device’s sync status with Azure AD, and then start using your Microsoft 365 account on the device. 

1. Open **Settings**.
2. On the **Access work or school** page, select the **Connected to <organization name>** area to expose the buttons **Info** and **Disconnect**.
3. Select **Info** to get your synchronization status.
4. On the **Sync status** page, select **Sync** to get the latest mobile device management policies onto the PC.
5. To start using the Microsoft 365 account, go to the Windows **Start** button, right-click your current account picture and then select **Switch** account.
6. Sign in by using your organization email and password.

If you experience issues when using Windows 10 in an enterprise environment, you can consult [top Microsoft Support solutions for the most common issues](https://docs.microsoft.com/windows/client-management/windows-10-support-solutions). These resources include KB articles, updates, and library articles.

As an interim checkpoint, you can see the [exit criteria](windows10-exit-criteria.md#crit-windows10-step3) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 4](./media/stepnumbers/Step4.png)| [Monitor device health and compliance](windows10-enable-windows-analytics.md) |



<!--
## Phase 1: Consideration phase
This guide makes several assumptions regarding essential, business-critical considerations before upgrading an OS in an enterprise environment.

**Requirements**

Make sure you have the following requirements deployed and licensed.

| Product | License |
|:---|:---|
| Microsoft Intune | E3, E5, or Intune standalone |
| Azure AD Premium | E3 or E5 |
| Office 365 ProPlus | Business Premium, E3, E5, or Office 365 ProPlus standalone |

Before upgrading an OS in an enterprise environment, take the following technical aspects into account:
* [Infrastructure](#step-1-infrastructure)
* [Apps](#step-2-apps)
* [Governance and business processes](#step-3-governance-and-business-processes)

This guide is meant only to provide Microsoft's best recommendations around these assumptions by providing links to existing documentation.

### Step 1: Infrastructure
Consider your organization's collection of hardware, software, policies, networks, and other related technologies as part of the deployment process. 

For Windows Autopilot, these are the infrastructure you need to take into account:

#### Group Policy
With Windows Autopilot, a device automatically joins their organization’s Azure AD group once a user signs into their organization from the device. The Group Policy policies (along with other customized settings and apps) are automatically pushed to the new device. It’s critical to understand that these policies must be properly configured within an organization before setting up Windows Autopilot profiles.

Windows 10 introduces many new features and removes and changes many others in Windows 7 and 8.1, including new Group Policy settings which need to be tested and implemented as part of a Windows 10 migration. The following resources provide examples on assessing current group policies for Windows, including Group Policy Objects in the Active Directory structure:

* [Manage Windows 10 with administrative templates](https://go.microsoft.com/fwlink/?linkid=860226) - Get step-by-step info on how to manage Windows 10 with administrative templates
* [Group Policy settings that apply to Windows 10](https://docs.microsoft.com/windows/client-management/group-policies-for-enterprise-and-education-editions) - Find out which Group Policy settings apply only to Windows 10 Enterprise


#### Data management
Be sure to back up user data if necessary. Because of the out-of-box experience (OOBE), user data isn't saved on a net-new computer. We recommend configuring a backup scenario as needed. For example, export all user data to a OneDrive for Business account, BitLocker To Go-encrypted USB flash drive, or network file server. For more info, see:
* [How to back up or transfer your data on a Windows-based computer](https://go.microsoft.com/fwlink/?linkid=860230) - Get step-by-step info on how to manually back up your personal files and settings.
* [Redirect known folders to OneDrive for Business](https://go.microsoft.com/fwlink/?linkid=846620) - Learn how to set a policy at the domain level to make sure users all sync to the same folder when they install the OneDrive sync client and how you can set additional policies to redirect the Documents folder to that sync location.

### Step 2: Apps

#### Security
Security clients (like antivirus, anti-malware, and anti-spam) are typically found on all PCs within an organization. Because these programs hook into the deeper levels of the OS, you may need to perform a compatibility assessment before starting any Windows 10 migrations. You may need to upgrade, reconfigure, or even replace Some software. Not performing this assessment can lead to:
* Native app compatibility checks failing and preventing an in-place upgrade from starting.
* Broken functionality in the security software.
* Instability after upgrading to Windows 10 (like crashing and reduced performance)

We recommend using Windows Defender Antivirus and Windows Advanced Threat Protection (ATP). For more info, see [Enable Windows 10 Enterprise security features](windows10-enable-security-features.md)

**Antivirus**

Assess current antivirus software. Windows 10 comes with Windows Defender Antivirus to protect devices from malware, viruses, and security threats. We recommend Windows Defender Antivirus. To enable Windows Defender Antivirus, see [Windows Defender Antivirus](windows10-enable-security-features.md#windows-defender-antivirus) and [Protect devices with Windows Defender Antivirus](https://go.microsoft.com/fwlink/?linkid=860254).

To learn about antivirus solutions from other providers, see [Consumer antivirus software providers for Windows](https://go.microsoft.com/fwlink/?linkid=67345).

#### App readiness
Each Windows 10 release provides improved app compatibility. However, some apps may not be compatible. Depending on the app, you may need to only do a simple upgrade or configuration update before upgrading to Windows 10. In other circumstances, you may need to remove an app entirely.

Be sure to assess business critical apps and understand the impact of upgrading to the next OS. Prioritize the workloads that impact the least number of people during deployment. 

See the following Upgrade Readiness resources to help with app inventory, driver compatibility issues, and usage information:
* [Manage Windows Upgrades with Upgrade Readiness](https://go.microsoft.com/fwlink/?linkid=860255) - Learn about the tools to help you plan and manage the upgrade process end to end, which allow you to adopt new Windows releases more quickly.
* [Configure Windows diagnostics data](https://go.microsoft.com/fwlink/?linkid=859970) - Find out about the importance of Windows diagnostic data and how Microsoft protects that data.

> [!NOTE]
> Upgrade Readiness may not be able to assess compatibility for custom and line-of-business (LOB) apps in an organization.

#### Language packs

For a Microsoft 365 powered device, you'll also need to download Office 365 ProPlus language packs that applies to the client. These come in 32-bit (x86) or 64-bit (x64). A specific language must be installed as the default. You can install other languages later. For more info, see these resources:
* [Choose between 64-bit or 32-bit version of Office](https://go.microsoft.com/fwlink/?linkid=862361) - Helps you decide which version of Office is right for you.
* [Language accessory pack for Office](https://go.microsoft.com/fwlink/?linkid=860280) - Follow the steps to install the language accessory pack for Office.
* [Add an additional language pack](https://go.microsoft.com/fwlink/?linkid=860281) - Get step-by-step info on adding a language or setting language preferences in Office.

### Step 3: Governance and business processes

#### Windows as a service
Windows 10 introduced the concept of Windows as a service. This greatly changes the frequency and style of updates to Windows. Instead of new versions being released every 3-5 years, a more incremental model is used where two smaller updates (Feature Updates) are released yearly. For more info, see:
* [Windows as a service on the Windows IT Pro Center](https://www.microsoft.com/itpro/windows-10/windows-as-a-service)
* [Overview of Windows as a service](https://go.microsoft.com/fwlink/?linkid=860288)
* [Update Windows 10 in the enterprise](https://go.microsoft.com/fwlink/?linkid=860285)

#### Pilot users and deployment rings
Be sure to have a pilot group of users selected from different parts of the business. If you have Microsoft 365 powered devices, Windows 10 and Office 365 ProPlus users should be in these deployment rings. You need to create deployment groups to help minimize the effect on network bandwidth.

**Windows 10 deployment rings**

There are three servicing channels for OS deployment rings:
* Windows Insider Program - Provides organizations with the opportunity to test and provide feedback on features that are shipped in the next feature update.
* Semi-Annual Channel - Provides new functionality with twice-per-year feature update releases. Organizations can choose when to deploy updates from the Semi-Annual Channel.
* Long-Term Servicing Channel (LTSC) - Used for specialized devices and receives new feature releases about every three years.

For more info, see:
* [Windows Insider Program, Semi-Annual Channel, and Long-Term Servicing Channel](https://go.microsoft.com/fwlink/?linkid=860293)
* [Build deployment rings for Windows 10 updates](https://go.microsoft.com/fwlink/?linkid=860294)
* [Manage software updates using Intune in Azure Portal](https://docs.microsoft.com/intune/windows-update-for-business-configure)

**Office 365 ProPlus**

For Microsoft 365 powered devices, you must also be able to support the six-month update channel for both IT and business users. One way to do so is to have three groups:
* Current Channel
* Deferred Channel
* First-release for Deferred Channel

Each group has different configuration files, as users from the Current Channel are used as a pilot to test earlier updates. For more info, see:
* [Update process for Office 365 ProPlus](https://go.microsoft.com/fwlink/?linkid=860299)
* [Manage updates to Office 365 ProPlus](https://go.microsoft.com/fwlink/?linkid=860300)
* [Configure update settings for Office 365 ProPlus](https://go.microsoft.com/fwlink/?linkid=860301)
* [Update channels for Office 365 ProPlus](https://go.microsoft.com/fwlink/?linkid=860302)
* [Version and build numbers of update channel releases](https://go.microsoft.com/fwlink/?linkid=860304)

For more info, see [Phase 4: Office 365 ProPlus infrastructure for Microsoft 365 Enterprise](office365proplus-infrastructure.md).

## Phase 2: Testing phase
Once you've completed the scenarios and requirements in [Step 1: Consideration phase](#step-1-consideration-phase), you can move to this stage. 

To use Windows Autopilot, make sure you are ready to perform these tasks:
* [Networking](#step-1-networking)
* [Identity](#step-2-identity)
* [Client readiness](#step-3-client-readiness)
* [Diagnostics data](#step-4-diagnostics-data)

### Step 1: Networking
Ports to the client need to be opened for Office 365 ProPlus (for a Microsoft 365 powered device) and Configuration Manager. For more details about setting up your Microsoft 365 Enterprise networking infrastructure, see [Phase 1: Networking](networking-infrastructure.md).

When setting up your networking infrastructure as part of Windows deployment, make sure you complete these steps:
1. Read the best practices for [network planning and improving migration performance for Office 365](http://go.microsoft.com/fwlink/?LinkId=733655).
2. [Plan for network devices that connect to Office 365 services](http://go.microsoft.com/fwlink/?LinkId=733652).
3. [Review network impact of directory synchronization](http://go.microsoft.com/fwlink/?LinkId=733652).
4. Calculate the number of clients to use per IP address and understand [Network Address Translation (NAT) support with Office 365](http://go.microsoft.com/fwlink/?LinkId=733653) and how it impacts the number of users and client devices you can serve with a single IP address.
5. If your organization restricts computers on your network from connecting to the Internet, you'll need to understand the [endpoints (fully qualified domain names (FQDNs), ports, URLs, IPv4, and IPv6 address ranges)](http://go.microsoft.com/fwlink/?LinkID=280129) that you should include in your outbound allow lists to ensure your computers can successfully use Office 365 services.
6. [Create domain name system records for Office 365 at any Domain Name System hosting provider](http://go.microsoft.com/fwlink/?LinkId=733656).
7. [Reduce mail exchange (MX) DNS record time to live (TTL) value](http://go.microsoft.com/fwlink/?LinkId=733656).

### Step 2: Identity
Intelligent security for Microsoft 365 Enterprise, in which the right users have access to the right resources with an appropriate level of access, begins with identity management. For more details about setting up your Microsoft 365 Enterprise identity infrastructure, see [Phase 2: Identity](identity-infrastructure.md).

When setting up your identity infrastructure as part of Windows deployment, make sure you complete these tasks:
1. [Add a domain and users to Office 365](http://go.microsoft.com/fwlink/?LinkID=526338).
2. [Install and run the Office 365 IdFix tool](http://go.microsoft.com/fwlink/?LinkId=733662), which scans your on-premises Active Directory environment and identifies problems that might impact directory synchronization and slow your migration to Office 365.
3. Configure Active Directory for directory synchronization with Office 365 and [integrate on-premises directories with Azure AD](http://go.microsoft.com/fwlink/?LinkId=733661).
4. [Prepare to provision users through directory synchronization to Office 365](http://go.microsoft.com/fwlink/?LinkId=733659).
5. Know the [prerequisites for Azure AD Connect](http://go.microsoft.com/fwlink/?LinkId=733663), then install and run the Azure AD Connect tool to synchronize your on-premises Active Directory to the Azure AD service used by Office 365.
6. Determine custom installation of Azure AD Connect (full version of SQL Server for directory synchronization, if required).
7. [Integrate your on-premises identities with Azure AD](http://go.microsoft.com/fwlink/?LinkID=733485).
8. [Sync a list of required attributes with AD Connect](https://go.microsoft.com/fwlink/?linkid=860363) to get all the features in Office 365 and Windows 10.
9. Activate Windows 10 Enterprise licenses, which are checked based on Azure AD credentials.

    This provides a systematic way to assign licenses to end users and groups in your organization. For more info, see [Windows 10 Subscription Activation](https://go.microsoft.com/fwlink/?linkid=860365) and [Deploy Windows 10 licenses](https://go.microsoft.com/fwlink/?linkid=860367).

### Step 3: Client readiness

#### System requirements
To prepare for Windows 10 deployment through Windows Autopilot, make sure you meet these system requirements:
* Windows 10, version 1703 or later
* Intune licenses other mobile device management (MDM) services to manage devices
* Storage and bandwith requires minimal customization
* Diagnostic data (set at Basic level or above) - For more info, see [2.4 Diagnostic data](#24-diagnostic-data).
* Windows 10 Enterprise E3 or E5
* Devices must be registered to your organization - For more info, see [Plan for network devices that connect to Office 365 services](http://go.microsoft.com/fwlink/?LinkId=733652).
* Devices must be pre-installed with Windows 10, version 1703 or later
* Devices must have access to the Internet
* Azure AD Premium P1 or P2 is installed and configured and [automatic enrollment must be configured](https://go.microsoft.com/fwlink/?linkid=860700)

### Step 4: Diagnostic data
Microsoft uses diagnostic data to help keep Windows devices secure by identifying malware trends and other threats and to help us improve the quality of Windows and Microsoft services. You must ensure that the diagnostics service is enabled at a minimum level of Basic on all endpoints in you organization. **By default, this service is enabled and set to the Enhanced level.** However, it’s good practice to check and ensure that they are receiving sensor data. Setting levels through policies overrides device-level settings. For more info, see:

You can configure your operating system diagnostic data settings using the management tools you’re already using, such as Group Policy, MDM, or Windows Provisioning. You can also manually change your settings using Registry Editor. Setting your diagnostic data levels through a management policy overrides any device level settings.

Use the appropriate value in the table below when you configure the management policy.

| Level | Data gathered | Value |
|:--- |:--- |:--- |
| Security | Security data only. | 0 |
| Basic | Security data, and basic system and quality data. | 1 |
| Enhanced | Security data, basic system and quality data, and enhanced insights and advanced reliability data. | 2 |
| Full | Security data, basic system and quality data, enhanced insights and advanced reliability data, and full diagnostics data. | 3 |

You can enable diagnostics data through these methods:
* Microsoft Intune - If you plan to use Intune to manage your devices, you can create a configuration policy to enable diagnostic data by configuring the <a href="https://docs.microsoft.com/windows/client-management/mdm/policy-csp-system#system-allowtelemetry" target="blank">SystemAllowTelemetry</a> system policy. For more info on setting up configuration policies, see [Manage settings and features on your devices with Microsoft Intune policies](https://aka.ms/intuneconfigpolicies).
* Registry Editor - You can use the Registry Editor to manually enable diagnostic data on each device in your organization, or write a script to edit the registry. If a management policy already exists, such as Group Policy or MDM, it will override this registry setting.
* Group Policy - If you do not plan to enroll devices in Intune, you can use a Group Policy object to set your organization’s diagnostic data level.
* Command prompt - You can set Windows 10 diagnostics data and service to automatically start with the command prompt. This method is best if you are testing the service on only a few devices. Enabling the service to start automatically with this command will not configure the diagnostic data level. If you have not configured a diagnostic data level using management tools, the service will operate with the default Enhanced level.

See [Configure Windowsdiagnostic data in your organization](https://docs.microsoft.com/windows/configuration/configure-windows-diagnostic-data-in-your-organization) to learn more about Windows diagnostic data and how you can enable it based on the method that you choose.

## Phase 3: Deployment phase
When ready, complete these:

1. Enable auto-enrollment using Azure AD Premium.

    To allow this functionality, see [Enable Windows 10 automatic enrollment](https://go.microsoft.com/fwlink/?linkid=860990).

2. Register device ID.

    To register devices, you need to acquire their hardware IDs. Currently, we are working with hardware vendors to enable them to provide hardware IDs or upload them on their customer’s behalf.

    Currently, Surface supports Autopilot. Autopilot support from other hardware manufacturers are upcoming. 

    To capture the hardware ID information manually, use the Get-WindowsAutopilotInfo PowerShell script. The script generates a CSV file with the device's hardware ID. Install the PowerShellGet module, download the PowerShell script, run it, save the CSV file, and then upload it to the Microsoft Store for Business.

    For more info, see:
    * [Overview of registering devices to your organization](https://go.microsoft.com/fwlink/?linkid=860991)
    * [Install and upgrade PowerShellGet module](https://go.microsoft.com/fwlink/?linkid=861001)
    * [Use PowerShell to get the device hardware ID](https://go.microsoft.com/fwlink/?linkid=861007)

    By uploading this information to the [Microsoft Store for Business](https://go.microsoft.com/fwlink/?linkid=691471) or Partner Center admin portal, you'll be able to assign devices to your organization. These portals also provide additional options and customizations to configure your devices.

3. Deploy Office 365 ProPlus 2016 apps to Windows 10 devices using Intune.

    For a Microsoft 365 powered device, you'll need to deploy the Office 365 ProPlus 2016 suite to Windows 10 user groups. To do this:
    1. Configure the app suite by choosing specific Office 365 ProPlus apps.
    2. Configure app information, such as suite name, description, and category.
    3. Configure app settings, including versioning (32-bit versus 64-bit), the update channel, and languages.
    4. Save these configurations.

    The app suite should show up in the app panel. If you see an error message, see [Assign Office 365 ProPlus apps to devices that run Windows 10](https://go.microsoft.com/fwlink/?linkid=857153) to help troubleshoot the issue.

4. Deploy Windows Autopilot.

    You can manage devices for your organization and apply an Autopilot deployment profile to your devices. When people in your organization run the OOBE for the device, the profile configures Windows based on the Autopilot deployment profile you applied to the device. As part of the overall process, you need to perform these tasks:
    1. Add devices
    2. Group devices (optional)
    3. Create Autopilot deployment profile
    4. Apply Autopilot deployment profile

    For step-by-step guidance see [Manage Windows device deployment with Windows Autopilot](https://go.microsoft.com/fwlink/?linkid=852442).

    For end users, they can set up a device that's been configured through Autopilot by:
    1. Turning on the new Windows 10 device.
    2. Selecting the language.
    3. Connecting to a network.
    4. Entering their Azure AD email and password.

    Azure AD Join and MDM then automatically enroll the device. MDM also applies organization-configured policies, settings, and apps.

5. Manage Windows device deployment with Windows Autopilot deployment.

    You can manage new devices in the [Microsoft Store for Business](https://go.microsoft.com/fwlink/?linkid=691471). New devices must meet these requirements:
    * Have Windows 10, version 1703 or later installed
    * Have not been through Windows OOBE

    For more info, see [Manage Autopilot deployment profiles using Microsoft Store for Business](https://go.microsoft.com/fwlink/?linkid=852441).

-->


