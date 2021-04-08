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
description: "Troubleshoot errors related to legal holds applied to custodians and non-custodial data sources in Core eDiscovery."
---

# Troubleshoot eDiscovery hold errors

This article discusses some common issues that may occur with eDiscovery holds and how to resolve them. The article also includes some recommended practices to help you mitigate or avoid these issues.

## Recommended practices

To reduce the number of errors related to eDiscovery legal holds, we recommend the following practices.

- If a hold distribution is still pending, with a status of either `On (Pending)` or `Off (Pending)`, wait until the hold distribution is complete before you make any further updates.
- Merge your updates in a single bulk request rather than updating the hold repeatedly for each transaction. For instance, to add more user mailbox to an existing hold policy using [Set-CaseHoldPolicy cmdlet](https://docs.microsoft.com/powershell/module/exchange/set-caseholdpolicy?view=exchange-ps),
    - Do this. This code block runs [Set-CaseHoldPolicy](/powershell/module/exchange/set-caseholdpolicy?view=exchange-ps) only once to complete the task)

    ```powershell
    Set-CaseHoldPolicy -AddExchangeLocation {$user1, $user2, $user3, $user4, $user5}
    ```
    - Don't do this. This code block runs [Set-CaseHoldPolicy](/powershell/module/exchange/set-caseholdpolicy?view=exchange-ps) five times to complete the task)

    ```powershell
    $users = {$user1, $user2, $user3, $user4, $user5}
    ForEach($user in $users){
        Set-CaseHoldPolicy ...... -AddExchangeLocation $user
    }
    ```

- Before contacting Microsoft Support about eDiscovery hold issues, follow the steps in the [Error/issue: Holds don't sync](#errorissue-holds-dont-sync) section to retry the hold distribution. This process often resolves temporary issues including internal server errors.

## Error/issue: Holds don't sync

If you see one the following error messages when putting custodians and data sources on hold, use the resolution steps to troubleshoot the issue.

> "Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours."

> "Policy cannot be deployed to the content source due to a temporary Office 365 datacenter issue. The current policy is not applied to any content in the source, so there's no impact from the blocked deployment. To fix this issue, please try redeploying the policy"

> "Sorry, we could not perform the requested changes to policy due to a transient internal server error. Please try again in 30 minutes."
### Resolution

1. Connect to [Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell) and then run the following command for an eDiscovery hold:

   ```powershell
   Get-CaseHoldPolicy <policyname> - DistributionDetail | FL
   ```

2. Examine the value in the DistributionDetail parameter for errors like the following:

   > Error: Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours."

3. Try running the RetryDistribution parameter on the policy in question:

   For eDiscovery holds:

   ```powershell
   Set-CaseHoldPolicy <policyname> -RetryDistribution
   ```