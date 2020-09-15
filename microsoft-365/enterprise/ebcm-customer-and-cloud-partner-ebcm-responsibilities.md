---
title: "Customer and Cloud Partner Enterprise Business Continuity Responsibilities"
author: chrfox
f1.keywords:
- NOCSH
ms.author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description:  Understand what Microsoft does during a service incident so you can better prepare your business continuity plans.
---
# Enterprise business continuity management customer and cloud partner responsibilities

Getting Microsoft 365 cloud services to your users is a partnership between your organization and Microsoft. Microsoft provides the services and you are responsible for connecting your client endpoints, managing identity and access and how those services are used. There are shared responsibilities, such as the identity and directory infrastructure as well. This article covers some of the critical items you need to be mindful of to keep your business functioning in the event of a service incident and it helps set expectations as to what Microsoft will do during a service incident.

## Transparency during service incidents

As a trusted partner, Microsoft  builds highly resilient cloud services and follows structured procedures to resolve service incidents when they happen. When a service incident occurs, Microsoft recognizes that **timely**, **targeted**, and **highly available** communications are critical for customers.

## Timely
Microsoft notifies Microsoft 365 administrators by updating the tenant-specific Service Health Dashboard (SHD) in the Microsoft 365 Admin Portal. Service incident updates are normally provided on an hourly cadence. If a different cadence is needed we'll keep you informed of the change in the SHD communication postings.

## Targeted
In most cases, when our monitoring systems detect an issue, we can identify the affected customer base, from a single customer up to region or beyond and direct the necessary communications to those customers. This helps you know what you need to know for your business and not be distracted by noise notifications that don't impact you. For example, if a specific mailbox database is impacted, we're able to identify exactly which customers have users on the affected infrastructure and scope our communications to them. If the scope of impact of the incident is unclear, we expand our communications out to the widest group of customers who are potentially impacted.

## Highly available
Microsoft maintains multiple channels for service status communications that customers can use.

- In the event the Admin center or the Service Health Dashboard within the Admin center are unavailable, you can monitor the service status using our [backup site](https://status.office365.com/).
- We maintain a Twitter account [@MSFT365Status](https://twitter.com/msft365status?lang=en) where we will respond to reports of impact and post updates on SHD impacting events.
- The Admin App for Microsoft 365 tenant administrators gives you the ability to connect with your organization's Microsoft 365 service status on the go. Tenant administrators will have the ability to view service health information and maintenance status updates from their mobile devices. For more information, visit the [Admin App FAQ](https://docs.microsoft.com/office365/admin/admin-overview/admin-mobile-app?view=o365-worldwide).
- The [Microsoft 365 Service Communications API](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity#office-365-service-communications-api) enables you to access service communications so you can more easily monitor your environment. You can connect to the API, receive real-time service health data, and publish the information on an internal dashboard to inform enterprise users of incidents. Distributing the information internally can decrease your helpdesk traffic during an outage.
- For major incidents, Microsoft publishes Post Incident Reviews (PIR) to the SHD within the Admin center. PIRs contain key incident information to help you understand the nature of the outage. It generally contains the following sections:
    - user impact
    - scope of impact
    - incident start-end date and time
    - root cause
    - actions taken
    - next steps
- Ancillary communications are available in the Microsoft 365 Message Center, such as notices of upcoming changes, new features, or planned maintenance.
- For more information, see the [Service Health and Continuity guide](https://docs.microsoft.com/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity) to learn more about the different communication channels and how to monitor service health.
 
Providing access to Microsoft 365 online services is a partnership between your organization and Microsoft. The following chart summarizes the balance of responsibility for both Microsoft and the customer during a service incident and during regular operations.

![balance of customer and Microsoft responsibilities](../media/ebcm/responsibilities.png)

## Your environment - service continuity
When thinking about your continuity plan, be mindful of events which may impact your organization and it's overall ability to communicate. At a high level there are three factors that could impact your business.

### People
Consider events that would cause impact to your workforce like a natural disaster or a pandemic. This is often overlooked, due to the unlikely nature of a broad-scale impact if your workforce is widely distributed. But, if a large percentage of the workforce were offline, would your business continue to operate? How do you mitigate that?

### Location
Many organizations require employees to be in specific physical or network locations in order to connect to enterprise systems and cloud services.  
Microsoft publishes [network connectivity principles](microsoft-365-network-connectivity-principles.md) that guide enterprises through best practices for setting up network connectivity to cloud resources. Examples of optimization include implementation of split tunnel VPNs to allow connections directly from a user’s network rather than over a VPN tunnel.  While these connectivity principles are important for maintaining low-latency connections, service resiliency requires alternative methods of connecting to corporate resources for general collaboration.

### Systems
Many collaboration solutions are dependent on systems, such as the company wide area network (WAN). When those systems are not available, how would your organization respond?
This graphic represents issues that may impact more than one area. The accompanying table provides examples to consider

![venn-diagram](../media/ebcm/venn-diagram.png)

Your continuity plans should consider each of these areas. For example: If you require users to be on the corporate network and there is a snowstorm, how do those users gain access to key resources? If the snow prevents travel into the office and service engineers are required to connect to the corporate network, is there a policy mandating they have their corporate laptops in their possession at home?
