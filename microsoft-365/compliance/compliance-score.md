---
title: "Microsoft Compliance Score"
ms.author: chvukosw
author: chvukosw
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Microsoft Compliance Score helps organizations simplify and automate risk assessments, and suggests recommended actions to help address risks."
---

# Microsoft Compliance Score (Preview)

## Introduction

 **Microsoft Compliance Score**, a new feature in the [Microsoft 365 compliance center](microsoft-365-compliance-center.md), is now available for public preview. Read this article to understand what Compliance Score is, how it can help you manage compliance for your organization, and how to get started.

## What is Compliance Score

Microsoft Compliance Score is a new feature in the Microsoft 365 compliance center. It calculates a personalized, risk-based score to help you understand the state of your compliance, and recommends actions you can take to strengthen your overall compliance posture. If you use [Compliance Manager](compliance-manager-overview.md), you'll notice that Compliance Score is now a standalone feature with its own design and capabilities—many of which replace functions you previously performed in the Compliance Manager interface.

### Simplified compliance management

Compliance Score helps to simplify and automate the process of managing compliance for your organization through a centralized, user-friendly experience. Specifically, Compliance Score provides:

- **Continuous assessment** - automatically detects and monitors the effectiveness of controls in your system
- **Suggested solutions** - provides recommendations and step-by-step guidance for how to implement controls to maximize your score
-  **Streamlined collaboration** - lets you easily assign, track, record, and report out compliance tasks with built-in workflow tools

## Understanding your score

Your compliance score is based on a behavior-based scoring system for activities related to data protection, privacy, and security in your organization. It calculates a numerical percentage based on points you can achieve by implementing and testing controls.

Compliance Score gives you an out-of-the-box score based on the Microsoft Data Protection Standard (MSDP), which is a set of controls that includes key regulations and standards. While this score is a good starting point for assessing your compliance posture, Compliance Score becomes more relevant and powerful for you once you personalize it by creating assessments, customizing controls, and taking recommended improvement actions.

Visit other topics for details about [how your compliance score is calculated](compliance-score-methodology.md) and how to improve your score via the workflow. <link to working with article>

> [!NOTE]
> Compliance Score does not express an absolute measure of organizational compliance with any particular standard or regulation. It expresses the extent to which you have adopted controls which can reduce the risks to personal data and individual privacy. Compliance Score should not be interpreted as a guarantee in any way.

## Relationship to Compliance Manager

Use Compliance Score as your starting point for taking actions to manage compliance for your organization. While most actions can be performed within the Compliance Score interface, some actions are powered by Compliance Manager because the two systems have connected functionality in the public preview. When you come to functions that are handled in Compliance Manager, you will be guided along those points and will clearly know when you are being directed to that tool.

## Getting started

### How to access Compliance Score

- Go to the [Microsoft Compliance Center](https://compliance.microsoft.com/) and and **sign in** with your global administrator or compliance administrator account
- Select **Compliance Score** on the left-hand navigation

- Access to Compliance Store is restricted by permissions. View roles and permissions. <link to page/section>)

### What to do first

Give others access/rights permissions
Invite others to join 
Understanding workflow at-a-glance



## Permissions

Compliance Manager uses a role-based access control permission model. Only users who are assigned a user role may access Compliance Manager, and the actions allowed by each user are restricted by role type. [View a table](working-with-compliance-manager.md#permissions) showing the actions allowed for each permission.

The portal admin for Compliance Manager can set permissions for other users in within Compliance Manager by following these steps:

1. From the top **More** drop-down menu, select **Admin**, then **Settings**.
2. From here, select the role you want to assign and then add the employee you want to assign to that role. Users will then be able to perform certain actions.

In addition, users who are assigned the [Global Reader role in Azure Active Directory (Azure AD)](https://docs.microsoft.com/en-us/azure/active-directory/users-groups-roles/directory-assign-admin-roles#global-reader) have read-only permission to access Compliance Manager; however they cannot edit data or perform any actions within Compliance Manager.

Note that there is no longer a default **Guest access** role. Each user must be assigned a role in order to access and work within Compliance Manager.


## Ready to get started?

Start [working with Compliance Manager](working-with-compliance-manager.md) to manage regulatory compliance activities for your organization.

## Resources

- [Interactive guide: Assess and enhance your data protection controls with Compliance Manager](https://content.cloudguides.com/guides/Compliance%20Manager)
- [Microsoft Security, Privacy, and Compliance Tech Community](https://techcommunity.microsoft.com/t5/Security-Privacy-Compliance/ct-p/SecurityPrivacyCompliance)
