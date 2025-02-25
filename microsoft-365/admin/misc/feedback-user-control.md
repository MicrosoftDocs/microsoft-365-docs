---
title: "Learn about Microsoft feedback for your organization"
f1.keywords:
- NOCSH
ms.author: kwekua
author: kwekuako
manager: scotv
ms.date: 11/14/2024
audience: Admin
ms.topic: article
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2 
- scotvorg
- M365-subscription-management 
- Adm_O365
- must-keep
ms.custom: 
- AdminSurgePortfolio
- campaignIDs-batch1
description: "Learn about feedback your users can send to Microsoft about Microsoft products."
---

# Learn about Microsoft feedback for your organization

User feedback is a critical signal for Microsoft to understand user experiences with Microsoft products. Microsoft values our users’ opinions. User feedback goes directly to our engineers and helps us shape the future of Microsoft products and services for all our users. In this article, you'll find information on what types of feedback exist, how we collect it, what we collect and how we handle the data.

As an admin, you can manage the feedback signal for your organization. We’re introducing a new set of policy settings to help you manage user feedback collection within the Microsoft 365 applications for your organization. These policy settings help you target Microsoft Entra groups and configure the feedback collection experience for your organization. User feedback goes directly to our engineers and helps us shape the future of Microsoft products and services for all our users. You can learn more about these policy settings, which applications they apply to, and best practices at [Manage Microsoft feedback for your organization](../manage/manage-feedback-ms-org.md).

## Feedback types

### In-product feedback

If your users are using one of Microsoft's apps and wish to provide feedback, there are various ways to do that from within the apps they're using. Users can use these different ways to share product and feature feedback with us. One of the most common ways to share feedback through Microsoft apps is under the Help menu. Selecting **Help** > **Feedback** from most Microsoft apps launches a feedback page, which allows users to submit feedback to Microsoft.

#### In-product feedback examples

:::image type="content" source="../../media/In-appfeedbackbackstage.png" alt-text="Screenshot: In-product feedback example":::
:::image type="content" source="../../media/In-appfeedbackwindows.png" alt-text="Screenshot: Windows in-product feedback example ":::
:::image type="content" source="../../media/TeamsIn-appFeedback.png" alt-text="Screenshot: Teams in-product feedback example":::

### In-product surveys

Users can rate their experience and provide additional information about their experience via system-initiated survey prompts. These prompts occur within the Microsoft 365 products from time to time. When prompted, users can choose if they want to provide feedback. The survey prompts typically appears at the bottom right of the app. If the user decides to provide feedback, dismisses the prompt, or lets the prompt disappear on its own, that user won't see the survey again for some time. Microsoft also leverages a governance process to limit the number of these system-initiated surveys.  The intent of governance is to ensure users aren't overwhelmed by the number of survey prompts.

:::image type="content" source="../../media/feedback-love.png" alt-text="Screenshot: Example of in-product feedback request":::

:::image type="content" source="../../media/feedback-excel.png" alt-text="Screenshot: Example of in-product Excel feedback request":::

### Community feedback

