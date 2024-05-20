---
title: Microsoft 365 Backup Storage - Third Party public preview terms and conditions
ms.author: chucked
author: chuckedmonson
manager: jtremper
audience: admin
ms.reviewer: sreelakshmi
ms.date: 11/15/2023
ms.topic: conceptual
ms.service: microsoft-365-backup
ms.custom: backup
search.appverid:
ms.collection:
    - m365initiative-syntex
ms.localizationpriority: medium
description: Read the preview terms and conditions for Microsoft 365 Backup Storage (Preview).
---

# Microsoft 365 Backup Storage - Third Party public preview terms and conditions

Effective Date: May 31, 2024
 
"Company" means the ISV that utilized this Preview Feature with their customers, and for Company’s development and testing of compatible solutions.

**By using this Preview Feature, you accept these Terms and Conditions and all rights and obligations within. If you do not agree to these Terms and Conditions, DO NOT use the Preview Feature.** These Terms and Conditions govern the use of the Preview Feature offerings as described below.

"Feedback" is all suggestions, comments, feedback, ideas, or know how, in any form, that Company provides to Microsoft. It does not include sales forecasts, financial results, future release scheduled, marketing plans and high-level product plans or feature lists for anticipated products.

**MICROSOFT OFFERING/Preview Feature**: Microsoft 365 Backup Storage (“Microsoft Offering”) offers backup and recovery of OneDrive, SharePoint, and Exchange Online data for large volumes of data within the Microsoft 365 security boundary. Microsoft Offering can restore the data in the end customer's tenant in which the Backup Storage application is running in the event of accidental deletion/modification or ransomware. Customers will be able to sign up for Microsoft Offering by onboarding to the Backup Storage APIs, linking a valid Azure subscriptionID for billing purposes, and operating an application on these APIs once consent by the end customer tenant has been granted for said application.

To terminate your use of the Microsoft Offering Feature Preview during the Preview Period, stop using the Preview Feature. This can be done by pausing existing backup policies in all tenants where they exist via appropriate API calls and filing a ticket with Microsoft to request hard deletion of existing backups in the tool, or by letting said backups age out naturally over a 52-week after pausing the backup policies. Microsoft may change or discontinue the Preview Feature at any time with or without notice. Microsoft may also choose not to make the Preview Feature generally commercially available.

During the Preview Period, Company will allow their applications to backup SharePoint sites, OneDrive accounts and Exchange mailboxes. Company must be aware that this is a preview service and all the limitations described in these Terms and Conditions.

Prerequisite Requirements to enable Microsoft Offering pay-as-you-go are:

1. An Azure subscription with admin access as owner or contributor on the subscription

2. A Microsoft 365 tenancy with either Microsoft 365 admin access or SharePoint admin access

3. An Azure resource group

No service-level agreement (SLA) applies to this Feature Preview.

**THE PREVIEW FEATURE IS PROVIDED “AS-IS,” “WITH ALL FAULTS,” AND “AS AVAILABLE.” Microsoft provides no performance guarantee for the Feature Preview (including accompanying URLs provided for embedded or unauthenticated viewing) and Company bear the risk of using it. The Feature Preview is not included in the SLA for Microsoft Syntex and may not be covered by customer support.**

Backup restores are meant to recover from attacks, not to circumvent primary storage costs or other unintended purposes. Periodic testing is permitted, but not in excessive amounts. Restores should be limited to no more than two (2) restores per protected site/mailbox per month, unless recovering from a real attack.

**RELATIONSHIP WITH COMPANY’S CUSTOMERS**: If Company is an Independent Software Vendor (“ISV”) both Parties, Microsoft and ISV will retain responsibility for and control over all aspects of its relationship with its customers/users for the purpose of these Terms. Nothing in these Terms changes or terminates either Party’s rights or obligations with regards to, or its relationship with, its customers/users. Microsoft will not be a Party to any ISV’s customer agreement that Company may use with its customers/users to test the Feature Preview, and Microsoft will not be identified to Company’s customers/users, as a direct support provider for Company’s customers/users of the Feature Preview.

**Nothing in this Agreement changes Company’s responsibility with regards to ISV’s customers/users data. “User Data” means any data, images, text, content, code, or other information or materials that a user provides to ISV or Microsoft. ISV is solely responsible for informing Company’s customers/users that this is a Preview Feature, and that ISV has all the legal authorizations to allow ISVs customers/users data to be stored in the Preview Feature. ISV’s and their customers/users will not hold Microsoft liable from any liability arising out of or in connection with this Agreement.**

