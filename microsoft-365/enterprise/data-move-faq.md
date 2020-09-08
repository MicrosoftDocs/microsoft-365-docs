---
title: "Data move general FAQ"
ms.author: josephd
author: JoeDavies-MSFT
manager: laurawi
ms.date: 06/17/2020
audience: ITPro
ms.topic: article
ms.service: o365-administration
localization_priority: Normal
search.appverid:
- MET150
ms.assetid: 1f01bc6f-5d37-4d14-bdd3-9d94a1e23e14
f1.keywords:
- NOCSH
description: Find answers to frequently asked questions (FAQs) about moving core data to a new Office 365 datacenter geo.
ms.custom: seo-marvel-mar2020
---

# Data move general FAQ

Here are answers to general questions about moving core data to a new datacenter geo.
  
## What customers are eligible to request a move?
  
Existing Microsoft 365 commercial customers who selected a country eligible for the new datacenter geo will be able to request a move.  The program exists only for tenants with an eligible country code assigned to the Microsoft 365 tenant to migrate core customer data at rest for eligible workloads to the corresponding Microsoft 365 datacenter geo.  Please refer to the [How to request your data move](request-your-data-move.md) page to confirm country eligibility.   

## How do we define Core Customer Data?
 
Core customer data is a term that refers to a subset of customer data defined in the [Microsoft Online Services Terms](https://aka.ms/ost): 
- Exchange Online mailbox content (email body, calendar entries, and the content of email attachments)
- SharePoint Online site content and the files stored within that site
- Files uploaded to OneDrive for Business 

## At what point is my migration complete so that my tenant's core customer data is being stored at rest in my new geo?

Due to shared dependencies between Exchange Online and SharePoint Online/OneDrive for Business, any migration cannot be considered 
completed until both services are migrated.  Exchange Online and SharePoint Online/OneDrive for Business often migrate at separate times and independently from one another.  Tenant admins receive confirmation in Message Center when each service migration is completed and can view the data location card in the Admin Center at any time to confirm the core customer data at rest location for 
each service.

## How do you make sure my customer data is safe during the move and that I won't experience downtime?
  
Data moves are a back-end service operation with minimal impact to end-users. Features that can be impacted are listed in [During and after your data move](during-and-after-your-data-move.md). We adhere to the [Microsoft Online Services Service Level Agreement (SLA)](https://go.microsoft.com/fwlink/p/?LinkId=523897) for availability so there is nothing that customers need to prepare for or to monitor during the move. 
  
All Microsoft 365 services run the same versions in the datacenters, so you can be assured of consistent functionality. Your service is fully supported throughout the process.

## What is in scope for Teams migration?

In addition to Exchange Online, SharePoint Online, and OneDrive for Business; Microsoft will migrate Teams data to the local datacenter.  
- Teams chat messages, including private messages and channel messages. 
- Teams images used in chats. 

Teams files are stored in SharePoint Online and Teams chat files are stored in OneDrive for Business.  Voicemail, calendar, chat history, and contacts are stored in Exchange Online.  In many cases, Exchange Online, SharePoint Online and OneDrive for Business are already used by the customer in the local datacenter geo and are also part of the Microsoft 365 migration program for eligible customer countries.
  
## What is the impact of having different services located in different geos?

Some of the Microsoft 365 services may be located in different geos for some existing customers and for customers that are in the middle of the move process. Our services run independently of each other and there is no impact on the user experience if this is the case. However, for data residency purposes, a tenant migration cannot be considered as complete until both Exchange Online and SharePoint 
Online/OneDrive for Business are migrated to the same datacenter geo.
  
## Will new Microsoft 365 customers be automatically provisioned in the new datacenter geos?
  
Yes. Once a new datacenter geo is available, new Microsoft 365 customers who select a country eligible for the new geo as their country during sign-up will have their core customer data stored at rest in the new datacenter geo.
  
 ## Where is my core customer data located?

Tenant admins can view the data location card in the Admin Center at any time to confirm the core customer data at rest location for 
each service, specifically for their tenant.  We also publish the location of datacenter geos, datacenters, and location of Office 
365 customer data on the [Office 365 interactive datacenter maps ](https://office.com/datamaps) as a reference for the current default core customer data at rest locations for new tenants.  You can verify the location of your customer data at rest via the Data Location section under your Organization Profile in the Microsoft 365 Admin Center.  
 
## When will I be able to request a move?
  
Please refer to the [How to request your data move](request-your-data-move.md) page for supported timeframes for your datacenter geo.
  
## How can I request to be moved?
  
Eligible customers will see a page in their [Microsoft 365 admin center](https://admin.microsoft.com/). Please see [How to request your data move](request-your-data-move.md) for instructions on how to request a move. 
  
## Can I change my selection after requesting a move?
  
It is not possible for us to remove you from the process after you submit your request.
  
## What happens if I do not request a move before the deadline?
  
We may be able to accept requests on an exception basis to grant your tenant a committed deadline to complete the move. Please 
contact [Microsoft 365 Support](https://go.microsoft.com/fwlink/p/?LinkID=522459) to make the request.

## What if I want to move my data in order to get better network performance?
  
Physical proximity to a Microsoft 365 datacenter is not a guarantee for a better networking performance. There are many factors and components that impact the network performance between the end-user and the Microsoft 365 service. For more information about this and performance tuning see [Network planning and performance tuning for Microsoft 365](network-planning-and-performance.md).
  
 ## Do all the services move their data on the same day?
 
Each service moves independently and will likely move their data at different times.
  
 ## Can I choose when I want my data to be moved?
 
Customers are not able to select a specific date, they cannot delay their move, and we cannot share a specific date or timeframe for the moves.
  
 ## Can you share when my data will be be moved?
  
Data moves are a back-end operation with minimal impact to end-users. The complexity, precision and scale at which we need to perform data moves within a globally operated and automated environment prohibit us from sharing when a data move is expected to complete for your tenant or any other single tenant. Customers will receive one confirmation in Message Center per participating service when its data move has completed. 
  
 ## What happens if users access services while the data is being moved?

See [During and after your data move](during-and-after-your-data-move.md) for a complete list of features that may be limited during portions of the data move for each service. 
  
 ## How do I know the move is complete?
  
Watch the Microsoft 365 Message Center for confirmation that the move of each service's data is complete. When each service's data is moved, we'll post a completion notice so you'll get three completion notices: one each for Exchange Online, SharePoint Online, and Skype for Business Online.  You can also verify the location of your customer data at rest via the Data Location section under your Organization Profile in the Microsoft 365 Admin Center.  
  
## I am a Microsoft 365 customer in one of the new datacenter geos, but when I signed up, I selected a different country. How can I be moved to the new datacenter geo?

It is not possible to change the signup country associated with your tenant. Instead, you need to create a new Microsoft 365 tenant with a new subscription and manually move your users and data to the new tenant.
  
## What happens if we are in process of email data migration to Microsoft 365 during the Exchange Online move?

This is a very common scenario and is fully supported.  Cloud migration between datacenter geos does not interfere with any on-premisis to cloud mailbox migrations.
  
 ## Can I pilot some users?
  
You can create a separate trial tenant to test connectivity, but the trial tenant can't be combined in any way with your existing tenant.

## I don't want to wait for Microsoft to move my data. Can I just create a new tenant and move myself?
  
Yes, however the process will not be as seamless as if Microsoft were to perform the data move.
  
If you create a new tenant after the new datacenter geo is available, the new tenant will be hosted in the new geo. This new tenant is completely separate from your previous tenant and you would be responsible for moving all user mailboxes, site content, domain names, and any other data. Note that you can't move the tenant name from one tenant to another. We recommend that you wait for the move program provided by Microsoft as we'll take care of moving all settings, data, and subscriptions for your users.
  
## My customer data has already been moved to a new datacenter geo. Can I move back?
 
No, this is not possible. Customers who have been moved to new geo datacenters cannot be moved back. As a customer in any geo, you will experience the same quality of service, performance, and security controls as you did before.  [Microsoft 365 Multi Geo](https://aka.ms/multi-geo) is available to some customers as an add-on and lets a single tenant create multiple satellite geos and move user data to those geos with data residency commitments.
  
## Will Microsoft 365 tenants hosted in the new datacenters be available to users outside of the country?
  
Yes. Microsoft maintains a large global network with public Internet connections in more than 130 locations in 35 countries around the world with peering agreements with more than 2,700 Internet Service Providers (ISPs). Users will be able to access the datacenters from wherever they are on the Internet.

## My tenant has configured the [Multi Geo add-on](https://aka.ms/multi-geo). Can I still enroll in my tenant in the Microsoft 365 Move Program to change my default geo and move any user not in a satellite region to the new default geo?

Yes, your tenant is eligible to enroll. We will move all EXO mailboxes from your current default geo to your new local datacenter geo.  We will not move any EXO mailboxes configured in Multi Geo satellite regions to continue to respect satellite region data residency as you’ve intended.  

SharePoint Online and OneDrive for Business cannot migrate to the new datacenter geo as part of the Move Program, though you can configure OneDrive for Business shares to move to any region you wish via the Multi Geo program.

## Related topics

[Moving core data to new Microsoft 365 datacenter geos](moving-data-to-new-datacenter-geos.md)

[How to request your data move](request-your-data-move.md)

[Microsoft 365 Multi Geo](https://aka.ms/multi-geo)

[Microsoft 365 interactive datacenter map](https://office.com/datamaps)

[Microsoft 365 Support](https://go.microsoft.com/fwlink/p/?LinkID=522459)

[New datacenter geos for Microsoft Dynamics CRM Online](https://go.microsoft.com/fwlink/p/?Linkid=615924)
  
[Azure services by region](https://azure.microsoft.com/regions/)
