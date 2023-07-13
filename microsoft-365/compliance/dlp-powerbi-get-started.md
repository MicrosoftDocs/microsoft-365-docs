---
title: "Get started with DLP for Power BI"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
audience: ITPro
ms.topic: conceptual
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection:
- tier1
- purview-compliance
- m365solution-mip
- m365initiative-compliance
- highpri
ms.custom: admindeeplinkCOMPLIANCE
search.appverid:
- MET150
description: "Prepare for and deploy DLP to Power BI locations, to help organizations detect and protect their sensitive data."
---

# Get started with Data loss prevention policies for Power BI

To help organizations detect and protect their sensitive data, [Microsoft Purview Data Loss Prevention (DLP) polices](/microsoft-365/compliance/dlp-learn-about-dlp) support Power BI. When a Power BI data set matches the criteria in a DLP policy, an alert that explains the nature of the sensitive content can be triggered. This alert is also registered in the data loss prevention **Alerts** tab in the Microsoft compliance portal for monitoring and management by administrators. In addition, email alerts can be sent to administrators and specified users.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Considerations and limitations

- DLP policies apply to workspaces. Only workspaces hosted in Premium Gen2 capacities are supported. For more information, see [What is Power BI Premium Gen2?](/power-bi/enterprise/service-premium-gen2-what-is).
- DLP dataset evaluation workloads impact capacity. For more information, see [CPU metering for DLP policy evaluation](/power-bi/enterprise/service-security-dlp-policies-for-power-bi-overview#cpu-metering-for-dlp-policy-evaluation)
- Both classic and new experience workspaces are supported, as long as they're hosted in Premium Gen2 capacities.
- You must create a custom DLP custom policy for Power BI. DLP templates aren't supported.
- DLP policies that are applied to the DLP location support sensitivity labels and sensitive information types as conditions.
- DLP policies for Power BI aren't supported for sample datasets, [streaming datasets](/power-bi/connect-data/service-real-time-streaming), or datasets that connect to their data source via [DirectQuery](/power-bi/connect-data/desktop-use-directquery) or [live connection](/power-bi/connect-data/desktop-directquery-about#live-connections).


## Licensing and permissions

### SKU/subscriptions licensing

Before you get started with DLP for Power BI, you should confirm your [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1). For full licensing guidance, see [Microsoft 365 guidance for security & compliance](/office365/servicedescriptions/microsoft-365-service-descriptions/microsoft-365-tenantlevel-services-licensing-guidance/microsoft-365-security-compliance-licensing-guidance#information-protection).

### Permissions

Data from DLP for Power BI can be viewed in [Activity explorer](/microsoft-365/compliance/data-classification-activity-explorer). There are four roles that grant permission to activity explorer; the account you use for accessing the data must be a member of any one of them:

- Global administrator
- Compliance administrator
- Security administrator
- Compliance data administrator

## How DLP policies for Power BI work

You define a DLP policy in the Data Loss Prevention (DLP) section of the compliance portal. See, [Design a data loss prevention policy](dlp-policy-design.md#design-a-data-loss-prevention-policy). In the policy, you specify the sensitivity label(s) and/or sensitive information types that you want to detect. You also specify the action(s) that will occur when the policy detects a dataset that has a specified sensitivity label applied. DLP policies support two actions for Power BI:

- User notification via policy tips.
- Alerts. Alerts can be sent by email to administrators and users. Additionally, administrators can monitor and manage alerts on the **Alerts** tab in the compliance portal. 

When a dataset is evaluated by DLP and matches the conditions in a DLP policy, the actions defined in the policy are applied. A dataset is evaluated occurs when it is:

- Published
- Republished
- On-demand refreshed
- Scheduled refreshed

>[!NOTE]
> DLP evaluation of the dataset does not occur if either of the following is true:
> - The initiator of the event is a service principal.
> - The dataset owner is either a service principal or a B2B user.

### What happens when a dataset matches a DLP policy

When a dataset matches a DLP policy:

- If the policy has user notifications configured, it will be marked in the Power BI service with a shield icon to indicate that it matches a DLP policy.

    ![Screenshot of policy tip badge on dataset in lists.](../media/dlp-power-bi-policy-tip-on-dataset.png)

    Open the dataset details page to see a policy tip that explains the policy match and how the detected type of sensitive information should be handled.

    ![Screenshot of policy tip on dataset details page.](../media/dlp-power-bi-policy-tip-in-dataset-details.png)

    >[!NOTE]
    > If you hide the policy tip, it doesn’t get deleted. It will appear the next time you visit the page.

- If alerts are enabled in the policy, an alert will be recorded on the dlp **Alerts** tab in the compliance portal, and (if configured) an email will be sent to administrators and/or specified users. The following image shows the **Alerts** tab in the data loss prevention section of the Microsoft Purview compliance portal.

## Configure a DLP policy for Power BI

Follow the procedures in [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md) and use the custom template.

> [!IMPORTANT]
> When you select the locations for your DLP policy for Power BI, select only the Power BI location. Do not select any other locations, this configuration is not supported. 

## Next steps

- [Learn about data loss prevention](/microsoft-365/compliance/dlp-learn-about-dlp)
- [Sensitivity labels in Power BI](/power-bi/enterprise/service-security-sensitivity-label-overview)
- [Audit schema for sensitivity labels in Power BI](/power-bi/enterprise/service-security-sensitivity-label-audit-schema)


