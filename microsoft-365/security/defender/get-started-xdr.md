---
title: Get started with Microsoft Defender Experts for XDR
ms.reviewer:
description: Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there's a critical incident
keywords: XDR, protected assets, defender experts for xdr, set up microsoft xdr, set up permissions in xdr, managed detection and response (MDR) service, service delivery manager, readiness, threat hunting and analysis, actions needed xdr
ms.service: defender-experts
ms.subservice: dex-xdr
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
ms.date: 14/06/2023
---

# Get started with Microsoft Defender Experts for XDR

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)

Once the Defender Experts for XDR team is ready to onboard your organization, you'll receive a welcome email to continue the setup and get you started.

Select the link in the welcome email to directly launch the Defender Experts settings step-by-step guide in the Microsoft Defender portal. You can also open this guide by going to **Settings** > **Defender Experts** and selecting **Get started**.

:::image type="content" source="../../media/xdr/security-team-boost.png" alt-text="Screenshot of the Get started page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/security-team-boost.png":::

## Grant permissions to our experts

By default, Defender Experts for XDR requires **Service provider access** that lets our experts sign into your tenant and deliver services based on assigned security roles. [Learn more about cross-tenant access](/azure/active-directory/external-identities/cross-tenant-access-overview).

You also need to grant our experts temporary, scoped access only as needed, depending on the type of work you'd like them to handle on your behalf:

- **Investigate incidents and guide my responses** (default) – This option lets our experts proactively monitor and investigate incidents and guide you through any necessary response actions. (Access level: Security Reader)
- **Respond directly to active threats** (recommended) – This option lets our experts contain and remediate active threats immediately while investigating, thus reducing the threat's impact, and improving your overall response efficiency. (Access level: Security Operator)

:::image type="content" source="../../media/xdr/grant-permissions-to-experts.png" alt-text="Screenshot of Permissions page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/grant-permissions-to-experts.png":::

> [!IMPORTANT]
> If you skip providing additional permissions, our experts won't be able to take certain response actions to secure your organization. Even though our experts are granted these relatively powerful permissions, they will only have individual access to specific areas for a limited period. [Learn more about how Defender Experts for XDR permissions work](../defender/dex-xdr-permissions.md).

**To grant our experts permissions:**

