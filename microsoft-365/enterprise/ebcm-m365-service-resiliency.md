---
title: "Microsoft 365 Service Resilience"
author: chrfox
ms.author: chrfox
manager: laurawi
ms.date: 06/28/2019
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description: Description of resiliency topic  
---
# Built in Resiliency
As your cloud collaboration provider, Microsoft recognizes the need to continuously earn your trust by providing solutions that your users love and that function consistently when required.  The definition of downtime for M365 centers on real functionality for each service and is defined in our Service Level Agreements .  
Microsoft 365 services are designed to be resilient to failure by focusing in 4 areas:
## Active/Active Design
In the Microsoft Cloud, we continue to drive towards having all our services designed with active/active resiliency. This means our services are redundant, hosted in geographically dispersed datacenters. Across M365, our services are designed to automatically route user traffic around failures to prevent or reduce impact to our customers.

## Reduce Incident Scope
Microsoft invests in reducing the severity, duration, and scope of impact resulting from service incidents. This is accomplished by increasing the number of service partitions, deploying updates using rings of validation, and driving improvements in monitoring.  These efforts in conjunction with the work around delivering active/active capabilities helps reduce both the severity and scope of issues, as well as the reducing the duration of user impact.  

## Fault Isolation
Services running in an active/active topology aim to remain available to customers. Fault isolation measures are incremental protections, made within the code base, to help prevent a singular issue from cascading into other areas of operation. This occurs at multiple stages of operation, including code development, deployment, load balancing, and database replication. 
The Microsoft Security Development Lifecycle (SDL) further promotes resiliency and consists of a set of practices that support security and compliance requirements. SDL guides our developers in building resilient, secure, compliant services our customers can rely on. Key elements of SDL include code reviews, threat modeling, penetration testing, and standardized incident response processes across the Microsoft cloud.  
When changes are made to the service, a phased approach is used that maintains options in the event of regression. Where possible, we first deploy to an inner ring within Microsoft (ring 1), then across Microsoft’s 140,000 employees (ring 2). When changes reach worldwide production, they have already been extensively tested, but we continue phased deployment for the targeted release (ring 3) and in numerous waves afterward until the globe is safely running the new standard release changes (ring 4, etc.).     
M365 services are highly interconnected in functionality to enable the world’s most popular collaboration suite, but the systems and technology behind them are engineered in a way that limits the impact of one service incident from affecting other services. For instance, an issue affecting Exchange Online will not impact core functionality in Teams. Similarly, an issue affecting Search functionality in SharePoint Online won’t affect users’ ability to upload or download files.  

## Defense in Depth
Microsoft is committed to a defense in depth approach, which means layering safeguards to protect service continuity. Microsoft’s redundant cloud architecture and rigorous internal processes aim to keep our services accessible. When we experience an incident, we take them seriously and use postmortems to learn from every situation. By applying the knowledge we gain from a single incident across our suite of offerings, we can prevent the same root cause from impacting other services and additional customers. Additionally, granularity in service architecture prevents incidents from impacting our customers on a global scale. 
During an incident, our monitoring rapidly detects the affected services and, if affected, you will be notified immediately through a variety of channels. On-call engineers following defined processes perform quick triage to bring services back to normal operation. Incident postmortems identify incident root causes to drive continuous improvement for our customers. Additionally, we're using the same services as our customers in our daily work, so we incorporate the lessons learned during service incidents to inform our own internal business continuity processes.