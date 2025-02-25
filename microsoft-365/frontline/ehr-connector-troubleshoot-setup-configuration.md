---
title: Troubleshoot Microsoft Teams EHR connector setup and configuration
author: lana-chin
ms.author: v-chinlana
manager: jtremper
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
  - m365-virtual-appointments 
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.reviewer: beolson
description: Use this guidance to help you troubleshoot common setup and configuration issues for the Teams Electronic Health Record (EHR) connector.  
ms.date: 06/26/2024
---

# Troubleshoot Microsoft Teams EHR connector setup and configuration

This article provides guidance for how to troubleshoot common setup and configuration issues for the Microsoft Teams Electronic Health Record (EHR) connector. Use it to help resolve blockers that you might experience when you set up and configure the EHR connector to integrate with your [Oracle Health EHR](ehr-admin-oracle-health.md) or [Epic EHR](ehr-admin-epic.md) system.

## FHIR URL isn't working

### I get an "FHIR URL isn't valid" error when I try to configure the EHR connector

This issue can happen in the following scenarios:

- The FHIR base URL is missing the DSTU2 extension and you're using Teams version 1.1 or 1.2.
- The FHIR base URL is missing the R4 extension and you're using Teams version 1.3.

Contact your Epic technical specialist to provide the full FHIR base URL.

### I'm an Epic analyst and I get an "OAUTH2" error from Epic when I try to approve the FHIR URL

This issue can occur if the keys aren't set up in the Epic instance or if OAuth configuration isn't completed by Epic. Contact your Epic technical specialist.

### I'm an Epic analyst and when I try to approve the FHIR URL in the EHR connector configuration portal, I can't sign in to Epic using my Epic credentials

Your permissions need to be changed in Epic. Contact your Epic technical specialist to check and update your permissions.

## Can't launch virtual appointments

### I set up the EHR connector for the first time and patients are unable to launch a virtual appointment from the patient portal

Here are some common reasons why you might be experiencing this issue and how to resolve it.

#### The FDI records in Epic don't match the values from the EHR connector configuration portal

