---
title: "Step 5: Configure Office 365 Data Loss Prevention"
f1.keywords:
- NOCSH
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 09/19/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-security-compliance
- Strat_O365_Enterprise
ms.custom:
description: Understand and deploy Office 365 Data Loss Prevention in Microsoft 365.
---

# Step 5: Configure Office 365 Data Loss Prevention

*This step is optional and applies to both the E3 and E5 versions of Microsoft 365 Enterprise*

![Phase 6: Information Protection](../media/deploy-foundation-infrastructure/infoprotection_icon-small.png)

With data loss prevention (DLP) policies in the Security & Compliance center, you can identify, monitor, and automatically protect sensitive information across Microsoft 365. With DLP policies, you can:

- Identify sensitive information across many locations, such as Exchange Online, SharePoint Online, OneDrive for Business, and Microsoft Teams.
- Prevent the accidental sharing of sensitive information by blocking access to a document or blocking the email that contains it.
- Monitor and protect sensitive information in the desktop versions of Excel, PowerPoint, and Word.
- Help users learn how to stay compliant without interrupting their workflow with email notifications and policy tips. 
- View DLP reports showing content that matches your organization's DLP policies.

A DLP policy specifies:

- **Where:** Locations such as Exchange Online, SharePoint Online, and OneDrive for Business sites, as well as Microsoft Teams chats and channels.
- **When:** Conditions the content must match within a specific policy rule.
- **How:** Actions within that matching policy rule to take automatically for the matching conditions.

In other words:

- For a document in this location (where), if the content matches the conditions of a rule (when), then automatically take the actions specified in the rule (how).

To determine the set of DLP policies you need, you must analyze your documents and the types of data within them that need protection from data loss. For example, if you are a financial organization in the United States of America, you would create a DLP policy that prevents documents with social security numbers from being shared outside the organization or sent in email to locations outside the organization.

Next, you configure and test the policies with test locations to ensure the correct DLP behavior and to minimize false positives.

Finally, you roll it out to your organization by informing the employees of the new policies and their desired behavior and widening the scope of the locations.

For more information, see [Get started with DLP policy recommendations](https://docs.microsoft.com/office365/securitycompliance/get-started-with-dlp-policy-recommendations).

As an interim checkpoint, see the [exit criteria](infoprotect-exit-criteria.md#crit-infoprotect-step5) corresponding to this step.

## Next step

|||
|:-------|:-----|
|![Step 6](../media/stepnumbers/Step6.png)|[Configure email encryption](infoprotect-email-encryption.md)|


