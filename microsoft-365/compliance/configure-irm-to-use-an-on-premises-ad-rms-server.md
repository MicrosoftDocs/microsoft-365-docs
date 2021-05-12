---
title: "Configure IRM to use an on-premises AD RMS server"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 12/13/2017
audience: End User
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 3ecde857-4b7c-451d-b4aa-9eeffc8a8c61
ms.collection:
- M365-security-compliance
description: Learn how to configure Information Rights Management (IRM) in Exchange Online to use an Active Directory Rights Management Service (AD RMS) server.
ms.custom: seo-marvel-apr2020
---

# Configure IRM to use an on-premises AD RMS server
  
For use with on-premises deployments, Information Rights Management (IRM) in Exchange Online uses Active Directory Rights Management Services (AD RMS), an information protection technology in Windows Server 2008 and later. IRM protection is applied to email by applying an AD RMS rights policy template to an email message. Rights are attached to the message itself so that protection occurs online and offline and inside and outside of your organization's firewall.
  
This topic shows you how to configure IRM to use an AD RMS server. For information about using the new capabilities for Office 365 Message Encryption with Azure Active Directory and Azure Rights Management, see the [Office 365 Message Encryption FAQ](./ome-faq.yml).
  
To learn more about IRM in Exchange Online, see [Information Rights Management in Exchange Online](information-rights-management-in-exchange-online.md).
  
## What do you need to know before you begin?

- Estimated time to complete this task: 30 minutes

- You need to be assigned permissions before you can perform this procedure or procedures. To see what permissions you need, see the "Information Rights Management" entry in the [Messaging policy and compliance permissions](/Exchange/permissions/feature-permissions/policy-and-compliance-permissions) topic. 

- The AD RMS server must be running Windows Server 2008 or later. For details about how to deploy AD RMS, see [Installing an AD RMS Cluster](/previous-versions/windows/it-pro/windows-server-2008-R2-and-2008/cc726041(v=ws.11)).

- For details about how to install and configure Windows PowerShell and connect to the service, see [Connect to Exchange Online Using Remote PowerShell](/powershell/exchange/connect-to-exchange-online-powershell).

- For information about keyboard shortcuts that may apply to the procedures in this topic, see [Keyboard shortcuts for the Exchange admin center in Exchange Online](/Exchange/accessibility/keyboard-shortcuts-in-admin-center).

