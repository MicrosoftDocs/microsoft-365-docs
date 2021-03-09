---
title: "Troubleshoot eDiscovery legal hold errors"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: reference
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
ROBOTS: NOINDEX, NOFOLLOW
description: "Troubleshoot errors related to holds applied to custodians and non-custodial data sources in Core eDiscovery."
---

# Troubleshoot eDiscovery legal hold errors


## Recommended practices

To reduce the number of eDiscovery legal hold related errors you see, we recommend the followings practices.

- If your hold is still pending, with a status of either "On (Pending)" or Off (Pending), wait until the hold operation is complete before you submit any further updates to the pending hold (e.g. canceling, deleting, editing).
- If you run scripts to automate your legal holds workflows, consider separating the legal hold operations into multiple batches. For example, if your organization has 1000 open eDiscovery cases that put custodians on hold, sync 100 policies in one batch operation, then continue with the rest of policy sync operations after you confirm the previous operation was successful.
- Before contacting Microsoft support, follow steps in [Error/issue: Holds don't sync](#errorissue-holds-dont-sync) to retry your hold distribution. This process often resolves temporary issues.

## Error/issue: Holds don't sync

When you see the following error messages when putting your custodians and data sources on hold, follow the resolution steps to troubleshoot the issue.

> "Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours."

> "Policy cannot be deployed to the content source due to a temporary Office 365 datacenter issue. The current policy is not applied to any content in the source, so there's no impact from the blocked deployment. To fix this issue, please try redeploying the policy"
### Resolution

1. Connect to [Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell) and then run the following command for an eDiscovery case hold:

   ```powershell
   Get-CaseHoldPolicy <policyname> - DistributionDetail | FL
   ```

    For a retention policy, run the following command:

   ```powershell
   Get-RetentionCompliancePolicy <policyname> - DistributionDetail | FL
   ```

2. Examine the value in the DistributionDetail parameter for errors like the following:

   > Error: Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours."

3. Try running the RetryDistribution parameter on the policy in question:

   For eDiscovery case holds:

   ```powershell
   Set-CaseHoldPolicy <policyname> -RetryDistribution
   ```

   For retention policies:

   ```powershell
   Set-RetentionCompliancePolicy <policyname> -RetryDistribution
   ```

4. Contact Microsoft Support.



## Error/issue: Multiple inactive recipients

> "We can't identify this user with the existing identifiers. The link between this user and the policy is broken. This usually happens for user whose status have changed from active to inactive after this policy was created. Regardless of the broken link, this user is still on hold if you didn't see any errors the first time you created this hold policy. To fix this issue, update the user identifier in this policy. Some possible candidates we identified are: useralias@contoso.com For more information, see {Link to public doc on hold distribution errors}.."
### Resolution

There are rare instances where the system cannot automatically fix an error related to active users that were placed on hold, then turned inactive. In this case, you may run into this new error "We can't identify this user with the existing identifiers. The link between this user and the policy is broken."

Check for duplicate users or distribution list with the same user ID.

1. Connect to [Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell).

2. Run the following command to retrieve all instances of the username:

    ```powershell
    Get-Recipient <username>
    ```

   The output for 'useralias@contoso.com' would be similar to the following:

   > 
   > |Name|RecipientType|
   > |---|---|
   > |Alias, User|MailUser|
   > |Alias, User|User|

3. If multiple users are returned, locate and fix the conflicting object. If no users are returned, remove the inactive alias from your hold policy to fix the issue.