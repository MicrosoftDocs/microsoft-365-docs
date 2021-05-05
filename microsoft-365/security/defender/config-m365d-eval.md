---
title: Configure Microsoft 365 Defender pillars for the trial lab or pilot environment
description: Configure Microsoft 365 Defender pillars, such as Microsoft Defender for Office 365 , Microsoft Defender for Identity, Microsoft Cloud App Security, and Microsoft Defender for Endpoint, for your trial lab or pilot environment.
keywords: configure Microsoft 365 Defender trial, Microsoft 365 Defender trial configuration, configure Microsoft 365 Defender pilot project, configure Microsoft 365 Defender  pillars, Microsoft 365 Defender pillars
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: m365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: dolmont
author: DulceMontemayor
localization_priority: Normal
manager: dansimp
audience: ITPro
ms.collection: 
  - M365-security-compliance
  - m365solution-scenario
  - m365solution-evalutatemtp
ms.topic: article
ms.technology: m365d
---

# Configure Microsoft 365 Defender pillars for your trial lab or pilot environment

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]


**Applies to:**
- Microsoft 365 Defender


Creating a Microsoft 365 Defender trial lab or pilot environment and deploying it is a three-phase process:

|[![Phase 1: Prepare](../../media/phase-diagrams/prepare.png)](prepare-m365d-eval.md)<br/>[Phase 1: Prepare](prepare-m365d-eval.md) |[![Phase 2: Set up](../../media/phase-diagrams/setup.png)](setup-m365deval.md)<br/>[Phase 2: Set up](setup-m365deval.md) |![Phase 3: Onboard](../../media/phase-diagrams/onboard.png)<br/>Phase 3: Onboard | [![Back to pilot](../../media/phase-diagrams/backtopilot.png)](m365d-pilot.md)<br/>[Back to pilot playbook](m365d-pilot.md) |
|--|--|--|--|
|| |*You are here!* | |

You're currently in the configuration phase.

Preparation is key to any successful deployment. In this article, you'll be guided on the points you'll need to consider as you prepare to deploy Microsoft Defender for Endpoint.


## Microsoft 365 Defender pillars
Microsoft 365 Defender consists of four pillars. Although one pillar can already provide value to your network organization's security, enabling the four Microsoft 365 Defender pillars will give your organization the most value.

![Image of_Microsoft 365 Defender solution for users, Microsoft Defender for Identity, for endpoints Microsoft Defender for Endpoint, for cloud apps, Microsoft Cloud App Security, and for data, Microsoft Defender for Office 365](../../media/mtp/m365pillars.png)

This section will guide you to configure:
-	Microsoft Defender for Office 365
-	Microsoft Defender for Identity 
-	Microsoft Cloud App Security
-	Microsoft Defender for Endpoint


## Configure Microsoft Defender for Office 365

>[!NOTE]
>Skip this step if you've already enabled Defender for Office 365. 

There's a PowerShell Module called the *Office 365 Advanced Threat Protection Recommended Configuration Analyzer (ORCA)* that helps determine some of these settings. When run as an administrator in your tenant, get-ORCAReport will help generate an assessment of the anti-spam, anti-phish, and other message hygiene settings. You can download this module from https://www.powershellgallery.com/packages/ORCA/. 

