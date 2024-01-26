---
title: Get started with Microsoft Defender Experts for XDR
ms.reviewer:
description: Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there's a critical incident
keywords: XDR, protected assets, defender experts for xdr, set up microsoft xdr, set up permissions in xdr, managed detection and response (MDR) service, service delivery manager, managed response in Teams, readiness, threat hunting and analysis, actions needed xdr
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
ms.date: 01/23/2024
---

# Get started with Microsoft Defender Experts for XDR

**Applies to:**

- [Microsoft Defender XDR](microsoft-365-defender.md)

Once the Defender Experts for XDR team is ready to onboard your organization, you'll receive a welcome email to continue the setup and get you started.

Select the link in the welcome email to directly launch the Defender Experts settings setup in the Microsoft Defender portal. You can also open this setup by going to **Settings** > **Defender Experts** and selecting **Get started**.

:::image type="content" source="../../media/xdr/security-team-boost.png" alt-text="Screenshot of the Get started page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/security-team-boost.png":::

## Grant permissions to our experts

By default, Defender Experts for XDR requires **Service provider access** that lets our experts sign into your tenant and deliver services based on assigned security roles. [Learn more about cross-tenant access](/azure/active-directory/external-identities/cross-tenant-access-overview)

You also need to grant our experts one or both of the following permissions:

- **Investigate incidents and guide my responses** (default) – This option lets our experts proactively monitor and investigate incidents and guide you through any necessary response actions. (Access level: Security Reader)
- **Respond directly to active threats** (recommended) – This option lets our experts contain and remediate active threats immediately while investigating, thus reducing the threat's impact, and improving your overall response efficiency. (Access level: Security Operator)

:::image type="content" source="../../media/xdr/managed-exclusions.png" alt-text="Screenshot of manage exclusions option while setting up Defender Experts for XDR." lightbox="../../media/xdr/managed-exclusions.png":::

> [!IMPORTANT]
> If you skip providing additional permissions, our experts won't be able to take certain response actions to secure your organization.  
>
> Even though our experts are granted these relatively powerful permissions, they will only have individual access to specific areas for a limited period. [Learn more about how Defender Experts for XDR permissions work](../defender/dex-xdr-permissions.md)

**To grant our experts permissions:**

