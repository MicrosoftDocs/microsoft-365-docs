---
title: "Plan for data loss prevention"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: ITPro
ms.topic: conceptual
ms.service: O365-seccomp
localization_priority: Normal
ms.collection: 
- M365-security-compliance
search.appverid: 
- MET150
description: ""
---

# Plan for data loss prevention (DLP)

multiple entry points:
from a platform, like teams
without knowing data at all and straight to define policies
with knowing what their most sensitive data is and define policies
without knowing data at all and start with discovery and categorization

take waterfall approach

take very targeted, quick start approach.

can only assume greenfield

1. prioritize data
1. categorize data
1. define access rights (should have been done already)
1. establish policies
1. develop controls
1. train users
1. monitor data movement
1. adjust/refine

Overview of planning process – topic EVERYTHING UNDER THIS IS A GAP
Identify stakeholders who can describe the categories of sensitive items and business processes they are used in – these needs tend to be 85% regulatory & compliance protection, 15% intellectual property protection from unintentional sharing
a.	Regulatory and compliance officers
b.	Chief risk officer
c.	Legal officers
d.	Security and compliance officers
e.	Business owners for the data items
f.	IT

They identify the categories of sensitive items to protect and the business
This group then describes the categories of items (email, docs, chat) and the business process (data subject to regulation and proprietary data) that they are used in. The business process is important as it informs the ‘data at rest’, ‘data in transit’, ‘data in use’ aspect of DLP planning and who should be sharing the items and who should not.
Start looking/discovery for the locations (DLP workloads) of these types of items.  (mapping DLP locations and data at rest, data in transit, data in use)
IT can start coding test policies, start small and always in test mode. Note that DLP policies can feed into insider risk.
Business process owners help with tuning false positive/false negative results and fitting DLP into their business processes.
Plan for training of end users
Approaches to deployment    REALLY BIG GAP






move to plan for  
## Roll out DLP policies gradually with test mode

When you create your DLP policies, you should consider rolling them out gradually to assess their impact and test their effectiveness before fully enforcing them. For example, you don't want a new DLP policy to unintentionally block access to thousands of documents that people require access to in order to get their work done.
  
If you're creating DLP policies with a large potential impact, we recommend following this sequence:
  
1. **Start in test mode without Policy Tips** and then use the DLP reports and any incident reports to assess the impact. You can use DLP reports to view the number, location, type, and severity of policy matches. Based on the results, you can fine tune the rules as needed. In test mode, DLP policies will not impact the productivity of people working in your organization. 
    
2. **Move to Test mode with notifications and Policy Tips** so that you can begin to teach users about your compliance policies and prepare them for the rules that are going to be applied. At this stage, you can also ask users to report false positives so that you can further refine the rules. 
    
3. **Start full enforcement on the policies** so that the actions in the rules are applied and the content's protected. Continue to monitor the DLP reports and any incident reports or notifications to make sure that the results are what you intend. 

    ![Options for using test mode and turning on policy](../media/49fafaac-c6cb-41de-99c4-c43c3e380c3a.png)

    You can turn off a DLP policy at any time, which affects all rules in the policy. However, each rule can also be turned off individually by toggling its status in the rule editor.

    ![Options for turning off a rule in a policy](../media/f7b258ff-1b8b-4127-b580-83c6492f2bef.png)

    You can also change the priority of multiple rules in a policy. To do that, open a policy for editing. In a row for a rule, choose the ellipses (**...**), and then choose an option, such as **Move down** or **Bring to last**.

    ![Set rule priority](../media/dlp-set-rule-priority.png)



move to plan for
### Policy evaluation in OneDrive for Business and SharePoint Online sites

Across all of your SharePoint Online sites and OneDrive for Business sites, documents are constantly changing — they're continually being created, edited, shared, and so on. This means documents can conflict or become compliant with a DLP policy at any time. For example, a person can upload a document that contains no sensitive information to their team site, but later, a different person can edit the same document and add sensitive information to it.
  
For this reason, DLP policies check documents for policy matches frequently in the background. You can think of this as asynchronous policy evaluation.
 
***INLINE COMMENT what is the frequency? looks like it is tied to the search crawl schedule***
  
#### How it works
 
As people add or change documents in their sites, the search engine scans the content, so that you can search for it later. While this is happening, the content's also scanned for sensitive information and to check if it's shared. Any sensitive information that's found is stored securely in the search index, so that only the compliance team can access it, but not typical users. Each DLP policy that you've turned on runs in the background (asynchronously), checking search frequently for any content that matches a policy, and applying actions to protect it from inadvertent leaks.
  
![Diagram showing how DLP policy evaluates content asynchronously](../media/bdf73099-039a-4909-ae89-ac12c41992ba.png)
  
***INLINE COMMENT conflict with a DLP policy is bad wording***

Finally, documents can conflict with a DLP policy, but they can also become compliant with a DLP policy. For example, if a person adds credit card numbers to a document, it might cause a DLP policy to block access to the document automatically. But if the person later removes the sensitive information, the action (in this case, blocking) is automatically undone the next time the document is evaluated against the policy.
  
DLP evaluates any content that can be indexed. For more information on what file types are crawled by default, see [Default crawled file name extensions and parsed file types in SharePoint Server](https://docs.microsoft.com/SharePoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types).

> [!NOTE]
> External sharing of new files in SharePoint can be blocked by default until at least one DLP policy scans the new item. See, [Mark new files as sensitive by default](https://docs.microsoft.com/sharepoint/sensitive-by-default) for detailed information. 

