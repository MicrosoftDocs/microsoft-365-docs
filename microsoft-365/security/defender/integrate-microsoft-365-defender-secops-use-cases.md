---
title: Step 5. Develop and test use cases
description: The basics of developing and testing use cases when integrating Microsoft 365 Defender into your security operations.
keywords: incidents, alerts, investigate, correlation, attack, devices, users, identities, identity, mailbox, email, 365, microsoft, m365, incident response, cyber-attack, secops, security operations, soc
search.product: eADQiWindows 10XVcnh
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords:
  - NOCSH
ms.author: dansimp
author: dansimp
ms.localizationpriority: medium
manager: dansimp
audience: ITPro
ms.collection:
  - zerotrust-solution
  - msftsolution-secops
  - tier2
ms.topic: conceptual
search.appverid:
  - MOE150
  - MET150
ms.date: 07/15/2021
---

# Step 5. Develop and test use cases

[!INCLUDE [Microsoft 365 Defender rebranding](../includes/microsoft-defender.md)]

**Applies to:**
- Microsoft 365 Defender

The recommended methods to deploy Microsoft 365 Defender in your Security Operations Center (SOC) depends on the SOC team's current set of tools, processes, and skill set. Maintaining cyber hygiene across platforms can be challenging because of the vast amount of data coming from dozens if not hundreds of security sources.

Security tools are interrelated. Turning on one feature in a security technology or changing a process may in turn break another. For this reason, Microsoft recommends that your SOC team formalize a method for defining and prioritizing use cases. Use cases help define requirements and test processes for SOC operations across various teams. It creates a methodology for capturing metrics to determine if the right roles and mix of tasks are aligned to the right team with the right skill set.

## Develop and formalize use case process

The SOC should define a high-level standard and process for developing use cases, which would be regulated by the SOC Oversight team. The SOC Oversight team should work with your business, IT, legal, HR, and other groups to prioritize use cases for the SOC that will eventually make their way into the SOC team's runbooks and playbooks. Priority of use cases are based on objectives, such as compliance or privacy.

SOC Oversight activities related to use case development include:

- Requirements
- Staffing or training needs
- Software licenses
- Vendor contracting
- Managing plan
- Maintaining use case registry
- Maintaining/updating templates

To facilitate the runbook and playbook creation processes, create a use case decision tree. This figure shows an example.

:::image type="content" source="../../media/integrate-microsoft-365-defender-secops/use-case-decision-process.png" alt-text="The use-case decision process" lightbox="../../media/integrate-microsoft-365-defender-secops/use-case-decision-process.png":::

Once a high-level use case standard has been defined and approved, the next step is to create and test an actual use case. The following sections use anti-phishing and threat and vulnerability scanning scenarios as examples.

## Use case example 1: New phishing variant

The first step in creating a use case is to outline the workflow using a story board. Here's an example of a high-level story board for a new phishing exploit notification to a Threat Intelligence team.

:::image type="content" source="../../media/integrate-microsoft-365-defender-secops/example-use-case-workflow-storyboard-phishing.png" alt-text="The workflow of a use case for an anti-phishing campaign" lightbox="../../media/integrate-microsoft-365-defender-secops/example-use-case-workflow-storyboard-phishing.png":::

### Invoke the use case workflow for example 1

Once the story board has been approved, the next step is to invoke the use case workflow. Here's an example process for an anti-phishing campaign.

:::image type="content" source="../../media/integrate-microsoft-365-defender-secops/example-detailed-use-case-workflow-phishing.png" alt-text="A detailed use case workflow for an anti-phishing campaign" lightbox="../../media/integrate-microsoft-365-defender-secops/example-detailed-use-case-workflow-phishing.png":::

## Use case example 2: Threat and vulnerability scanning

Another scenario where a use case could be used is for threat and vulnerability scanning. In this example, the SOC requires that threats and vulnerabilities be remediated against assets via approved processes that include scanning of assets.

Here's an example high-level storyboard for the Microsoft Defender Vulnerability Management of assets.

:::image type="content" source="../../media/integrate-microsoft-365-defender-secops/example-use-case-workflow-storyboard-tvm.png" alt-text="A use-case workflow for threat and vulnerability management" lightbox="../../media/integrate-microsoft-365-defender-secops/example-use-case-workflow-storyboard-tvm.png":::

### Invoke the use case workflow for example 2

Here's an example process for threat and vulnerability scanning.

:::image type="content" source="../../media/integrate-microsoft-365-defender-secops/example-detailed-use-case-workflow-tvm.png" alt-text="A detailed use case workflow for threat and vulnerability management" lightbox="../../media/integrate-microsoft-365-defender-secops/example-detailed-use-case-workflow-tvm.png":::

### Analyze the use case output and lessons learned

After a use case has been approved and tested, gaps among your security teams should be identified, along with people, processes, and the Microsoft 365 Defender technologies involved. Microsoft 365 Defender technologies should be analyzed to determine if they're capable of achieving desired outcomes. These can be tracked via a checklist or a matrix.

For example, in the anti-phishing scenario example, the SOC teams could have made the discoveries in this table.