> [!TIP]
> Having problems? Ask for help in the Exchange forums. Visit the forums at [Exchange Server](https://go.microsoft.com/fwlink/p/?linkId=60612),[Exchange Online](https://go.microsoft.com/fwlink/p/?linkId=267542), or [Exchange Online Protection](https://go.microsoft.com/fwlink/p/?linkId=285351). 
  
## How do you do this?
<a name="sectionSection1"> </a>

### Step 1: Use the AD RMS console to export a trusted publishing domain (TPD) from an AD RMS server

The first step is to export a trusted publishing domain (TPD) from the on-premises AD RMS server to an XML file. The TPD contains the following settings needed to use RMS features:
  
- The server licensor certificate (SLC) used for signing and encrypting certificates and licenses

- The URLs used for licensing and publishing

- The AD RMS rights policy templates that were created with the specific SLC for that TPD

When you import the TPD, it's stored and protected in Exchange Online.
  
1. Open the Active Directory Rights Management Services console, and then expand the AD RMS cluster.

2. In the console tree, expand **Trust Policies**, and then click **Trusted Publishing Domains**.

3. In the results pane, select the certificate for the domain you want to export.

4. In the **Actions** pane, click **Export Trusted Publishing Domain**.

5. In the **Publishing domain file** box, click **Save As** to save the file to a specific location on the local computer. Type a file name, making sure to specify the  `.xml` file name extension, and then click **Save**.

6. In the **Password** and **Confirm Password** boxes, type a strong password that will be used to encrypt the trusted publishing domain file. You will have to specify this password when you import the TPD to your cloud-based email organization. 

### Step 2: Use the Exchange Management Shell to import the TPD to Exchange Online

After the TPD is exported to an XML file, you have to import it to Exchange Online. When a TPD is imported, your organization's AD RMS templates are also imported. When the first TPD is imported, it becomes the default TPD for your cloud-based organization. If you import another TPD, you can use the **Default** switch to make it the default TPD that is available to users. 
  
To import the TPD, run the following command in Windows PowerShell:
  
```powershell
Import-RMSTrustedPublishingDomain -FileData $([byte[]](Get-Content -Encoding byte -Path <path to exported TPD file> -ReadCount 0)) -Name "<name of TPD>" -ExtranetLicensingUrl <URL> -IntranetLicensingUrl <URL>
```

You can obtain the values for the  _ExtranetLicensingUrl_ and  _IntranetLicensingUrl_ parameters in the Active Directory Rights Management Services console. Select the AD RMS cluster in the console tree. The licensing URLs are displayed in the results pane. These URLs are used by email clients when content has to be decrypted and when Exchange Online needs to determine which TPD to use.
  
When you run this command, you'll be prompted for a password. Enter the password that you specified when you exported the TPD from your AD RMS server.
  
For example, the following command imports the TPD named Exported TPD using the XML file that you exported from your AD RMS server and saved to the desktop of the Administrator account. The Name parameter is used to specify a name to the TPD.
  
```powershell
Import-RMSTrustedPublishingDomain -FileData $([byte[]](Get-Content -Encoding byte -Path C:\Users\Administrator\Desktop\ExportTPD.xml -ReadCount 0)) -Name "Exported TPD" -ExtranetLicensingUrl https://corp.contoso.com/_wmcs/licensing -IntranetLicensingUrl https://rmsserver/_wmcs/licensing
```

For detailed syntax and parameter information, see [Import-RMSTrustedPublishingDomain](/powershell/module/exchange/import-rmstrustedpublishingdomain).
  
#### How do you know this step worked?

To verify that you have successfully imported the TPD, run the **Get-RMSTrustedPublishingDomain** cmdlet to retrieve TPDs in your Exchange Online organization. For details, see the examples in [Get-RMSTrustedPublishingDomain](/powershell/module/exchange/get-rmstrustedpublishingdomain).
  
### Step 3: Use the Exchange Management Shell to distribute an AD RMS rights policy template

After you import the TPD, you must make sure an AD RMS rights policy template is distributed. A distributed template is visible to Outlook on the web (formerly known as Outlook Web App) users, who can then apply the templates to an email message.
  
To return a list of all templates contained in the default TPD, run the following command:
  
```powershell
Get-RMSTemplate -Type All | fl
```

If the value of the  _Type_ parameter is  `Archived`, the template isn't visible to users. Only distributed templates in the default TPD are available in Outlook on the web.
  
To distribute a template, run the following command:
  
```powershell
Set-RMSTemplate -Identity "<name of the template>" -Type Distributed
```

For example, the following command imports the Company Confidential template.
  
```powershell
Set-RMSTemplate -Identity "Company Confidential" -Type Distributed
```

For detailed syntax and parameter information, see [Get-RMSTemplate](/powershell/module/exchange/get-rmstemplate) and [Set-RMSTemplate](/powershell/module/exchange/set-rmstemplate).
  
**The Do Not Forward template**
  
When you import the default TPD from your on-premises organization into Exchange Online, one AD RMS rights policy template named **Do Not Forward** is imported. By default, this template is distributed when you import the default TPD. You can't use the **Set-RMSTemplate** cmdlet to modify the **Do Not Forward** template. 
  
When the **Do Not Forward** template is applied to a message, only the recipients addressed in the message can read the message. Additionally, recipients can't do the following:
  
- Forward the message to another person.

- Copy content from the message.

- Print the message.

> [!IMPORTANT]
> The **Do Not Forward** template can't prevent information in a message from being copied with third-party screen capture programs, cameras, or users manually transcribing the information 
  
You can create additional AD RMS rights policy templates on the AD RMS server in your on-premises organization to meet your IRM protection requirements. If you create additional AD RMS rights policy templates, you have to export the TPD from the on-premises AD RMS server again and refresh the TPD in the cloud-based email organization.
  
#### How do you know this step worked?

To verify that you have successfully distributed and AD RMS rights policy template, run the **Get-RMSTemplate** cmdlet to check the template's properties. For details, see the examples in [Get-RMSTemplate](/powershell/module/exchange/get-rmstemplate).
  
### Step 4: Use the Exchange Management Shell to enable IRM

After you import the TPD and distribute an AD RMS rights policy template, run the following command to enable IRM for your cloud-based email organization.
  
```powershell
Set-IRMConfiguration -InternalLicensingEnabled $true
```

For detailed syntax and parameter information, see [Set-IRMConfiguration](/powershell/module/exchange/set-irmconfiguration).
  
#### How do you know this step worked?

To verify that you have successfully enabled IRM, run the [Get-IRMConfiguration](/powershell/module/exchange/get-irmconfiguration) cmdlet to check IRM configuration in the Exchange Online organization.
  
## How do you know this task worked?
<a name="sectionSection2"> </a>

To verify that you have successfully imported the TPD and enabled IRM, do the following:
  
- Use the **Test-IRMConfiguration** cmdlet to test IRM functionality. For details, see "Example 1" in [Test-IRMConfiguration](/powershell/module/exchange/test-irmconfiguration).

- Compose a new message in Outlook on the web and IRM-protect it by selecting **Set permissions** option from the extended menu ( ![More Options Icon](../media/ITPro-EAC-MoreOptionsIcon.gif)).