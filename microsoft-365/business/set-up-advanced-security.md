---
title: "Set up advanced security policies for Microsoft 365 Business users"
ms.author: sirkkuw
author: Sirkkuw
manager: scotv
ms.audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- M365-identity-device-management 
ms.custom:
- MiniMaven
- MSB365
search.appverid:
- BCS160
- MET150
description: "Set up Office 365 Advanced Threat Protection, and safeguard sensitive data."
---

# Set up advanced security policies

In addition to the policies you can set up in the [admin center](security-features.md#microsoft-365-business-admin-center-security-features), you can add additional protection against cyber threats by setting up [Office 365 Advanced Threat Protection](https://support.office.com/article/e100fe7c-f2a1-4b7d-9e08-622330b83653) (ATP). You can also guard sensitive information by setting up [Data Loss Prevention](https://support.office.com/article/1966b2a7-d1e2-4d92-ab61-42efbb137f5e) (DLP), Azure Information Protection (AIP), [Exchange Online Archiving](https://products.office.com/exchange/microsoft-exchange-online-archiving-email), and also manage your devices in the [Intune portal](#go-to-intune-admin-center).

See [top 10 ways to secure Microsoft 365 Business plan](https://docs.microsoft.com/office365/admin/security-and-compliance/secure-your-business-data) for an overview of the most important ways in which you can protect your business, including using MFA to create a second form of sign-in.

See [Secure your business training videos](https://support.office.com/article/e12187b8-216a-4490-9e3b-df34a06fb787) for instructions for easy to follow instructions.

## Increase email malware protection

Malware is software that can damage your computers or network, and possibly to steal data from you, including personal or customer information.​ Microsoft 365 Business includes a baseline level of protection against malware, but you can increase this protection by setting up additional settings. See [turn on malware detection](https://support.office.com/article/02b5783a-eea0-42e8-8856-62440718c3f0) training video for instructions.

## Set up Advanced Threat Protection features

- **Protect against unsafe attachments:** ATP identifies malicious content by opening email attachments in a virtual environment and performing analysis of the resulting behavior. The content is evaluated to determine its intent (whether normal or malicious), and ATP blocks delivery of unsafe attachments, helping protect you against phishing schemes and ransomware infections. To activate attachment protection, see [set up Office 365 ATP Safe Attachments](https://support.office.com/article/078eb946-819a-4e13-8673-fe0c0ad3a775) help documentation, and [protect against malicious files](https://support.office.com/article/e7e68934-23dc-4b9c-b714-e82e27a8f8a5) short training video.
    
- **Protect your environment when users click malicious links:** ATP also examines links in email at the time a user clicks them. If a link is unsafe, the user is warned not to visit the site or informed that the site has been blocked. This helps protect against phishing schemes. To activate this, see [set up Office 365 ATP Safe Links](https://docs.microsoft.com/en-us/office365/securitycompliance/set-up-atp-safe-links-policies) help documentation and [protect against malicious sites](https://support.office.com/article/61492713-53c2-47da-a6e7-fa97479e97fa) short training video.

- **Protect your enviroment from phishing attempt:**  ATP anti-phishing applies a set of machine learning models together with impersonation detection algorithms to incoming messages to provide protection from phishing attacks where someone is trying to extract information from you by pretending to be a known contact. To Activate this, see [set up ATP anti-phishing](https://docs.microsoft.com/office365/securitycompliance/set-up-anti-phishing-policies) help documentation and [protect against phishing attempts](https://support.office.com/article/86c425e1-1686-430a-9151-f7176cce4f2c) short training video.

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

For more information see, [Install the client](https://docs.microsoft.com/azure/information-protection/infoprotect-tutorial-step3).

## Go to Intune admin center

1. Sign into [Azure portal](https://portal.azure.com/).

2. Select **All services** and type in *Intune* in the **Search Box**.

3. Once the results display, click the start next to **Microsoft Intune** to make it a favorite and easy to find later.

In addition to the admin center, you can use Intune to enroll and manage your organization's devices. For more information, see [Capabilities by enrollment method for Windows devices](https://docs.microsoft.com/intune/enrollment-method-capabs) and [Enrollment options for devices managed by Intune](https://docs.microsoft.com/intune/enrollment-options).

## Microsoft Secure Score

