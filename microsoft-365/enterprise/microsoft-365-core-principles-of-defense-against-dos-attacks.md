---
title: "Microsoft 365 core principles of defense against denial-of-service attacks"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: "How Microsoft utilizes the core principles of absorption, detection, and mitigation in its defense against denial-of-service (DoS) attacks."
---

# Core principles of defense against denial-of-service attacks

The three core principles when defending against network-based DoS attacks are Absorption, Detection, and Mitigation. Absorption happens before detection, and detection happens before mitigation. Absorption is the best defense against a DoS attack. If the attack can't be detected, it can't be mitigated. But if even the smallest DoS attack can't be absorbed, then services aren't going to survive long enough for the attack to be detected.

It is not economically feasible for most organizations to purchase excess capacity to absorb DoS attacks, as this requires a considerable investment in technology and technical skills. This highlights one of the security benefits of using Microsoft cloud services. The sheer scale of Microsoft services provides strong network protection to cloud customers in a cost-effective manner. But even at a large scale, there must be a balance between absorption, detection, and mitigation. To find that balance, Microsoft studies attack growth rates to estimate how much Microsoft needs to absorb.

Detection is a cat-and-mouse game. You must constantly look for new ways people are attack and try to defeat your systems. Detect -> Mitigate -> Detect -> Mitigate, etc., is a perpetual, persistent state that continues indefinitely.

## Defending Against DoS Attacks

To successfully defend against a DoS attack, early detection is essential. By detecting an attack before the system is overwhelmed, defenders can execute a response plan.

The following formula helps approximate the time to impact of a DoS attack:

   **Maximum Capacity (in bytes/sec) / Growth Rate (in bytes/sec) = Time to Impact (in sec)**

If the time-to-detection occurs after time-to-impact, it is likely the DoS attack will be successful. If the time-to-detection occurs before time-to-impact, the attacked services should remain online and accessible if mitigation strategies are used. Thus, there are only two things that can be done to defend against DoS attacks:

- Increase capacity to raise the ceiling of maximum capacity (which in turn provides more time to detect an attack); or
- Decrease the time to detect.

Increasing capacity has a direct fiscal impact. Microsoft recommends that customers develop at least basic absorption capacity to ensure that they can survive some level of DoS attack. The actual absorption capacity varies from customer to customer, as each customer has their own thresholds for exposure, risk, and financial outlay. For economic reasons, investments in research and time for ways to decrease time-to-detection are usually the most cost-effective defense.
