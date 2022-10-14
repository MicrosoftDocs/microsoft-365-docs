---
title: Prepare Microsoft Defender for Endpoint deployment
description: Prepare stakeholder approval, timelines, environment considerations, and adoption order for deploying Microsoft Defender for Endpoint
keywords: deploy, prepare, stakeholder, timeline, environment, endpoint, server, management, adoption
ms.service: microsoft-365-security
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
ms.author: macapara
author: mjcaparas
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - m365-security
  - m365solution-endpointprotect
  - m365solution-scenario
  - highpri
  - tier1
ms.topic: article
ms.subservice: mde
search.appverid: met150
---

# Prepare Microsoft Defender for Endpoint deployment

[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/microsoft-defender.md)]

**Applies to:**
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)

> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-exposedapis-abovefoldlink)

Deploying Defender for Endpoint is a three-phase process:

|![deployment phase - prepare.](images/phase-diagrams/prepare.png)<br>Phase 1: Prepare|[![deployment phase - setup](images/phase-diagrams/setup.png)](production-deployment.md)<br>[Phase 2: Setup](production-deployment.md)|[![deployment phase - onboard](images/phase-diagrams/onboard.png)](onboarding.md)<br>[Phase 3: Onboard](onboarding.md)|
|---|---|---|
|*You are here!*|||

You are currently in the preparation phase.

Preparation is key to any successful deployment. In this article, you'll be guided on the points you'll need to consider as you prepare to deploy Defender for Endpoint.

## Stakeholders and approval

The following section serves to identify all the stakeholders that are involved in the project and need to approve, review, or stay informed.

Add stakeholders to the table below as appropriate for your organization.

- SO = Approve project
- R = Review this project and provide input
- I = Informed of this project

<br>

****

|Name|Role|Action|
|---|---|---|
|Enter name and email|**Chief Information Security Officer (CISO)** *An executive representative who serves as sponsor inside the organization for the new technology deployment.*|SO|
|Enter name and email|**Head of Cyber Defense Operations Center (CDOC)** *A representative from the CDOC team in charge of defining how this change is aligned with the processes in the customers security operations team.*|SO|
|Enter name and email|**Security Architect** *A representative from the Security team in charge of defining how this change is aligned with the core Security architecture in the organization.*|R|
|Enter name and email|**Workplace Architect** *A representative from the IT team in charge of defining how this change is aligned with the core workplace architecture in the organization.*|R|
|Enter name and email|**Security Analyst** *A representative from the CDOC team who can provide input on the detection capabilities, user experience, and overall usefulness of this change from a security operations perspective.*|I|
||||

## Environment

This section is used to ensure your environment is deeply understood by the stakeholders, which will help identify potential dependencies and/or changes required in technologies or processes.

<br>

****

|What|Description|
|---|---|
|Endpoint count|Total count of endpoints by operating system.|
|Server count|Total count of Servers by operating system version.|
|Management engine|Management engine name and version (for example, System Center Configuration Manager Current Branch 1803).|
|CDOC distribution|High level CDOC structure (for example, Tier 1 outsourced to Contoso, Tier 2 and Tier 3 in-house distributed across Europe and Asia).|
|Security information and event (SIEM)|SIEM technology in use.|
|||

## Role-based access control

Microsoft recommends using the concept of least privileges. Defender for Endpoint leverages built-in roles within Azure Active Directory. Microsoft recommends [review the different roles that are available](/azure/active-directory/roles/permissions-reference) and choose the right one to solve your needs for each persona for this application. Some roles may need to be applied temporarily and removed after the deployment has been completed.

<br>

****

|Personas|Roles|Azure AD Role (if necessary)|Assign to|
|---|---|---|---|
|Security Administrator||||
|Security Analyst||||
|Endpoint Administrator||||
|Infrastructure Administrator||||
|Business Owner/Stakeholder||||
|

Microsoft recommends using [Privileged Identity Management](/azure/active-directory/active-directory-privileged-identity-management-configure) to manage your roles to provide additional auditing, control, and access review for users with directory permissions.

Defender for Endpoint supports two ways to manage permissions:

- **Basic permissions management**: Set permissions to either full access or read-only. Users with Global Administrator or Security Administrator roles in Azure Active Directory have full access. The Security reader role has read-only access and does not grant access to view machines/device inventory.

- **Role-based access control (RBAC)**: Set granular permissions by defining roles, assigning Azure AD user groups to the roles, and granting the user groups access to device groups. For more information. see [Manage portal access using role-based access control](rbac.md).

Microsoft recommends leveraging RBAC to ensure that only users that have a business justification can access Defender for Endpoint.

