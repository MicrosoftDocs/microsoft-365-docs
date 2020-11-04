---
title: "Use Preservation Lock to restrict changes to retention policies and retention label policies"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: conceptual
ms.service: O365-seccomp
ms.collection: M365-security-compliance
localization_priority: Priority
search.appverid: 
- MOE150
- MET150
description: "Use Preservation Lock with retention policies and retention label policies to help you meet regulatory requirements and safeguard against rogue administrators."
---

# Use Preservation Lock to restrict changes to retention policies and retention label policies

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

Preservation Lock locks a retention policy or retention label policy so that no one—including a global admin—can turn off the policy, delete the policy, or make it less restrictive. This configuration might be needed for regulatory requirements and can help safeguard against rogue administrators.

When a policy for retention is locked:

- No one can turn it off
- Locations can be added but not removed
- You can extend a retention period but not decrease it

In summary, a locked policy can be increased or extended, but it can't be reduced or turned off.
  
> [!IMPORTANT]
> Before you lock a retention policy or retention label policy, it's critical that you understand the impact and confirm whether it's required for your organization. For example, it might be needed to meet regulatory requirements. Administrators won't be able to disable or delete these policies after the preservation lock is applied.

Configure Preservation Lock after you've created a [retention policy](create-retention-policies.md), or a retention label policy that you [publish](create-apply-retention-labels.md) or [auto-apply](apply-retention-labels-automatically.md). 

## How to lock a retention policy or retention label policy

You must use PowerShell if you need to use Preservation Lock. Because administrators can't disable or delete a policy for retention after this lock is applied, enabling this feature is not available in the UI to safeguard against accidental configuration.

All policies for retention and with any configuration support Preservation Lock.

1. [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell).

2. Find the name of the policy that you want to lock by running [Get-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/get-retentioncompliancepolicy). For example:
    
   ![List of retention policies in PowerShell](../media/retention-policy-preservation-lock-get-retentioncompliancepolicy.PNG)

3. To place a Preservation Lock on your policy, run the [Set-RetentionCompliancePolicy](https://docs.microsoft.com/powershell/module/exchange/set-retentioncompliancepolicy) cmdlet with the name of the policy, and the *RestrictiveRetention* parameter set to true:
    
    ```powershell
    Set-RetentionCompliancePolicy -Identity "<Name of Policy>" –RestrictiveRetention $true
    ```
    
    For example:
    
    ![RestrictiveRetention parameter in PowerShell](../media/retention-policy-preservation-lock-restrictiveretention.PNG)
    
     When prompted, read and acknowledge the restrictions that come with this configuration by entering **Y**:
    
   ![Prompt to confirm that you want to lock a retention policy in PowerShell](../media/retention-policy-preservation-lock-confirmation-prompt.PNG)

A Preservation Lock is now placed on the policy. To confirm, run `Get-RetentionCompliancePolicy` again, but specify the policy name and display the policy parameters:

```powershell
Get-RetentionCompliancePolicy -Identity "<Name of Policy>" |Fl
```

You should see **RestrictiveRetention** is set to **True**. For example:

![Locked policy with all parameters shown in PowerShell](../media/retention-policy-preservation-lock-locked-policy.PNG)

## See also

[Resources to help you meet regulatory requirements for information governance and records management](retention-regulatory-requirements.md)
