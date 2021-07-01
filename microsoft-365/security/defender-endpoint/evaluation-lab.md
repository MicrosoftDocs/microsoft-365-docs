---
title: Microsoft Defender for Endpoint evaluation lab
description: Learn about Microsoft Defender for Endpoint capabilities, run attack simulations, and see how it prevents, detects, and remediates threats.
keywords: evaluate Microsoft Defender for Endpoint, evaluation, lab, simulation, windows 10, windows server 2019, evaluation lab
search.product: eADQiWindows 10XVcnh
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-evalutatemtp
ms.topic: article
ms.technology: mde
---

# Microsoft Defender for Endpoint evaluation lab

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint](https://go.microsoft.com/fwlink/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

>Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-enablesiem-abovefoldlink)


Conducting a comprehensive security product evaluation can be a complex process requiring cumbersome environment and device configuration before an end-to-end attack simulation can actually be done. Adding to the complexity is the challenge of tracking where the simulation activities, alerts, and results are reflected during the evaluation.

The Microsoft Defender for Endpoint evaluation lab is designed to eliminate the complexities of device and environment configuration so that you can  focus on evaluating the capabilities of the platform, running simulations, and seeing the prevention, detection, and remediation features in action.

> [!VIDEO https://www.microsoft.com/en-us/videoplayer/embed/RE4qLUM]

With the simplified set-up experience, you can focus on running your own test scenarios and the pre-made simulations to see how Defender for Endpoint performs. 

You'll have full access to the powerful capabilities of the platform such as automated investigations, advanced hunting, and threat analytics, allowing you to test the comprehensive protection stack that Defender for Endpoint offers. 

You can add Windows 10 or Windows Server 2019 devices that come pre-configured to have the latest OS versions and the right security components in place as well as Office 2019 Standard installed.

You can also install threat simulators. Defender for Endpoint has partnered with industry leading threat simulation platforms to help you test out the Defender for Endpoint capabilities without having to leave the portal.

 Install your preferred simulator, run scenarios within the evaluation lab, and instantly see how the platform performs - all conveniently available at no extra cost to you. You'll also have convenient access to wide array of simulations which you can access and run from the simulations catalog.
    

## Before you begin
You'll need to fulfill the [licensing requirements](minimum-requirements.md#licensing-requirements) or have trial access to Microsoft Defender for Endpoint to access the evaluation lab.

You must have **Manage security settings** permissions to:
- Create the lab
- Create devices
- Reset password
- Create simulations 
 
If you enabled role-based access control (RBAC) and created at least a one machine group, users must have access to All machine groups.

For more information, see [Create and manage roles](user-roles.md).

Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://www.microsoft.com/microsoft-365/windows/microsoft-defender-atp?ocid=docs-wdatp-main-abovefoldlink)


## Get started with the lab
You can access the lab from the menu. In the navigation menu, select **Evaluation and tutorials > Evaluation lab**.

![Image of the evaluation lab on the menu](images/evaluation-lab-menu.png)

>[!NOTE]
>- Depending the type of environment structure you select, devices will be available for the specified number of hours from the day of activation.
>- Each environment is provisioned with a limited set of test devices. When you've used up the provisioned devices and have deleted them, you can request for more devices. 
>- You can request for lab resources once a month. 

Already have a lab? Make sure to enable the new threat simulators and have active devices.

## Setup the evaluation lab

1. In the navigation pane, select **Evaluation and tutorials** > **Evaluation lab**, then select **Setup lab**.

    ![Image of the evaluation lab welcome page](images/evaluation-lab-setup.png)

2. Depending on your evaluation needs, you can choose to setup an environment with fewer devices for a longer period or more devices for a shorter period. Select your preferred lab configuration then select **Next**.

    ![Image of lab configuration options](images/lab-creation-page.png) 


3. (Optional) You can choose to install threat simulators in the lab. 

    ![Image of install simulators agent](images/install-agent.png)

    >[!IMPORTANT]
    >You'll first need to accept and provide consent to the terms and information sharing statements. 

4. Select the threat simulation agent you'd like to use and enter your details. You can also choose to install threat simulators at a later time. If you choose to install threat simulation agents during the lab setup, you'll enjoy the benefit of having them conveniently installed on the devices you add.  
    
    ![Image of summary page](images/lab-setup-summary.png)

5.  Review the summary and select **Setup lab**.  

After the lab setup process is complete, you can add devices and run simulations. 


## Add devices
When you add a device to your environment, Defender for Endpoint sets up a well-configured device with connection details. You can add Windows 10 or Windows Server 2019 devices.

The device will be configured with the most up-to-date version of the OS and Office 2019 Standard as well as other apps such as Java, Python, and SysIntenals. 

If you chose to add a threat simulator during the lab setup, all devices will have the threat simulator agent installed in the devices that you add.

The device will automatically be onboarded to your tenant with the recommended Windows security components turned on and in audit mode - with no effort on your side. 

The following security components are pre-configured in the test devices:

- [Attack surface reduction](attack-surface-reduction.md)
- [Block at first sight](configure-block-at-first-sight-microsoft-defender-antivirus.md)
- [Controlled folder access](controlled-folders.md)
- [Exploit protection](enable-exploit-protection.md)
- [Network protection](network-protection.md)
- [Potentially unwanted application detection](detect-block-potentially-unwanted-apps-microsoft-defender-antivirus.md)
- [Cloud-delivered protection](cloud-protection-microsoft-defender-antivirus.md)
- [Microsoft Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview)

>[!NOTE]
> Microsoft Defender Antivirus will be on (not in audit mode). If Microsoft Defender Antivirus blocks you from running your simulation, you can turn off real-time protection on the device through Windows Security. For more information, see [Configure always-on protection](configure-real-time-protection-microsoft-defender-antivirus.md).

Automated investigation settings will be dependent on tenant settings. It will be configured to be semi-automated by default. For more information, see [Overview of Automated investigations](automated-investigations.md).

>[!NOTE]
>The connection to the test devices is done using RDP. Make sure that your firewall settings allow RDP connections.

1. From the dashboard, select **Add device**. 

2. Choose the type of device to add. You can choose to add Windows 10 or Windows Server 2019.

    ![Image of lab setup with device options](images/add-machine-options.png)


    >[!NOTE]
    >If something goes wrong with the device creation process, you'll be notified and you'll need to submit a new request. If the device creation fails, it will not be counted against the overall allowed quota. 

3. The connection details are displayed. Select **Copy** to save the password for the device.

    >[!NOTE]
    >The password is only displayed once. Be sure to save it for later use.

    ![Image of device added with connection details](images/add-machine-eval-lab.png)

4. Device set up begins. This can take up to approximately 30 minutes. 

5. See the status of test devices, the risk and exposure levels, and the status of simulator installations by selecting the **Devices** tab. 

    ![Image of devices tab](images/machines-tab.png)
    

    > [!TIP]
    > In the **Simulator status** column, you can hover over the information icon to know the installation status of an agent.

## Request for more devices
When all existing devices are used and deleted, you can request for more devices. You can request for lab resources once a month. 


1. From the evaluation lab dashboard, select **Request for more devices**.

   ![Image of request for more devices](images/request-more-devices.png)

2. Choose your configuration. 
3. Submit the request. 

When the request is submitted successfully you'll see a green confirmation banner and the date of the last submission.
 
You can find the status of your request in the **User Actions** tab, which will be approved in a matter of hours.

When approved, the requested devices will be added to your lab set up and you’ll be able to create more devices. 


> [!TIP]
> To get more out of your lab, don’t forget to check out our simulations library.

## Simulate attack scenarios
Use the test devices to run your own attack simulations by connecting to them. 

You can simulate attack scenarios using:
- The ["Do It Yourself" attack scenarios](https://securitycenter.windows.com/tutorials)
- Threat simulators

You can also use [Advanced hunting](advanced-hunting-overview.md) to query data and [Threat analytics](threat-analytics.md) to view reports about emerging threats.

### Do-it-yourself attack scenarios
If you are looking for a pre-made simulation, you can use our ["Do It Yourself" attack scenarios](https://securitycenter.windows.com/tutorials). These scripts are safe, documented, and easy to use. These scenarios will reflect Defender for Endpoint capabilities and walk you through investigation experience.


>[!NOTE]
>The connection to the test devices is done using RDP. Make sure that your firewall settings allow RDP connections.

1. Connect to your device and run an attack simulation by selecting **Connect**. 

    ![Image of the connect button for test devices](images/test-machine-table.png)

2. Save the RDP file and launch it by selecting **Connect**.

    ![Image of remote desktop connection](images/remote-connection.png)

    >[!NOTE]
    >If you don't have a copy of the password saved during the initial setup, you can reset the password by selecting **Reset password** from the menu:
    > ![Image of reset password](images/reset-password-test-machine.png)<br>
    > The device will change it’s state to “Executing password reset", then you’ll be presented with your new password in a few minutes.

3. Enter the password that was displayed during the device creation step. 

   ![Image of window to enter credentials](images/enter-password.png)

4. Run Do-it-yourself attack simulations on the device. 


### Threat simulator scenarios
If you chose to install any of the supported threat simulators during the lab setup, you can run the built-in simulations on the evaluation lab devices. 


Running threat simulations using third-party platforms is a good way to evaluate Microsoft Defender for Endpoint capabilities within the confines of a lab environment.

>[!NOTE]
>Before you can run simulations, ensure the following requirements are met:
>- Devices must be added to the evaluation lab
>- Threat simulators must be installed in the evaluation lab

1. From the portal select **Create simulation**.

2. Select a threat simulator.

    ![Image of threat simulator selection](images/select-simulator.png)

3. Choose a simulation or look through the simulation gallery to browse through the available simulations. 

    You can get to the simulation gallery from:
    - The main evaluation dashboard in the **Simulations overview** tile or
    - By navigating from the navigation pane **Evaluation and tutorials** > **Simulation & tutorials**, then select **Simulations catalog**.

4. Select the devices where you'd like to run the simulation on.

5. Select **Create simulation**.

6. View the progress of a simulation by selecting the **Simulations** tab. View the simulation state, active alerts, and other details. 

    ![Image of simulations tab](images/simulations-tab.png)
    
After running your simulations, we encourage you to walk through the lab progress bar and explore **Microsoft Defender for Endpoint triggered an automated investigation and remediation**. Check out the evidence collected and analyzed by the feature.

Hunt for attack evidence through advanced hunting by using the rich query language and raw telemetry and check out some world-wide threats documented in Threat analytics.


## Simulation gallery
Microsoft Defender for Endpoint has partnered with various threat simulation platforms to give you convenient access to test the capabilities of the platform right from the within the portal. 

View all the available simulations by going to  **Simulations and tutorials** > **Simulations catalog**  from the menu. 

A list of supported third-party threat simulation agents are listed, and specific types of simulations along with detailed descriptions are provided on the catalog. 

You can conveniently run any available simulation right from the catalog.  


![Image of simulations catalog](images/simulations-catalog.png)

Each simulation comes with an in-depth description of the attack scenario and references such as the MITRE attack techniques used and sample Advanced hunting queries you run.

**Examples:**
![Image of simulation description details1](images/simulation-details-aiq.png)


![Image of simulation description details2](images/simulation-details-sb.png)


## Evaluation report
The lab reports summarize the results of the simulations conducted on the devices.

![Image of the evaluation report](images/eval-report.png)

At a glance, you'll quickly be able to see:
- Incidents that were triggered
- Generated alerts
- Assessments on exposure level 
- Threat categories observed
- Detection sources
- Automated investigations


## Provide feedback
Your feedback helps us get better in protecting your environment from advanced attacks. Share your experience and impressions from product capabilities and evaluation results.

Let us know what you think, by selecting **Provide feedback**.

![Image of provide feedback](images/send-us-feedback-eval-lab.png)