1. In the same Defender Experts settings setup, under **Permissions**, choose the access level(s) you want to grant our experts.
1. If you wish to [exclude device and user groups](#exclude-devices-and-users-from-remediation) in your organization from remediation actions, select **Manage exclusions**.
1. Select **Next** to [add contact persons or groups](#tell-us-who-to-contact-for-important-matters).

To edit or update permissions after the initial setup, go to **Settings** > **Defender Experts** > **Permissions**.

## Exclude devices and users from remediation

Defender Experts for XDR lets you exclude devices and users from remediation actions taken by our experts and instead get remediation guidance for those entities. These exclusions are based on identified [device groups](../defender-endpoint/machine-groups.md) in Microsoft Defender for Endpoint and identified [user groups](/entra/fundamentals/concept-learn-about-groups) in Microsoft Entra ID.

**To exclude device groups:**

1. In the same Defender Experts settings setup, under **Exclusions**, go to the **Device groups** tab.
2. Select **+ Add device groups**, then search for and choose the device group(s) that you wish to exclude.
   > [!NOTE]
   > This page only lists existing device groups. If you wish to create a new device group, you first need to go to the Defender for Endpoint settings in your Microsoft Defender portal. Then, refresh this page to search for and choose the newly created group. [Learn more about creating device groups](../defender-endpoint/machine-groups.md)

3. Select **Add device groups**.
4. Back on the **Device groups** tab, review the list of excluded device groups. If you wish to remove a device group from the exclusion list, choose it then select **Remove device group**.
5. Select **Next** to confirm your exclusion list and proceed to [adding contact persons or groups](#tell-us-who-to-contact-for-important-matters). Otherwise, select **Skip**, and all your added exclusions are discarded.

:::image type="content" source="../../media/xdr/exclude-device-groups.png" alt-text="Screenshot of option to exclude device groups." lightbox="../../media/xdr/exclude-device-groups.png":::

**To exclude user groups:**

1. In the same Defender Experts settings setup, under **Exclusions**, go to the **User groups** tab.
2. Select **+ Add user groups**, then search for and choose the user group(s) that you wish to exclude.
   > [!NOTE]
   > This page only lists existing user groups. If you wish to create a new user group, you first need to sign into the Microsoft Entra ID admin center as a Global Administrator. Then, refresh this page to search for and choose the newly created group. [Learn more about creating user groups](/entra/fundamentals/groups-view-azure-portal)

3. Select **Add user groups**.
4. Back on the **User groups** tab, review the list of excluded user groups. If you wish to remove a user group from the exclusion list, choose it then select **Remove user group**.
5. Select **Next** to confirm your exclusion list and proceed to [adding contact persons or groups](#tell-us-who-to-contact-for-important-matters). Otherwise, select **Skip**, and all your added exclusions are discarded.

:::image type="content" source="../../media/xdr/exclude-user-groups.png" alt-text="Screenshot of option to exclude user groups in Defender Experts for XDR service." lightbox="../../media/xdr/exclude-user-groups.png":::

To edit or update exclusions after the initial setup, go to **Settings** > **Defender Experts** > **Exclusions**, then go to the **Device groups** or **User groups** tab.

### Exclude all high-value devices or users automatically

Defender Experts for XDR also lets you exclude automatically identified high-value devices and users, such as key executives, or sensitive admins, from remediation actions by our experts:

- **High-value devices** are devices in your organization that were [identified as such](../defender-vulnerability-management/tvm-assign-device-value.md) in Defender for Endpoint
- **High-value users** are users in your organization that were tagged with the [Sensitive tag](/defender-for-identity/entity-tags#sensitive--tags) in Microsoft Defender for Identity and the [priority account tag](/microsoft-365/admin/setup/priority-accounts) in Microsoft Defender for Office 365

Similar to the other excluded device or user groups, you instead get remediation guidance for these high-value entities when they're excluded.
> [!IMPORTANT]
> By using this feature, you will also exclude automatically all devices and users that will be tagged as high-value in the future.

**To exclude all high-value devices or users automatically:**

1. In the same Defender Experts settings setup, under Exclusions, go to the **Device groups** or the **User groups** tab.
2. Turn on **Exclude all high-value devices** or **Exclude all high-value users**.

:::image type="content" source="../../media/xdr/managed-remediation-exclusions.png" alt-text="Screenshot of managed remediation exclusions option." lightbox="../../media/xdr/managed-remediation-exclusions.png":::

> [!NOTE]
> Unlike the other excluded device and user groups, excluded high-value entities aren't listed in the **Device groups** or **User groups** tab.

## Tell us who to contact for important matters

Defender Experts for XDR lets you determine the individuals or groups within your organization that need to be notified if there are critical incidents, service updates, occasional queries, and other recommendations:

- **Incident notification contacts** – These contacts are persons or teams that we can notify for managed response actions or any communication that requires immediate response. Given the urgent nature of the communications, we recommended that these contacts are always available.
- **Service review contacts** – These contacts are persons or teams that we can engage with for ongoing security briefings done by our service delivery team.

Once identified, the individuals or groups will receive an email notifying them that they were as a contact for incident notification or service review purposes.

:::image type="content" source="../../media/xdr/who-to-contact-for-important-matters.png" alt-text="Screenshot of Incident contacts page in Defender for Experts XDR settings step-by-step guide." lightbox="../../media/xdr/who-to-contact-for-important-matters.png":::

**To add notification contacts:**

1. In the same Defender Experts settings setup, under **Contacts**, search for and add your **Contact person or team** in the text field provided.
2. Add a **Phone number** (optional) that Defender Experts can call for matters that require immediate attention.
3. Under the **Contact for** dropdown box, choose **Incident notification** or **Service review**.
4. Select **Add**.
1. Select **Next** to confirm your contacts list and proceed to [creating a Teams channel](#receive-managed-response-notifications-and-updates-in-microsoft-teams) where you can also receive incident notifications.

To edit or update your notification contacts after the initial setup, go to **Settings** > **Defender Experts** > **Notification contacts**.

:::image type="content" source="../../media/xdr/who-to-contact-for-imp-matters-2.png" alt-text="Screenshot of notification contacts." lightbox="../../media/xdr/who-to-contact-for-imp-matters-2.png":::

## Receive managed response notifications and updates in Microsoft Teams

Apart from email and [in-portal chat](start-using-mdex-xdr.md#in-portal-chat), you also have to option to use Microsoft Teams to receive updates about managed responses and communicate with our experts in real time. When this setting is turned on, a new team named **Defender Experts team** is created, where managed response notifications related to ongoing incidents are sent as new posts in the **Managed response** channel. [Learn more about using Teams chat](../defender/start-using-mdex-xdr.md#teams-chat)

> [!IMPORTANT]
> Defender Experts will have access to all messages posted on any channel in the created **Defender Experts team**. To prevent Defender Experts from accessing messages in this team, go to **Apps** in Teams then navigate to **Manage your apps** > **Defender Experts** > **Remove**. This removal action cannot be reversed.

**To turn on Teams notifications and chat:**

1. In the same Defender Experts settings setup, under **Teams**, select the **Communicate on Teams** checkbox.  
2. Select **Next** to review your settings.
3. Select **Submit**. The step-by-step guide then completes the initial setup.
4. Select **View readiness assessment** to complete the necessary actions required to [optimize your security posture](#prepare-your-environment-for-the-defender-experts-service).

> [!NOTE]
> To set up the Defender Experts Teams application, you must have either the **Global administrator** or **Security administrator** role assigned, and a Microsoft Teams license.

To turn on Teams notifications and chat after the initial setup, go to **Settings** > **Defender Experts** > **Teams**.

:::image type="content" source="../../media/xdr/Teams-managed-response.png" alt-text="Screenshot of option to activate Teams for receiving managed response." lightbox="../../media/xdr/Teams-managed-response.png":::

You can add new members to the channel by navigating to **Defender Experts team** > **More options (…)** >  **Manage team** > **Add member**.

## Prepare your environment for the Defender Experts service

Apart from onboarding service delivery, our expertise on the Microsoft Defender XDR product suite enables Defender Experts for XDR to let you run a **readiness assessment** and help you get the most out of your Microsoft security products.

The readiness assessment is based on the number of protected devices and identities in your environment, and Defender Experts' policy recommendations. To view the assessment, in your Microsoft Defender portal, go to **Settings** > **Defender Experts** then select **Service status**.

:::image type="content" source="../../media/xdr/readiness-assessment-xdr.png" alt-text="Screenshot of readiness assessment environment." lightbox="../../media/xdr/readiness-assessment-xdr.png":::

The readiness assessment has two parts:

- **Actions needed** – This section shows the number of actions or security settings that you need to complete, are in progress, or have been completed. These actions are listed in a table at the bottom part of the page.

  The list outlines the required steps you need to take before initiating the service. Prioritize the actions that have the **Complete now** status to get the Defender Experts for XDR service started sooner.

  > [!NOTE]
  > It can take up to 24 hours to get the latest status of your security settings.

- **Protected assets** – This section shows the current number of protected devices and identities versus the ones that you still need to protect to get the Defender Experts for XDR service started.

  The figures are based on your Defender for Endpoint and Defender for Identity licenses; to achieve these target number of protected assets, [onboard more devices](/microsoft-365/security/defender-endpoint/onboarding) to Defender for Endpoint or [install more Defender for Identity sensors](/defender-for-identity/install-sensor).

> [!IMPORTANT]
> Defender Experts for XDR reviews your readiness assessment periodically, especially if there are any changes to your environment, such as the addition of new devices and identities. It's important that you regularly monitor and run the readiness assessment beyond the initial onboarding to ensure that your environment has strong security posture to reduce risk.

After you complete all the required tasks and met the onboarding targets in your readiness assessment, your service delivery manager (SDM) initiates the monitoring phase of the Defender Experts for XDR service, where, for a few days, our experts start monitoring your environment closely to identify latent threats, sources of risk, and normal activity. As we get better understanding of your critical assets, we can streamline the service and fine-tune our responses.

Once our experts begin to perform comprehensive response work on your behalf, you’ll start receiving [notifications about incidents](../defender/start-using-mdex-xdr.md#incident-notifications) that require remediation steps and targeted recommendations on critical incidents. You can also chat with our experts or your SDMs regarding important queries and regular business and security posture reviews, and [view real-time reports](../defender/start-using-mdex-xdr.md#understand-the-defender-experts-for-xdr-report) on the number of incidents we’ve investigated and resolved on your behalf.


### Next step

[Start using Microsoft Defender Experts for XDR service](start-using-mdex-xdr.md)

### See also

- [General information on Defender Experts for XDR service](frequently-asked-questions.md)
- [How Microsoft Defender Experts for XDR permissions work](dex-xdr-permissions.md)

[!INCLUDE [Microsoft Defender XDR rebranding](../../includes/defender-m3d-techcommunity.md)]
