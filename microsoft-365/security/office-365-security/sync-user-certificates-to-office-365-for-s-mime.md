---
title: "Sync user certificates to Office 365 for S/MIME"
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 12/09/2016
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 351c932e-99c1-4512-a6e8-788e90b7838f
description: "Before anyone can send S/MIME-protected messages, the appropriate certificates must be set up. In order to send encrypted messages through Exchange Online, the sender's email program uses the public certificate of the recipient to encrypt the message. This public X.509 certificate has to be published to Office 365."
---

# Sync user certificates to Office 365 for S/MIME

Before anyone can send S/MIME-protected messages in Exchange Online, the appropriate certificates must be set up. To send encrypted messages through Exchange Online, the sender's email app uses the public certificate of the recipient to encrypt the message. This public X.509 certificate has to be published to Office 365.

## To Sync certificates that support S/MIME

Begin setting up S/MIME by issuing certificates and publishing them in your local Active Directory Domain Service. For more information about managing certificates in Exchange Server, see [Digital Certificates and SSL](https://technet.microsoft.com/library/a9e2e08c-d46a-4135-a387-eb653212b676.aspx).

After your certificates are published, use the Azure Active Directory Sync tool to synchronize user data from your on-premises Exchange environment to Office 365. For more information on this process, see [DirSync: Directory Sync Tool Version Release History](https://go.microsoft.com/fwlink/p/?LinkId=392587).

Along with synchronizing other directory data, for S/MIME purposes, the tool will synchronize the  **userCertificate** and **userSMIMECertificate** attributes for each user object so the data can be used to sign and encrypt messages.

## More Information

[S/MIME for message signing and encryption](s-mime-for-message-signing-and-encryption.md)

[Azure Active Directory Sync tool](https://go.microsoft.com/fwlink/p/?LinkId=392587)
