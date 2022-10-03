---
title: "Use Preservation Lock to restrict changes to retention policies"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.collection: 
- purview-compliance
- tier1
ms.localizationpriority: high
search.appverid: 
- MOE150
- MET150
description: "Use Preservation Lock with retention policies and retention label policies to help you meet regulatory requirements and safeguard against rogue administrators."
---

# Use Preservation Lock to restrict changes to retention policies and retention label policies

>*[Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance).*

> [!IMPORTANT]
> Currently, [adaptive policy scopes](retention.md#adaptive-or-static-policy-scopes-for-retention) don't support Preservation Lock.

Preservation Lock locks a retention policy or retention label policy so that no one—including a global admin—can turn off the policy, delete the policy, or make it less restrictive. This configuration might be needed for regulatory requirements and can help safeguard against rogue administrators.

When a retention policy is locked:

- No one can disable the policy or delete it
- Locations can be added but not removed
- You can extend the retention period but not decrease it

When a retention label policy is locked:

- No one can disable the policy or delete it
- Locations can be added but not removed
- Labels can be added but not removed

In summary, a locked policy can be increased or extended, but it can't be reduced or turned off.

> [!IMPORTANT]
> Before you lock a retention policy or retention label policy, it's critical that you understand the impact and confirm whether it's required for your organization. For example, it might be needed to meet regulatory requirements. Administrators won't be able to disable or delete these policies after the preservation lock is applied.

Configure Preservation Lock after you've created a [retention policy](create-retention-policies.md), or a retention label policy that you [publish](create-apply-retention-labels.md) and contains only labels that [mark items as regulatory records](records-management.md#records).

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## How to lock a retention policy or retention label policy

You must use PowerShell if you need to use Preservation Lock. Because administrators can't disable or delete a policy for retention after this lock is applied, enabling this feature is not available in the UI to safeguard against accidental configuration.

All retention policies with any configuration support Preservation Lock. To apply Preservation Lock on a retention label policy, it must contain only labels that mark items as regulatory records.

1. [Connect to Security & Compliance PowerShell](/powershell/exchange/connect-to-scc-powershell).

2. Find the name of the policy that you want to lock by running [Get-RetentionCompliancePolicy](/powershell/module/exchange/get-retentioncompliancepolicy). For example:
    
   ![List of retention policies in PowerShell.](../media/retention-policy-preservation-lock-get-retentioncompliancepolicy.PNG)

3. To place a Preservation Lock on your policy, run the [Set-RetentionCompliancePolicy](/powershell/module/exchange/set-retentioncompliancepolicy) cmdlet with the name of the policy, and the *RestrictiveRetention* parameter set to true:
    
    ```powershell
    Set-RetentionCompliancePolicy -Identity "<Name of Policy>" -RestrictiveRetention $true
    ```
    
    For example:
    
    ![RestrictiveRetention parameter in PowerShell.](../media/retention-policy-preservation-lock-restrictiveretention.PNG)
    
     When prompted, read and acknowledge the restrictions that come with this configuration by entering **Y**:
    
   ![Prompt to confirm that you want to lock a retention policy in PowerShell.](../media/retention-policy-preservation-lock-confirmation-prompt.PNG)

A Preservation Lock is now placed on the policy. To confirm, run `Get-RetentionCompliancePolicy` again, but specify the policy name and display the policy parameters:

```powershell
Get-RetentionCompliancePolicy -Identity "<Name of Policy>" |Fl
```

You should see **RestrictiveRetention** is set to **True**. For example:

![Locked policy with all parameters shown in PowerShell.](../media/retention-policy-preservation-lock-locked-policy.PNG)

## See also

[Resources to help you meet regulatory requirements for data lifecycle management and records management](retention-regulatory-requirements.md)
