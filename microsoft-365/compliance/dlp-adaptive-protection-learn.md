---
title: "Learn about Adaptive Protection in data loss prevention"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier1
- purview-compliance
search.appverid:
- MET150
description: "Learn how insider risk management and data Loss prevention work together to dynamically protect your organization from risky user activities."
---

# Learn about Adaptive Protection in Data Loss Prevention (preview)

Adaptive Protection in Microsoft Purview integrates Microsoft Purview Insider Risk Management (IRM) with Microsoft Purview Data Loss Prevention (DLP). When IRM identifies a user who is engaging in risky behavior, it can automatically create a DLP policy to help protect the organization against that risky behavior. You can manually create DLP policies that help protect against risky behaviors that IRM identifies too.

Refer to [LINK TO ROBS ARTICLE](blah.md) to learn the basics of adaptive protection.

## How adaptive protection shows up in DLP policies

If you are unfamiliar with DLP policies, you should review these articles before working with adaptive protection:

- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Plan for data loss prevention (DLP)](dlp-overview-plan-for-dlp.md)
- [Data Loss Prevention policy reference](dlp-policy-reference.md)
- [Design a data loss prevention policy](dlp-policy-design.md)

Once adaptive protection is configured in IRM, a condition called **User's risk level for adaptive protection is** will be available to use in rules that are configured for policies scoped to Exchange Online, Devices, and Teams locations.

The condition **User's risk level for adaptive protection is** has three values: 

- **Elevated risk level**
- **Moderate risk level**
- **Minor risk level**

These risk level profiles are defined in IRM. You can select one, two or all three in a policy rule.  

You can manually configure DLP policies that are part of adaptive protection and also use the [one-click configuration in IRM](LINK TO ROBS ARTICLE) to create DLP policies automatically from a template. 

### Manual configuration

You manually configure an adaptive protection DLP policy just like you would [configure any other policy](create-test-tune-dlp-policy.md). Just select the **User's risk level for adaptive protection is** condition and the risk level profiles that you want, configure all the other policy options and deploy the policy according to your normal procedures.

### One-click configuration

If one-click is configured in IRM, adaptive protection will create DLP policies automatically, so you should be on the lookout for them. One-click will create one policy for Teams and Exchange Online with two rules, one for the elevated risk profile and one for the moderate and minor risk levels. It will also create one policy for Teams with two rules, one for the elevated risk profile and one for the moderate and minor risk levels.

#### Policy values for Teams and Exchange online

Elevated risk level profile rule

|DLP policy element  |Configured value  |
|---------|---------|
|Conditions     |- **User's risk level for adaptive protection is** </br> - **Elevated risk level**         |
|Actions     |         |
|User Notification     |         |
|User Override     |         |
|Incident reports     |         |
|Additional Options    |         |
|Status     |**Test it out first**        |



#### Policy values for Devices

 

Elevated risk level profiles one-click configured DLP policies start with these values

Conditions:

- **User's risk level for adaptive protection is** 
    - one rul

Actions: 

for elevated risk level profile rule:

- **Restrict access or encrypt the content in Microsoft 365 locations**
    - **Block users from receiving email or accessing SharePoint, OneDrive, and Teams files**
    - **Block everyone**

for moderate + minor risk level profile rule:

WAITING ON RESPONSE FROM ERIN MIYAKE Actions for moderate and minor risk profile rule

- **Restrict access or encrypt the content in Microsoft 365 locations**
    - 


Status:

- **Test mode**

o	Adaptive Protection policy for Endpoint DLP
	Elevated risk level rule = Elevated risk level will get blocked
	Moderate and minor risk level rule = audit
	In test mode first (which only audits actions)
o	Adaptive Protection policy for Teams and Exchange DLP 
	Elevated risk level rule = Elevated risk level will get blocked
	Moderate and minor risk level rule = audit
	In test mode first (which only audits actions)



## See Also

- [Adaptive Protection in Microsoft Purview](dlp-policy-reference.md#adaptive-protection-in-microsoft-purview)