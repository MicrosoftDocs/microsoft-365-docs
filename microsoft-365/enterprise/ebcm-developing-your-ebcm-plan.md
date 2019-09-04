---
title: "Considerations for your Enterprise Business Continuity Management Plan"
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

description: Things to consider when developing your cloud aware business continuity plan. 
---

# Developing your continuity plan

This topic provides guidance on developing a business continuity plan that takes Microsoft 365 dependencies into account. Here we recommend methods for analyzing your business functions and identifying the ones which depend on Microsoft 365 services. You'll perform this analysis with the anticipation that there will be service failures and that you have to prepare for those possibilities.

Broadly speaking, business continuity planning involves three phases, assessment, planning, and capability validation.

## Assesment
First you must identify the business functions in your org and the services and processes that support them. This includes completing a business impact analysis, where each business function is ranked according to how critical it is and you identify the processes and services that each one depends on. Here's a sample table you can refer to help you get started with your own assessment.

**Sample Business Impact Assessment (BIA)**

This is a BIA document for `name of the service, system, process, or function`
|BIA fields|Description|
|---------|---------|
|BIA type|`is it a business process or technology, service or system?`|
|BIA name|`name of the service/system/function/process`|
|service description|`give a full description of the service, process, or function`|
|enterprise function|`some example: customer services; legal; marketing; risk management, security, sales, information technology, production, manufacturing`|
|fiscal year|`the current fiscal year, re-evaluate these on a regular basis`|
|criticality|`develop your own classifications but here are some examples: mission critical, important, deferrable`|
|business unit|`name of the business unit that owns this business function`|
|process (service, feature)|`the name of the process, service, or feature`|
|business group senior leader|`the name and contact information of the senior leader of the business group that owns this business process`|
|Does the technology have an established **internal** SLA or OLA?|`please explain in a much detail as possible`|
|Does the technology have an established **external** SLA or OLA?|`please explain in as much detail as possible`|
|Does the technology have a known executive mandate driving a specific process SLA? If yes, explain in detail.|`details here`|
|Will the loss or compromise of the data associated with this services trigger a major event? If yes, explain in detail.|`details here`|
|Does the service have a workaround or alternative in place for some or all of its key functions and features? If yes, explain in detail.|`details here`|
|Does the service process, store, or transmit customer data (PII)? If yes, explain in detail.|`details here`|
|BIA status|`develop your own status classification, here are some examples: planned, started, in-progress, complete, on-hold, expired`|
|completion date|`the date this BIA was completed`|
|BIA facilitator|`name of the person or group who is responsible for developing and maintaining this BIA`|
|BIA approval|`name of the person or group who is the executive sponsor of this BIA and who has responsibility for approving it.`|
|contributors|`optional list of the people who helped develop this BIA and their contact information`|
|BIA approval location|`indicate where the executive approval is located, or attach proof to this document`|

## Planning

Next, you look across business processes to see where any cascading dependency relationships exist. Based on the outcome, you prioritize and form resiliency strategies, and standard operating procedures supporting your strategies.

You can use Microsoft Service Map to help you in with this mapping. Microsoft Service Map automatically discovers application components on Windows and Linux systems and maps all TCP dependencies, identifies connections,  and remote third-party systems that the app depends on. It also maps dependencies to areas of your network that are traditionally dark, such as Active Directory.

Here's a sample dependency analysis (DA) you can start from. In your dependency analysis (DA), you will identify and examines the process dependencies. Make sure you include people, suppliers, customers, partnerships and facilities. The data from this analysis will be used to identify gaps between the recovery requirements of a process and the recovery capabilities of supporting dependencies.


|field|description|
|---------|---------|
|process type|         |
|facilitator|         |
|completed by|         |
|completed date|         |
|contributors|         |
  
## Capability Validation

Once you have inventoried your business processes and mapped out relationships to other process and technologies, you need to build validation scenarios for all the processes. Basically, figure out how you are going to validate your business process continuity plans. You'll probably find that some are more important that others and you'll want to prioritize those.
Don't forget that regularly training employees on incident response and continuity measures is important, once the plan is established. Post incident reviews should be used to enhance your resiliency strategies by incorporating learnings from each validation or test.
