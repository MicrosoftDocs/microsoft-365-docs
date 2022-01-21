---
title: Start an evaluation of Microsoft Defender for Office 365
description:
keywords:
f1.keywords:
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
audience: ITPro
ms.topic: article
ms.localizationpriority: medium
search.appverid:
  - MET150
  - MOE150
ms.collection:
  - M365-security-compliance
ms.custom: 
ms.technology: mdo
ms.prod: m365-security
---

# Start an evaluation of Microsoft Defender for Office 365

1. Click **Start evaluation**.

2. On the **Routing settings** page, select **I'm using a third party or on-premises service provider**, and then click **Next**.

3. On the **Third party or on-premises settings** page, the **Select a third party service provider** value determines the rest of the settings that are available on the page.:

   - If you select one of the following values:

     - **Barracuda**
     - **IronPort**
     - **Mimecast**
     - **Proofpoint**
     - **Sophos**
     - **Symantec**
     - **Trend Micro**

     the only other setting on the page is **The connector to apply this evaluation to** where you select the connector.

   - If you select the value **Other**, the following settings are available:

     - **The connector to apply this evaluation to**
     - **List each gateway IP address your messages pass through**

   When you're finished, click **Next**.

4. On the **Exchange mail flow rules** page, decide if you need to configure an SCL=1 mail flow rule (also known as a transport rule) that skips spam filtering for incoming messages.

   If you need to configure an SCL=1 mail flow rule

   When you're finished, click **Next**.
