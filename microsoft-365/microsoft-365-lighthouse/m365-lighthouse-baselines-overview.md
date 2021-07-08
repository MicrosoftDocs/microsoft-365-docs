---
title: "Deploy standard tenant configurations with Microsoft 365 Lighthouse Baselines"
f1.keywords: NOCSH
ms.author: sharik
author: SKjerland
manager: scotv
audience: Admin
ms.topic: article
ms.prod: microsoft-365-lighthouse
localization_priority: Normal
ms.collection:
- M365-subscription-management
- Adm_O365
ms.custom:
- AdminSurgePortfolio
- M365-Lighthouse                         
search.appverid: MET150
description: "For Managed Service Providers (MSPs) using Microsoft 365 Lighthouse, get an overview of standard tenant configurations with Lighthouse Baselines."
---

# Deploy standard tenant configurations with Microsoft 365 Lighthouse Baselines 

Microsoft 365 Lighthouse Baselines provide a repeatable and scalable way for you to assess and manage Microsoft 365 security settings across multiple tenants. Baselines also help monitor core security policies and tenant compliance standards with configurations that secure users, devices, and data.

Designed to help partners enable customer adoption of security at their own pace, Microsoft 365 Lighthouse provides a standard set of Baseline parameters and pre-defined configurations for Microsoft 365 services. These security configurations help measure how your tenants are doing with their Microsoft 365 service security progress and compliance.

You can view the default Baselines and the steps that make up a Baseline from within the Microsoft 365 Lighthouse platform. Baselines can be applied to a tenant by going to Tenants on the left navigation and selecting a tenant. Next go to the Deployment plan tab and then implement the required tenant Baseline.

## Standard Baseline security templates

Microsoft 365 Lighthouse’s standard Baseline configurations for security workloads are designed to help all managed tenants reach an acceptable state of security coverage and compliance.

The following Baseline configurations come standard with the Microsoft 365 Lighthouse Default Baseline:<br><br>

<table>
<colgroup>
<col style="width: 33%" />
<col style="width: 66%" />
</colgroup>
<thead>
<tr class="header">
<th><blockquote>
<p><strong>Baseline Configuration </strong></p>
</blockquote></th>
<th><blockquote>
<p><strong>Description </strong></p>
</blockquote></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td><blockquote>
<p>Require MFA for admins </p>
</blockquote></td>
<td><blockquote>
<p>A report-only Conditional Access policy requiring multifactor authentication for admins. It is required for all cloud applications. </p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Require MFA for end users </p>
</blockquote></td>
<td><blockquote>
<p>A report-only Conditional Access policy that requires multifactor authentication for end users. It is required for all cloud applications.</p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Block legacy authorization</p>
</blockquote></td>
<td><blockquote>
<p>A report-only Conditional Access policy to block legacy client authorizations.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Enroll devices in Microsoft Endpoint Manager – Azure AD Join</p>
</blockquote></td>
<td><blockquote>
<p>Device enrollment to allow your tenant devices to enroll in Microsoft Endpoint Manager. This is done by setting up Auto Enrollment between Azure Active Directory and Microsoft Endpoint Manager.  </p>
</blockquote></td>
</tr>
<tr class="odd">
<td><blockquote>
<p>Antivirus (AV) policy configuration</p>
</blockquote></td>
<td><blockquote>
<p>A Device Configuration profile for Windows devices with pre-configured Microsoft Defender Antivirus settings.</p>
</blockquote></td>
</tr>
<tr class="even">
<td><blockquote>
<p>Window 10 Compliance policy set up </p>
</blockquote></td>
<td><blockquote>
<p>Windows device policy with pre-configured settings to meet basic compliance requirements.</p>
</blockquote></td>
</tr>
</tbody>
</table>

##  Related topics

Deploy Microsoft 365 Lighthouse Baselines (article)  
[Microsoft 365 Lighthouse FAQ](m365-lighthouse-faq)
