---
title: "Get started with DLP policies that use exact data match based sensitive information types"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: how-to
ms.service: O365-seccomp
ms.date:
localization_priority: Normal
ms.collection:
- M365-security-compliance
search.appverid:
- MOE150
- MET150
description: Get started creating exact data match based sensitive information types.
ms.custom: seo-marvel-apr2020
---

# Get started with DLP policies that use EDM SIT

Configuring services to use your EDM Sensitive information type
The following services support EDM sensitive information types:
•	DLP for Exchange Online (email)
•	DLP for OneDrive for Business (files)
•	DLP for SharePoint (files)
•	DLP for Microsoft Teams (conversations)
•	Microsoft Cloud App Security policies
•	Service-side auto-labeling policies
To create a DLP policy with EDM
1.	Go to the Security & Compliance Center using the appropriate link for your subscription.
2.	Choose Data loss prevention > Policy.
3.	Choose Create a policy > Custom > Next.
4.	On the Name your policy tab, specify a name and description, and then choose Next.
5.	On the Choose locations tab, select Let me choose specific locations, and then choose Next.
6.	In the Status column, select Exchange email, OneDrive accounts, Teams chat and channel message, and then choose Next.
7.	On the Policy settings tab, choose Use advanced settings, and then choose Next.
8.	Choose + New rule.
9.	In the Name section, specify a name and description for the rule.
10.	In the Conditions section, in the + Add a condition list, choose Content contains sensitive type.
11.	Search for the sensitive information type you created when you set up your rule package, and then choose + Add.
Then choose Done.
12.	Finish selecting options for your rule, such as User notifications, User overrides, Incident reports, and so on, and then choose Save.
13.	On the Policy settings tab, review your rules, and then choose Next.
14.	Specify whether to turn on the policy right away, test it out, or keep it turned off. Then choose Next.
15.	On the Review your settings tab, review your policy. Make any needed changes. When you’re ready, choose Create.
[!NOTE] Allow approximately one hour for your new DLP policy to work its way through the service.
[!TIP] A common practice is to combine the use of EDM Sensitive information types and the regular sensitive information types on which they are based in DLP rules, with different thresholds. For example, you could use an EDM sensitive information type that looks for social security numbers and other data, with strict requirements and low tolerance (e.g. one or more matches will cause a DLP alert), while using the regular sensitive information type on which you based your EDM type (e.g. the U.S. Social Security Number built-in sensitive information type) for higher counts (e.g. more than 100 matches), in case sensitive information not recorded in your databases or that’s being used in a way that doesn’t align with your EDM definition for additional evidence is being exfiltrated in large volumes.  






### Part 3: Use EDM-based classification with your Microsoft cloud services

<!-- goes under the get started umbrella-->

These locations are support EDM sensitive information types:

- DLP for Exchange Online (email)
- OneDrive for Business (files)
- Microsoft Teams (conversations)
- DLP for SharePoint (files)
- Microsoft Cloud App Security DLP policies
- Server-side auto-labeling policies - available for commercial cloud customers and government cloud customers
- Client side auto-labeling policies - available for government cloud customers  

#### To create a DLP policy with EDM

1. Go to the Security & Compliance Center using the appropriate [link for your subscription](#portal-links-for-your-subscription).

2. Choose **Data loss prevention** \> **Policy**.

3. Choose **Create a policy** \> **Custom** \> **Next**.

4. On the **Name your policy** tab, specify a name and description, and then choose **Next**.

5. On the **Choose locations** tab, select **Let me choose specific locations**, and then choose **Next**.

6. In the **Status** column, select **Exchange email, OneDrive accounts, Teams chat and channel message**, and then choose **Next**.

7. On the **Policy settings** tab, choose **Use advanced settings**, and then choose **Next**.

8. Choose **+ New rule**.

9. In the **Name** section, specify a name and description for the rule.

10. In the **Conditions** section, in the **+ Add a condition** list, choose **Content contains sensitive type**.

      ![Content contains sensitive info types.](../media/edm-dlp-newrule-conditions.png)

11. Search for the sensitive information type you created when you set up your rule package, and then choose **+ Add**.
    Then choose **Done**.

12. Finish selecting options for your rule, such as **User notifications**, **User overrides**, **Incident reports**, and so on, and then choose **Save**.

13. On the **Policy settings** tab, review your rules, and then choose **Next**.

14. Specify whether to turn on the policy right away, test it out, or keep it turned off. Then choose **Next**.

15. On the **Review your settings** tab, review your policy. Make any needed changes. When you're ready, choose **Create**.

> [!NOTE]
> Allow approximately one hour for your new DLP policy to work its way through your data center.




 