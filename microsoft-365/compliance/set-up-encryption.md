---
title: "Set up encryption in Office 365 Enterprise"
f1.keywords:
- NOCSH
ms.author: krowley
author: kccross
manager: laurawi
ms.date: 4/2/2018
audience: Admin
ms.topic: hub-page
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
- MOE150
ms.assetid: e86fc991-0161-4f01-9c1c-d25e87733d06
description: "With Office 365, some encryption capabilities are turned on by default; other capabilities can be configured to meet certain compliance or legal requirements."
---

# Set up encryption in Office 365 Enterprise

Encryption can protect your content from being read by unauthorized users. Because [encryption in Office 365](encryption.md) can be done using various technologies and methods, there isn't one single place where you turn on or set up encryption. This article provides information about various ways you can set up or configure encryption as part of your information protection strategy.
  
> [!TIP]
> If you are looking for more technical details about encryption, see [Technical reference details about encryption in Office 365](technical-reference-details-about-encryption.md).
  
With Office 365, several encryption capabilities are available by default. Additional encryption capabilities can be configured to meet certain compliance or legal requirements. The following table describes several encryption methods for different scenarios.
  
|**Scenario**|**Encryption Methods**|
|:-----|:-----|
|Files are saved on Windows computers  <br/> |Encryption at the computer level can be done using BitLocker on Windows devices. As an enterprise administrator or IT Pro, you can set this up using the Microsoft Deployment Toolkit (MDT). See [Set up MDT for BitLocker](https://go.microsoft.com/fwlink/?linkid=849282).  <br/> |
|Files are saved on mobile devices  <br/> |Some kinds of mobile devices encrypt files that are saved to those devices by default. With [Capabilities of built-in Mobile Device Management for Office 365](https://support.office.com/article/a1da44e5-7475-4992-be91-9ccec25905b0), you can set policies that determine whether to allow mobile devices to access data in Office 365. For example, you can set a policy that allows only devices that encrypt content to access Office 365 data. See [Create and deploy device security policies](https://support.office.com/article/d310f556-8bfb-497b-9bd7-fe3c36ea2fd6).  <br/> For additional control over how mobile devices interact with Office 365, you can consider adding [Microsoft Intune](https://aka.ms/qzln04). See [Choose between MDM for Office 365 and Microsoft Intune](https://support.office.com/article/c93d9ab9-efb2-4349-9b93-30c30562ee22).  <br/> |
|You need control over the encryption keys used to encrypt your data in Microsoft's data centers  <br/> | As an Office 365 administrator, you can control your organization's encryption keys and then configure Office 365 to use them to encrypt your data at rest in Microsoft's data centers.  <br/> [Service encryption with Customer Key in Office 365](customer-key-overview.md) <br/> |
|People are communicating via email (Exchange Online)  <br/> | As an Exchange Online administrator, you have several options for configuring email encryption. These include:  <br/>  Using [Office 365 message encryption (OME)](set-up-new-message-encryption-capabilities.md) with Azure Rights Management (Azure RMS) to enable people to send encrypted messages inside or outside your organization  <br/>  Using [S/MIME for message signing and encryption](https://aka.ms/c6dozg) to encrypt and digitally sign email messages  <br/>  Using TLS to [set up connectors for secure mail flow with another organization](https://aka.ms/hs809p) <br/>  See [Email encryption in Office 365](https://aka.ms/hic3f7).  <br/> |
|Files are accessed from team sites or document libraries (OneDrive for Business or SharePoint Online)  <br/> |When people are working with files saved to OneDrive for Business or SharePoint Online, TLS connections are used. This is built into Office 365 automatically. See [Data Encryption in OneDrive for Business and SharePoint Online](https://go.microsoft.com/fwlink/?linkid=526379).  <br/> |
|Files are shared in online meetings and IM conversations (Skype for Business Online)  <br/> |When people are working with files using Skype for Business Online, TLS is used for the connection. This is built into Office 365 automatically. See [Security and Archiving (Skype for Business Online)](https://aka.ms/nuq4ws).  <br/> |

## Additional information

To learn more about file protection solutions that include encryption options, see [File Protection Solutions in Office 365](https://www.microsoft.com/download/details.aspx?id=55523).
 