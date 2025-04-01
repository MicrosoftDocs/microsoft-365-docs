---
title: "Submit admin-initiated Copilot feedback from the Microsoft 365 admin center"
f1.keywords:
- NOCSH
ms.author: camillepack
author: camillepack
manager: scotv
ms.date: 11/01/2024
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- scotvorg
- m365copilot
- magic-ai-copilot
description: "Learn how to provide Microsoft 365 Copilot feedback to Microsoft on behalf of your users who encounter issues"
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Submit admin-initiated Copilot feedback from the Microsoft 365 admin center

> [!VIDEO c67f2b9c-8ba4-44b5-8713-00063e92ba54]

Microsoft 365 Copilot is a product that helps users boost their productivity with large-language models (LLM). While Copilot is designed to provide accurate and informative responses based on the knowledge and data available in the Microsoft Graph, it's important to note that answers may not always be accurate. This is because Copilot generates responses based on patterns and probabilities in language data. Providing feedback is essential to improve the product and make it more dependable for users.

Microsoft 365 Copilot currently allows user-initiated feedback. As an admin, you can give feedback to supplement the user-initiated process. This helps Microsoft receive comprehensive diagnostic data to aid in debugging, especially in cases where users may not be able to provide feedback themselves. By providing feedback on behalf of your users, you can help enhance the overall experience of Copilot for your organization by improving the quality and relevance of its responses.

This article explains how you can initiate feedback on behalf of your users.

## Prerequisites

Before you begin, you must have the following:

- A Microsoft 365 subscription with a Microsoft 365 Copilot license

- Global administrator or AI administrator role to complete the task in this article. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

- An email address of the user who experienced an issue with Microsoft 365 Copilot.

## Steps to provide feedback to Microsoft

You can provide admin-initiated feedback for selected users across all Microsoft 365 apps where Copilot is available. To learn more about what apps have Copilot, see [Microsoft 365 Copilot overview](microsoft-365-copilot-overview.md).

To give feedback to Microsoft on behalf of a user who encountered a problem with Microsoft 365 Copilot, follow these steps:

1. Go to [admin.microsoft.com](https://admin.microsoft.com) and sign in with **Global Admin** or **AI admin** credentials. Select **Copilot** in the left navigation pane to enter the Copilot home page.

2. Find **Copilot diagnostic logs** and select it to open the Copilot feedback diagnostic logs pane. Review the information and then select **Get started**.

   :::image type="content" source="media/feedback/aif-copilot-feedback-entry.png" alt-text="Screenshot showing the side pane to get started with submitting user feedback for Copilot." lightbox="media/feedback/aif-copilot-feedback-entry.png":::

3. Enter the email address of the user who reported the problem. You can enter up to five users. Then, choose the relevant Copilot product from the list provided.

4. Select the specific date range for the feedback submission. The range can be up to the past 30 days.

   :::image type="content" source="media/feedback/aif-collect-data.png" alt-text="Screenshot highlighting the entry fields for submitting Copilot diagnostic logs." lightbox="media/feedback/aif-collect-data.png":::

5. Choose the number of rounds of conversations that you'd like to share with Microsoft, and then select **Next**.

   > [!NOTE]
   > The maximum number of conversations you can share is 30.

6. Review the available chat log prompt-response pairs. You can search using keywords or scroll through the list. Hover over each pair to view the full prompt-response pair. Select or deselect specific pairs to include in the feedback.

   :::image type="content" source="media/feedback/aif-prompt-pair.png" alt-text="Screenshot showing the options to select prompt pairs for Copilot diagnostic logs." lightbox="media/feedback/aif-prompt-pair.png":::

7. Choose from a predefined list of frequently occurring issues or enter the issue details in the text box.

   :::image type="content" source="media/feedback/aif-review.png" alt-text="Screenshot showing the options to select from a list of predefined issues." lightbox="media/feedback/aif-prompt-pair.png":::

8. Decide whether or not to move forward with the feedback submission to Microsoft. If you choose to share the data, select **Submit**. If you don't want to share the data, select **Cancel**.

9. If you choose **Submit**, make sure that all selected data is accurate and relevant. Once you've reviewed and confirmed all information, select **Submit** to send the feedback. You can view the submitted feedback under **Health** > **Product feedback** in the Microsoft 365 admin center.

    If you select **Cancel**, no data will be sent to Microsoft, and you'll see cancellation message. Microsoft doesn't collect anything before you select **Submit**.

10. Once submitted, you'll receive confirmation that the feedback has been submitted to Microsoft.

    :::image type="content" source="media/feedback/aif-files-sent.png" alt-text="Screenshot showing the email users receive when their feedback has been submitted by an admin." lightbox="media/feedback/aif-files-sent.png":::

11. The submitted feedback goes through a triage process and is assigned to the appropriate Microsoft product team. The product team will then connect with you to address the issue and provide updates.

## Data protection and privacy

For more information on how Microsoft protects your data, refer to the Microsoft Privacy Statement and the Microsoft Copilot Terms of Use: [My Account - Settings & Privacy](https://myaccount.microsoft.com/settingsandprivacy/privacy).

For more information about privacy with Microsoft 365 Copilot, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## Additional resources

- [Microsoft 365 Copilot help and learning](https://support.microsoft.com/copilot)

- [Get started with Microsoft 365 Copilot for admins](microsoft-365-copilot-setup.md)

- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)

- [Microsoft 365 Copilot documentation](/microsoft-365-copilot/)