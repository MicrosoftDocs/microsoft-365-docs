---
title: "Troubleshoot eDiscovery hold distribution errors"
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
description: "Troubleshoot errors related to holds applied to custodians and non-custodial data sources in Advanced eDiscovery."
---

# Troubleshoot eDiscovery hold errors


## Recommended practices

- Don't sync all existing hold policies at once
- If you made changes to a holdy policy, wait until the pending hold policy full distributes. Wait until either you get Success or Error states.
- 


## Error/issue: Holds don't sync

eDiscovery Case Hold Policy Sync Distribution error. The error reads:

> "Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours."

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



