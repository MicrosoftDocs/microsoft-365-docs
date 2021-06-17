---
title: Set up and configure Microsoft Defender for Endpoint Plan 1 (preview)
description: Learn how to set up and configure Defender for Endpoint Plan 1. Review the requirements, plan your rollout, and set up your environment. 
search.appverid: MET150 
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: ITPro
ms.topic: overview
ms.date: 06/17/2021
ms.prod: m365-security
ms.technology: mde
localization_priority: Normal
ms.reviewer: 
f1.keywords: NOCSH
---

# Set up and configure Microsoft Defender for Endpoint Plan 1 (preview)

As a preview customer, you likely have assistance in setting up and configuring Defender for Endpoint Plan 1. This article includes information on how to plan, configure, and onboard to Defender for Endpoint Plan 1. 

The general setup and configuration process is as follows:

- Review the requirements (including licensing and device requirements)
- Plan your deployment
- Set up your tenant environment
- Assign roles and permissions
- Onboard to Defender for Endpoint
- Configure your next-generation protection
- Configure your attack surface reduction capabilities
 
As soon as roles and permissions are assigned, your security team can get started using the Microsoft 365 Defender portal (see [Getting started with Defender for Endpoint Plan 1](mde-plan1-getting-started.md)).
 
## Review the requirements

The following table lists the basic requirements for Defender for Endpoint Plan 1:

| Requirement | Description |
|:---|:---|
| Licensing requirements | Defender for Endpoint Plan 1 |
| Browser requirements | Microsoft Edge <p> Internet Explorer version 11 <p> Google Chrome |
| Operating system | Windows 10 <p> Windows Server 2019 <p> Windows Server, version 1803 or later <p> Windows Server 2016 |
| Datacenter | One of the following datacenter locations: <br/>- European Union <br/>- United Kingdom <br/>- United States |

> [!TIP]
> To learn more, see [Minimum requirements for Defender for Endpoint](minimum-requirements.md).

## Plan your deployment

When you plan your deployment, you can choose from several different architectures and deployment methods. Every organization is unique, so you have several options to consider. 

To help with these decisions, see [Plan your Defender for Endpoint deployment](deployment-strategy.md), which includes the downloadable poster that is depicted in the following image: 

:::image type="content" source="../../media/defender-endpoint/mdatp-deployment-strategy.png" alt-text="Deployment strategy poster thumbnail":::

**[Get the deployment poster](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/security/defender-endpoint/downloads/mdatp-deployment-strategy.pdf)**

## Set up your tenant environment

Setting up your tenant environment includes tasks, such as verifying your licenses and configuring your tenant. An important part of this process is making sure sensors are working correctly and reporting data to Defender for Endpoint. 

As a preview customer, you’ll likely have help with this process.

To learn more, see [Set up Defender for Endpoint](production-deployment.md).

## Assign roles and permissions

In order to access the Microsoft 365 Defender portal, configure settings for Defender for Endpoint, or to take response actions, appropriate permissions must be assigned. You can do this using [role-based access control](rbac.md) (RBAC). Microsoft recommends using the concept of [least privileged access](/azure/active-directory/develop/secure-least-privileged-access), so that users and applications are granted only the minimum level of access needed to perform required tasks. 

Defender for Endpoint leverages [built-in roles within Azure Active Directory](/azure/active-directory/roles/permissions-reference). Review the different roles that are available and choose the right role for each persona in Defender for Endpoint. 

To learn more, see [Prepare for your Defender for Endpoint deployment](prepare-deployment.md).

## Onboard to Defender for Endpoint

When you’re ready to onboard your organization’s devices and users to Defender for Endpoint, follow the guidance in [Onboard to the Defender for Endpoint service](onboarding.md).

Then, proceed to [configure next-generation protection settings](#configure-next-generation-protection) and [configure your attack surface reduction rules](#configure-attack-surface-reduction-rules). 

Defender for Endpoint enables you to edit and fine-tune your settings as needed.

## Configure next-generation protection

We recommend using [Microsoft Endpoint Manager](/mem) to manage your organization’s devices and security settings, as shown in the following image:
 
:::image type="content" source="../../media/mde-p1/endpoint-security-policies.png" alt-text="Microsoft Endpoint Manager endpoint security policies":::


## Review and edit your next-generation protection settings

1.	Go to the Microsoft Endpoint Manager admin center ([https://endpoint.microsoft.com](https://endpoint.microsoft.com)) and sign in.

2.	Select Endpoint security > Antivirus, and then select an existing policy. (If you don’t have an existing policy, create a new policy.)

3.	Refer to the following resources to set or change your antivirus configuration settings:
•	Settings for Windows 10 Microsoft Defender Antivirus policy in Microsoft Intune
•	Configure Defender for Endpoint on iOS features

4.	When you are finished specifying your settings, choose Review + save.

## Configure attack surface reduction rules

Attack surface reduction rules are available on devices running Windows. We recommend using Microsoft Endpoint Manager (as shown in figure 3) to configure your attack surface reduction rules.
 
Figure 3. Configuring attack surface reduction rules in Microsoft Endpoint Manager

1.	Go to the Microsoft Endpoint Manager admin center (https://endpoint.microsoft.com) and sign in.
2.	Choose Endpoint security > Attack surface reduction > + Create policy.
3.	For Platform, select Windows 10 and later.
4.	For Profile, select Attack surface reduction rules, and then choose Create.
5.	On the Basics tab, specify a name and description for the policy, and then choose Next.
6.	On the Configuration settings tab, expand Attack Surface Reduction Rules, and then specify settings for each rule. 
See this article on attack surface reduction rules for more information about what each rule does.
When you are finished configuring your attack surface reduction rules, choose Next.
7.	On the Scope tags tab, if you are using scope tags in your organization, specify scope tags for the policy you are creating. (To learn more, see Scope tags.)
8.	On the Assignments tab, specify the users and groups to whom your policy should be applied, and then choose Next. (To learn more about assignments, see Assign user and device profiles in Microsoft Intune.)
9.	On the Review + create tab, review the settings, and then choose Create.

To learn more about attack surface reduction rules, see the following resources:
•	Use attack surface reduction rules to prevent malware infection
•	Customize attack surface reduction rules

## Next step

[Getting started with Defender for Endpoint Plan 1 (preview)](mde-plan1-getting-started.md)