Users can leverage the new [Microsoft feedback portal](https://feedbackportal.microsoft.com/feedback/) to participate in public community forums for all the Microsoft 365 products. The new Feedback portal allows users to browse and upvote publicly submitted feedback as well as submit new public community feedback for any of the supported products. Top known feedback items remain available in the new portal. This portal is also a new response canvas for users to track official Microsoft responses and engage with Microsoft on feedback they submit.

:::image type="content" source="../../media/community-feedback1.png" alt-text="Screenshot: Microsoft Teams feedback portal page":::

## What kind of feedback is best?

Detailed and actionable feedback is vital for making changes and improvements in Microsoft products. If your users have issues, or suggestions for how we can improve, we’d like to hear it. The following are a few tips and examples on actionable feedback sent to Microsoft.

- **Concise and descriptive title**   Descriptive and specific titles help us understand the issue being reported. Example: Excel’s **Recent files** list doesn't include recently added OneDrive files.
- **Focus on one issue at a time**   Provide feedback for one issue or recommendation one item at a time. This ensures the correct logs and data are received with each submission and can be assigned for follow-up. If you have more than one issue, submit a new feedback request for each issue. This helps us identify the volume of feedback we’re receiving on a particular issue.
- **Write details in the Description box**   Information about your device, operating system, and apps are automatically included in each reported feedback. Add any additional info about an issue you think is important. For example, include detailed steps to reproduce the issue.

## How Microsoft uses feedback

Microsoft uses feedback to improve Microsoft products. We get user feedback in the form of questions, problems, compliments, and suggestions. We make sure this feedback makes it back to the appropriate teams, who use feedback to identify, prioritize and make improvements to Microsoft products. Feedback is essential for our product teams to understand our user's experiences, and directly influences the priority of fixes and improvements.

### What do we collect?

When a user submits feedback, app information is usually collected along with app ratings and feedback descriptions. Here are the most common items collected or calculated.

- **Comments**   User submitted comments in the original language.
- **App**   Microsoft product we got the feedback from.
- **Date Submitted**   Date and time we got the feedback.
- **User Id**   Microsoft Entra ID or email address of the authenticated user submitting the feedback. Anonymous feedback is allowed but not shown in this view.
- **User Email**   If the user is ok with providing their email address for follow-up.
- **Language or Comment Language**   Original language the comment was submitted in.
- **Feedback Type**   Survey feedback or in-app feedback.
- **Survey Questions**   Questions that we asked the user during the survey.
- **Survey Responses**   User responses to survey questions.
- **Channel**   Channel of Microsoft product related to the feedback.
- **App Build**   Build number of Microsoft product that was captured on submission.
- **App Language**   Language of Microsoft product that was captured on submission.
- **Attachments**   Were any attachments (that is, screenshots, files) collected as part of the feedback? (Yes/No).
- **TenantId**   If feedback is submitted from a Microsoft Entra account, which TenantId was associated.
- **App module** Information about app modules that might have caused a recent crash, where applicable.
- **Optional Diagnostic data** If you're opted in, this data will be included with the feedback. [Learn more](/deployoffice/privacy/optional-diagnostic-data).

If you've enabled the corresponding policies, we might allow users to submit screenshots, attachments, content samples, and logs to help us debug and resolve problems the user might be running into. Microsoft uses this data to debug and resolve problems that might be challenging or impossible to resolve without this additional information. Users choose whether or not this content and data is submitted to Microsoft.

- Screenshots: Captures of the user’s screen at the time they submitted feedback. Example: the screen including the dialog box from which the user is submitting feedback.
- Attachments: Files the user can choose to attach to their feedback. Example: the file they were working on when they encountered a problem.
- Content samples: Portions of content from the customer’s document or interactions with Microsoft services. Example: the prompt the user sent to an AI service and the response the user received back from that AI service.
- Log files: Additional log files that aren't included in [diagnostic log files for Office](https://support.microsoft.com/office/fba86aac-70dc-4858-ae1f-ec2034346cdf) and that might include the user’s name or contents of the user’s files. Examples: logs that include the element of the customer’s file that is preventing the file from saving.

> [!NOTE]
> - For information about what feedback data is collected about Microsoft Copilot with Microsoft 365 apps, see [Providing feedback about Microsoft Copilot with Microsoft 365 apps](https://support.microsoft.com/topic/c481c26a-e01a-4be3-bdd0-aee0b0b2a423).
> - For information about log files for Microsoft Teams, see [Configure log files for monitoring and troubleshooting in Teams](/microsoftteams/log-files).

## How can I see my user's feedback?

To meet Microsoft’s legal obligations to customers, we've added an experience in the Microsoft 365 admin center that lets administrators view, delete, and export the feedback data for their organizations. As part of their data controller responsibility, customers own all user feedback data and this functionality will assist administrators to provide direct transparency into their users’ experiences with Microsoft 365 products and enable user feedback data to be provided as part of any Data Subject Request. The Compliance Administrator role (and the Global Administrator role) has the ability to view, export, and delete user feedback. All other administrators, as well as readers, are able to view and export feedback data but can't perform compliance related tasks or see information about who posted the feedback (such as user name, email, or device name). To access your organization's feedback data, sign in to the Microsoft 365 admin center and customize navigation to show the health node. Access this experience by selecting **Product Feedback** under the Health node.

:::image type="content" source="../../media/manage-feedback-3.jpg" alt-text="Product feedback in the Microsoft 365 admin center":::

## Data handling and privacy

We understand that when you use our cloud services, you're entrusting us with one of your most valuable assets: your data. We make sure the feedback we receive is stored and handled under Microsoft governance rules, and that it can only be accessed for approved uses. We don't use your email, chat, files, or other personal content to target ads to you. When we collect data, we use it to make your experiences better.

To learn more about how we protect the privacy and confidentiality of your data, and how we ensure that it will be used only in a way that is consistent with your expectations, review our privacy principles at the [Microsoft Trust Center](https://www.microsoft.com/trust-center/privacy).
