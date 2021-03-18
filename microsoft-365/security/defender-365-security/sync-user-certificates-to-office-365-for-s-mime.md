---
title: Sync user certificates to Office 365 for S/MIME
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 12/09/2016
audience: ITPro
ms.topic: how-to

localization_priority: Normal
search.appverid: 
  - MET150
ms.assetid: 351c932e-99c1-4512-a6e8-788e90b7838f
ms.custom: 
  - seo-marvel-apr2020
description: In this article, you'll learn how to publish appropriate certificates to Office 365 before sending S/MIME-protected messages in Exchange Online.
ms.technology: mdo
ms.prod: m365-security
---

# Sync user certificates to Office 365 for S/MIME

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


Before anyone can send S/MIME-protected messages in Exchange Online, the appropriate certificates must be set up. To send encrypted messages through Exchange Online, the sender's email app uses the public certificate of the recipient to encrypt the message. This public X.509 certificate has to be published to Office 365.

## To Sync certificates that support S/MIME

Begin setting up S/MIME by issuing certificates and publishing them in your local Active Directory Domain Service. For more information, see [Active Directory Certificate Services Overview](/previous-versions/windows/it-pro/windows-server-2012-R2-and-2012/hh831740(v=ws.11)).

After your certificates are published, use the Azure AD Connect tool to synchronize user data from your on-premises Exchange environment to Office 365. For more information on this process, see [Azure AD Connect sync: Understand and customize synchronization](/azure/active-directory/hybrid/how-to-connect-sync-whatis).

Along with synchronizing other directory data, for S/MIME purposes, the tool will synchronize the  **userCertificate** and **userSMIMECertificate** attributes for each user object so the data can be used to sign and encrypt messages.

## More Information

[S/MIME for message signing and encryption](s-mime-for-message-signing-and-encryption.md)

[What is Azure AD Connect?](/azure/active-directory/hybrid/whatis-azure-ad-connect)