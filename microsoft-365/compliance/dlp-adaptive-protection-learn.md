---
title: "Learn about Adaptive Protection in data loss prevention"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
description: "Learn how insider risk management and data loss prevention work together to dynamically protect your organization from risky user activities."
---

# Learn about Adaptive Protection in Data Loss Prevention (preview)

Adaptive Protection in Microsoft Purview integrates Microsoft Purview Insider Risk Management with Microsoft Purview Data Loss Prevention (DLP). When insider risk identifies a user who is engaging in risky behavior, they are dynamically assigned to a risk level. Then adaptive protection can automatically create a DLP policy to help protect the organization against the risky behavior that's associated with that risk level. As users risk levels change in insider risk management, the DLP policies applied to users can adjust. 

You can manually create DLP policies that help protect against risky behaviors that insider risk identifies too.

Refer to [Help dynamically mitigate risks with Adaptive Protection (preview)](insider-risk-management-adaptive-protection.md) to learn about Adaptive Protection and how to configure it.

## How adaptive protection shows up in DLP policies

If you're unfamiliar with DLP policies, you should review these articles before working with adaptive protection:

- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md)
- [Data Loss Prevention policy reference](dlp-policy-reference.md)
- [Design a data loss prevention policy](dlp-policy-design.md)

Once adaptive protection is configured in insider risk, a condition called **User's risk level for adaptive protection is** will be available to use in rules that are configured for policies scoped to Exchange Online, Devices, and Teams locations.

The condition **User's risk level for adaptive protection is** has three values: 

- **Elevated risk level**
- **Moderate risk level**
- **Minor risk level**

