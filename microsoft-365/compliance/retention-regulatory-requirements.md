---
title: "Configure retention for regulatory requirements"
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
description: "Configure your retention policies and retention labels for regulatory requirements and use the Cohasset assessment to help you comply with regulatory standards for retaining your data."
---

# Configure retention policies and retention labels for regulatory requirements

>*[Microsoft 365 licensing guidance for security & compliance](https://aka.ms/ComplianceSD).*

If your organization needs to comply with regulatory standards for retaining and disposing of data, the retention policies and retention labels that you can configure in Microsoft 365 are sufficient for most organizations.

However, some organizations in highly regulated industries are subject to more stringent regulatory requirements, such as the WORM (write once, read many) requirement, and the requirement to store electronic communications using a storage solution in which a record:

- Must be retained for a required retention period that cannot be shortened, only increased.
- Cannot be overwritten, erased, or altered during the required retention period.

Another example is for financial institutions such as banks or broker dealers that are subject to Rule 17a-4 issued by the Securities and Exchange Commission (SEC). Rule 17a-4 has specific requirements for electronic data storage, including many aspects of record management, such as the duration, format, quality, availability, and accountability of records retention.

Use the following features and resources to help your organization meet its regulatory requirements.

## Retention policies and label policies: Use Preservation Lock

When you apply Preservation Lock to a retention policy or retention label policy, the policy can be increased or extended, but it can't be reduced or turned off, even by a global admin.

For more information about Preservation Lock, see [Use Preservation Lock to comply with regulatory requirements](retention-policies.md#use-preservation-lock-to-comply-with-regulatory-requirements).

For instructions, see the next section.

## How to lock a retention policy or retention label policy

You must use PowerShell if you need to use [Preservation Lock](retention.md#use-preservation-lock-to-comply-with-regulatory-requirements) to comply with regulatory requirements. Because administrators can't disable or delete a policy for retention after a preservation lock is applied, enabling this feature is not available in the UI to safeguard against accidental configuration.

All policies for retention and with any configuration support Preservation Lock. However, when you use the PowerShell commands that follow, you'll notice that the **Workload** parameter always displays **Exchange, SharePoint, OneDriveForBusines, Skype, ModernGroup** rather than reflect the actual workloads configured in the policy. This is a display issue only.

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

## Retention labels: Use regulatory records

When you configure retention labels, you can configure the label to mark the content as a regulatory record. When the label with this configuration is applied to items, they can't be edited or deleted, and the label can't be changed or removed. In addition, admins won't be able to modify or delete this label after it's created. They'll only be able to increase the retention period.

For additional security, you can apply Preservation Lock to the retention label policy that contains the regulatory records. When you do this, no administrator can remove these labels from the selected locations, only add locations.

For more information about regulatory records, see [Compare restrictions for what actions are allowed or blocked](records-management.md#compare-restrictions-for-what-actions-are-allowed-or-blocked).

For instructions, see [Declare records by using retention labels](declare-records.md).

## Cohasset assessment 

To help you comply with your regulatory requirements, you can download an assessment that's been produced in partnership with Cohasset Associates. 

This Cohasset assessment is available from the [Data Protection Resources, FAQ and White Papers](https://servicetrust.microsoft.com/ViewPage/TrustDocuments?command=Download&downloadType=Document&downloadId=9fa8349d-a0c9-47d9-93ad-472aa0fa44ec&docTab=6d000410-c9e9-11e7-9a91-892aae8839ad_FAQ_and_White_Papers) page of the Service Trust Portal.

![Title page of downloadable assessment by Cohasset Associates](../media/cohasset-associates-assessment.png)

