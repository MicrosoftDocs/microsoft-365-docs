---
title: "Learn about Microsoft feedback for your organization"
f1.keywords:
- NOCSH
ms.author: Kwekua
author: Kwekua
manager: scotv
audience: Admin
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
ms.collection: 
- M365-subscription-management 
- Adm_O365
- Adm_TOC
ms.custom: AdminSurgePortfolio
search.appverid:
- BCS160
- MET150
- MOE150
description: "Learn about feedback your users can send to Microsoft about Microsoft products."
---

# Learn about Microsoft feedback for your organization

User feedback is a critical signal for Microsoft to understand user experiences with Microsoft products. Microsoft values our users’ opinions. User feedback goes directly to our engineers and helps us shape the future of Microsoft products and services for all our users.  
In this topic, you'll find information on what types of feedback exist, how we collect it, what we collect and how we handle the data.

As an admin, you can manage the feedback signal for your organization. We’re introducing a new set of policy settings to help you manage user feedback collection within the Microsoft 365 applications for your organization. These policy settings will help you target Azure Active Directory groups and configure the feedback collection experience for your organization. User feedback goes directly to our engineers and helps us shape the future of Microsoft products and services for all our users. You can learn more about these policy settings, which applications they apply to, and best practices at [Manage Microsoft feedback for your organization](../manage/manage-feedback-ms-org.md).

## Feedback types

### In-product feedback

If your users are using one of Microsoft's apps and wish to provide feedback, there are various ways to do that from within the apps they're using. Users can use these different ways to share product and feature feedback with us. One of the most common ways to share feedback through Microsoft apps is under the Help menu. Selecting **Help** > **Feedback** from most Microsoft apps launches a feedback page, which allows users to submit feedback to Microsoft.

#### In-product feedback examples

:::image type="content" source="../../media/In-appfeedbackbackstage.png" alt-text="Screenshot: In-product feedback example":::
:::image type="content" source="../../media/In-appfeedbackwindows.png" alt-text="Screenshot: Windows in-product feedback example ":::
:::image type="content" source="../../media/TeamsIn-appFeedback.png" alt-text="Screenshot: Teams in-product feedback example":::

### In-product surveys

Users can also rate their experience and provide additional information about their experience via system-initiated survey prompts. These prompts occur within the Microsoft 365 products from time to time. When prompted, users can choose if they want to provide feedback. The survey prompts typically appears at the bottom right of the app. If the user decides to provide feedback, dismisses the prompt, or lets the prompt disappear on its own, that user will not see the survey again for some time. Microsoft also leverages a governance process to limit the number of these system-initiated surveys.  The intent of governance is to ensure users aren't overwhelmed by the number of survey prompts.

:::image type="content" source="../../media/feedback-love.png" alt-text="Screenshot: Example of in-product feedback request":::

:::image type="content" source="../../media/feedback-excel.png" alt-text="Screenshot: Example of in-product feedback request":::

## What kind of feedback is best?

Detailed and actionable feedback is vital for making changes and improvements in Microsoft products. If your users have issues, or suggestions for how we can improve, we’d like to hear it. Below are a few tips and examples on actionable feedback sent to Microsoft.

- **Concise and descriptive title**   Descriptive and specific titles help us understand the issue being reported. Example: Excel’s **Recent files** list doesn't include recently added OneDrive files.
- **Focus on one issue at a time**   Provide feedback for one issue or recommendation one item at a time. This ensures the correct logs and data are received with each submission and can be assigned for follow-up. If you have more than one issue, submit a new feedback request for each issue. This helps us identify the volume of feedback we’re receiving on a particular issue.
- **Write details in the Description box**   Information about your device, operating system, and apps are automatically included in each reported feedback. Add any additional info about an issue you think is important. For example, include detailed steps to reproduce the issue.

## How Microsoft uses feedback

Microsoft uses feedback to improve Microsoft products. We get user feedback in the form of questions, problems, compliments, and suggestions. We make sure this feedback makes it back to the appropriate teams, who use feedback to identify, prioritize and make improvements to Microsoft products. Feedback is essential for our product teams to understand our user's experiences, and directly influences the priority of fixes and improvements.

### What do we collect?

When a user submits feedback, app information is usually collected along with app ratings and feedback descriptions.  If you've enabled the policy, we may allow users to submit screenshots and logs to help us debug and resolve problems the user may be running into. Here are the most common items collected or calculated.

- **Comments**   User submitted comments in the original language.
- **App**   Microsoft product we got the feedback from.
- **Date Submitted**   Date and time we got the feedback.
- **User Id**   Azure Active directory Id or email address of the authenticated user submitting the feedback. Anonymous feedback is allowed but not shown in this view.
- **User Email**   If the user is ok with providing their email address for follow-up.
- **Language or Comment Language**   Original language the comment was submitted in.
- **Feedback Type**   Survey feedback or in-app feedback.
- **Survey Questions**   Questions that we asked the user during the survey.
- **Survey Responses**   User responses to survey questions.
- **Channel**   Channel of Microsoft product related to the feedback.
- **App Build**   Build number of Microsoft product that was captured on submission.
- **App Language**   Language of Microsoft product that was captured on submission.
- **Attachments**   Were any attachments (i.e screenshots, files) collected as part of the feedback? (Yes/No).
- **TenantId**   If feedback is submitted from an Azure Active Directory account, which TenantId was associated.

## Data handling and privacy

We work to earn trust by ensuring that we focus on core data handling and data privacy principles.
We make sure the feedback we receive is stored and handled under Microsoft governance rules, and that it can only be accessed for approved uses.

We put you in control of your privacy with easy-to-use tools and clear choices. We're transparent about how we collect and use data, so you can make informed decisions about what you want to share. We protect the data you entrust to us with strong security and encryption. We respect local privacy laws and fight for legal protection of your privacy as a human right. We don't use your email, chat, files, or other personal content to target ads to you. When we collect data, we use it to make your experiences better. Learn more about Microsoft’s approach to privacy [here](https://privacy.microsoft.com/). Learn more about our [Privacy overview](/compliance/assurance/assurance-privacy).

## How can I see my user's feedback?

Coming soon, we'll be sharing the feedback data we collect for Microsoft products back to you. We're working on a new experience in the Microsoft 365 admin center that let's you view, delete and export the feedback data for your organization. This gives you direct transparency and useful insights into your users’ experiences with Microsoft 365 products.