These risk level profiles are defined in insider risk. You can select one, two or all three in a policy rule. Learn more about [risk levels](insider-risk-management-adaptive-protection.md#risk-levels).

You can manually configure DLP policies that are part of adaptive protection and also use the [quick setup configuration in insider risk](insider-risk-management-adaptive-protection.md#quick-setup) to create DLP policies automatically from a template. 

### Manual configuration

You manually configure an adaptive protection DLP policy just like you would [configure any other policy](create-test-tune-dlp-policy.md). Just select the **User's risk level for adaptive protection is** condition and the risk level profiles that you want, configure all the other policy options and deploy the policy according to your normal procedures.

### Quick setup configuration

If quick setup is used to configure Adaptive Protection in insider risk, DLP policies are created automatically, so you should be on the lookout for them. Quick setup will create one policy for Teams and Exchange Online with two rules, one for the elevated risk profile and one for the moderate and minor risk levels. It will also create one policy for Devices with two rules, one for the elevated risk profile and one for the moderate and minor risk levels.

> [!TIP]
> Insider risk presents a view of just the DLP policies that use the **User's risk level for adaptive protection is** condition. Open **Microsoft Purview compliance portal** > **Insider risk management** > **Adaptive protection (preview)** to see the list. You'll need DLP to be in one of these roles to access the insider risk node:
> - Compliance administrator
> - Compliance Data administrator
> - Organization management (Users who are not global administrators must be Exchange administrators to see and take action on devices that are managed by Basic Mobility and Security for Microsoft 365)
> - Global administrator
> - DLP compliance management
> - View-only DLP compliance management


#### Policy values for Teams and Exchange online DLP policy

This is the configuration for the Teams and Exchange DLP policy created during Quick Setup. The policy name is **Adaptive Protection policy for Teams and Exchange DLP**.

##### Rule: Adaptive Protection block rule for Teams and Exchange DLP

|DLP policy element  |Configured value  |
|---------|---------|
|Conditions     |**User’s risk level for Adaptive Protection is**  </br>- **Elevated Risk Level** </br> AND </br>- **Content is Shared from Microsoft 365 With people outside my organization**  |
|Actions     |**Restrict access or encrypt the content in Microsoft 365 locations** </br>- **Block only people outside your organization** |
|User Notification     |**On** </br>- **Notify user with a policy tip** </br>– **Notify the user who sent, shared, or last modified the content** |
|User Override     |**Off**   |
|Incident reports     |**On** </br>- **Severity Level – Low** </br>- **Send alert every time an activity matches the rule**|
|Additional Options    |**Off**         |
|Status     |**Test it out first** </br>- **Policy Tips - not selected**        |

##### Rule: Adaptive Protection audit rule for Teams and Exchange DLP

|DLP policy element  |Configured value  |
|---------|---------|
|Conditions     |**User’s risk level for Adaptive Protection is** </br>- **Moderate Risk Level, Minor Risk Level** </br> AND </br>- **Content is Shared from Microsoft 365 With people outside my organization** |
|Actions     | None |
|User Notification     |**On** </br>- **Notify user with a policy tip** </br>- **Notify the user who sent, shared, or last modified the content**|
|User Override     |**Off**  |
|Incident reports     |**On** </br>- **Severity Level – Low** </br>- **Send alert every time an activity matches the rule**|
|Additional Options    |**Off**         |
|Status     |**Test it out first** </br>- **Policy tips**  option not selected|

#### Policy values for Devices DLP policy

This is the configuration for the Devices DLP policy created during Quick Setup. The policy name is **Adaptive Protection policy for Endpoint DLP**. 

> [!IMPORTANT]
> For Adaptive Protection to work on Devices, you must either enable [Advanced classification scanning and protection](dlp-configure-endpoint-settings.md#advanced-classification-scanning-and-protection) or if you are manually creating the adaptive protection policy, select the **File Type is** condition.

> [!IMPORTANT]
> If a user is targeted by a default Adaptive Protection Device DLP policy and is targeted by an independent Device DLP policy, only the actions of the *most restrictive* policy will be applied.


##### Rule: Adaptive Protection block rule for Endpoint DLP

|DLP policy element  |Configured value  |
|---------|---------|
|Conditions     |**User’s risk level for Adaptive Protection is** </br>- **Elevated Risk Level** </br> AND </br>- **File Type is** </br>- **Word processing** </br>- **Spreadsheet** </br>- **Presentation** </br>- **Archive** </br>- **Mail** |
|Actions     |**Audit or Restrict activities on Devices** </br>- **Upload to a restricted cloud service domain or access from unallowed browsers - Block** </br></br> **File activities for all apps** </br>- **Apply restrictions to specific activity** </br>- **Copy to clipboard – Block** </br>- **Copy to removable USB device – Block** </br>- **Copy to network share – Block** </br>- **Print – Block** </br> **Restricted App activities - Access by restricted apps - Block** | 
|User Notification     |**Off**  |
|User Override     |**Off** |
|Incident reports     |**On** </br>- **Severity Level – Low** </br>- **Send alert every time an activity matches the rule**|
|Additional Options    |**Off**         |
|Status     |**Test it out first - Policy Tips - not selected**        |

##### Rule: Adaptive Protection rule for Endpoint DLP

|DLP policy element  |Configured value  |
|---------|---------|
|Conditions     |**User’s risk level for Adaptive Protection is** </br>- **Moderate Risk Level, Minor Risk Level** </br> AND </br>- **File Type is** </br>- **Word processing** </br>- **Spreadsheet** </br>- **Presentation** </br>- **Archive** </br>- **Mail** |
|Actions     |**Audit or Restrict activities on Devices** </br>- **Upload to a restricted cloud service domain or access from unallowed browsers – Audit** </br></br>**File activities for all apps** </br>- **Apply restrictions to specific activity** </br>- **Copy to clipboard – Audit** </br>- **Copy to removable USB device – Audit** </br>- **Copy to network share – Audit** </br>-**Print – Audit**</br></br>**Restricted App activities** </br>- **Access by restricted apps - Audit**|
|User Notification     |**Off**|
|User Override     |**Off**|
|Incident reports     |**On**</br>- **Severity Level – Low** </br>- **Send alert every time an activity matches the rule** |
|Additional Options    |**Off**  |
|Status     |**Test it out first** </br>- **Policy tips**  option not selected       |

## See Also

- [Adaptive Protection in Microsoft Purview (preview)](dlp-policy-reference.md#adaptive-protection-in-microsoft-purview-preview)
