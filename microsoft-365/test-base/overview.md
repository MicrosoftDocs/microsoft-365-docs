---
title: 'Overview'
description: Understanding Test Base
search.appverid: MET150
author: Tinacyt
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 07/06/2021
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: tinachen
f1.keywords: NOCSH
---

# What is Test Base for Microsoft 365?

Test Base is an Azure service that enables data-driven application testing for users anywhere in the world. 

The following institutions are best fit to onboard their applications, binaries, and test scripts to Test Base for Microsoft 365: Enterprise/Businesses, Independent Software Vendors (ISVs), System Integrators (SIs), and IT Professionals who want to validate their line-of-business (LOB) applications through integration with Microsoft Intune.

## Why test your application with Test Base?

The Test Base for Microsoft 365 service can accommodate your expanding testing matrix, ensuring continuous confidence in the integrity, compatibility, and usability of your applications. 

Test Base ensures that your applications continue working as expected, even when platform dependencies vary, or new updates are applied by the Windows update service. With Test Base, you can avoid the aggravation, protracted time commitments, and expenses of setting up and maintaining a complex lab environment for testing your applications. 

In addition, you can automatically test your applications’ compatibility against security and feature updates for Windows by using secure virtual machines (VMs). This allows you to obtain access to world-class intelligence for testing your applications. You can also test your apps compatibility with pre-release Windows security updates - simply submit a request to get access. 

## How does Test Base work?

To sign up for Test Base service, see [Create a new Test Base account](createAccount.md).

After a customer has enrolled in the Test Base service, it’s easy to begin uploading application packages for testing. 

Following a successful upload, packages are tested against Windows pre-release updates. 

After initial tests are successfully completed, the customer can do a deep dive with insights on performance and regression analysis to detect whether pre-release updates degraded application performance in any way. 

However, if the package fails any test, customers can leverage insights from memory or CPU regressions to remediate the failure and update the package as necessary to rerun. 

Test Base gives customers a single location to manage all their packages undergoing testing. Customers can also upload and update packages to generate new application versions they’d like to test as needed. 

> [!NOTE]
> **For customers to take advantage of pre-release update testing, they must specifically request access to it. Once your request for access to pre-release updates is approved, your uploaded packages will automatically get scheduled to be tested against pre-release Windows updates for the OS versions selected during package uploading.**.

As new Windows pre-release updates become available, existing application packages are automatically tested with the new pre-release content. Following this, an additional round of insights will be provided. If customers do not specifically request access to pre-release testing, their application packages will be tested against only the current released version of Windows. 

After packages are successfully tested, customers can resolve any issues found during testing and deliver their applications to their end users with the assurance that Test Base did its job.

## Next steps

Follow the link to get started
> [!div class="nextstepaction"]
> [Create a new Test Base account | Microsoft Docs](createaccount.md)
