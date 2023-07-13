---
title: "Get started with oversharing pop ups"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 07/13/2023
audience: ITPro
ms.topic: how-to
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection: 
- tier1
- purview-compliance
search.appverid: 
- MET150
ms.custom:
- seo-marvel-apr2020
- admindeeplinkCOMPLIANCE
description: Get started with managing oversharing pop ups with data loss prevention policies. 
---

# Get started with oversharing pop ups

When you configure the user device registry key and the appropriate Microsoft Purview Data Loss Prevention (DLP) policy, DLP will check email messages before they are sent for sensitive information and apply the actions defined in the DLP policy.

Oversharing popup is an E5 feature.

> [!IMPORTANT]
> This is a hypothetical scenario with hypothetical values. It's only for illustrative purposes. You should substitute your own sensitive information types, sensitivity labels, distribution groups and users.

> [!IMPORTANT]
> To identify the minimum version of Outlook that supports this feature, use the [capabilities table for Outlook](sensitivity-labels-versions.md#sensitivity-label-capabilities-in-outlook), and the row **Preventing oversharing as DLP policy tip**.   

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Before you begin

### SKU/subscriptions licensing

Before you get started with DLP policies, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1) and any add-ons. 

AIP P2 license is supported

For full licensing details, see: [Microsoft 365 licensing guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#microsoft-purview-data-loss-prevention-data-loss-prevention-dlp-for-exchange-online-sharepoint-online-and-onedrive-for-business)

### Permissions 

The account you use to create and deploy policies must be a member of one of these role groups

- Compliance administrator
- Compliance data administrator
- Information Protection
- Information Protection Admin
- Security administrator

> [!IMPORTANT]
> Be sure you understand the difference between an unrestricted administrator and an administrative unit restricted administrator [Administrative units](microsoft-365-compliance-center-permissions.md#administrative-units) before you start.

### Granular Roles and Role Groups

There are roles and role groups that you can use to fine tune your access controls.

Here's a list of applicable roles. To learn more, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- DLP Compliance Management
- Information Protection Admin
- Information Protection Analyst
- Information Protection Investigator
- Information Protection Reader

Here's a list of applicable role groups. To learn more, see To learn more about them, see [Permissions in the Microsoft Purview compliance portal](microsoft-365-compliance-center-permissions.md).

- Information Protection
- Information Protection Admins
- Information Protection Analysts
- Information Protection Investigators
- Information Protection Readers

### Prerequisites and assumptions

In Outlook for Microsoft 365 an oversharing popup displays a popup before a message is sent. Select **Show policy tip as a dialog for the user before send** in policy tip when creating a DLP rule for the Exchange location.
This scenario uses the *Highly confidential* sensitivity label, so it requires that you have created and published sensitivity labels. To learn more, see:

- [Learn about sensitivity labels](sensitivity-labels.md)
- [Get started with sensitivity labels](get-started-with-sensitivity-labels.md)
- [Create and configure sensitivity labels and their policies](create-sensitivity-labels.md)

This procedure uses a hypothetical company domain at Contoso.com.

## Policy intent and mapping

*We need to block emails to all recipients that have the ‘highly confidential’ sensitivity label applied except if the recipient domain is contoso.com. We want to notify the user on send with a popup dialogue and no one can be allowed to override the block.*


|Statement|Configuration question answered and configuration mapping|
|---|---|
|"We need to block emails to all recipients..."|- **Where to monitor**: Exchange </br>- **Administrative scope**: Full directory </br>- **Action**: Restrict access or encrypt the content in Microsoft 365 locations > Block users from receiving email or accessing shared SharePoint, OneDrive, and Teams files > Block everyone |
|"...that have the 'highly confidential' sensitivity label applied..."| - **What to monitor**: use the Custom template </br> - **Conditions for a match**: edit it to add the *highly confidential* sensitivity label|
|"...except if..."| **Condition group configuration** - Create a nested boolean NOT condition group joined to the first conditions using a boolean AND|
|"...the recipient domain is contoso.com."| **Condition for match**: Recipient domain is|
|"...Notify..."|**User notifications**: enabled|
|"...the user on send with a popup dialogue..."| **Policy tips**: selected </br> - **Show policy tip as a dialog for the end user before send**: selected|
|"...and no one can be allowed to override the block...| **Allow overrides from M365 Services**: not selected|

To configure oversharing popups with default text, the DLP rule must include these conditions:

- Content contains > Sensitivity labels > *choose your sensitivity label(s)*
 
and a recipient-based condition

- Recipient is
- Recipient is a member of
- Recipient domain is

 When these conditions are met, the policy tip displays untrusted recipients while the user is writing the mail in Outlook, before it's sent.

### Steps to configure Outlook client

You need configure the *dlpwaitonsendtimeout Regkey (Value in dword)* on all the devices you want to implement oversharing popups. This registry key defines the amount of time to wait to evaluate sensitive content. It is under:

*Software\Policies\Microsoft\office\16.0\Outlook\options\Mail\Compose message* 

You can set this *RegKey* via group policy (**Specify wait time to evaluate sensitive content**), script or other mechanism for configuring registry keys.

If you're using Group Policy, make sure you've downloaded the most recent version of Group Policy Administrative Template files for Microsoft 365 Apps for enterprise and navigate to this setting from **User Configuration >> Administrative Templates >> Microsoft Office 2016 >> Security Settings**. If you're using the Cloud Policy service for Microsoft 365, search for the setting by name to configure it. 

When this value is set and the DLP policy are configured, email messages are checked for sensitive information before they are sent. If the message contains a match to the conditions defined in the policy, a policy tip notification appears before the user clicks **Send**..

This *RegKey* allows you to specify the wait on send behavior on your Outlook clients. Here's what each of the settings means.

**Not configured** or **Disabled**: This is the default. When *dlpwaitonsendtimeout* is not configured the message is not checked before the user sends it. The email message will be sent with no pause when **Send** is clicked. The DLP data classification service will evaluate the message and apply the actions defined in the DLP policy.

**Enabled**: The email message is checked when the **Send** is clicked but before the message is actually sent. You can set a time limit on how long to wait for DLP policy evaluation to complete (**T** value in seconds). If the policy evaluation doesn't complete in the specified time a **Send anyway** button appears allowing the user to bypass the presend check.  The **T** value range is 0 to 9999 seconds. 

> [!IMPORTANT]
> If the **T** value is greater than 9999, it will be replaced with 1000 and the **Send Anyway** button will not appear. This holds the message until the policy evalution completes with no option for user override. The duration to complete the evaluation can vary depending on factors such as internet speed, content length, and the number of defined policies. Some users may encounter policy evaluation messages more frequently than others depending on what policies are deployed on their mailbox.

To learn more about configuring and using GPO see,  [Administer Group Policy in an Azure Active Directory Domain Services managed domain](/azure/active-directory-domain-services/manage-group-policy). 

### Steps to create a DLP policy for an oversharing pop up policy tip

> [!IMPORTANT]
> For the purposes of this policy creation procedure, you'll accept the default include/exclude values and leave the policy turned off. You'll be changing these when you deploy the policy.

1. Sign in to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077149" target="_blank">Microsoft Purview compliance portal</a>.

1. In the Microsoft Purview compliance portal \> left navigation \> **Solutions** \> **Data loss prevention** \> **Policies** \> **+ Create policy**.

1. Select **Custom** from the **Categories** list.
 
1. Select **Custom** from the **Templates** list.
 
1. Give the policy a name. 

   > [!IMPORTANT]
   > Policies cannot be renamed.

1. Fill in a description. You can use the policy intent statement here.

1. Select **Next**.

1. Select **Full directory** under **Admin units**.

1. Set the **Exchange email** location status to **On**. Set all the other location status to **Off**.

1. Select **Next**.

1. Accept the default values for **Include** = **All** and **Exclude** = **None**.
 
1. The **Create or customize advanced DLP rules** option should already be selected.
 
1. Select **Next**.
 
1. Select **Create rule**. Name the rule and provide a description.

1. Select **Add condition** > **Content contains** > **Add** > **Sensitivity labels** > **Highly confidential**. Choose **Add**.
 
1. Select **Add group** > **AND** > **NOT** > **Add condition**.

1. Select **Recipient domain is** > **contoso.com**. Choose **Add**.

   > [!TIP]
   > **Recipient is** and **Recipient is a member of** can also be used in the previous step and will trigger an oversharing popup.
 
1. Select **Add and action** > **Restrict access or encrypt the content in Microsoft 365 locations** > **Restrict access or encrypt the content in Microsoft 365 locations** > **Block users from receiving email or accessing shared SharePoint, OneDrive, and Teams file.** > **Block everyone**.
 
1. Set **User notifications** to **On**.
 
1. Select **Policy tips** > **Show the policy tip as a dialog for the end user before send**.
 
1. Make sure that **Allow override from M365 services** *isn't* selected.
 
1. Choose **Save**.
 
1. Choose **Next** > **Keep it off** > **Next** > **Submit**.

#### PowerShell steps to create policy

DLP policies and rules can also be configured in PowerShell. To configure oversharing popups using PowerShell, first you create a DLP policy (using PowerShell) and add DLP rules for each warn, justify or block popup type.

You'll configure and scope your DLP Policy using [New-DlpCompliancePolicy](/powershell/module/exchange/new-dlpcompliancepolicy). Then, you'll configure each oversharing rule using [New-DlpComplianceRule](/powershell/module/exchange/new-dlpcompliancerule)

To configure a new DLP policy for the oversharing popup scenario use this code snippet:

```powershell
PS C:\> New-DlpCompliancePolicy -Name <DLP Policy Name> -ExchangeLocation All
```

This sample DLP policy is scoped to all users in your organization. Scope your DLP Policies using `-ExchangeSenderMemberOf` and `-ExchangeSenderMemberOfException`.

|Parameter|	Configuration|
|---------|---------|
|[-ContentContainsSensitiveInformation](/powershell/module/exchange/new-dlpcompliancerule?view=exchange-ps#-contentcontainssensitiveinformation&preserve-view=true)|	Configures one or more sensitivity label conditions. This sample includes one. At least one label is mandatory.|
|[-ExceptIfRecipientDomainIs](/powershell/module/exchange/new-dlpcompliancerule?view=exchange-ps#-exceptifrecipientdomainis&preserve-view=true)|	List of trusted domains.|
|[-NotifyAllowOverride](/powershell/module/exchange/new-dlpcompliancerule?view=exchange-ps#-notifyallowoverride&preserve-view=true)|	"WithJustification" enables justification radio buttons, "WithoutJustification" disables them.|
|[-NotifyOverrideRequirements](/powershell/module/exchange/new-dlpcompliancerule?view=exchange-ps#-notifyoverriderequirements&preserve-view=true)	"WithAcknowledgement" enables the new acknowledgment option. This is optional.|
|

To configure a new DLP rule to generate a *warn* popup using trusted domains run this PowerShell code.

```powershell
PS C:\> New-DlpComplianceRule -Name <DLP Rule Name> -Policy <DLP Policy Name> -NotifyUser Owner -NotifyPolicyTipDisplayOption "Dialog" -ContentContainsSensitiveInformation @(@{operator = "And"; groups = @(@{operator="Or";name="Default";labels=@(@{name=<Label GUID>;type="Sensitivity"})})}) -ExceptIfRecipientDomainIs @("contoso.com","microsoft.com")
```

To configure a new DLP rule to generate a *justify* popup using trusted domains run this PowerShell code.

```powershell
PS C:\> New-DlpComplianceRule -Name <DLP Rule Name> -Policy <DLP Policy Name> -NotifyUser Owner -NotifyPolicyTipDisplayOption "Dialog" -BlockAccess $true -ContentContainsSensitiveInformation @(@{operator = "And"; groups = @(@{operator = "Or"; name = "Default"; labels = @(@{name=<Label GUID 1>;type="Sensitivity"},@{name=<Label GUID 2>;type="Sensitivity"})})}) -ExceptIfRecipientDomainIs @("contoso.com","microsoft.com") -NotifyAllowOverride "WithJustification"
```

To configure a new DLP rule to generate a *block* popup using trusted domains run this PowerShell code.

```powershell
PS C:\> New-DlpComplianceRule -Name <DLP Rule Name> -Policy <DLP Policy Name> -NotifyUser Owner -NotifyPolicyTipDisplayOption "Dialog" -BlockAccess $true -ContentContainsSensitiveInformation @(@{operator = "And"; groups = @(@{operator = "Or"; name = "Default"; labels = @(@{name=<Label GUID 1>;type="Sensitivity"},@{name=<Label GUID 2>;type="Sensitivity"})})}) -ExceptIfRecipientDomainIs @("contoso.com","microsoft.com")
```

Use these procedures to access the [Business justification X-Header](dlp-policy-reference.md#business-justification-x-header).

## See also

- [Learn about data loss prevention alerts and the alerts dashboard](dlp-alerts-dashboard-learn.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
