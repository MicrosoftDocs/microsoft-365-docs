---
title: "Microsoft 365 Business security features"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: reference
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- M365-security-compliance 
ms.custom:
- Core_O365Admin_Migration
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
ms.assetid: c123694a-1efb-459e-a8d5-2187975373dc
description: "Learn about the security features that come with Microsoft 365 Business."
---

# Microsoft 365 Business security features

Microsoft 365 Business offers simplified security features to help safeguard your data on PCs, phones, and tablets.
    
## Microsoft 365 Business admin center security features

You can manage many of the Microsoft 365 Business security features in the admin center, which gives you a simplified way to turn these features on or off. In the admin center you can do the following:
  
![Screenshot of the Devices card in the admin center](media/9982e784-dbf9-4a76-a159-bb3e2e5aa23f.png)
  
- [Set application management settings for Android or iOS devices](app-protection-settings-for-android-and-ios.md) . 
    
    These settings include deleting files from an inactive device after a set period, encrypting work files, requiring that users set a PIN, etc.
    
- [Set application protection settings for Windows 10 devices](protection-settings-for-windows-10-devices.md) . 
    
    These settings can be applied to company data on both company-owned, or personally-owned devices.
    
- [Set device protection settings for Windows 10 devices](protection-settings-for-windows-10-pcs.md) . 
    
    You can enable [BitLocker](https://go.microsoft.com/fwlink/p/?linkid=871405) encryption to help protect data in case a device is lost or stolen, and enable [Windows Exploit Guard](https://go.microsoft.com/fwlink/p/?linkid=871404) to provide advanced protection against ransomware. 
    
- [Remove company data from devices](remove-company-data.md)
    
    You can remotely wipe company data if a device is lost, stolen, or an employee leaves your company.
    
- [Reset Windows 10 devices to their factory settings](reset-devices-to-factory-settings.md) . 
    
    You can reset any Windows 10 devices that have device protection settings applied to them.
    
## Additional security features 

Advanced features in Microsoft 365 Business are available to help you protect your business against cyber-threats and safeguard sensitive information.
  
- **[Office 365 Advanced Threat Protection](https://support.office.com/article/e100fe7c-f2a1-4b7d-9e08-622330b83653)**
    
    Advanced Threat Protection (ATP) helps guard your business against sophisticated phishing and ransomware attacks designed to compromise employee or customer information. Features include:
    
  - Sophisticated attachment scanning and AI-powered analysis to detect and discard dangerous messages.
    
  - Automatic checks of web links in email to assess if they are part of a phishing scheme. This keeps you safe from accessing unsafe websites.
    
- **[Overview of data loss prevention policies](https://support.office.com/article/1966b2a7-d1e2-4d92-ab61-42efbb137f5e)** (DLP). 
    
    You can set up DLP to automatically detect sensitive information, like credit card numbers, social security numbers, etc. to prevent their inadvertent sharing outside your company.
    
- **[Exchange Online Archiving](https://products.office.com/exchange/microsoft-exchange-online-archiving-email)**
    
    Exchange Online Archiving license enables messages to be easily archived with continuous data backup. It stores all of a user's emails, including deleted items, in case they are needed later for discovery or restoration. Additionally, you can use different retention policies to preserve email data for litigation holds, eDiscovery, or to meet compliance requirements.
    
- **[Azure Information Protection](https://go.microsoft.com/fwlink/p/?linkid=871406)**
    
    Information protection helps you control access to sensitive information in email and documents with controls like "Do not forward" and "Do not copy." You can also classify sensitive information as "Confidential" and specify how classified information can be shared outside and inside the business. Enterprise-grade encryption is easy to apply to email and documents to keep your information private. Microsoft 365 Business includes all the features of [Azure Information Protection Plan 1](https://go.microsoft.com/fwlink/p/?linkid=871407). You can also install the Azure Information Protection client add-in for Office apps. For more details, see [Azure Information Protection client admininstrator guide](https://docs.microsoft.com/azure/information-protection/rms-client/client-admin-guide).
    
- **[The full capabilities of Intune in the Azure portal](https://go.microsoft.com/fwlink/p/?linkid=871403)**
    
    Accessing the Intune admin center in the Azure portal allows you to set up additional security features, such as the management of MacOS devices, iPhone, and Android devices along with advanced device management for Windows, that are not available through Microsoft 365 Business admin center.
    
The next sections describe how you can manage these features in the Security &amp; Compliance center and the Intune admin center. Over time the simplified controls will be added to the Microsoft 365 Business admin center.
  
## Set up Advanced Threat Protection features

- **Protect against unsafe attachments:** ATP identifies malicious content by opening email attachments in a virtual environment and performing analysis of the resulting behavior. The content is evaluated to determine its intent (whether normal or malicious), and ATP blocks delivery of unsafe attachments, helping protect you against phishing schemes and ransomware infections. To activate attachment protection, see [Set up Office 365 ATP Safe Attachments policies](https://support.office.com/article/078eb946-819a-4e13-8673-fe0c0ad3a775).
    
- Protect your environment when users click malicious links: ATP also examines links in email at the time a user clicks them. If a link is unsafe, the user is warned not to visit the site or informed that the site has been blocked. This helps protect against phishing schemes. You can [Set up Office 365 ATP Safe Links policies](https://support.office.com/article/bdd5372d-775e-4442-9c1b-609627b94b5d#reveddefaultscc) or [Set up Office 365 ATP Safe Links policies](https://support.office.com/article/bdd5372d-775e-4442-9c1b-609627b94b5d#addemailpolscc).
    
## Set up DLP features

See [Create a DLP policy from a template](https://support.office.com/article/59414438-99f5-488b-975c-5023f2254369) for an example on how to set up a policy to protect against personally identifiable information (PII). 
  
DLP comes with many ready-to-use policy templates for many different locales. For example, Australia Financial Data, Canada Personal Information Act, U.S. Financial Data, etc. See [What the DLP policy templates include](https://support.office.com/article/c2e588d3-8f4f-4937-a286-8c399f28953a) for a full list. All of these templates can be enabled similar to the PII template example. 
  
## Set up email retention with Exchange Online Archiving

 **Exchange Online Archiving** license features give you the ability to help maintain compliance and regulatory standards by preserving email content for the purposes of eDiscovery. It also helps reduce your risk in the event of litigation and provides a way to recover data after a security breach or when you need to recover deleted items. To activate these capabilities, you can use litigation hold to preserve all of a user's content, or use retention policies for greater customization. 
  
**Litigation hold:** You can preserve all mailbox content including deleted items by putting a user's entire mailbox on litigation hold. 
    
To place a mailbox on litigation hold, in the Admin center:
    
1. In the left nav, go to **Users** \> **Active users**.
    
2. Select a user whose mailbox you want to place on litigation hold and in the user pane expand **Mail settings** and next to **More settings** choose **Edit Exchange properties**.
    
3. On the mailbox page for the user, choose ** mailbox features ** on the left nav, and then choose the **Enable** link under **Litigation hold**.
    
4. In the **litigation hold** dialog box you can specify the litigation hold duration in the **Litigation hold duration** field, leave field empty if you want to place an infinite hold. You can also add notes and direct the mail box owner to a website you might have to explain more about the litigation hold \> **Save**.
    
**Retention:** You can enable customized retention policies, for example, to preserve for a specific amount of time or delete content permanently at the end of the retention period. To learn more, see [Overview of retention policies](https://support.office.com/article/5e377752-700d-4870-9b6d-12bfc12d2423).
## Set up Azure Information Protection features

Azure Information Protection (AIP) is a cloud-based solution that helps an organization to classify and optionally, protect its documents and emails by applying labels. Labels can be applied automatically by administrators who define rules and conditions, manually by users, or a combination where users are given recommendations.

The ability to apply the following restrictions when sending emails in Outlook on the web is automatically enabled for all users:
  
- **Do Not Forward**: Recipients can read the message, but they can't forward, print, or copy content
    
- **Encrypt**: The entire message is encrypted. Recipients must take extra steps to confirm their identity before accessing encrypted content and can't remove encryption.
    
- **Confidential**: Gives the employees in your organization full permissions to the email content and attachments, but not to people outside your organization. Data owners can track and revoke content at any point.
    
- **Highly Confidential**: This restriction can be applied to highly confidential data, allowing employees to view, edit, and reply, but not forward, print, or copy the data. Data owners can track and revoke content at any point.

### Make sure Azure Information Protection is activated

To verify that AIP is activated :

1. Sign into [Azure portal](https://portal.azure.com/).

2. Select **All services** and type in *Azure Information Protection* in the **Search Box**.

3. Once the results display, click the start next to **Azure Information Protection** to make it a favorite and easy to find later.

4. Select **Azure Information Protection** \> **Protection activation** and make sure the status is set to activated. 

### View the Azure Information Protection policy and default labels 

To view, and modify, the existing labels:

1. On the Azure Information Protection dashboard, select **Classifications** \> **Labels**. <br/>![Standard labels for Azure Information Protection.](media/AIPLabels.png)

2. You can choose any label to view options, you can change the display name, colors, etc.
 
3. See  [Modify and create new labels](https://docs.microsoft.com/azure/information-protection/infoprotect-tutorial-step2) if you want to create your own. 

### Install the Azure Information Protection client manually

To manually install the AIP client:

1. Download **AzInfoProtection.exe** from [Microsoft download center](https://www.microsoft.com/download/details.aspx?id=53018).
 
2. You can verify that the installation worked by viewing a Word document and making sure that the **Protect** option is available on the **Home** tab. <br/>![Protection tab drop-down in a Word document.](media/Word_Protect.png)

For more information see, [Install the client](https://docs.microsoft.com/azure/information-protection/infoprotect-tutorial-step3)

## Go to Intune admin center

1. Sign into [Azure portal](https://portal.azure.com/).

2. Select **All services** and type in *Intune* in the **Search Box**.

3. Once the results display, click the start next to **Microsoft Intune** to make it a favorite and easy to find later.
 
You can use Intune to enroll and manage your organization's devices. For more information, see [Capabilities by enrollment method for Windows devices](https://docs.microsoft.com/intune/enrollment-method-capabs) and [Enrollment options for devices managed by Intune](https://docs.microsoft.com/intune/enrollment-options).
    
## FAQ

 ### Are these security features available in all markets?
  
Yes, these features are available in all markets where Microsoft 365 Business is sold.
  
### How do I find the Security &amp; Compliance center?
  
1. [Sign in to Microsoft 365 Business](https://portal.microsoft.com/) by using your admin credentials. 
    
2. In the left nav, locate **Admin centers** and expand it. 
    
    ![In the left nav in the Microsoft 365 admin center, choose Admin centers.](media/fa4484f8-c637-45fd-a7bd-bdb3abfd6c03.png)
  
3. Choose **Security &amp; Compliance** to go to Security &amp; compliance center.