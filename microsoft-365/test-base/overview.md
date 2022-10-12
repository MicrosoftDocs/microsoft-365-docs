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

Test Base is an Azure service that enables data-driven application testing while providing user access to intelligent testing from anywhere in the world.

The following entities are encouraged to onboard their applications, binaries, and test scripts onto the Test Base for Microsoft 365 service: Independent Software Vendors (ISVs), System Integrators (SIs) to validate their applications and IT Professionals who want to validate their line-of-business (LOB) applications through integration with Microsoft Intune.

## Why test your application with Test Base?

The Test Base for Microsoft 365 service can accommodate the expansion of your testing matrix as necessary so you will have confidence in the integrity, compatibility, and usability of your applications.

Test Base enables your application to continue working as expected even as platform dependencies vary, and new updates are applied by the Windows update service. With Test Base, you can avoid the aggravation, protracted time commitments, and the expense of setting up and maintaining a complex lab environment for testing your applications.

In addition, you can automatically test compatibility against security and feature updates for Windows by using secure virtual machines (VMs) while also obtaining access to world-class intelligence for testing your applications. You can also get your apps tested for compatibility against pre-release windows security updates by submitting a request to get the access.

## How does Test Base work?

To sign up for the Test Base service, see [Create a new Test Base account](createAccount.md).

After a customer has enrolled in the Test Base service, it is a simple matter to begin uploading application packages for testing.

Following a successful upload, packages are tested against Windows pre-release updates.

After initial tests are successfully completed, the customer can do a deep dive with insights on performance and regression analysis to detect whether pre-release content updates have degraded application performance in any way.

However, if the package failed any test, then the customer can also leverage Insights from memory or CPU regressions to remediate the failure and then update the package as necessary.

With Test Base, the customer can use a single location to manage all packages being tested, which can also facilitate uploading and updating packages to generate new application versions as needed.

> [!NOTE]
> **So that customers can take advantage of pre-release update content, they must specifically request access to it. Once your request for access to pre-release updates is approved, your uploaded packages will automatically get scheduled to be tested against the pre-release Windows updates for the OS versions selected during onboarding**.

Then, as new Windows pre-release updates become available, application packages are automatically tested with new pre-release content. Thereafter, an additional round of insights may be required. If customers do not specifically request access, then application packages will be tested against only the current released version of Windows.

After packages are successfully tested, customers can deliver them to their software customers and end users with confidence and the assurance that Test Base did its job.

## Next steps

Follow the link to get started
> [!div class="nextstepaction"]
> [Create a new Test Base account | Microsoft Docs](createaccount.md)
