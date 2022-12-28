---
title: Microsoft Teams EHR connector FAQ
author: LanaChin
ms.author: v-lanachin
manager: samanro
audience: ITPro
ms.topic: conceptual
ms.service: microsoft-365-frontline
search.appverid: MET150
searchScope:
  - Microsoft Teams
  - Microsoft Cloud for Healthcare
f1.keywords:
- NOCSH
ms.localizationpriority: high
ms.collection: 
  - M365-collaboration
  - Teams_ITAdmin_Healthcare
  - microsoftcloud-healthcare
  - m365solution-healthcare
  - m365solution-scenario
  - m365-frontline
  - highpri
  - tier2
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: casjacks
description: Get answers to frequently asked questions about Teams Electronic Health Record (EHR) connector setup and configuration. 
ms.date: 
---

# Teams EHR connector FAQ

**Option 1**

This article covers frequently asked questions about the Microsoft Teams Electronic Health Record (EHR) connector. It provides answers to common setup, configuration, and user experience questions.

**Option 2**

This article provides guidance for how to troubleshoot common setup and configuration issues for the Microsoft Teams Electronic Health Record (EHR) connector. Use it to help resolve blockers that you may experience when you set up and configure the EHR connector to integrate with your [Cerner EHR](ehr-admin-cerner.md) or [Epic EHR](ehr-admin-epic.md) system.

## I get a "FHIR URL isn't valid" error when I try to configure the EHR connector

This issue can happen in the following scenarios:

- The FHIR base URL is missing the DSTU2 extension and you're using Teams version 1.1 or 1.2.
- The FHIR base URL is missing the R4 extension and you're using Teams version 1.3.

Contact your Epic technical specialist to provide the full FHIR base URL.

## I'm an Epic analyst and I get an "OATH2" error from Epic when I try to approve the FHIR URL

This issue can occur if the keys aren't set up in the Epic instance or if OAuth configuration in't completed by Epic. Contact your Epic technical specialist.

## I'm an Epic analyst and when selecting Approve to approve the FHIR URL, I'm unable to log in to Epic using my Epic credentials in the EHR connector configuration portal

Your permissions need to be changed in Epic. Contact your Epic technical specialist to check and update your permissions.

## Patients are unable to launch a virtual appointment from the patient portal after we've set up the EHR connector for the first time


## Providers don't get a Teams notification when patients join a virtual appointment

Often this can be solved by training. When a provider starts the virtual appointment, a temporary notification is displayed to the provider to admit the patient. This notification appears only briefly. Providers can also select **People** in the meeting controls at the top of the screen to see the list of participants, and then under **Waiting in lobby**, select the green check mark next to the participant's name to admit them.

Another reason can be restrictions in Teams Admin Center. Teams notifications can be managed from TA (Teams Admin Center). Contact your Teams IT admin to verify the tenant level settings in place for your organization

## Patients are prompted to download Teams instead of joining from a web browser. We want patients to join from a web browser without having to install Teams.

Contact Microsoft Support and open a support ticket for the Teams EHR connector. Indicate in the ticket that the web browser join setting needs to be turned on. This change needs to be done by the Teams EHR connector team.

After the web browser join setting is turned on, patients can join virtual appointments in a browser. They don't need to download and install Teams on their device.

## Patients can send chat messages to providers after the virtual appointment ends from within the appointment. How can we block this?

## I'm unable to access the EHR connector configuration portal or I can only see existing configurations and can't add new ones.

You don't have admin access to the [Teams EHR connector configuration portal](https://ehrconnector.teams.microsoft.com/). Check to see whether you can access the [Teams admin center](https://admin.teams.microsoft.com/). If you can't access the Teams admin center, you don't have admin permissions to the tenant.

Contact an admin to either grant you access or set up the integration in the portal.  

## Group visits aren't working in my organization.


## My organization uses a Citrix environment and I need help with configuring the environment to use the EHR connector.

You can configure a Citrix environment to route certain URLs back to the local machine and not launch in the virtual machine. For example, to launch virtual appointments in Teams, configure all traffic for  “*.teams.microsoft.com” to the local machine.

To learn more, see the following Citrix documentation:

- [Optimization for Microsoft Teams](https://docs.citrix.com/citrix-virtual-apps-desktops/multimedia/opt-ms-teams.html)
- [Browser content redirection](https://docs.citrix.com/citrix-virtual-apps-desktops/multimedia/browser-content-redirection.html)

## Users get a "Tenant config not found" error when launching a virtual appointment even though all our FHIR base URLs are configured correctly.

This issue can happen if a user accidentally launches the virtual appointment in the EHR production environment by using the test FHIR URL or vice versa.

To resolve this issue:

- Make sure that the production FHIR base URL is used only to launch virtual appointments in the production environment.
- Make that the test FHIR base URL is used only to launch virtual appointments in the test environment.

## Related articles

- [Teams EHR connector Virtual Appointments report](ehr-connector-report.md)
- [Get started with Teams for healthcare organizations](teams-in-hc.md)
