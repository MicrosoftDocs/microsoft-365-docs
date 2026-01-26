---
title: Setting up and Managing Project Opal (Frontier)
description: The following instructions help you to set up and manage Opal in Microsoft 365 Copilot.
f1.keywords:
- NOCSH
ms.author: smbhardwaj
author: smritib17
manager: scotvidican
ms.date: 11/17/2025
audience: Admin
ms.reviewer: valerieyoung
ms.topic: overview
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- trust-pod
ms.custom: [copilot-learning-hub]
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Get started with Opal in Microsoft 365 Copilot

> [!IMPORTANT]
> Opal is currently only available in the [Frontier early access program](https://adoption.microsoft.com/copilot/frontier-program/) with a Microsoft 365 Copilot subscription. Frontier includes early access to experimental features, which means features may change as Microsoft improves them. [Learn more about Frontier](https://support.microsoft.com/topic/what-is-frontier-17c671e0-1906-4d9d-892c-68e11fbff4c7).


Opal is an enterprise automation experience under the Frontier program in Microsoft 365 Copilot. Opal uses advanced Computer-Using Agents (CUA) to automate and simplify routine complex, multi-step tasks that often take up valuable time for enterprise users.

Common use cases include:  

- Collecting evidence for audit reviews

- Submitting time sheets for your team

- Onboarding a new employee onto multiple platforms

Opal helps users complete jobs with CUA on a secure, Entra-joined, and Intune-enrolled [Windows 365 for Agents Cloud PC](/windows-365/overview). The agent operates within a Microsoft Edge browser, and users can supervise the agent to complete the job, intervening when necessary.

This article provides guidance for administrators on how to set up and manage Opal.

## Prerequisites

- An Intune license for your organization

- Microsoft 365 Copilot licenses for individual users

## Setting Up Opal

Opal isn't available by default. A Global administrator needs to complete the following steps to enable and configure Opal.  

> [!IMPORTANT]
> Microsoft recommends that you use roles with the fewest permissions. Using lower permissioned accounts helps improve security for your organization. Global Administrator is a highly privileged role that should be limited to emergency scenarios when you can't use an existing role. To learn more, see [About admin roles in the Microsoft 365 admin center](/microsoft-365/admin/add-users/about-admin-roles).

1. Navigate to the [Microsoft 365 admin center](https://admin.microsoft.com).

2. Go to **Copilot** and then **Settings**.

3. Locate the user access setting titled **Opal (Frontier)**.

4. Select the group of users who should have access to Opal.

After you enable Opal in the Microsoft 365 admin center, more setup is required in the [Opal Admin Portal](https://go.microsoft.com/fwlink/?linkid=2340266) using the following steps:

1. **Initial Setup**

    - Complete the initial setup steps by getting your tenant ready for Opal.
    - This setup process creates a device group, device policy and assigns the policy to your group. These resources can be found in Intune and they apply to the Cloud PCs created by Opal. Don't delete or adjust these resources. **Any changes made to these resources may cause the Opal app to not function as expected or break entirely.**

2. **Cloud PC Setup**

    - Create the group of Cloud PCs needed for Opal. Choose the number of Cloud PCs and the region they should be provisioned in. You can come back to this page at any time to make edits to the group of Cloud PCs.
    - Manage the website **Allow list** for the Cloud PCs. By default, everything is blocked.

3. **Custom Instructions**

    - Write instructions for Opal. Opal remembers the instructions for every job in your organization. Include information such as your organization name, preferred websites, and so on.

4. **Prompt starters**

    - Configure starters for the Opal home page. Everyone in your organization sees these starters; they help users understand the types of jobs that Opal can accomplish.
    - These starters are tied to the website **Allow list** from step #1.

## Accessing Opal

Users can find Opal in the Microsoft 365 Copilot app under Frontier. When accessed, it opens in an external new tab.  

For more information, see the article here: [Get started with Opal in Microsoft 365 Copilot](https://go.microsoft.com/fwlink/?linkid=2341525).

## Managing Opal

Admins can use the Opal Admin Portal to manage the Cloud PC Pool, update the website allowlist, and update instructions. Microsoft recommends setting up Prompt starters for users in your organization, so they can get started from the Opal home page easily.


