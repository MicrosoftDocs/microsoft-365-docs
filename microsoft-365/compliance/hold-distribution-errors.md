---
title: "Troubleshoot eDiscovery hold errors"
f1.keywords:
- NOCSH
ms.author: markjjo
author: markjjo
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance 
search.appverid: 
- MOE150
- MET150
ms.custom:
- seo-marvel-apr2020
description: "Troubleshoot errors related to legal holds applied to custodians and non-custodial data sources in Core eDiscovery."
---

# Troubleshoot eDiscovery hold errors

This article discusses common issues that may occur with eDiscovery holds and how to resolve them. The article also includes recommended practices to help you mitigate or avoid these issues.

## Recommended practices

To reduce the number of errors related to eDiscovery holds, we recommend the following practices:

- If a hold distribution is still pending, with a status of either `On (Pending)` or `Off (Pending)`, wait until the hold distribution is complete before you make any further updates.
- Check whether a policy is pending or not before you make any further updates.

    ```powershell
    $status = Get-caseholdpolicy -Identity $policyname 
    if($status.DistributionStatus -ne "Pending"){
        # policy no longer pending
        Set-CaseHoldPolicy -Identity $policyname -AddExchangeLocation $user1
    }else{
        # policy still pending
        Write-Host "Hold policy still pending."
    }
   ```
- Merge your updates to an eDiscovery hold in a single bulk request rather than updating the hold policy repeatedly for each transaction. For example, to add multiple user mailboxes to an existing hold policy using the [Set-CaseHoldPolicy](/powershell/module/exchange/set-caseholdpolicy) cmdlet, run the command (or add as a code block to a script) so that it runs only once to add multiple users.

  **Correct**

    ```powershell
    Set-CaseHoldPolicy -Identity $policyname -AddExchangeLocation {$user1, $user2, $user3, $user4, $user5}
    ```

   **Incorrect**

    ```powershell
    $users = {$user1, $user2, $user3, $user4, $user5}
    ForEach($user in $users)
    {
        Set-CaseHoldPolicy -Identity $policyname -AddExchangeLocation $user
    }
    ```

   In the previous incorrect example, the cmdlet is run five separate times to complete the task. For more information about the recommended practices for adding users to a hold policy, see the [More information](#more-information) section.



- Before contacting Microsoft Support about eDiscovery hold issues, follow the steps in the [Error/issue: Holds don't sync](#errorissue-holds-dont-sync) section to retry the hold distribution. This process often resolves temporary issues including, internal server errors.

## Error/issue: Holds don't sync

If you see one the following error messages when putting custodians and data sources on hold, use the resolution steps to troubleshoot the issue.

> Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours.

> Policy cannot be deployed to the content source due to a temporary Office 365 datacenter issue. The current policy is not applied to any content in the source, so there's no impact from the blocked deployment. To fix this issue, please try redeploying the policy.

> Sorry, we could not perform the requested changes to policy due to a transient internal server error. Please try again in 30 minutes.

### Resolution

1. Connect to [Security & Compliance Center PowerShell](/powershell/exchange/connect-to-scc-powershell) and run the following command for an eDiscovery hold:

   ```powershell
   Get-CaseHoldPolicy <policyname> -DistributionDetail | FL
   ```

2. Examine the value in the *DistributionDetail* parameter. Look for errors like the following:

   > Error: Resources: It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours.

3. Try running the **Set-CaseHoldPolicy -RetryDistribution** command on the hold policy in question; for example:

   ```powershell
   Set-CaseHoldPolicy <policyname> -RetryDistribution
   ```

## Error: "The SharePoint site is read-only or not accessible."

> The SharePoint site is read-only or not accessible. Please contact the site administrator to make the site writable, and then redeploy this policy.

Your organization's [global admin or SharePoint admin](https://docs.microsoft.com/sharepoint/sharepoint-admin-role) has <b>locked</b> the site, which blocks eDiscovery from placing a hold on the site.

### Resolution
<b>Unlock</b> the site to remediate this issue. To learn more about how to change the lock state for a site, see [Change the lock state for a site](https://docs.microsoft.com/sharepoint/manage-lock-status).

## Error: "The mailbox or SharePoint site may not exist."

> The mailbox or SharePoint site may not exist.  If this is incorrect, please contact Microsoft support.  Otherwise, please remove it from this policy.

### Resolution
- Run [Get-Mailbox](https://docs.microsoft.com/powershell/module/exchange/get-mailbox?view=exchange-ps) to check if the user mailbox exist in your organization
- Run [Get-SPOSite](https://docs.microsoft.com/powershell/module/sharepoint-online/get-sposite?view=sharepoint-ps) to check if the site exists in your oganization.
- Check if the site URL has changed.
## More information

- The guidance about updating hold policies for multiple users in the "Recommended practices" section results from the fact that the system blocks simultaneous updates to a hold policy. That means when an updated hold policy is applied to new content locations and the hold policy is in a pending state, additional content locations can't be added to the hold policy. Here are some things to keep in mind to help you mitigate this issue:
  
  - Every time a hold updated is updated, it immediately goes into a pending state. The pending state status means the hold is being applied to content locations.
  
  - If you have a script that runs a loop and adds locations to policy one by one (similar to the incorrect example shown in the "Recommended practices" section), the first content location (for example, a user mailbox) initiates the sync process that triggers the pending state. That means the other users that are added to the policy in subsequent loops result in an error.
  
  - If your organization is using a script that runs a loop to update the content locations for a hold policy, you must update the script so that it updates locations in a single bulk operation (as shown in the correct example in the "Recommended practices" section).
