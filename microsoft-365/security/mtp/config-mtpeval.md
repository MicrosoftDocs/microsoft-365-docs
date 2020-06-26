---
title: Configure Microsoft Threat Protection pillars for the trial lab environment
description: Configure Microsoft Threat Protection pillars, Office 365 ATP, Azure ATP, Microsoft Cloud App Security, and Microsoft Defender ATP for your trial lab environment
keywords: configure Microsoft Threat Protection trial, Microsoft Threat Protection trial configuration, configure Microsoft Threat Protection  pillars, Microsoft Threat Protection pillars 
search.product: eADQiWindows 10XVcnh
search.appverid: met150
ms.prod: w10
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: dolmont  
author: DulceMontemayor
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection: M365-security-compliance 
ms.topic: article 
---

# Configure Microsoft Threat Protection pillars for your trial lab environment

**Applies to:**
- Microsoft Threat Protection


Creating a Microsoft Threat Protection trial lab environment and deploying it is a three-phase process:

<br>
<table border="0" width="100%" align="center">
  <tr style="text-align:center;">
    <td align="center" style="width:25%; border:0;" >
      <a href= "https://docs.microsoft.com/microsoft-365/security/mtp/prepare-mtpeval?view=o365-worldwide"> 
        <img src="../../media/prepare.png" alt="Prepare your Microsoft Threat Protection trial lab environment" title="Prepare your Microsoft Threat Protection trial lab environment" />
      <br/>Phase 1: Prepare </a><br>
    </td>
     <td align="center">
      <a href="https://docs.microsoft.com/microsoft-365/security/mtp/setup-mtpeval?view=o365-worldwide">
        <img src="../../media/setup.png" alt="Set up your Microsoft Threat Protection trial lab environment" title="Set up your Microsoft Threat Protection trial lab environment" />
      <br/>Phase 2: Setup </a><br>
    </td>
    <td align="center" bgcolor="#d5f5e3">
      <a href="https://docs.microsoft.com/microsoft-365/security/mtp/config-mtpeval?view=o365-worldwide">
        <img src="../../media/config-onboard.png" alt="Configure & Onboard" title="Configure each Microsoft Threat Protection pillar for your Microsoft Threat Protection trial lab environment and onboard endpoints" />
      <br/>Phase 3: Configure & Onboard </a><br>
</td>


  </tr>
</table>

You are currently in the configuration phase.


Preparation is key to any successful deployment. In this article, you'll be guided on the points you'll need to consider as you prepare to deploy Microsoft Defender ATP.


## Microsoft Threat Protection pillars
Microsoft Threat Protection consists of four pillars. Although one pillar can already provide value to your network organization's security, enabling the four Microsoft Threat Protection pillars will give your organization the most value.

![Image of_Microsoft Threat Protection solution for users, Azure Advanced Threat Protection, for endpoints Microsoft Defender Advanced Threat Protection, for cloud apps, Microsoft Cloud App Security, and for data, Office 365 Advanced Threat Protection  ](../../media/mtp-eval-31.png) <br>

This section will guide you to configure:
-	Office 365 Advanced Threat Protection
-	Azure Advanced Threat Protection 
-	Microsoft Cloud App Security
-	Microsoft Defender Advanced Threat Protection


## Configure Office 365 Advanced Threat Protection
>[!NOTE]
>Skip this step if you have already enabled Office 365 Advanced Threat Protection. 

There is a PowerShell Module called the *Office 365 Advanced Threat Protection Recommended Configuration Analyzer (ORCA)* that helps determine some of these settings. When run as an administrator in your tenant, get-ORCAReport will help generate an assessment of the anti-spam, anti-phish, and other message hygiene settings. You can download this module from https://www.powershellgallery.com/packages/ORCA/. 