1. Navigate to [Office 365 Security & Compliance Center](https://protection.office.com/homepage) > **Threat management** > **Policy**.

   ![Image of_Office 365 Security & Compliance Center Threat management policy page](../../media/mtp-eval-32.png)
 
2. Click **Anti-phishing**, select **Create** and fill in the policy name and description. Click **Next**.

   ![Image of_Office 365 Security & Compliance Center anti-phishing policy page where you can name your policy](../../media/mtp-eval-33.png)

   > [!NOTE]
   > Edit your Advanced anti-phishing policy in Microsoft Defender for Office 365. Change **Advanced Phishing Threshold** to **2 - Aggressive**.

3. Click the **Add a condition** drop-down menu and select your domain(s) as recipient domain. Click **Next**.

   ![Image of_Office 365 Security & Compliance Center anti-phishing policy page where you can add a condition for its application](../../media/mtp-eval-34.png)
 
4. Review your settings. Click **Create this policy** to confirm. 

   ![Image of_Office 365 Security & Compliance Center anti-phishing policy page where you can review your settings and click the create this policy button](../../media/mtp-eval-35.png)
 
5. Select **Safe Attachments** and select the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** option.

   ![Image of_Office 365 Security & Compliance Center page where you can turn on ATP for SharePoint, OneDrive, and Microsoft Teams](../../media/mtp-eval-36.png)

6. Click the + icon to create a new safe attachment policy, apply it as recipient domain to your domains. Click **Save**.

   ![Image of_Office 365 Security & Compliance Center page where you can create a new create a new safe attachment policy](../../media/mtp-eval-37.png)
 
7. Next, select the **Safe Links** policy, then click the pencil icon to edit the default policy.

8. Make sure that the **Do not track when users click safe links** option is not selected, while the rest of the options are selected. See [Safe Links settings](/microsoft-365/security/office-365-security/recommended-settings-for-eop-and-office365) for details. Click **Save**. 

   ![Image of_Office 365 Security & Compliance Center page which shows that the option Do not track when users click safe is not selected](../../media/mtp-eval-38.png)

9. Next select the **Anti-malware** policy, select the default, and choose the pencil icon.

10. Click **Settings** and select **Yes and use the default notification text** to enable **Malware Detection Response**. Turn the **Common Attachment Types Filter** on. Click **Save**.

    ![Image of_Office 365 Security & Compliance Center page which shows that the malware detection response is turned on with default notification and the common attachment types filter is turned on](../../media/mtp-eval-39.png)
  
11. Navigate to [Office 365 Security & Compliance Center](https://protection.office.com/homepage) > **Search** > **Audit log search** and turn Auditing on.

    ![Image of_Office 365 Security & Compliance Center page where you can turn on the Audit log search](../../media/mtp-eval-40.png)

12. Integrate Microsoft Defender for Office 365 with Microsoft Defender for Endpoint. Navigate to [Office 365 Security & Compliance Center](https://protection.office.com/homepage) > **Threat management** > **Explorer** and select **Microsoft Defender for Endpoint Settings** on the upper right corner of the screen. In the Defender for Endpoint connection dialog box, turn on **Connect to Microsoft Defender for Endpoint**.

    ![Image of_Office 365 Security & Compliance Center page where you can turn Microsoft Defender for Endpoint  connection on](../../media/mtp-eval-41.png)

## Configure Microsoft Defender for Identity

>[!NOTE]
>Skip this step if you've already enabled Microsoft Defender for Identity

1. Navigate to [Microsoft 365 Security Center](https://security.microsoft.com/info) > select **More Resources** > **Microsoft Defender for Identity**.

   ![Image of_Microsoft 365 Security Center page where there's an option to open Microsoft Defender for Identity](../../media/mtp-eval-42.png)

2. Click **Create** to start the Microsoft Defender for Identity wizard. 

   ![Image of_Microsoft Defender for Identity wizard page where you should click Create button](../../media/mtp-eval-43.png)

3. Choose **Provide a username and password to connect to your Active Directory forest**.  

   ![Image of_Microsoft Defender for Identity welcome page](../../media/mtp-eval-44.png)

4. Enter your Active Directory on-premises credentials. This can be any user account that has read access to Active Directory.

   ![Image of_Microsoft Defender for Identity Directory services page where you should put your credentials](../../media/mtp-eval-45.png)

5. Next, choose **Download Sensor Setup** and transfer file to your domain controller.

   ![Image of_Microsoft Defender for Identity page where you can select Download Sensor Setup](../../media/mtp-eval-46.png)

6. Execute the Microsoft Defender for Identity Sensor Setup and begin following the wizard.

   ![Image of_Microsoft Defender for Identity page where you should click next to follow the Microsoft Defender for Identity sensor wizard](../../media/mtp-eval-47.png)
 
7. Click **Next** at the sensor deployment type.

   ![Image of_Microsoft Defender for Identity page where you should click next to go to next page](../../media/mtp-eval-48.png)
 
8. Copy the access key because you need to enter it next in the Wizard.

   ![Image of_the sensors page where you should copy the access key that you need to enter in the next Microsoft Defender for Identity sensor setup wizard page](../../media/mtp-eval-49.png)
 
9. Copy the access key into the Wizard and click **Install**. 

   ![Image of_Microsoft Defender for Identity sensor wizard page where you should provide the access key and then click the install button](../../media/mtp-eval-50.png)

10. Congratulations, you've successfully configured Microsoft Defender for Identity on your domain controller.

    ![Image of_Microsoft Defender for Identity sensor wizard installation completion where you should click the finish button](../../media/mtp-eval-51.png)
 
11. Under the [Microsoft Defender for Identity](https://go.microsoft.com/fwlink/?linkid=2040449) settings section, select **Microsoft Defender for Endpoint **, then turn on the toggle. Click **Save**. 

    ![Image of_the Microsoft Defender for Identity settings page where you should turn the Microsoft Defender for Endpoint  toggle on](../../media/mtp-eval-52.png)


## Configure Microsoft Cloud App Security

> [!NOTE]
> Skip this step if you've already enabled Microsoft Cloud App Security. 

1. Navigate to [Microsoft 365 Security Center](https://security.microsoft.com/info) > **More Resources** > **Microsoft Cloud App Security**.

   ![Image of_Microsoft 365 Security Center page where you can see Microsoft Cloud App card and should click the open button](../../media/mtp-eval-53.png)

2. At the information prompt to integrate Microsoft Defender for Identity, select **Enable Microsoft Defender for Identity data integration**.
  
   ![Image of_the information prompt to integrate Microsoft Defender for Identity where you should select the Enable Microsoft Defender for Identity data integration link](../../media/mtp-eval-54.png)

   > [!NOTE]
   > If you don’t see this prompt, it might mean that your Microsoft Defender for Identity data integration has already been enabled. However, if you are not sure, contact your IT Administrator to confirm. 

3. Go to **Settings**, turn on the **Microsoft Defender for Identity integration** toggle, then click **Save**. 

   ![Image of_the settings page where you should turn on the Microsoft Defender for Identity integration toggle then click save](../../media/mtp-eval-55.png)
   
   > [!NOTE]
   > For new Microsoft Defender for Identity instances, this integration toggle is automatically turned on. Confirm that your Microsoft Defender for Identity integration has been enabled before you proceed to the next step.
 
4. Under the Cloud discovery settings, select **Microsoft Defender for Endpoint integration**, then enable the integration. Click **Save**.

   ![Image of_the Microsoft Defender for Endpoint page where the block unsanctioned apps checkbox under Microsoft Defender for Endpoint integration is selected. Click save.](../../media/mtp-eval-56.png)

5. Under Cloud discovery settings, select **User enrichment**, then enable the integration with Azure Active Directory.

   ![Image of User enrichment section where the enrich discovered user identifiers with Azure Active Directory usernames checkbox is selected](../../media/mtp-eval-57.png)


## Configure Microsoft Defender for Endpoint

>[!NOTE]
>Skip this step if you've already enabled Microsoft Defender for Endpoint.

1. Navigate to [Microsoft 365 Security Center](https://security.microsoft.com/info) > **More Resources** > **Microsoft Defender Security Center**. Click **Open**.

   ![Image of_Microsoft Defender Security Center option in the Microsoft 365 Security Center page](../../media/mtp-eval-58.png)
 
2. Follow the Microsoft Defender for Endpoint wizard. Click **Next**. 

   ![Image of_the Microsoft Defender Security Center welcome wizard page](../../media/mtp-eval-59.png)

3. Choose based on your preferred data storage location, data retention policy, organization size, and opt-in for preview features.

   ![Image of_the page to select your data storage country, retention policy, and organization size. Click next when you're done selecting.](../../media/mtp-eval-60.png)
   
   > [!NOTE]
   > You cannot change some of the settings, like data storage location, afterwards. 

   Click **Next**. 

4. Click **Continue** and it will provision your Microsoft Defender for Endpoint tenant.

   ![Image of_the page prompting you click the continue button to create your cloud instance](../../media/mtp-eval-61.png)

5. Onboard your endpoints through Group Policies, Microsoft Endpoint Manager or by running a local script to Microsoft Defender for Endpoint. For simplicity, this guide uses the local script.

6. Click **Download package** and copy the onboarding script to your endpoint(s).

   ![Image of_page prompting you click the Download package button to copy the onboarding script to your endpoint or endpoints](../../media/mtp-eval-62.png)

7. On your endpoint, run the onboarding script as Administrator and choose Y. 

   ![Image of_the commandline where you run the onboarding script and choose Y to proceed](../../media/mtp-eval-63.png)

8. Congratulations, you've onboarded your first endpoint.

   ![Image of_the commandline where you get the confirmation that you've onboarded your first endpoint. Press any key to continue](../../media/mtp-eval-64.png)

9. Copy-paste the detection test from the Microsoft Defender for Endpoint wizard.

   ![Image of_the run a detection test step where you should click Copy to copy the detection test script that you should paste in the command prompt](../../media/mtp-eval-65.png)

10. Copy the PowerShell script to an elevated command prompt and run it. 

    ![Image of_command prompt where you should copy the PowerShell script to an elevated command prompt and run it](../../media/mtp-eval-66.png)

11. Select **Start using Microsoft Defender for Endpoint** from the Wizard.

    ![Image of_the confirmation prompt from the wizard where you should click Start using Microsoft Defender for Endpoint](../../media/mtp-eval-67.png)
 
12. Visit the [Microsoft Defender Security Center](https://securitycenter.windows.com/). Go to **Settings** and then select **Advanced features**. 

    ![Image of_Microsoft Defender Security Center Settings menu where you should select Advanced features](../../media/mtp-eval-68.png)

13. Turn on the integration with **Microsoft Defender for Identity**.  

    ![Image of_Microsoft Defender Security Center Advanced features, Microsoft Defender for Identity option toggle that you need to turn on](../../media/mtp-eval-69.png)

14. Turn on the integration with **Office 365 Threat Intelligence**.

    ![Image of_Microsoft Defender Security Center Advanced features, Office 365 Threat Intelligence option toggle that you need to turn on](../../media/mtp-eval-70.png)

15. Turn on integration with **Microsoft Cloud App Security**.

    ![Image of_Microsoft Defender Security Center Advanced features, Microsoft Cloud App Security option toggle that you need to turn on](../../media/mtp-eval-71.png)

16. Scroll down and click **Save preferences** to confirm the new integrations.

    ![Image of_Save preferences button that you need to click](../../media/mtp-eval-72.png)

## Start the Microsoft 365 Defender service

>[!NOTE]
>Starting June 1, 2020, Microsoft automatically enables Microsoft 365 Defender features for all eligible tenants. See this [Microsoft Tech Community article on license eligibility](https://techcommunity.microsoft.com/t5/security-privacy-and-compliance/microsoft-threat-protection-will-automatically-turn-on-for/ba-p/1345426) for details. 


Go to [Microsoft 365 Security Center](https://security.microsoft.com/homepage). Navigate to **Settings** and then select **Microsoft 365 Defender**.

![Image of_Microsoft 365 Defender option screenshot from the Microsoft 365 Security Center Settings page ](../../media/mtp-eval-72b.png) <br>

For a more comprehensive guidance, see [Turn on Microsoft 365 Defender](m365d-enable.md). 

Congratulations! You've just created your Microsoft 365 Defender trial lab or pilot environment! Now you can familiarize yourself with the Microsoft 365 Defender user interface! See what you can learn from the following Microsoft 365 Defender interactive guide and know how to use each dashboard for your day-to-day security operation tasks.

[Check out the interactive guide](https://aka.ms/MTP-Interactive-Guide)

Next, you can simulate an attack and see how the cross product capabilities detect, create alerts, and automatically respond to a fileless attack on an endpoint.

## Next step

- [Generate a test alert](generate-test-alert.md) - Run an attack simulation in your Microsoft 365 Defender trial lab.