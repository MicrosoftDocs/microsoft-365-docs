---

title: "Strengthen your security posture - Investigate and improve"
f1.keywords:
- security posture
- strengthen security posture
ms.author: deniseb
author: denisebmsft
manager: deniseb
audience: Admin
description: Learn how to strengthen your organization's security posture - investigate and improve.
ms.topic: solution-overview
ms.service: microsoft-365-security
ms.localizationpriority: medium
search.appverid: 
  - MET150
  - MOE150
ms.collection:
- m365solution-securityposture
- m365solution-overview
- m365-security
- securityposture-solution
- highpri
- tier1
- ContentEnagagementFY24
ms.date: 08/28/2024
---

# Strengthen your security posture - Investigate and improve

Welcome to Phase 3 of [Strengthen your security posture](../security/security-posture-solution-overview.md): **Investigate and improve**.

This article describes capabilities you can use to measure your current security posture and actions you can take to start improving it.

|Capability |Description|Get started|
|:----------|:------------|:--------|-------|
|**Review Microsoft Secure Score** |Microsoft Secure Score reports on the current state of an organization's security posture, with a higher number indicating more recommended actions taken. <br /><br /> You'll see recommended actions for the [products included in Secure Score](../security/defender/microsoft-secure-score.md#products-included-in-secure-score) you have licenses for. You're given points for taking actions and your score is updated to reflect the actions you take.|[Secure Score Overview](../security/defender/microsoft-secure-score.md) <br /><br /> [Check your score](../security/defender/microsoft-secure-score-improvement-actions.md#check-your-current-score)|
|**Take Secure Score recommended actions** | Review the recommended actions tab for a list of improvement actions you can take to strengthen your posture and improve your score. By default this is sorted by score impact, with the most impactful actions appearing at the top. You can use filters or group by product, status, license, or category to help focus your efforts. |[Take actions to improve your Secure Score](../security/defender/microsoft-secure-score-improvement-actions.md#take-action-to-improve-your-score)|
|**Security recommendations** | Defender Vulnerability Management provides security recommendations to address cybersecurity weaknesses identified in your organization. <br /><br /> To start addressing security recommendations, see [Address vulnerabilities with Microsoft Defender Vulnerability Management](#address-vulnerabilities-with-microsoft-defender-vulnerability-management). | [Security Recommendations](../security/defender-vulnerability-management/tvm-security-recommendation.md)|

## Address vulnerabilities with Microsoft Defender Vulnerability Management

Use the **Remediation type** filter to review security recommendations you can take to improve your organization's security posture by lowering your exposure to these vulnerabilities.

### Address software and firmware security recommendations

Keeping your software and firmware up to date can help mitigate known vulnerabilities affecting your devices. To review software and firmware security recommendations:

1. Go to the Vulnerability management navigation menu in the [Microsoft Defender portal](https://security.microsoft.com) and select **Recommendations**.
2. Select **Filter**.
3. Select the Firmware and Software related remediation types:

:::image type="content" source="../media/content-understanding/remediation-type.png" alt-text="security recommendation remediation types" lightbox="../media/content-understanding/remediation-type.png":::
4. Prioritize the software and firmware related recommendations that will lower your exposure score and raise your Secure Score the most.

### Address configuration change security recommendations

Minimize attack surface and improve your posture by taking configuration hardening actions to reduce the risk of your devices being compromised and vulnerable to malicious attacks.

1. Go to the Vulnerability management navigation menu in the [Microsoft Defender portal](https://security.microsoft.com) and select **Recommendations**.
2. Select **Filter**.
3. Select **Configuration changes** remediation type.
4. Prioritize the configuration changes related recommendations that will lower your exposure score and raise your Secure Score the most.

For more information on how to request remediation, see [request remediation](../security/defender-vulnerability-management/tvm-security-recommendation.md#how-to-request-remediation).

## Next step

- [Phase 4: Track and maintain](../security/strengthen-security-posture-track-maintain.md)
