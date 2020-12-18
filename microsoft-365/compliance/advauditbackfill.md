---
title: "Advanced Audit in Microsoft 365"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Priority
ms.collection:
- M365-security-compliance
- SPO_Content
- m365solution-audit
- m365initiative-compliance
search.appverid:
- MOE150
- MET150
description: "Advanced Audit in Microsoft 365 provides new auditing capabilities to help your organization with forensic and compliance investigations."
---

## License for Adv Audit

**Why don't I see Advanced Audit in my organization, even though we have an E5 subscription and users that are assigned E5 licenses?**

It's possible that Advanced Audit features (such as the ability to create audit log retention policies and the logging of crucial audit records) aren't available in your organization, even with the correct licensing in place. If this is happening to you, it's because the Advanced Audit package hasn't been rolled out to your organization yet. This is a temporary licensing backfill issue, which should be resolved for affected organizations soon. To mitigate this issue, please perform the following steps for each E5 user:

1. In the Microsoft 365 admin center, go to **Users > Active users**, and then select a user.

2. On the user properties flyout page, click **Licenses and Apps**.

3. Expand the **Apps** section, and then do one of the following things:

   a. If the **Microsoft 365 Advanced Auditing** checkbox is not selected, select it, and then click **Save changes.** Audit records for MailItemsAccessed actions for this user should be searchable within 24 hours.

   b. If the **Microsoft 365 Advanced Auditing** checkbox is selected, clear it, and then click **Save changes.** See step 4.

4. If you cleared the checkbox in step 3, wait 60 minutes, and then repeat step 3a to enable the Microsoft 365 Advanced Auditing app.

For organizations that assign licenses to groups of users by using group-based licensing, you have to turn off the licensing assignment for Microsoft 365 Advanced Auditing for the group. After you save your changes, verify that Microsoft 365 Advanced Auditing is turned off for the group. Then turn the licensing assignment for the group back on. For instructions about group-based licensing, see [Assign licenses to users by group membership in Azure Active Directory](https://docs.microsoft.com/azure/active-directory/users-groups-roles/licensing-groups-assign).