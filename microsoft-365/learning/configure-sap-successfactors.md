---
title: "Configure SAP SuccessFactors as a learning content source for Microsoft Viva Learning (Preview)"
ms.author: daisyfeller
author: daisyfell
manager: pamgreen
ms.reviewer: chrisarnoldmsft
ms.date: 9/21/2021
audience: admin
ms.topic: article
ms.service: 
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: 
    - enabler-strategic
    - m365initiative-viva-learning
localization_priority: None
description: "Learn how to configure SAP SuccessFactors as a learning content source for Microsoft Viva Learning (Preview)."
---

# Configure SAP SuccessFactors as a learning content source for Microsoft Viva Learning (Preview)

Below steps need to be completed by the SF admin on the SF portal -  

The admin who is going to enable this feature must have access to SF Learning administrator application and also the admin should have required workflows to edit the PARTNER_EXTRACT configuration which is available under  

System Administration > Configuration > System Configuration > PARTNER_EXTRACT 

The following parameters need to fill by the admin in PARTNER_EXTRACT configuration. The admin should have details for the same. To edit the partner extract configuration in SF, the admin should have “Edit System Configuration” workflow permission in SF.

customer notification email for all job status

defaultJob.email=

**Partner1**

PartnerID maximum length is 10 characters. This can be your LMS tenant id 

partners1.partnerID=

 EncryptionKey is PGP public encryption key, which is the entire section between BEGIN PGP PUBLIC KEY BLOCK and END PGP PUBLIC KEY BLOCK 

partners1.encryptionKey=

KeyOwner maps to User-ID of public key 

partners1.keyOwner=

enabled can be "false" or "true". Set true to enable the partner extract 

partners1.enabled=

Graphical user interface, text, application

Description automatically generated

Once the above changes are done on the SF portal, the below configuration details need to be filled in by the tenant admin on the M365 admin portal -

Navigate to admin.microsoft.com.

Navigate to Settings -> Org settings -> Search for Viva Learning (Preview) and enable SAP SuccessFactors from the options.

Fill in the below required config details -  

Display Name: Please enter the desired display name for SAP SuccessFactors carousel.

SFTP Host URL: Please navigate to LMS Admin Application > System Administration > Configuration > System Configuration > CONNECTORS and get the value of ‘connector.ftp.server’ property.

User Name: The LMS admin has to navigate to LMS Admin Application > System Administration > Configuration > System Configuration > CONNECTORS and get the value of ‘connector.ftp.userID’ property.

Password: Please enter your password. For any help required, please check with LMS application owner to get the password.

Folder Path: Please navigate to LMS Admin Application > System Administration > Configuration > System Configuration > PARTNER_EXTRACT   and get the value of ‘defaultFtp.path’ property.

Client’s Host URL: This is BizX domain URL. You can get this from BizX login URL. For example, if the BizX login URL is “https://pmsalesdemo8.successfactors.com/sf/start/#/login” then the host URL is “pmsalesdemo8.successfactors.com”.  

Client’s Learning Destination URL: You can get this from learning domain module URL. For example, if the learning domain URL is “https://sfcpart000094.scdemo.successfactors.com/learning/...” then the Learning Destination URL is “sfcpart000094.scdemo.successfactors.com”.

PGP Key:

You need to use the PGP tool to generate the keys. While generating the PGP key you can select RSA algorithm which is recommended. GNUPG tool is one of the PGP keys generation tools that you can use.

PGP Private Key: PGP private key for decryption, which is the entire section between BEGIN PGP PRIVATE KEY BLOCK and END PGP PRIVATE KEY BLOCK.
Please get this value from your IT team or team who provides the PGP key.

PGP Private Key Passphrase: Please get this value from your IT team or team who provides the PGP key.

Please note: Data residency: Tenant metadata is stored centrally in our data stores & are not stored in geo specific data stores.

Roles & Permissions: Today, all the users within an organization will be able to discover all the tenant specific courses but they will only be able to access/ consume the courses that they have access to. User specific content discovery (based on roles & permissions) is part of our future roadmap.