**<ins>LICENSE</ins>**

If Company provides Feedback, Company grants to Microsoft, without charge, the non-exclusive License to make, modify, distribute, or otherwise commercialize the Input as part of any Microsoft offering.

The above License does not extend to any technologies that may also be necessary to make or use any offering or portion thereof that incorporates the Feedback but are not themselves expressly part of the Input (for example, enabling technologies).

**<ins>PAYMENT TERMS</ins>**

Microsoft Offering uses pay-as-you-go (PAYG) billing through an Azure subscription. Microsoft Offering billing is determined by how much data in GB your application backs up in end customer tenants, where GB is measured as the user-facing size of the content. Company will be able to view this usage as meter events through the Azure subscription it chooses.

Microsoft Offering Feature Preview pricing is as follows:

|Microsoft 365 Backup Meters  |Meter Unit  |Price  |
|---------|---------|---------|
|Backup storage     |$/GB/Month         |$0.07         |

****Effects upon Termination.**LENGTH OF OBLIGATIONS; DISCLOSURE</ins>**

**Preview Period.** The Preview Period continues in effect until <ins>September 30, 2024, or 30 days after Commercial General Availability of the Preview Feature, whichever is first</ins>. Company may terminate their use of the Preview Feature at any time. Terminating use of the Preview Feature will not change any of the rights, licenses granted, or duties made while the Preview Period is in effect. Termination is defined as i) the Company’s termination of use of the Preview Feature and/or ii) the Preview Period ends.

**Effects upon Termination.** Once terminated, Company will no longer have access to Microsoft Offering and all the backed up content if Microsoft does not continue with the then generally available Microsoft Offering features. Should Microsoft choose to make the Microsoft Offering service generally available using the same pay-as-you-go (PAYG) billing setup through an Azure subscription, Company may continue without interruption. As this is a preview and not commercially generally available, bugs and other system errors may occur causing interruptions or errors in operating. As referenced in the “Representations and Limitations” section below, this Preview Feature is provided “as-is” and Company bears the risk of using them.

**<ins>TERMINATION FOR NON-PAYMENT</ins>**

In case the Company’s azure subscription goes into an unhealthy stage of deleted or cancelled or suspended, we will prevent any future backup and restores until the subscription is back to a healthy state. Company will have 30 days to recover any backed up data and restores by bringing back the subscription to an active state. If no action is taken from the Company to bring subscription back to active state in 30 days, we will soft delete the backed up data from systems after this 30 days. Upon reactivation, Company must also pay for Microsoft Offering usage for the days the subscription was in unhealthy state.
This Agreement cannot be extended. Microsoft may also choose not to make the Preview Feature generally commercially available.

**<ins>REPRESENTATIONS AND LIMITATIONS</ins>**

**Input.** Company represents that it will not give any Feedback that:

1. Violates any copyright or trade secret claim or right of any third party;

2. It has reason to believe violates any patent claim or right of any third party; or

3. Is subject to an excluded license.

**Authority.** Company represents it has all rights and authority necessary to be legally bound to these Terms and Conditions and grant the rights described therein for itself and its affiliates.

**Limitations.** All information, materials and feedback are provided “as-is” and Company bears the risk of using them; Company gives no express warranties, guarantees or conditions as to its Feedback; and to the extent permitted under local law, Company excludes the implied warranties of merchantability, fitness for a particular purpose, title and non-infringement as to its Input.

**<ins>LIMITATIONS ON AND EXCLUSIONS OF REMEDIES AND DAMAGES</ins>**

Except as described herein, the only remedy for claims relating to these Terms and Conditions is for Company to terminate its use of the Preview Feature. Neither Party can recover any damages, including direct, consequential, lost profits, special, punitive, indirect or incidental damages from the other. This limitation applies:

1. To claims for breach of contract, breach of warranty, guarantee or condition, strict liability, negligence, or other tort to the extent permitted by applicable law.

2. Even if one of us knew or should have known about the possibility of the damages.

The limitations in this section does not apply to claims arising from or in connection with any infringement, misuse, or misappropriation by one of us of the other’s intellectual property rights.