1. Navigate to [Office 365 Security & Compliance Center](https://protection.office.com/homepage) > **Threat management** > **Policy**.
![Image of_Office 365 Security & Compliance Center Threat management policy page](../../media/mtp-eval-32.png) <br>
 
2. Click **ATP anti-phishing**, select **Create** and fill in the policy name and description. Click **Next**.
![Image of_Office 365 Security & Compliance Center anti-phishing policy page where you can name your policy](../../media/mtp-eval-33.png) <br>

>[!NOTE]
>Edit your Advanced ATP anti-phishing policy. Change **Advanced Phishing Threshold** to **2 - Aggressive**.
<br>

3. Click the **Add a condition** drop-down menu and select your domain(s) as recipient domain. Click **Next**.
![Image of_Office 365 Security & Compliance Center anti-phishing policy page where you can add a condition for its application](../../media/mtp-eval-34.png) <br>
 
4. Review your settings. Click **Create this policy** to confirm. 
![Image of_Office 365 Security & Compliance Center anti-phishing policy page where you can review your settings and click the create this policy button](../../media/mtp-eval-35.png) <br>
 
5. Select **ATP Safe attachments** and select the **Turn on ATP for SharePoint, OneDrive, and Microsoft Teams** option.  
![Image of_Office 365 Security & Compliance Center page where you can turn on ATP for SharePoint, OneDrive, and Microsoft Teams](../../media/mtp-eval-36.png) <br>

6. Click the + icon to create a new safe attachment policy, apply it as recipient domain to your domains. Click **Save**.
![Image of_Office 365 Security & Compliance Center page where you can create a new create a new safe attachment policy](../../media/mtp-eval-37.png) <br>
 
7. Next, select the **ATP Safe Links** policy, then click the pencil icon to edit the default policy.

8. Make sure that the **Do not track when users click safe links** option is not selected, while the rest of the options are selected. See [Safe Links settings](https://docs.microsoft.com/microsoft-365/security/office-365-security/recommended-settings-for-eop-and-office365-atp?view=o365-worldwide) for details. Click **Save**. 
![Image of_Office 365 Security & Compliance Center page which shows that the option Do not track when users click safe is not selected](../../media/mtp-eval-38.png) <br>

9. Next select the **Anti-malware** policy, select the default, and choose the pencil icon.

10. Click **Settings** and select **Yes and use the default notification text** to enable **Malware Detection Response**. Turn the **Common Attachment Types Filter** on. Click **Save**.
<br>![Image of_Office 365 Security & Compliance Center page which shows that the malware detection response is turned on with default notification and the common attachment types filter is turned on](../../media/mtp-eval-39.png) <br>
  
11. Navigate to [Office 365 Security & Compliance Center](https://protection.office.com/homepage) > **Search** > **Audit log search** and turn Auditing on.  
![Image of_Office 365 Security & Compliance Center page where you can turn on the Audit log search](../../media/mtp-eval-40.png) <br>

12. Integrate Office 365 ATP with Microsoft Defender ATP. Navigate to [Office 365 Security & Compliance Center](https://protection.office.com/homepage) > **Threat management** > **Explorer** and select **WDATP Settings** on the upper right corner of the screen. In the Microsoft Defender ATP connection dialog box, turn on **Connect to Windows ATP**.
![Image of_Office 365 Security & Compliance Center page where you can turn Windows Defender ATP connection on](../../media/mtp-eval-41.png) <br>

## Configure Azure Advanced Threat Protection
>[!NOTE]
>Skip this step if you have already enabled Azure Advanced Threat Protection


1. Navigate to [Microsoft 365 Security Center](https://security.microsoft.com/info) > select **More Resources** > **Azure Advanced Threat Protection**.
![Image of_Microsoft 365 Security Center page where there's an option to open Azure Advanced Threat Protection](../../media/mtp-eval-42.png) <br>

2. Click **Create** to start the Azure Advanced Threat Protection wizard. 
<br>![Image of_Azure Advanced Threat Protection wizard page where you should click Create button](../../media/mtp-eval-43.png) <br>

3. Choose **Provide a username and password to connect to your Active Directory forest**.  
![Image of_Azure Advanced Threat Protection welcome page](../../media/mtp-eval-44.png) <br>

4. Enter your Active Directory on-premises credentials. This can be any user account that has read access to Active Directory.
![Image of_Azure Advanced Threat Protection Directory services page where you should put your credentials](../../media/mtp-eval-45.png) <br>

5. Next, choose **Download Sensor Setup** and transfer file to your domain controller. 
![Image of_Azure Advanced Threat Protection page where you can select Download Sensor Setup](../../media/mtp-eval-46.png) <br>

6. Execute the Azure ATP Sensor Setup and begin following the wizard.
<br>![Image of_Azure Advanced Threat Protection page where you should click next to follow the Azure ATP sensor wizard](../../media/mtp-eval-47.png) <br>
 
7. Click **Next** at the sensor deployment type.
<br>![Image of_Azure Advanced Threat Protection page where you should click next to follow the Azure ATP sensor wizard](../../media/mtp-eval-48.png) <br>
 
8. Copy the access key as you will need to enter it next in the Wizard.
![Image of_the sensors page where you should copy the access key that you need to enter in the next Azure ATP sensor setup wizard page](../../media/mtp-eval-49.png) <br>
 
9. Copy the access key into the Wizard and click **Install**. 
<br>![Image of_Azure Advanced Threat Protection Azure ATP sensor wizard page where you should provide the access key and then click the install button](../../media/mtp-eval-50.png) <br>

10. Congratulations, you have successfully configured Azure Advanced Threat Protection on your domain controller.
![Image of_Azure Advanced Threat Protection Azure ATP sensor wizard installation completion where you should click the finish button](../../media/mtp-eval-51.png) <br>
 
11. Under the [Azure Azure ATP](https://go.microsoft.com/fwlink/?linkid=2040449) settings section, select **Windows Defender ATP**, then turn the toggle on. Click **Save**. 
![Image of_the Azure Azure ATP settings page where you should turn the Windows Defender ATP toggle on](../../media/mtp-eval-52.png) <br>

>[!NOTE]
>Windows Defender ATP has been rebranded as Microsoft Defender ATP. Rebranding changes across all of our portals are being rolled out the for consistency.


## Configure Microsoft Cloud App Security
>[!NOTE]
>Skip this step if you have already enabled Microsoft Cloud App Security. 

1. Navigate to [Microsoft 365 Security Center](https://security.microsoft.com/info) > **More Resources** > **Microsoft Cloud App Security**.
![Image of_Microsoft 365 Security Center page where you can see Microsoft Cloud App card and should click the open button](../../media/mtp-eval-53.png) <br>

2. At the information prompt to integrate Azure ATP, select **Enable Azure ATP data integration**. 
<br>![Image of_the information prompt to integrate Azure ATP where you should select the Enable Azure ATP data integration link](../../media/mtp-eval-54.png) <br>

>[!NOTE]
>If you don’t see this prompt, it might mean that your Azure ATP data integration has already been enabled. However, if you are not sure, contact your IT Administrator to confirm. 

3. Go to **Settings**, turn the **Azure ATP integration** toggle on, then click **Save**. 
![Image of_the settings page where you should turn the Azure ATP integration toggle on then click save](../../media/mtp-eval-55.png) <br>
>[!NOTE]
>For new Azure ATP instances, this integration toggle is automatically turned on. Confirm that your Azure ATP integration has been enabled before you proceed to the next step.
 
4. Under the Cloud discovery settings, select **Microsoft Defender ATP integration**, then enable the integration. Click **Save**.
![Image of_the Microsoft Defender ATP page where the block unsanctioned apps checkbox under Microsoft Defender ATP integration is selected. Click save.](../../media/mtp-eval-56.png) <br>

5. Under Cloud discovery settings, select **User enrichment**, then enable the integration with Azure Active Directory.
![Image of User enrichment section where the enrich discovered user identifiers with Azure Active Directory usernames checkbox is selected](../../media/mtp-eval-57.png) <br>

## Configure Microsoft Defender Advanced Threat Protection
>[!NOTE]
>Skip this step if you have already enabled Microsoft Defender Advanced Threat Protection.

1. Navigate to [Microsoft 365 Security Center](https://security.microsoft.com/info) > **More Resources** > **Microsoft Defender Security Center**. Click **Open**.
<br>![Image of_Microsoft Defender Security Center option in the Microsoft 365 Security Center page](../../media/mtp-eval-58.png) <br>
 
2. Follow the Microsoft Defender Advanced Threat Protection wizard. Click **Next**. 
<br>![Image of_the Microsoft Defender Security Center welcome wizard page](../../media/mtp-eval-59.png) <br>

3. Choose based on your preferred data storage location, data retention policy, organization size, and opt-in for preview features. 
<br>![Image of_the page to select your data storage country, retention policy, and organization size. Click next when you're done selecting.](../../media/mtp-eval-60.png) <br>
>[!NOTE]
>You cannot change some of the settings, like data storage location, afterwards. 
<br>

Click **Next**. 

4. Click **Continue** and it will provision your Microsoft Defender ATP tenant.
<br>![Image of_the page prompting you click the continue button to create your cloud instance](../../media/mtp-eval-61.png) <br>

5. Onboard your endpoints through Group Policies, Microsoft Endpoint Manager or by running a local script to Microsoft Defender ATP. For simplicity, this guide uses the local script.

6. Click **Download package** and copy the onboarding script to your endpoint(s).  
<br>![Image of_page prompting you click the Download package button to copy the onboarding script to your endpoint or endpoints](../../media/mtp-eval-62.png) <br>

7. On your endpoint, run the onboarding script as Administrator and choose Y. 
<br>![Image of_the commandline where you run the onboarding script and choose Y to proceed](../../media/mtp-eval-63.png) <br>

8. Congratulations, you have onboarded your first endpoint.  
<br>![Image of_the commandline where you get the confirmation that you have onboarded your first endpoint. Press any key to continue](../../media/mtp-eval-64.png) <br>

9. Copy-paste the detection test from the Microsoft Defender ATP wizard.
<br>![Image of_the run a detection test step where you should click Copy to copy the detection test script that you should paste in the command prompt](../../media/mtp-eval-65.png) <br>

10. Copy the PowerShell script to an elevated command prompt and run it. 
<br>![Image of_command prompt where you should copy the PowerShell script to an elevated command prompt and run it](../../media/mtp-eval-66.png) <br>

11. Select **Start using Microsoft Defender ATP** from the Wizard.
<br>![Image of_the confirmation prompt from the wizard where you should click Start using Microsoft Defender ATP](../../media/mtp-eval-67.png) <br>
 
12. Visit the [Microsoft Defender Security Center](https://securitycenter.windows.com/). Go to **Settings** and then select **Advanced features**. 
<br>![Image of_Microsoft Defender Security Center Settings menu where you should select Advanced features](../../media/mtp-eval-68.png) <br>

13. Turn on the integration with **Azure Advanced Threat Protection**.  
<br>![Image of_Microsoft Defender Security Center Advanced features, Azure Advanced Threat Protection option toggle that you need to turn on](../../media/mtp-eval-69.png) <br>

14. Turn on the integration with **Office 365 Threat Intelligence**.
<br>![Image of_Microsoft Defender Security Center Advanced features, Office 365 Threat Intelligence option toggle that you need to turn on](../../media/mtp-eval-70.png) <br>

15. Turn on integration with **Microsoft Cloud App Security**.
<br>![Image of_Microsoft Defender Security Center Advanced features, Microsoft Cloud App Security option toggle that you need to turn on](../../media/mtp-eval-71.png) <br>

16. Scroll down and click **Save preferences** to confirm the new integrations.
<br>![Image of_Save preferences button that you need to click](../../media/mtp-eval-72.png) <br>

## Start the Microsoft Threat Protection service
>[!NOTE]
>Starting June 1, 2020, Microsoft automatically enables Microsoft Threat Protection features for all eligible tenants. See this [Microsoft Tech Community article on license eligibility](https://techcommunity.microsoft.com/t5/security-privacy-and-compliance/microsoft-threat-protection-will-automatically-turn-on-for/ba-p/1345426) for details. 
<br>

Go to [Microsoft 365 Security Center](https://security.microsoft.com/homepage). Navigate to **Settings** and then select **Microsoft Threat Protection**.
<br>![Image of_Microsoft Threat Protection option screenshot from the Microsoft 365 Security Center Settings page ](../../media/mtp-eval-72b.png) <br>

For a more comprehensive guidance, see [Turn on Microsoft Threat Protection](mtp-enable.md). 

Congratulations! You've just created your Microsoft Threat Protection trial lab environment! You can now simulate an attack and see how the cross product capabilities detect, create alerts, and automatically respond to a fileless attack on an endpoint.


## Next steps
[Generate a test alert](generate-test-alert.md).
