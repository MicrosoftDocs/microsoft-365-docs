---
title: Getting started with Microsoft Defender Experts for XDR
ms.reviewer:
description: Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there's a critical incident
keywords: XDR, Xtended detection and response, defender experts for xdr, Microsoft Defender Experts for XDR, managed threat hunting, managed detection and response (MDR) service, service delivery manager, Microsoft Defender Experts for hunting, threat hunting and analysis, Microsoft XDR service
search.product: Windows 10
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: vpattnaik
author: vpattnai
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - tier1
ms.topic: conceptual
search.appverid: met150
ms.date: 05/29/2023
---

# Get started with Microsoft Defender Experts for XDR

**Applies to:**

- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

Once the Defender Experts for XDR team is ready to onboard your organization, you’ll receive a welcome email to continue the setup and get you started.

Select the link in the welcome email to directly launch the Defender Experts settings step-by-step guide in the Microsoft 365 Defender portal. You can also open this guide by going to **Settings** > **Defender Experts** and selecting **Get started**.

![Screenshot of Set up Defender Experts for XDR page](../../media/XDR/security-team-boost.png)

## Grant permissions to our experts

By default, Defender Experts for XDR require Service provider access that lets our experts sign into your tenant and deliver services based on assigned security roles. [Learn more about cross-tenant access](/azure/active-directory/external-identities/cross-tenant-access-overview)

You also need to grant our experts temporary, scoped access only as needed, depending on the type of work you’d like them to handle on your behalf:

- **Investigate incidents and guide my responses** (default) – This option lets our experts proactively monitor and investigate incidents and guide you through any necessary response actions. (Access level: Security Reader)
- **Respond directly to active threats** (recommended) – This option lets our experts contain and remediate active threats immediately while investigating, thus reducing the threat’s impact, and improving your overall response efficiency. (Access level: Security Operator)

[Learn more about access levels](/azure/active-directory/roles/permissions-reference)

![Screenshot of grant permissions to our experts](../../media/xdr/grant-permissions-to-experts.png)

**To grant our experts permissions:**

1. In the same Defender Experts settings step-by-step guide, under **Permissions**, choose the access level(s) you want to grant our experts.
2. Select **Next**, to [add contact persons or teams](#tell-us-who-to-contact-for-important-matters).

> [!IMPORTANT]
> If you skip providing additional permissions, our experts won't be able to take certain response actions to secure your organization.

To edit or update permissions after the initial setup, go to **Settings** > **Defender Experts** > **Permissions**. In this page, you could also turn **Access security data from all devices** on or off under the access levels.

> [!IMPORTANT]
> If you turn off Access security data from all devices, our experts won’t be able to investigate incidents involving devices that belong to Microsoft Defender for Endpoint device groups. Learn more about device groups. [Learn more about device groups](../defender-endpoint/machine-groups.md)

## Tell us who to contact for important matters

Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there are critical incidents, service updates, occasional queries, and other recommendations. Once identified, the individuals will receive an email notifying them that they have been chosen as a contact for incident notification or service review purposes.

![Screenshot of who to contact for important matters in XDR](../../media/XDR/who-to-contact-for-important-matters.png)

**To add notification contacts:**

1. In the same Defender Experts settings step-by-step guide, under **Incident contact**, search for and add your contact persons or teams that we can notify for guided response actions or any communication that requires a prompt response.

> [!NOTE]
> Given the urgent nature of the communications, it is recommended to have someone available at all times.

2. Select **Next**. Under **Service review contact**, search for and add your contact persons or teams that we can engage with for ongoing security briefings done by our service delivery team.

3. Select **Next**. The settings guide then provides you with information about the **Next steps**, including working with our experts to [optimize your security posture](#run-initial-defender-experts-readiness-checks).

4. Select **Close** to exit the settings step-by-step guide.

To edit or update your notification contacts after the initial setup, go to **Settings** > **Defender Experts** > **Notification contacts**:

1. Search for your **Contact person or team** in the text field provided.
2. Select the **Notification type** from the dropdown box.
3. Select **Add**.

![Screenshot of notification contacts](../../media/xdr/who-to-contact-for-imp-matters-2.png)

## Run initial Defender Experts readiness checks

Apart from onboarding service delivery, our expertise on the Microsoft 365 Defender product suite enables Defender Experts for XDR to run an initial readiness assessment to help you get the most out of your Microsoft security products.

The initial readiness engagement is based on your [Microsoft Secure Score](../defender/microsoft-secure-score.md) and Defender Experts' policy recommendations. Our experts help prioritize and customize our recommendations to fit your environment. They request your engagement to get those configurations implemented.

Once you’ve completed the readiness checks, our experts will start monitoring your environment closely to identify latent threats, sources of risk, and normal activity. As we get better understanding of your critical assets, we can streamline the service and fine-tune our responses.

### Next step

[Start using Microsoft Defender Experts for XDR service](start-using-mdex-xdr.md)
