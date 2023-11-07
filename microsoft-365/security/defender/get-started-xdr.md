---
title: Get started with Microsoft Defender Experts for XDR
ms.reviewer:
description: Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there's a critical incident
keywords: XDR, protected assets, defender experts for xdr, set up microsoft xdr, managed threat hunting, managed detection and response (MDR) service, service delivery manager, readiness, threat hunting and analysis, actions needed xdr
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
ms.date: 11/07/2023
---

# Get started with Microsoft Defender Experts for XDR

**Applies to:**

- [Microsoft 365 Defender](microsoft-365-defender.md)

Once the Defender Experts for XDR team is ready to onboard your organization, you'll receive a welcome email to continue the setup and get you started.

Select the link in the welcome email to directly launch the Defender Experts settings step-by-step guide in the Microsoft 365 Defender portal. You can also open this guide by going to **Settings** > **Defender Experts** and selecting **Get started**.

:::image type="content" source="../../media/xdr/security-team-boost.png" alt-text="Screenshot of the Get started page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/security-team-boost.png":::

## Grant permissions to our experts

By default, Defender Experts for XDR requires **Service provider access** that lets our experts sign into your tenant and deliver services based on assigned security roles. [Learn more about cross-tenant access](/azure/active-directory/external-identities/cross-tenant-access-overview).

You also need to grant our experts temporary, scoped access only as needed, depending on the type of work you'd like them to handle on your behalf:

- **Investigate incidents and guide my responses** (default) – This option lets our experts proactively monitor and investigate incidents and guide you through any necessary response actions. (Access level: Security Reader)
- **Respond directly to active threats** (recommended) – This option lets our experts contain and remediate active threats immediately while investigating, thus reducing the threat's impact, and improving your overall response efficiency. (Access level: Security Operator)

[Learn more about access levels](/azure/active-directory/roles/permissions-reference)

:::image type="content" source="../../media/xdr/grant-permissions-to-experts.png" alt-text="Screenshot of Permissions page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/grant-permissions-to-experts.png":::

**To grant our experts permissions:**

1. In the same Defender Experts settings step-by-step guide, under **Permissions**, choose the access level(s) you want to grant our experts.
2. Select **Next** to [add contact persons or teams](#tell-us-who-to-contact-for-important-matters).

> [!IMPORTANT]
> If you skip providing additional permissions, our experts won't be able to take certain response actions to secure your organization.

To edit or update permissions after the initial setup, go to **Settings** > **Defender Experts** > **Permissions**. In this page, you could also turn **Access security data from all devices** on or off under the access levels.

> [!IMPORTANT]
> If you turn off **Access security data from all devices**, our experts won't be able to investigate incidents involving devices that belong to Microsoft Defender for Endpoint device groups. [Learn more about device groups](../defender-endpoint/machine-groups.md).

## Tell us who to contact for important matters

Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there are critical incidents, service updates, occasional queries, and other recommendations. Once identified, the individuals will receive an email notifying them that they have been chosen as a contact for incident notification or service review purposes.

:::image type="content" source="../../media/xdr/who-to-contact-for-important-matters.png" alt-text="Screenshot of Incident contacts page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/who-to-contact-for-important-matters.png":::

**To add notification contacts:**

1. In the same Defender Experts settings step-by-step guide, under **Incident contact**, search for and add your contact persons or teams that we can notify for managed response actions or any communication that requires a prompt response.

> [!NOTE]
> Given the urgent nature of the communications, it is recommended to have someone available at all times.

2. Select **Next**. Under **Service review contact**, search for and add your contact persons or teams that we can engage with for ongoing security briefings done by our service delivery team.
3. Select **Next**. The settings guide then provides you with information about the **Next steps**, including working with our experts to [optimize your security posture](#prepare-your-environemnt-for-the-defender-experts-service).
4. Select **Close** to exit the settings step-by-step guide.

To edit or update your notification contacts after the initial setup, go to **Settings** > **Defender Experts** > **Notification contacts**:

1. Search for your **Contact person or team** in the text field provided.
2. Select the **Notification type** from the dropdown box.
3. Select **Add**.

:::image type="content" source="../../media/xdr/who-to-contact-for-imp-matters-2.png" alt-text="Screenshot of notification contacts." lightbox="../../media/xdr/who-to-contact-for-imp-matters-2.png":::

## Prepare your environment for the Defender Experts service

Apart from onboarding service delivery, our expertise on the Microsoft 365 Defender product suite enables Defender Experts for XDR to let you run a **readiness assessment** to help you get the most out of your Microsoft security products.

The readiness assessment is based on the number of protected devices and identities in your environment, and Defender Experts' policy recommendations. To view the assessment, in your Microsoft 365 Defender portal, go to **Settings** > **Defender Experts** then select **Service status**.

:::image type="content" source="../../media/xdr/readiness-assessment-xdr.png" alt-text="Screenshot of readiness assessment environment." lightbox="../../media/xdr/readiness-assessment-xdr.png":::

The readiness assessment has two parts:

- **Actions needed** – This section shows the number of actions or security settings that you need to complete, are in progress, or have been completed. These are listed in a table at the bottom part of the page.

The list outlines the required steps to be taken before initiating the service. Prioritize the actions that have the **Complete now** status to get the Defender Experts for XDR service started sooner.

> [!NOTE]
> It can take up to 24 hours to get the latest status of your security settings.

- **Protected assets** – This section shows the current number of protected devices and identities versus the ones that you still need to protect to get the Defender Experts for XDR service started.

The figures are based on your Defender for Endpoint and Defender for Identity licenses; to achieve these target number of protected assets, [onboard more devices](../defender-endpoint/onboarding.md) to Defender for Endpoint or [install more Defender for Identity sensors](../defender-identity/install-sensor.md).

> [!IMPORTANT]
> Defender Experts for XDR reviews your readiness assessment periodically, especially if there are any changes to your environment, such as the addition of new devices and identities. It’s important that you regularly monitor and run the readiness assessment beyond the initial onboarding to ensure that your environment has strong security posture to reduce risk.

Once you’ve completed all the required tasks and met the onboarding targets in your readiness assessment, your service delivery manager (SDM) initiates the monitoring phase of the Defender Experts for XDR service, where, for a few days, our experts start monitoring your environment closely to identify latent threats, sources of risk, and normal activity. As we get better understanding of your critical assets, we can streamline the service and fine-tune our responses.

### Next step

[Start using Microsoft Defender Experts for XDR service](start-using-mdex-xdr.md)

### See also

- [Frequently asked questions](frequently-asked-questions.md)
- [How Microsoft Defender Experts for XDR permissions work](dex-xdr-permissions.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
