---
title: "Customer and Cloud Partner Enterprise Business Continuity Responsibilities"
author: chrfox
ms.author: chrfox
manager: laurawi
ms.date:
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Priority
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description:  Understand what Microsoft does during a service incident so you can better prepare your business continuity plans.
---

Microsoft is your partner in providing Microsoft 365 cloud services to your users. Microsoft is responsible for providing the services that your organization consumes and you are responsible for connecting your client endpoints to it and everything you do with those services. THere are share responsibilities, such as the identity and directory infrastructure as well. This article helps set expectations as to what Microsoft will do during a service incident and inform you of critical items you need to be mindful of so you can ensure that your business continues to function.

# Transparency during service incidents

As a trusted partner, Microsoft  builds highly resilient cloud services and follow highly structure procedures to resolve service incidents when they happen. When a service incident occurs, Microsoft recognizes that **timely**, **targeted**, and **accurate** communications are critical for customers. 

## Timely
Microsoft notifies Microsoft 365 administrators by updating the tenant-specific Service Health Dashboard (SHD) in the Microsoft 365 Admin Portal. Service incident updates are normally provided on an hourly cadence. If a different cadence is needed we'll keep you informed of the change in the SHD communication postings.

## Targeted
In most cases, when our monitoring systems detect an issue, we can (isolate) OR (identify) the affected customer base, from a single customer up to region or beyond and direct communications to those impacted customers. This helps you know what you need to know for your business and not be distracted by noise notifications that don't impact you. For example, if a specific mailbox database is impacted, we're able to identify exactly which customers have users on the affected infrastructure and scope our communications to them. If the scope of impact of the incident is unclear, we expand our communications out to the widest group of customer who are potentially impacted. 


 
Customers should use the [Service Health and Continuity guide](https://docs.microsoft.com/en-us/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity) to learn about the different communication channels and how to monitor service health. 
 
In the event the M365 Admin center or the Service Health Dashboard within the Admin center are unavailable, you can monitor the status of M365 using our backup site: 
https://status.office365.com/. Additionally, we maintain a Twitter account (@MSFT365Status) where we will respond to reports of impact and post updates on SHD impacting events. 
The Admin App for M365 tenant administrators gives you the ability to connect with your organization's M365 service status on the go. M365 tenant administrators will have the ability to view service health information and maintenance status updates from their mobile devices. For more information, visit the Admin App FAQ. 
The M365 Service Communications API enables you to access M365 service communications for simplifying the monitoring of your environment. Connect to the API, receive real-time service health data, and publish the information on an internal dashboard to inform enterprise users of incidents. Distributing the information internally can decrease your helpdesk traffic during an outage. We provide several other methods for customers to implement their own monitoring solutions on top of those options mentioned above.   
For highly impacting incidents, Microsoft publishes Post Incident Reviews (PIR) to the SHD within the Admin center. PIRs contain key incident information useful for understanding the nature of the outage and generally contain the following sections: 
•	User Impact 
•	Scope of Impact 
•	Incident Start-End Date and Time 
•	Root Cause 
•	Actions Taken 
•	Next Steps 
Ancillary communications are available in the M365 Message Center, such as notice of upcoming changes, new features, or maintenance. 


Providing access to Microsoft 365 online services is a partnership between your organization and Microsoft. The following chart summarizes the balance of responsibility for both Microsoft and the customer during a service incident and regular operations.

![balance of customer and Microsoft responsibilities](\media\ebcm\Responsibilities.png)




https://docs.microsoft.com/en-us/office365/servicedescriptions/office-365-platform-service-description/service-health-and-continuity




## heading 2

[Microsoft 365 deployment advisor](https://aka.ms/microsoft365setupguide)

[here](https://fasttrack.microsoft.com/microsoft365).

## Microsoft 365 Enterprise deployment guide

[foundation infrastructure](deploy-foundation-infrastructure.md)

  **If you are a smaller or newer organization**
text

 [one after the other or in parallel](deployment-strategies-microsoft-365-enterprise.md)

![](./media/deploy-microsoft-365-enterprise/m365-deploy-content-arch.png)

“*For the things we have to learn before we can do them, we learn by doing them.*” - Aristotle

![Test Lab Guides for the Microsoft cloud](media/m365-enterprise-test-lab-guides/cloud-tlg-icon.png)
> [!Note]
> This web page is only available in English.