|SOC team|Requirement|People to meet requirement|Process to meet requirement|Relevant technology|Gap identified|Use case change log|Exempt (Y/N)|
|---|---|---|---|---|---|---|---|
|Threat Intelligence and Analytics team|Data sources are properly feeding the threat intelligence engines.|Threat Intelligence Analyst/Engineer|Data feed requirements established, threat intelligence triggers from approved sources|Microsoft Defender for Identity, Microsoft Defender for Endpoint|Threat Intelligence team didn't use automation script to link Microsoft 365 Defender API with threat intel engines|Add Microsoft 365 Defender as data sources to threat engines <p> Update use case run book|N|
|Monitoring team|Data sources are properly feeding the monitoring dashboards|Tier 1,2 SOC Analyst–Monitoring & Alerts|Workflow for reporting Security & Compliance Center Secure Score|[Investigate alerts in Microsoft 365 Defender](investigate-alerts.md) <p> Secure Score monitoring|No mechanism for SOC analysts to report successful new phishing variant detection to improve Secure Score <p> [View email security reports in the Microsoft 365 Defender portal](/microsoft-365/security/office-365-security/reports-email-security)|Add a process for tracking Secure Score improvement to Reporting workflows|N|
|Engineering and SecOps Team|Change control updates are made in the SOC team runbooks|Tier 2 SOC Engineer|Change Control notification procedure for SOC team runbooks|Approved changes to security devices|Changes to Microsoft 365 Defender connectivity to SOC security technology requires approval|Add Microsoft Defender for Cloud Apps, Defender for Identity, Defender for Endpoint, Security & Compliance Center to SOC runbooks|Y|




Additionally, the SOC teams could have made the discoveries outlined in the table below in regard to the Defender Vulnerability Management scenario outlined above:

|SOC team|Requirement|People to meet requirement|Process to meet requirement|Relevant technology|Gap identified|Use case change log|Exempt (Y/N)|
|---|---|---|---|---|---|---|---|
|SOC Oversight|All assets connected to approved networks are identified and categorized|SOC Oversight, BU owners, application owners, IT asset owners, etc.|Centralized asset management system to discover and list asset category and attributes based on risk.|ServiceNow or other assets. <br><br>[Microsoft 365 Device Inventory](/microsoft-365/security/defender-endpoint/device-discovery)|Only 70% of assets have been discovered. Microsoft 365 Defender remediation tracking only effective for known assets|Mature asset lifecycle management services to ensure Microsoft 365 Defender has 100% coverage|N|
|Engineering & SecOps Teams|High impact and critical vulnerabilities in assets are remediated according to policy|SecOps engineers, SOC analysts: Vulnerability & Compliance, Security Engineering|Defined process for categorizing High Risk and Critical Vulnerabilities|[Microsoft Defender Vulnerability Management Dashboards](/microsoft-365/security/defender-endpoint/next-gen-threat-and-vuln-mgt)|Defender for Endpoint has identified high impact, high alert devices with no remediation plan or implementation of Microsoft recommended activity|Add a workflow for notifying asset owners when remediation activity is required within 30 days per policy; Implement a ticketing system to notify asset owners of remediation steps.|N|
|Monitoring Teams|Threat and vulnerability status is reported via company intranet portal|Tier 2 SOC analyst|Auto-generated reports from Microsoft 365 Defender showing remediation progress of assets|[Investigate alerts in Microsoft 365 Defender](investigate-alerts.md) <p> Secure Score monitoring|No views or dashboard reports being communicated to asset owners regarding threat and vulnerability status of assets.|Create automation script to populate status of high risk and critical asset vulnerability remediation to the organization.|N|

In these example use cases, the testing revealed several gaps in the SOC team's requirements that were established as baselines for the responsibilities of each team. The use case checklist can be as comprehensive as needed to ensure that the SOC team is prepared for the Microsoft 365 Defender integration with new or existing SOC requirements. Since this is an iterative process, the use case development process and the use case output content naturally serve to update and mature the SOC's runbooks with lessons learned.

## Update production runbooks and playbooks

Once use case testing has been remediated for all gaps, the lessons learned and metrics collected in them can be incorporated into your SOC team's production runbooks (operating processes) and playbooks (incident responses and escalation procedures).

Maintenance of the SOC team runbooks and playbooks can be organized in a multitude of ways. Each SOC team may be responsible for their own, or there may be a single centralized version for all teams to share in a central repository. Runbook and playbook management for individual organizations is based on size, skill set, roles, and segregation of duties. Once a runbook has been updated, the playbook update process should follow.

## Use a standard framework for escalation

Playbooks are the steps the SOC teams need to follow when a real event occurs, based on the successful integration and test of the use case. Therefore, it's imperative that the SOC follows a formalized approach to incident response, such as the [NIST Incident Response Standard](https://nvlpubs.nist.gov/nistpubs/SpecialPublications/NIST.SP.800-61r2.pdf) that has become one of the leading industry standards for incident response.

The NIST four step incident response process includes four phases:

1. Preparation
2. Detection and analysis
3. Containment, eradication, and recovery
4. Post-incident activity

### Example: Tracking preparation phase activity

One of the core foundations of an escalation playbook is to ensure there's little ambiguity as to what each SOC team is supposed to do before, during, and after an event or incident. Therefore, it's good practice to list out step by step instructions.

For example, the Preparation phase could include an if/then or XoR matrix of tasks. In the case of the new phishing variant example use case, such a matrix could look like this:

|Why is Escalation Warranted?|Next Step|
|---|---|
|Alert in SOC Monitoring rated as **critical** triggered > **500/hour**|Go to Playbook A, Section 2, Activity 5 (with a link to the playbook section)|
|eCommerce reported potential DDoS attack|Invoke Playbook B-Section C, Activity 19 (with a link to the playbook section)|
|Executive reported a suspicious email as spear phishing attempt|Go to Playbook 5, Section 2, Activity 5 (with a link to the playbook section)|

After executing the Preparation phase, organizations should invoke the remaining phases as outlined by NIST:

- Detection and analysis
- Containment, eradication, and recovery
- Post-incident activity

## Next step

[Step 6. Identify SOC maintenance tasks](integrate-microsoft-365-defender-secops-tasks.md)
[!INCLUDE [Microsoft 365 Defender rebranding](../../includes/defender-m3d-techcommunity.md)]
