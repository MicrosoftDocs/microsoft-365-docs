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

description: Some things to consider when developing your cloud aware business continuity plan 
---

# Developing your continuity plan
This topic provides guidance on developing a business continuity plan that takes Microsoft 365 dependencies into account. Here we recommend methods for analyzing your business functions and identifying the ones which depend on Microsoft 365 services. You'll perform this analysis with the anticipation that there will be service failures and that you have to prepare for those possibilities.

Broadly speaking, business continuity planning involves these three steps:

1. **Assesment**, where you identify and map services and processes in your organization that support business functions. This includes the business impact analysis, where each business function is assigned criticality and supporting processes are identified as dependencies.
2. **Planning**, where you perform a dependency mapping between business funcations and identify which cascading relationships exist. Based on the outcome, you prioritise and form resiliency strategies, and standard operating procedures supporting your strategies.
    1. An example of a dependency mapping can be found in the Appendix
    1. Microsoft Service Map can be used to aid this process by automatically discovering application components on Windows and Linux systems. It discovers and maps all TCP dependencies, identifying surprise connections, remote third-party systems you depend on, and dependencies to traditional dark areas of your network, such as Active Directory.
1. **Capability Validation**, where you build validation scenarios for all processes and prioritize those deemed critical for more frequent validation. Regularly training employees on incident response and continuity measures is important, once the plan is established. Postmortems should be used to enhance your resiliency strategies by incorporating learnings from each validation or test.    
<!-- LEFT OFF HERE 9/3 -->
 
Your organization should already have a continuity strategy for your on-premises environment, at minimum. When your organization onboards to M365, we recommend performing these steps to adjust your strategy for processes now depending on Exchange Online, SharePoint Online, OneDrive for Business, and others. Remember to include in your analysis any on-premises infrastructure relevant to M365, such as ADFS.  
Often, not every application is used by an entire organization. It can be a beneficial to create a current view of which services are used enterprise wide versus within specific business units. Figure 1 shows an example outcome of this M365 application mapping.  
<!-- add graphic below -->