1. In the same Defender Experts settings step-by-step guide, under **Permissions**, choose the access level(s) you want to grant our experts.
1. If you wish to exclude device and user groups in your organization from remediation actions, select **Manage exclusions**.
1. Select **Next** to [add contact persons or groups](#tell-us-who-to-contact-for-important-matters).

To edit or update permissions after the initial setup, go to **Settings** > **Defender Experts** > **Permissions**.

## Exclude devices and users from remediation

Defender Experts for XDR lets you exclude devices and users from remediation actions taken by our experts and instead get remediation guidance for those entities. These exclusions are based on identified [device groups](../defender-endpoint/machine-groups.md) in Microsoft Defender for Endpoint and identified [user groups](/entra/fundamentals/concept-learn-about-groups.md) in Microsoft Entra ID.

**To exclude device groups:**

1. In the same Defender Experts settings setup, under **Exclusions**, go to the **Device groups** tab.
2. Select **+Add device groups**, then search for and choose the device group(s) that you wish to exclude.

> [!NOTE]
> This page only lists existing device groups. If you wish to create a new device group, you first need to go to the Defender for Endpoint settings in your Microsoft 365 Defender portal. Then, refresh this page to search for and choose the newly created group. [Learn more about creating device groups](../defender-endpoint/machine-groups.md).

3. Select **Add device groups**.
4. Back on the **Device groups** tab, review the list of excluded device groups. If you wish to remove a device group from the exclusion list, choose it then select **Remove device group**.
5. Select **Next** to confirm your exclusion list and proceed to [adding contact persons or groups](#tell-us-who-to-contact-for-important-matters). Otherwise, select **Skip**, and all the exclusions you’ve added won’t be saved.

## Tell us who to contact for important matters

Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there are critical incidents, service updates, occasional queries, and other recommendations. Once identified, the individuals will receive an email notifying them that they have been chosen as a contact for incident notification or service review purposes.

:::image type="content" source="../../media/xdr/who-to-contact-for-important-matters.png" alt-text="Screenshot of Incident contacts page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/who-to-contact-for-important-matters.png":::

**To add notification contacts:**

1. In the same Defender Experts settings step-by-step guide, under **Incident contact**, search for and add your contact persons or teams that we can notify for managed response actions or any communication that requires a prompt response.

> [!NOTE]
> Given the urgent nature of the communications, it is recommended to have someone available at all times.

2. Select **Next**. Under **Service review contact**, search for and add your contact persons or teams that we can engage with for ongoing security briefings done by our service delivery team.
3. Select **Next**. The settings guide then provides you with information about the **Next steps**, including working with our experts to [optimize your security posture](#prepare-your-environment-for-the-defender-experts-service).
4. Select **Close** to exit the settings step-by-step guide.

To edit or update your notification contacts after the initial setup, go to **Settings** > **Defender Experts** > **Notification contacts**:

1. Search for your **Contact person or team** in the text field provided.
2. Select the **Notification type** from the dropdown box.
3. Select **Add**.

:::image type="content" source="../../media/xdr/who-to-contact-for-imp-matters-2.png" alt-text="Screenshot of notification contacts." lightbox="../../media/xdr/who-to-contact-for-imp-matters-2.png":::

## Prepare your environment for the Defender Experts service

Apart from onboarding service delivery, our expertise on the Microsoft Defender XDR product suite enables Defender Experts for XDR to let you run a **readiness assessment** and help you get the most out of your Microsoft security products.

The readiness assessment is based on the number of protected devices and identities in your environment, and Defender Experts' policy recommendations. To view the assessment, in your Microsoft Defender portal, go to **Settings** > **Defender Experts** then select **Service status**.

:::image type="content" source="../../media/xdr/readiness-assessment-xdr.png" alt-text="Screenshot of readiness assessment environment." lightbox="../../media/xdr/readiness-assessment-xdr.png":::

The readiness assessment has two parts:

- **Actions needed** – This section shows the number of actions or security settings that you need to complete, are in progress, or have been completed. These are listed in a table at the bottom part of the page.

  The list outlines the required steps you need to take before initiating the service. Prioritize the actions that have the **Complete now** status to get the Defender Experts for XDR service started sooner.

  > [!NOTE]
  > It can take up to 24 hours to get the latest status of your security settings.

- **Protected assets** – This section shows the current number of protected devices and identities versus the ones that you still need to protect to get the Defender Experts for XDR service started.

  The figures are based on your Defender for Endpoint and Defender for Identity licenses; to achieve these target number of protected assets, [onboard more devices](/microsoft-365/security/defender-endpoint/onboarding) to Defender for Endpoint or [install more Defender for Identity sensors](/defender-for-identity/install-sensor).

> [!IMPORTANT]
> Defender Experts for XDR reviews your readiness assessment periodically, especially if there are any changes to your environment, such as the addition of new devices and identities. It’s important that you regularly monitor and run the readiness assessment beyond the initial onboarding to ensure that your environment has strong security posture to reduce risk.

Once you’ve completed all the required tasks and met the onboarding targets in your readiness assessment, your service delivery manager (SDM) initiates the monitoring phase of the Defender Experts for XDR service, where, for a few days, our experts start monitoring your environment closely to identify latent threats, sources of risk, and normal activity. As we get better understanding of your critical assets, we can streamline the service and fine-tune our responses.

### Next step

[Start using Microsoft Defender Experts for XDR service](start-using-mdex-xdr.md)

### See also

- [General information on Defender Experts for XDR service](frequently-asked-questions.md)
- [How Microsoft Defender Experts for XDR permissions work](dex-xdr-permissions.md)

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
