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

Broadly speaking, business continuity planning involves three phases, assessment, planning, and capability validation

## Assesment
where you identify the business functions in your org and the services and processes that support them. This includes a business impact analysis, where each business function is ranked according to how critical it is and the supporting processes and services are identified as dependencies. Here's a sample table you can refer to help you get started with your own assessment. 

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
 where you perform a dependency mapping between business functions and identify which cascading relationships exist. Based on the outcome, you prioritize and form resiliency strategies, and standard operating procedures supporting your strategies.
    1. Microsoft Service Map can be used to aid this process by automatically discovering application components on Windows and Linux systems. It discovers and maps all TCP dependencies, identifying surprise connections, remote third-party systems you depend on, and dependencies to traditional dark areas of your network, such as Active Directory.
## Capability Validation
where you build validation scenarios for all processes and prioritize those deemed critical for more frequent validation. Regularly training employees on incident response and continuity measures is important, once the plan is established. Postmortems should be used to enhance your resiliency strategies by incorporating learnings from each validation or test.
<!-- LEFT OFF HERE 9/3 -->
 
Your organization should already have a continuity strategy for your on-premises environment, at minimum. When your organization onboards to M365, we recommend performing these steps to adjust your strategy for processes now depending on Exchange Online, SharePoint Online, OneDrive for Business, and others. Remember to include in your analysis any on-premises infrastructure relevant to M365, such as ADFS.  
Often, not every application is used by an entire organization. It can be a beneficial to create a current view of which services are used enterprise wide versus within specific business units. Figure 1 shows an example outcome of this M365 application mapping.  
<!-- add graphic below -->