The launch URL and the context tokens must be copied from the [EHR connector configuration portal](https://ehrconnector.teams.microsoft.com/) to the FDI records in Epic. Contact the Epic analyst in your organization to verify that the values were copied correctly. Keep in mind that in some cases, manipulating the FDI records after copying them from the EHR connector configuration portal is allowed.

#### The FDI records aren't updated in the correct Epic environment

The FHIR base URLs for the test and production environments in Epic are different. Check to make sure that the FDI records reflect the values for the correct environment.

#### You're using a production environment and you don't have a production license

Your organization must have at least one active license for either Microsoft Cloud for Healthcare, Microsoft Teams EHR Connector add-on, or Microsoft Teams EMR connector add-on. For Oracle Health customers, a license is also required for testing.

### Users get a "Tenant config not found" error when launching a virtual appointment even though all our FHIR base URLs are configured correctly

This issue can happen if a user accidentally launches the virtual appointment in the EHR production environment by using the test FHIR base URL or vice versa.

To resolve this issue:

- Make sure that the production FHIR base URL is used only to launch virtual appointments in the production environment.
- Make that the test FHIR base URL is used only to launch virtual appointments in the test environment.

## Group visits

### Group visits aren't working in my organization

Currently, group visits are only supported in Epic.

Here are some common reasons why you might be experiencing this issue when integrating with Epic, and how to resolve it.

- You're using an incorrect version of Teams. Group visits require a minimum of Teams version 1.2 and an upgrade must be requested in Epic Connection Hub.
- New FDI records need to be added. Your Epic analyst will need to create new FDI records for group visits to support the provider and patient join experience. Additionally, you must change the context token in the group visit FDI records from ```sessionId=%CSN%``` to ```sessionId=%CONFERENCEID%```. Contact your Epic technical specialist for help.
- If you're still experiencing this issue after trying the previous steps in this list, your tenant settings might need to be changed. Contact Microsoft Support to open a support ticket for the Teams EHR connector. Indicate in the ticket that group settings need to be enabled.

## Provider experience

### Providers don’t get a Teams notification when patients join a virtual appointment

Often this can be solved by training. When a provider starts the virtual appointment, a temporary notification is displayed to the provider to admit the patient. This notification appears only briefly.

Providers can also select **People** in the meeting controls at the top of the screen to see the list of participants, and then under **Waiting in lobby**, select the green check mark next to the participant’s name to admit them.

## Patient experience

### Patients are prompted to download the Teams app instead of joining from a web browser. We want patients to join from a web browser without having to install Teams

Contact Microsoft Support and open a support ticket for the Teams EHR connector. Indicate in the ticket that the web browser join setting needs to be turned on. This change needs to be done by the Teams EHR connector team.

After the web browser join setting is turned on, patients can join virtual appointments in a browser without having to install Teams.

### Patients can send chat messages to providers in Teams after the virtual appointment ends from within the appointment. How can we block this?

This scenario can happen because of several reasons.

#### The provider leaves the appointment but didn't end it

If the provider leaves the appointment but didn't end it and the patient remains in the appointment, they can both continue to chat. To prevent the patient from sending chat messages, the provider must select **End meeting** in Teams to end the appointment.

#### The web browser join setting is turned off and the patient, who is also an employee of your organization, joins in the Teams app using their work credentials

If the patient is an employee of your organization and they join the appointment via the Teams app using their work credentials, they're joining the appointment as a member of your organization and not as a guest. This means that they can send chat messages even after the appointment ends.

To avoid this scenario, you can do one of the following actions:

- Contact Microsoft Support and open a support ticket for the Teams EHR connector. Indicate in the ticket that the web browser join setting needs to be turned on. This change needs to be done by the Teams EHR connector team.
- Train your employees to not sign in to Teams using their work credentials when they attend appointments as a patient.

## Admin experience

### I'm unable to access the EHR connector configuration portal or I can only see existing configurations and can't add new ones

You don't have admin access to the [EHR connector configuration portal](https://ehrconnector.teams.microsoft.com/). As a quick check, see whether you can access the [Teams admin center](https://admin.teams.microsoft.com/). If you can't access the Teams admin center, you don't have admin permissions.

Contact an admin in your organization to either grant you admin access or set up the integration in the portal.  

### My organization wants to share the EHR Connector integration with other organizations in my network

If you want to share your FHIR base URL, email us with the FHIR base URL you would like to share at [TeamsForHealthcare](mailto:teamsforhealthcare@service.microsoft.com) with the following information:

1. FHIR base URL to be shared
1. Tenant ID of the parent/initial Microsoft tenant hosting the EHR connector (such as the main hospital hosting the EHR)
1. Tenant ID(s) of the new tenant(s) that will share the EHR connector (such as regional branches, related medical offices or clinics)

## Virtual Desktop Infrastructure (VDI) support

### My organization uses a Citrix environment. How do I configure it to use the EHR connector?

You can configure a Citrix environment to route certain URLs back to the local machine and not launch in the virtual machine. For example, to launch virtual appointments in Teams, configure all traffic for “*.teams.microsoft.com” to the local machine.

To learn more, see the following Citrix documentation:

- [Optimization for Microsoft Teams](https://docs.citrix.com/en-us/citrix-virtual-apps-desktops/multimedia/opt-ms-teams.html)
- [Browser content redirection](https://docs.citrix.com/en-us/citrix-virtual-apps-desktops/multimedia/browser-content-redirection.html)

## Related articles

- [Virtual Appointments with Teams - Integration into Oracle Health EHR](ehr-admin-oracle-health.md)
- [Virtual Appointments with Teams - Integration into Epic EHR](ehr-admin-epic.md)
- [EHR connector Virtual Appointments report](ehr-connector-report.md)
- [Get started with Microsoft 365 for healthcare organizations](teams-in-hc.md)
