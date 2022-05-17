---
title: Use Trusted ARC senders for legitimate devices and services between the sender and receiver
f1.keywords:
  - NOCSH
ms.author: tracyp
author: MSFTTracyP
manager: dansimp
audience: ITPro
ms.topic: article
ms.localizationpriority: high
search.appverid:
  - MET150
ms.collection:
  - M365-security-compliance
  - m365initiative-defender-office365
ms.custom:
  - seo-marvel-apr2020
description: Authenticated Received Chain (ARC) is email authentication that helps preserve authentication results across devices the come between the sender and recipient. Here's how to make exceptions for your trusted ARC Senders.
ms.technology: mdo
ms.prod: m365-security
---

# Make a list of trusted Authenticated Received Chain (ARC) Senders

I'll explain why.

Email authentication mechanisms like SPF, DKIM, DMARC are used to verify the senders of emails for the safety of mail recipients, but some legitimate services may make changes to the email between the send and receipt. This intervention from legitimate services might accidentally cause the message to fail email authentication at subsequent hops. 
