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

- Check whether a hold policy is pending before you make any further updates to it. Run the following commands or save them to a PowerShell script.

    ```powershell
    $status = Get-CaseHoldPolicy -Identity <policyname> -DistributionDetail
    if($status.DistributionStatus -ne "Pending"){
        # policy no longer pending
        Set-CaseHoldPolicy -Identity <policyname> -AddExchangeLocation $user1
    }else{
        # policy still pending
        Write-Host "Hold policy still pending."
    }
   ```

- Merge your updates to an eDiscovery hold in a single bulk request rather than updating the hold policy repeatedly for each transaction. For example, to add multiple user mailboxes to an existing hold policy using the [Set-CaseHoldPolicy](/powershell/module/exchange/set-caseholdpolicy) cmdlet, run the command (or add as a code block to a script) so that it runs only once to add multiple users.

  **Correct**

    ```powershell
    Set-CaseHoldPolicy -Identity "policyname" -AddExchangeLocation "User1", "User2", "User3", "User4", "User5"
    ```

   **Incorrect**

    ```powershell
    $users = "User1", "User2", "User3", "User4", "User5"
    ForEach($user in $users)
    {
        Set-CaseHoldPolicy -Identity "policyname" -AddExchangeLocation $user
    }
    ```

   In the previous incorrect example, the cmdlet is run five separate times to complete the task. For more information about the recommended practices for adding users to a hold policy, see the [More information](#more-information) section.

- Before contacting Microsoft Support about eDiscovery hold issues, check into what is causing the policy to fail by checking into the DistributionResults, based on the ResultCode:

   ```powershell
   Get-CaseHoldPolicy -Identity "policyname" -DistributionDetail | Select -ExpandProperty DistributionResults
   ```

![DistributionResults](https://user-images.githubusercontent.com/16720329/133842143-40e4d6c7-c579-49c5-8434-8048ea497610.png)

## Error: PolicySyncTimeout

If you see this error in the **ResultCode: PolicySyncTimeout** and the following error message, check the LastResultTime to see if has been longer than 2 hours the sync has reached the timeout.

> It's taking longer than expected to deploy the policy. It might take an additional 2 hours to update the final deployment status, so check back in a couple hours.

### Resolution

Running the **Set-CaseHoldPolicy -Identity "policyname" -RetryDistribution** will resolve the issue.

   ```powershell
   Set-CaseHoldPolicy "policyname" -RetryDistribution
   ```

Also in the Case hold UI you can also redeploy the policy using the Retry button.

## Error: PolicyNotifyError

If you see this error in the **ResultCode: PolicyNotifyError** and the following error message, a datacenter issue interrupted the policy sync.

> Policy cannot be deployed to the content source due to a temporary Office 365 datacenter issue. The current policy is not applied to any content in the source, so there's no impact from the blocked deployment. To fix this issue, please try redeploying the policy.

### Resolution

Running the **Set-CaseHoldPolicy -Identity "policyname" -RetryDistribution** will resolve the issue.

   ```powershell
   Set-CaseHoldPolicy "policyname" -RetryDistribution
   ```

Also in the Case hold UI you can also redeploy the policy using the Retry button.

## Error: InternalError

If you see this error in the **ResultCode: InternalError** and the following error message, the issue has to be resolved by Microsoft.

> Policy deployment has been interrupted by an unexpected Office 365 datacenter issue. Please contact Microsoft support to fix the deployment issue.

### Resolution

Contact Microsoft support with the policy Name and the information from the output of the DistributionResults, where the InternalError has been found.

## Error: FailedToOpenContainer

If you see this error in the **ResultCode: FailedToOpenContainer** and the following error message when putting custodians and data sources on hold, use the resolution steps to troubleshoot the issue.

> The mailbox or SharePoint site may not exist.  If this is incorrect, please contact Microsoft support.  Otherwise, please remove it from this policy.

### Resolution

- Run the [Get-Mailbox](/powershell/module/exchange/get-mailbox) in Exchange Online PowerShell to check if the user mailbox exists in your organization.

- Run the [Get-SPOSite](/powershell/module/sharepoint-online/get-sposite) cmdlet in SharePoint Online PowerShell to check if the site exists in your organization.

- Check to see if the site URL has changed.

- Remove the mailbox or site from the policy, if the object doesn't exist.

## Error: SiteInReadonlyOrNotAccessible

If you see this error in the **ResultCode: SiteInReadonlyOrNotAccessible** and the following error message, the SharePoint site has been found to be in read only mode.

> The SharePoint site is read-only or not accessible. Please contact the site administrator to make the site writable, and then redeploy this policy.

### Resolution

Unlock the site (or ask an admin to unlock it) to resolve this issue. To learn more about how to change the lock state for a site, see [Lock and unlock sites](/sharepoint/manage-lock-status).

## Error: SiteOutOfQuota

If you see this error in the **ResultCode: SiteOutOfQuota** and the following error message, the SharePoint site has reached it's storage quota.

> The SharePoint site does not have enough quota. Please allocate more quota to the site collection, and then redeploy this policy.

### Resolution

Add more storage to the site (or ask an admin to add more storage) to the site collection. To learn more about how to manage the storage quotas for a site, see [Manage site collection storage limits](/sharepoint/manage-site-collection-storage-limits).

After more storage quota has been added to the site the policy will need to be redeployed.

   ```powershell
   Set-CaseHoldPolicy "policyname" -RetryDistribution
   ```

Also in the Case hold UI you can also redeploy the policy using the Retry button.

## Error: RecipientTypeNotAllowed

If you see this error in the **ResultCode: RecipientTypeNotAllowed** and the following error message, an Exchange location that is a mailbox is on the policy.

The Recipient Type is not allowed for holds.

### Resolution

Run the [Get-Recipient](/powershell/module/exchange/get-recipient) in Exchange Online PowerShell to check if the address in the Endpoint is a valid mailbox.

If the above cmdlet shows the SMTP address is not a valid mailbox, remove it from the policy.

```powershell
Set-CaseHoldPolicy "policyname" -RemoveExchangeLocation "non-mailbox user"
```

## More information

The guidance about updating hold policies for multiple users in the "Recommended practices" section results from the fact that the system blocks simultaneous updates to a hold policy. That means when an updated hold policy is applied to new content locations and the hold policy is in a pending state, additional content locations can't be added to the hold policy. Here are some things to keep in mind to help you mitigate this issue:
  
- Every time a hold updated is updated, it immediately goes into a pending state. The pending state status means the hold is being applied to content locations.
  
- If you have a script that runs a loop and adds locations to policy one by one (similar to the incorrect example shown in the "Recommended practices" section), the first content location (for example, a user mailbox) initiates the sync process that triggers the pending state. That means the other users that are added to the policy in subsequent loops result in an error.
  
- If your organization is using a script that runs a loop to update the content locations for a hold policy, you must update the script so that it updates locations in a single bulk operation (as shown in the correct example in the "Recommended practices" section).
