---
title: Accountability readiness checklists for the GDPR
description: In this article, you'll learn about the Accountability readiness checklists to access information for supporting the GDPR when using Microsoft products and services.
keywords: Microsoft 365, Microsoft 365 Education, Microsoft 365 documentation, GDPR
localization_priority: Priority
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: 
- GDPR
- M365-security-compliance
ms.custom:
- seo-marvel-mar2020
titleSuffix: Microsoft GDPR
---

# Support your GDPR program with Accountability Readiness Checklists

The General Data Protection Regulation (GDPR) introduces new rules for organizations that offer goods and services to people in the European Union (EU), or that collect and analyze data for EU residents no matter where you or your enterprise are located. Additional details are in the [GDPR Summary topic](gdpr.md).

## Accountability Readiness Checklists

Accountability readiness checklists are provided to conveniently access information you may need to support the GDPR when using Microsoft products and services. The checklist lists potential obligations you may have under the GDPR, and points you to information that you can use to support your organizations' compliance.

There is a specific guide for four Microsoft product and services families:

- [Office 365](gdpr-arc-Office365.md)
- [Dynamics 365](gdpr-arc-Dynamics365.md)
- [Azure](gdpr-arc-Azure.md)
- [Microsoft Support and Professional Services](gdpr-arc-prof-services.md)

You can manage the items in this checklist with [Compliance Manager](compliance-manager.md) by referencing the Control ID and Control Title under Customer Managed Controls in the GDPR tile.

The checklists include the four basic categories of considerations for a privacy program supporting GDPR listed below, along with example requirements.

1. Conditions for Data Collection and Processing:

    - When is consent obtained?  
    - Identify and document purpose  
    - Privacy impact assessment

2. Data Subject Rights  

    - Determining information for PII principals (data subjects)  
    - Providing mechanism to modify or withdraw consent

3. Privacy by Design and Default  

    - Limit Collection  
    - Comply with identification levels  
    - Temporary files

4. Data Protection and Security  

    - Understanding the organization and its context  
    - Planning  
    - Information Security Policies

## Customer agreements

