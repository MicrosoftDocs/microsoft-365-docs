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

Microsoft 365 Copilot is a product that helps users boost their productivity with large-language models (LLM). While Copilot is designed to provide accurate and informative responses based on the knowledge and data available in the Microsoft Graph, it's important to note that answers may not always be accurate. This is because Copilot generates responses based on patterns and probabilities in language data. Providing feedback is essential to improve the product and make it more dependable for users.

Microsoft 365 Copilot currently allows user-initiated feedback. As an admin, you can give feedback to supplement the user-initiated process. This helps Microsoft receive comprehensive diagnostic data to aid in debugging, especially in cases where users may not be able to provide feedback themselves. By providing feedback on behalf of your users, you can help enhance the overall experience of Copilot for your organization by improving the quality and relevance of its responses.

This article explains how you can initiate feedback on behalf of your users.

## Prerequisites

Before you begin, you must have the following:

- A Microsoft 365 subscription with a Microsoft 365 Copilot license

- Global admin role to complete the task in this article. For more information, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

- An email address of the user who experienced an issue with Microsoft 365 Copilot.

## Steps to provide feedback to Microsoft

To provide feedback to Microsoft on behalf of a user who encountered a problem with Microsoft 365 Copilot, follow these steps:

1. Go to [admin.microsoft.com](https://admin.microsoft.com) and sign in with **Global Admin** credentials. Select on **Copilot** in the left navigation pane to enter the Copilot home page.

2. Find **Copilot diagnostic logs** and select it to open the Copilot feedback diagnostic logs pane. Review the information and then select **Get started**.

   :::image type="content" source="media/copilot-feedback-get-started.png" alt-text="Screenshot showing the side pane to get started with submitting user feedback for Copilot." lightbox="media/copilot-feedback-get-started.png":::

3. Enter the email address of the user who reported the issue. Then, choose the number of rounds of conversations that you'd like to share with Microsoft, and then select **Review**.

   > [!NOTE]
   > The maximum number of conversations you can share is 30.

4. After a short wait, you'll receive a JSON file containing the user's conversations with Copilot for the past X interactions (utterance/response pairs) that you select, along with their feedback logs. The file is redacted to protect Microsoft IP, if any. You can use any JSON viewer tool to inspect the data and include additional comments for the feedback. The file will be available for download once it's generated.

5. Decide whether or not to move forward with the feedback submission to Microsoft. If you choose to share the data, select **Submit**. If you don't want to share the data, select **Cancel**.

6. If you select, **Submit**, the log files will be sent to Microsoft along with your consent and you'll see a confirmation message. If you select **Cancel**, no data will be sent to Microsoft, and you'll see cancellation message. Microsoft doesn't collect anything before you select **Submit**.

7. Once you select **Submit**, the user who you submitted feedback on behalf of receives an automatic email from Microsoft to inform them about the feedback submission.

   :::image type="content" source="media/copilot-user-feedback-email.jpg" alt-text="Screenshot showing the email users receive when their feedback has been submitted by an admin." lightbox="media/copilot-user-feedback-email.jpg":::

8. The Microsoft product team will use the data in the zip file to troubleshoot and resolve the issue by correlating it with other backend systems.

## Data protection and privacy

For more information on how Microsoft protects your data, refer to the Microsoft Privacy Statement and the Microsoft Copilot Terms of Use: [My Account - Settings & Privacy](https://myaccount.microsoft.com/settingsandprivacy/privacy).

For more information about privacy with Microsoft 365 Copilot, see [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md).

## Additional resources

- [Microsoft 365 Copilot help and learning](https://support.microsoft.com/copilot)

- [Get started with Microsoft 365 Copilot for admins](microsoft-365-copilot-setup.md)

- [Data, Privacy, and Security for Microsoft 365 Copilot](microsoft-365-copilot-privacy.md)

- [Microsoft 365 Copilot documentation](/microsoft-365-copilot/)