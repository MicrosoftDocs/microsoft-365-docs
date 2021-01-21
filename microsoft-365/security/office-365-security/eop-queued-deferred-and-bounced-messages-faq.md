---
title: EOP queued, deferred, and bounced messages FAQ
f1.keywords: 
  - NOCSH
ms.author: chrisda
author: chrisda
manager: dansimp
ms.date: 
audience: ITPro
ms.topic: troubleshooting

localization_priority: Normal
ms.assetid: 9d015a0d-52a0-484d-9a08-121d04f973d3
ms.custom: 
  - seo-marvel-apr2020
description: Find answers to the most common questions about messages that have been queued, deferred, or bounced during the Exchange Online Protection (EOP) filtering process.
ms.technology: mdo
ms.prod: m365-security
---

# EOP queued, deferred, and bounced messages FAQ

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender-for-office.md)]


This topic provides answers to frequently asked questions about messages that have been queued, deferred, or bounced during the Exchange Online Protection (EOP) filtering process.

## Why is mail queuing?

Messages are queued or deferred if the service is unable to make a connection to the recipient server for delivery. It will not defer messages if a 500-series error is returned from the recipient network.

## How does a message become deferred?

Messages will be held when a connection to the recipient server cannot be made and the recipient's server is returning a "temporary failure" such as a connection time-out, connection refused, or a 400-series error. If there is a permanent failure, such as a 500-series error, then the message will be returned to the sender.

## How long does a message remain in deferral and what is the retry interval?

Messages in deferral will remain in our queues for 1 day. Message retry attempts are based on the error we get back from the recipient's mail system. The first few deferrals are 15 minutes or less, with subsequent retries (over the next half dozen or so) increasing the interval over multiple retries to a max of 60 minutes. The interval duration expansion is dynamic, taking into consideration multiple variables like queue sizes and internal message priority. In basic, it's 15 minutes (or less) to start, then expanding from there over the next few hours to 60 mins max.

## After your email server is restored, how are queued messages distributed?

After your email server is restored, all queued messages are automatically processed in the order in which they were received and queued when the server became unavailable.
