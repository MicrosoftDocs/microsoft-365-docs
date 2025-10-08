---
title: Manage harmful content protection settings for Microsoft 365 Copilot Chat
f1.keywords: NOCSH
ms.author: deniseb
author: denisebmsft
manager: dansimp
ms.reviewer: nsiu
ms.date: 09/29/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- trust-pod
- magic-ai-copilot
description: Learn how to set up a policy that enables users to disable harmful content protection in Microsoft 365 Copilot Chat as appropriate.
appliesto:
- ✅ Microsoft 365 Copilot
---

# Manage harmful content protection settings for Microsoft 365 Copilot Chat

Microsoft 365 Copilot uses content filtering to protect users from harmful content in user prompts and generated responses (see [How does Copilot block harmful content?](/copilot/microsoft-365/microsoft-365-copilot-privacy#how-does-copilot-block-harmful-content)). However, in certain use cases, such as in investigation, law enforcement, legal review, or social work scenarios, it's important to have the ability to adjust responsible harmful content protections appropriately. 

Microsoft is rolling out the ability to adjust harmful content protection settings so that Copilot Chat can respond to queries about harmful content when it's fit for purpose.

> [!IMPORTANT]
> Core responsible AI protections, such as prompt injection defense, copyright safeguards, and image protections are always enforced and can't be disabled. 
> 
> When you configure an `Adjust responsible AI protections for Microsoft 365 Copilot` policy, your policy doesn't affect images or agents. Default content filters remain in place for images and agents, even when users disable harmful content protection in a Copilot Chat conversation. Disabling harmful content protection applies only to text responses.  

## How harmful content protection settings work

When a policy to adjust AI protections is applied, users can use a toggle to enable or disable harmful content protection in Copilot Chat. The menu includes a **Harmful content protection** setting, as shown in the following screenshot:

:::image type="content" source="media/harmful-content-protection-copilot-chat/copilot-chat-more-menu.png" alt-text="Screenshot showing the More menu in Microsoft 365 Copilot Chat." lightbox="media/harmful-content-protection-copilot-chat/copilot-chat-more-menu.png":::

By default, the **Harmful content protection** setting is enabled at the beginning of each conversation. The user can set the toggle to off to disable harmful content protection for the duration of the conversation.

- When this setting is *enabled*, harmful content is blocked in Copilot Chat. 
- When this setting is *disabled*, the user can query on harmful content within the context of that conversation. In this case, the user might see sensitive or potentially offensive content related to their queries.

Once harmful content protection is disabled in a conversation in Copilot Chat, it can't be re-enabled until a new conversation is started. 

> [!NOTE]
> Regardless of whether harmful content protection is enabled or disabled, [Responsible AI governance](https://www.microsoft.com/en-us/ai/principles-and-approach), including prompt injection defense, copyright safeguards, and image protections continue to be enforced.

## How to configure harmful content protection settings

> [!CAUTION]
> When harmful content protection is turned off, Copilot Chat responses could include sensitive or potentially offensive content that violates the [Microsoft Generative AI Services Code of Conduct](/legal/ai-code-of-conduct). 

1. Set up or identify a security group in Microsoft Entra ID. The group should only include users who need to disable harmful content protection for certain scenarios, such as investigation, law enforcement, legal review, or similar use cases.

   To get help with your security group, see [Learn about group types, membership types, and access management](/entra/fundamentals/concept-learn-about-groups).

2. As an Office Apps Administrator (or Global Administrator), sign into the [Microsoft 365 Apps admin center](https://config.office.com).

   > [!IMPORTANT]
   > Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role. [Learn more about administrator roles](/microsoft-365/admin/add-users/about-admin-roles).

3. In the navigation pane, select **Customization**.

   :::image type="content" source="media/harmful-content-protection-copilot-chat/microsoft-365-apps-admin-center-customization.png" alt-text="Screenshot showing the Customization section in the Microsoft 365 App admin center." lightbox="media/harmful-content-protection-copilot-chat/microsoft-365-apps-admin-center-customization.png":::

4. Create or edit a policy configuration for **Adjust responsible AI protections for Microsoft 365 Copilot**. 

   :::image type="content" source="media/harmful-content-protection-copilot-chat/adjust-responsible-ai-protections.png" alt-text="Screenshot showing the Adjust responsible AI protections flyout pane." lightbox="media/harmful-content-protection-copilot-chat/adjust-responsible-ai-protections.png":::

4. In the flyout pane, specify your configuration settings as follows:

   :::image type="content" source="media/harmful-content-protection-copilot-chat/adjust-responsible-ai-protections-options.png" alt-text="Screenshot showing configuration options for the Adjust responsible AI protections policy." lightbox="media/harmful-content-protection-copilot-chat/adjust-responsible-ai-protections-options.png":::

   1. Under **Configuration setting**, select **Enabled**.

   2. Under **Options**, select an option, such as **Provide users with the option to adjust harmful content protection**.

   3. Select **Apply**.

5. Apply your policy to the security group you created in Step 1 and save your changes.

When the policy takes effect, users have the **Harmful content protection** toggle in Copilot Chat. [Learn more about the user experience](https://support.microsoft.com/en-us/topic/605db862-b859-4ec3-9327-d405cc164690).

> [!NOTE]
> Harmful content protection settings apply only to text responses. Default content filters remain in place for images and agents, even if harmful content protection is disabled in a Copilot Chat conversation.

## Best practices and important points

- We recommend using a security group in Microsoft Entra ID for your harmful content protection policies. Only include users who will use this feature when it's fit for purpose, such as when doing investigative work in law enforcement, legal, or social work scenarios. Not everyone in your organization needs to turn off harmful content protection.
- Let users know how the feature works and when to use it. For more information about the user experience, see [Using the harmful content protection toggle in Microsoft 365 Copilot Chat](https://support.microsoft.com/en-us/topic/605db862-b859-4ec3-9327-d405cc164690).

## Related articles

- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)
- [Security for Microsoft 365 Copilot](microsoft-365-copilot-ai-security.md)
- [Transparency Note for Microsoft 365 Copilot](microsoft-365-copilot-transparency-note.md)