You can find details on permission guidelines here: [Create roles and assign the role to an Azure Active Directory group](/microsoft-365/security/defender-endpoint/user-roles#create-roles-and-assign-the-role-to-an-azure-active-directory-group).

The following example table serves to identify the Cyber Defense Operations Center structure in your environment that will help you determine the RBAC structure required for your environment.

<br>

****

|Tier|Description|Permission Required|
|---|---|---|
|Tier 1|**Local security operations team / IT team** <p> This team usually triages and investigates alerts contained within their geolocation and escalates to Tier 2 in cases where an active remediation is required.||
|Tier 2|**Regional security operations team** <p> This team can see all the devices for their region and perform remediation actions.|View data|
|Tier 3|**Global security operations team** <p> This team consists of security experts and is authorized to see and perform all actions from the portal.|View data <p> Alerts investigation Active remediation actions <p> Alerts investigation Active remediation actions <p> Manage portal system settings <p> Manage security settings|
||||

## Adoption Order

In many cases, organizations will have existing endpoint security products in place. The bare minimum every organization should have been an antivirus solution. But in some cases, an organization might also have implanted an EDR solution already.

Historically, replacing any security solution used to be time intensive and difficult to achieve due to the tight hooks into the application layer and infrastructure dependencies. However, because Defender for Endpoint is built into the operating system, replacing third-party solutions is now easy to achieve.

Choose the component of Defender for Endpoint to be used and remove the ones that do not apply. The table below indicates the order Microsoft recommends for how the endpoint security suite should be enabled.

<br>

****

|Component|Description|Adoption Order Rank|
|---|---|---|
|Endpoint Detection & Response (EDR)|Defender for Endpoint endpoint detection and response capabilities provide advanced attack detections that are near real-time and actionable. Security analysts can prioritize alerts effectively, gain visibility into the full scope of a breach, and take response actions to remediate threats. <p> [Learn more.](/windows/security/threat-protection/windows-defender-atp/overview-endpoint-detection-response)|1|
|Microsoft Defender Vulnerability Management (MDVM)|Defender Vulnerability Management is a component of Microsoft Defender for Endpoint, and provides both security administrators and security operations teams with unique value, including: <ul><li>Real-time endpoint detection and response (EDR) insights correlated with endpoint vulnerabilities</li><li>Invaluable device vulnerability context during incident investigations</li><li>Built-in remediation processes through Microsoft Intune and Microsoft System Center Configuration Manager</li></ul> <p> [Learn more](https://techcommunity.microsoft.com/t5/Windows-Defender-ATP/Introducing-a-risk-based-approach-to-threat-and-vulnerability/ba-p/377845).|2|
|Next-generation protection (NGP)|Microsoft Defender Antivirus is a built-in antimalware solution that provides next-generation protection for desktops, portable computers, and servers. Microsoft Defender Antivirus includes: <ul><li>Cloud-delivered protection for near-instant detection and blocking of new and emerging threats. Along with machine learning and the Intelligent Security Graph, cloud-delivered protection is part of the next-gen technologies that power Microsoft Defender Antivirus.</li><li>Always-on scanning using advanced file and process behavior monitoring and other heuristics (also known as "real-time protection").</li><li>Dedicated protection updates based on machine learning, human and automated big-data analysis, and in-depth threat resistance research.</li></ul> <p> [Learn more](/windows/security/threat-protection/microsoft-defender-antivirus/microsoft-defender-antivirus-in-windows-10).|3|
|Attack Surface Reduction (ASR)|Attack surface reduction capabilities in Microsoft Defender for Endpoint help protect the devices and applications in the organization from new and emerging threats. <br> [Learn more.](/windows/security/threat-protection/windows-defender-atp/overview-attack-surface-reduction)|4|
|Auto Investigation & Remediation (AIR)|Microsoft Defender for Endpoint uses Automated investigations to significantly reduce the volume of alerts that need to be investigated individually. The Automated investigation feature leverages various inspection algorithms, and processes used by analysts (such as playbooks) to examine alerts and take immediate remediation action to resolve breaches. This significantly reduces alert volume, allowing security operations experts to focus on more sophisticated threats and other high value initiatives. <p> [Learn more.](/windows/security/threat-protection/windows-defender-atp/automated-investigations-windows-defender-advanced-threat-protection)|Not applicable|
|Microsoft Threat Experts (MTE)|Microsoft Threat Experts is a managed hunting service that provides Security Operation Centers (SOCs) with expert level monitoring and analysis to help them ensure that critical threats in their unique environments don't get missed. <p> [Learn more.](/windows/security/threat-protection/windows-defender-atp/microsoft-threat-experts)|Not applicable|

## Next step

![Phase 2: Setup.](images/setup.png) <br> [Phase 2: Setup](production-deployment.md)

Set up Microsoft Defender for Endpoint deployment.
