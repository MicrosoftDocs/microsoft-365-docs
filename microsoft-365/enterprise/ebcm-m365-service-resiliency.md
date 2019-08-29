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

As your cloud collaboration provider, Microsoft recognizes the need to continuously earn your trust by providing solutions that function consistently and that your users love. When any given service is unavailable, this is called downtime.The definition of downtime varies for each Microsoft 365 service, but centers on any period of time when users are unable to use the essential functionality of the service.

For example,

- **SharePoint Online Downtime**: Any period of time when users are unable to read or write any portion of a SharePoint Online site collection for which they have appropriate permissions.

You can find the downtime definitions for each service in the [Service Level Agreements](http://www.microsoftvolumelicensing.com/DocumentSearch.aspx?Mode=3&DocumentTypeId=37).

To minimize downtime, either planned or unexpected, Microsoft 365 services are designed and operated to be highly available and resilient to failure by focusing in 4 areas:

## Active/Active Design

In Microsoft 365 we are driving towards having all services architected and operated in an active/active design which increases resiliency. This means that there are always multiple instances of a service running that can respond to user activity and that they are hosted in geographically dispersed datacenters. All user traffic comes in through the Microsoft Front Door service and is automatically routed to the optimally located instance of the service and around any service failures to prevent or reduce impact to our customers.

## Reduce Incident Scope

The scope of a service incident is measured by how severe it is, how long it lasts and how many customers are impacted. We strive to limit the scope of all incidents by:

- having multiple instances of each service partitioned off from each other
- Deploying updates in a controlled, graduated fashion using rings of validation so that any issues that might arise from the update can be detected and mitigated early in the deployment process. This allows for regression of the update if need and first occurs in a small group inside Microsoft (inner ring) before it is deployed to larger groups like all 140,000 Microsft employees (ring 2), then to early adopter rings (ring 3) and ultimately to all customers globally (ring 4).
- Driving improvements in monitoring through automation. Microsoft 365 is very large, and the SLA target uptime is high. At the very beginning of a service incident, if humans had to be involved in detection and response, we couldn't respond fast enough to meet SLAs. Automation is the key to fast and effective service incident detection and response. The quicker we know about something, the faster it can be fixed.

Along with the active/active capabilities built into Microsoft 365 service architecture, these efforts mitigate the severity, duration and number of impacted customers during a service incident.  

## Fault Isolation

Just as the services are designed and operated in an active/active fashion and are partitioned off from each other to prevent a failure in one from affecting another, the code base of the service is developed using similar partitioning principles called fault isolation. Fault isolation measures are incremental protections made within the code base itself. These measures help prevent an issue in one area from cascading into other areas of operation.
Fault isolation measures are applied at multiple stages of the development and delivery of a service, including code development, service deployment, load balancing and database replication.

The Microsoft Security Development Lifecycle (SDL) further promotes resiliency and consists of a set of practices that support security and compliance requirements. SDL guides our developers in building resilient, secure, compliant services. Key elements of SDL include code reviews, threat modeling, penetration testing, and standardized incident response processes across the Microsoft cloud.

M365 services are highly interconnected, but the systems and technology behind them are engineered in a way that limits the impact of one service incident from spilling over to other services. For example, an issue affecting Exchange Online will not impact core functionality in Teams, or an issue with search functionality in SharePoint Online won’t affect users’ ability to upload or download files.

## Defense in Depth
Microsoft is committed to a defense in depth approach, which means layering safeguards to protect service continuity. Microsoft’s redundant cloud architecture and rigorous internal processes aim to keep our services accessible. When we experience an incident, we take them seriously and use postmortems to learn from every situation. By applying the knowledge we gain from a single incident across our suite of offerings, we can prevent the same root cause from impacting other services and additional customers. Additionally, granularity in service architecture prevents incidents from impacting our customers on a global scale. 
During an incident, our monitoring rapidly detects the affected services and, if affected, you will be notified immediately through a variety of channels. On-call engineers following defined processes perform quick triage to bring services back to normal operation. Incident postmortems identify incident root causes to drive continuous improvement for our customers. Additionally, we're using the same services as our customers in our daily work, so we incorporate the lessons learned during service incidents to inform our own internal business continuity processes.