- **Online service terms**: You can find Microsoft contractual commitments with regard to the GDPR in the [Online Services Terms](https://go.microsoft.com/fwlink/p/?linkid=2052208).
- **Microsoft product terms**: Microsoft extends the [GDPR Terms commitments](https://go.microsoft.com/fwlink/p/?linkid=2052213) to all Volume Licensing customers.
- **Data protection addendum**: Microsoft services [extends the commitments](https://go.microsoft.com/fwlink/p/?linkid=2052215) to Microsoft Consulting Services customers and others.

## GDPR compliance controls

- **Use Compliance Manager**: Review and incorporate controls Microsoft uses to support obligations in the GDPR with [Compliance Manager](compliance-manager.md).
- **GDPR control mapping**: Access a [comprehensive mapping](https://go.microsoft.com/fwlink/p/?linkid=2052220) of Microsoft controls to GDPR obligations.

## Records of Processing for Processors

Due to the scale and breadth of the online services we provide as processors to our controller customers, we expect customers to identify the services they seek the records of processing for and retrieve the relevant logs in the online tools we provide. One example is for the records of processing for Azure in which customers would be requested to identify which types of processing activity they seek the records of.

### Azure logs

Typically, customers would be interested in the Activity logs and potentially the Diagnostic logs:

- **Activity logs**: [Activity logs](https://docs.microsoft.com/azure/azure-monitor/platform/platform-logs-overview) provide insight into operations performed on resources in a subscription. Activity logs can help determine an operation's initiator, time of occurrence, and status.
- **Diagnostic logs**: [Diagnostic logs](https://docs.microsoft.com/azure/azure-monitor/platform/platform-logs-overview) are all logs emitted by every resource. These logs include Windows event system logs, Azure storage logs, Key Vault audit logs, and Application Gateway access and firewall logs.
- **Log archiving**: All diagnostic logs write to a centralized and encrypted Azure storage account for archival. The retention is user-configurable, up to 730 days, to meet organization-specific retention requirements. These logs connect to Azure Monitor logs for processing, storing, and dashboard reporting.

### Other logs

Additionally, the following monitoring solutions are installed as a part of this architecture. It is the customer's responsibility to configure these solutions to align with FedRAMP security controls:

- [AD Assessment](https://docs.microsoft.com/azure/azure-monitor/insights/ad-assessment): The Active Directory Health Check solution assesses the risk and health of server environments on a regular interval and provides a prioritized list of recommendations specific to the deployed server infrastructure.
- [Anti-malware Assessment](https://docs.microsoft.com/azure/security-center/security-center-services?tabs=features-windows#supported-endpoint-protection-solutions-): The Anti-malware solution reports on malware, threats, and protection status.
- [Azure Automation](https://docs.microsoft.com/azure/automation/automation-hybrid-runbook-worker): The Azure Automation solution stores, runs, and manages runbooks.
- [Security and Audit](https://docs.microsoft.com/azure/security-center/security-center-introduction): The Security and Audit dashboard provides a high-level insight into the security state of resources by providing metrics on security domains, notable issues, detections, threat intelligence, and common security queries.
- [SQL Assessment](https://docs.microsoft.com/azure/azure-monitor/insights/sql-assessment): The SQL Health Check solution assesses the risk and health of server environments on a regular interval and provides customers with a prioritized list of recommendations specific to the deployed server infrastructure.
- [Update Management](https://docs.microsoft.com/azure/automation/update-management/update-mgmt-overview): The Update Management solution allows customer management of operating system security updates, including a status of available updates and the process of installing required updates.
- [Agent Health](https://docs.microsoft.com/azure/azure-monitor/insights/solution-agenthealth): The Agent Health solution reports how many agents are deployed and their geographic distribution, as well as how many agents that are unresponsive and the number of agents that are submitting operational data.
- [Azure Activity Logs](https://docs.microsoft.com/azure/azure-monitor/platform/activity-log): The Activity Log Analytics solution assists with analysis of the Azure activity logs across all Azure subscriptions for a customer.
- [Change Tracking](https://docs.microsoft.com/azure/azure-monitor/platform/activity-log): The Change Tracking solution allows customers to easily identify changes in the environment.

For information on the technical and security measures for Azure, controller customers should visit the [Azure Security Documentation](https://docs.microsoft.com/azure/security/). As Microsoft doesn't know if Customer Data is Personal Data or not, Azure processes all Customer Data as if it were Personal Data so a customer would likely consider all of the material relevant.

### Processor information

Another product our customer might need records of processing information for processors is Office 365. To view information related to Office 365, see the [Search the audit log in the Security & Compliance Center](https://docs.microsoft.com/microsoft-365/compliance/search-the-audit-log-in-security-and-compliance) article.

You can also view the information for Dynamics 365 using the Security & Compliance center.  In order to view the Security & Compliance center page, ensure that you have the correct license. Learn more about licensing with the [Security & Compliance Center service description](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/office-365-securitycompliance-center) article. To search for Dynamics 365 events, visit the Unified Audit Log in the [Security & Compliance center](https://protection.office.com/unifiedauditlog).

### Professional services information

As for Professional Services, the Professional Services Support Data is provided by the customer to the support engineer by the customer's representative.  This may take place when a customer submits a Service Request either through the online product portal, Services Hub or via phone.

The information is stored in our CRM systems and only used for the following purposes:

- Delivering the Professional Services, including providing technical support, professional planning, advice, guidance, data migration, deployment, and solution/software development services.  
- Troubleshooting (preventing, detecting, investigating, mitigating, and repairing problems, including Security Incidents); and 
- Ongoing improvement (maintaining the Professional Services, including installing the latest updates, and making improvements to the reliability, efficacy, quality, and security). 

Due to the scale of our support operations, Microsoft operates product group-based CRM system. Records of processing will be contained within those systems.
A history of processing is reflected in the records maintained within our CRM systems.  In most instances the Service Request History is available on the portals or Service Hub.
For any specific details that are not available on the portals or any other inquiries about processing of your data, contact your Technical Account Manager or contact [Microsoft Technical Support](https://support.microsoft.com/contactus/).

## Learn more

- [Microsoft Trust Center](https://www.microsoft.com/trust-center/privacy/gdpr-overview)
