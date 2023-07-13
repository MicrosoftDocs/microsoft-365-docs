---
title: "Salesforce connector setup for Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/24/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid:
- MOE150
- MET150
description: "Configure settings in your Salesforce accounts in order to activate connectors for Microsoft Purview Compliance Manager."
---

# Salesforce setup for Compliance Manager connector

Follow the instructions on this page to enable the connection between your Salesforce account and the Compliance Manager connector for Salesforce.

This process involves obtaining a token for a given Salesforce account. Therefore, if you activate multiple connectors for multiple Salesforce accounts, you'll need to repeat this process for each account in order to get the token.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Setup steps

1. Sign in to your Salesforce account with your credentials.

1. Go to your account **Settings** and select **Reset My Security Token**. This can be done by any user.

1. Select **Reset Security** to get a new security token sent to your email.
    > [!IMPORTANT]
    > If the security token for your account is used anywhere else, resetting the token may cause issues in those locations.

1. Activate connector in Compliance Manager. When you activate a Salesforce connector in Compliance Manager, you'll provide your **Username**, **Password**, and **Security token**. Once you validate the connection during the connector activation process, you're all set up and ready to begin using the connector. Get details at [Working with connectors in Compliance Manager](compliance-manager-connectors.md).
