---
title: "Overview of document deletion policies"
f1.keywords:
- NOCSH
ms.author: cabailey
author: cabailey
manager: laurawi
ms.date: 
audience: Admin
ms.topic: overview
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- SPO160
ms.assetid: 55e8d858-f278-482b-a198-2e62d6a2e6e5
description: "Your organization may be required to retain documents for a period of time because of compliance, legal, or other business requirements. However, if your organization keeps documents longer than required, you create unnecessary legal risk. With a document deletion policy, you can proactively reduce risk by deleting documents in a site after a specific period of time—for example, you can delete documents in users' OneDrive for Business sites five years after the documents were created."
---

# Overview of document deletion policies

> [!IMPORTANT]
> Moving forward, we recommend that you use a retention policy or labels created in the Microsoft 365 compliance center, Microsoft 365 security center, or Office 365 Security &amp; Compliance Center instead of a document deletion policy. Document deletion policies will continue to work side by side with retention policies, but if you need to retain or delete content anywhere in Office 365, we recommend that you use a retention policy. For more information, see [Use a retention policy instead of these features](retention-policies.md#use-a-retention-policy-instead-of-these-features).
  
Your organization may be required to retain documents for a period of time because of compliance, legal, or other business requirements. However, if your organization keeps documents longer than required, you create unnecessary legal risk. With a document deletion policy, you can proactively reduce risk by deleting documents in a site after a specific period of time—for example, you can delete documents in users' OneDrive for Business sites five years after the documents were created.
  
Document deletion policies are powerful yet flexible—for example, you can:
  
- Allow site owners to choose from policies that you centrally create and manage. You can also allow site owners to opt out altogether if they decide a policy does not apply to their content.
    
- Enforce a single mandatory policy on all sites in a site collection, such as all OneDrive for Business sites, or even enforce a policy on all site collections created from a specific site collection template, such as the Team Site template.
    
- Provide a default policy with a default rule that will be automatically applied without any action required by site owners.
    
- Create a policy that includes several deletion rules that a site owner can choose from.
    
You create and manage document deletion policies by using the Document Deletion Policy Center. Alternatively, you can create the policy center manually by [creating the site collection](https://go.microsoft.com/fwlink/p/?LinkID=404342) and choosing **Compliance Policy Center** on the **Enterprise** tab. Each tenant can have only one Document Deletion Policy Center. 
  
![Home page of Document Deletion Policy Center](media/IP-Document-Deletion-Policy-Center-home-page.png)
  
## When to use document deletion policies

In addition to document deletion policies, Office 365 provides these retention policies for site content:
  
- [Records management](https://go.microsoft.com/fwlink/p/?LinkID=404250)
    
- [Information management policies for content types, lists, and libraries](https://go.microsoft.com/fwlink/p/?LinkID=404239)
    
- [Site policies](https://go.microsoft.com/fwlink/p/?LinkID=404242)
    
Each type of policy works best for a specific type of site or data. For example, your organization may have a highly structured site that uses content types, such as a financial site for contracts or a knowledge base for articles. In this case, you can use content type policies. Or your organization may need to retain legal documents, in which case you might use content types and a Records Center to implement a file plan.
  
Document deletion policies don't replace records management or information management policies, which work best with structured data and content types. Instead, you should use document deletion policies when you need to broadly manage the automatic deletion of unstructured data such as OneDrive for Business sites and team sites.
  
![Diagram showing retention options for site content](media/IP-Retention-policies-for-site-content.png)
  
If you apply a document deletion policy to a site that already uses content type policies or information management policies for a list or library, those policies are ignored while the document deletion policy is in effect. This means you should plan for a site to use only policies meant for structured or unstructured content, not both. For more information on how document deletion policies override other policies, see [Apply or remove a document deletion policy for a site](apply-or-remove-a-document-deletion-policy-for-a-site.md).
  
Unlike other policies, document deletion policies work only on document libraries, not lists.
  
## Deletion policies and rules

A document deletion policy contains one or more delete rules that specify:
  
- The time period until deletion.
    
- Whether to calculate the deletion date from the when the document was created or last modified.
    
- Whether to delete the document permanently or to the Recycle Bin.
    
If a policy contains more than one rule, site owners can select the rule that best applies to their content.
  
![New deletion rule page](media/IP-New-deletion-rule.png)
  
## Policies and assignments

After you create a document deletion policy, you can assign it to a site collection template — for example, you can assign a policy to the OneDrive for Business template so that it includes every user's OneDrive site. When you assign a policy to a site collection template, this applies to all site collections already created from that template, in addition to any site collections created from that template in the future.
  
![Choose a template page showing OneDrive option](media/IP-Choose-a-template.png)
  
You can also assign a policy to a specific site collection— doing so overrides any policies that have been assigned to that site collection template. For example, you may assign policies to the Team Site template, but then override them by applying a different set of policies to a specific site collection created from that template.
  
### One mandatory policy or several policies to choose from

When you assign a policy, you can choose to make it mandatory, so that only this policy can be assigned and that it will be applied to all sites in the site collection. Site owners cannot opt out of a mandatory policy, which means documents in the site will be subject to the delete policy no matter what.
  
Instead of making a single policy mandatory, you can also assign several policies to a site collection, which allows each site owner to choose which policy to apply to their site, or even to opt out altogether. For example, you can create one policy for general business documents and another policy for financial documents that have a different retention schedule. A site owner often knows best what content their site contains and therefore which document deletion policy to apply. Each site can have only one policy applied to it.
  
### One rule or several rules to choose from

In turn, each policy can contain many rules—for example, a deletion policy for general business documents may have two rules:
  
- Documents that don't need retention based on legal obligations or ongoing business need should not be retained for more than one year from creation.
    
- Documents necessary for active, ongoing business use that are needed for more than one year, should not be retained for more than three years from creation.
    
A site owner can determine that their site contains general business documents, select this deletion policy, and then select the appropriate rule from the policy. You can only select a rule from the policy that's currently applied to the site (not from any policy), and the rule applies to all document libraries in the site.
  
## The relationship of site collections, policies, and rules

The basic relationship is this:
  
A site collection or a site collection template can have one or more policies assigned to it, and each of those policies can have one or more rules. However, there can be only one policy that's active per site, and there can be only one deletion rule that's active at any time for the libraries within the site.
  
![Diagram showing relationship between policies](media/IP-Two-policies-four-rules.png)
  
## Document deletion policies are inherited

Like permissions, navigation, and many other site features, document deletion policies are inherited. A site owner can select a document deletion policy for their site, and all subsites inherit the policy from the parent. An owner of a subsite can break inheritance by selecting a different policy and rule combination, and that policy applies to all subsites until inheritance is broken again.
  
## Assigning document deletion policies for the first time

It's important to understand that the time period specified for a document deletion policy means the time since the document was created or modified, not the time since the policy was assigned. For example, you might create a document deletion policy that permanently deletes documents two years after they were created, and then assign that policy to a site collection template from which several site collections were created four or five years ago. In this case, it's likely that the existing site collections contain many documents that are already older than the two years specified by the deletion policy—this means a lot of content will be deleted soon after assigning the document deletion policy for the first time.
  
When you assign the policy for the first time, all documents in the site are evaluated and, if they meet the criteria, they will be deleted. This applies to all existing documents, not just new documents created since the policy was assigned. And remember that the time period is for the age of each document, not the time from when the policy was first assigned.
  
Therefore, before you assign a policy to a site for the first time, you should first consider the age of the existing content and how the policy may impact that existing content. You may also want to communicate the new policy to site owners before assigning it, to give them time to assess the possible impact.
  
## Time lag for propagating policies

After you assign policies to a site collection, site owners use the **Document Deletion Policies** link on the **Site Settings** page to view and apply policies available for the site. 
  
The **Document Deletion Policies** link won't appear unless policies have been assigned to the site collection. Also, the link doesn't appear immediately after policies have been assigned to the site—it can take up to 24 hours from when the policies are assigned to when the **Document Deletion Policies** link appears. 
  
## Permissions

Members of your compliance team who will use the Document Deletion Policy Center need permissions to both the policy center and site collections to which policies will be applied. We recommend that you:
  
1. Create a security group that contains all users of the Document Deletion Policy Center—most likely your compliance policy-management team. See [Manage Mail-Enabled Security Groups](https://go.microsoft.com/fwlink/p/?LinkID=404345) for more information. 
    
2. In the Document Deletion Policy Center, assign site collection owner permissions to the security group. See [Permissions for site collection administrators](https://go.microsoft.com/fwlink/p/?LinkID=404346) for more information. 
    
3. In each site collection to which you need to assign document deletion policies, assign site collection owner permissions to the security group.
    
## How document deletion policies work with hold policies

A hold policy ensures that all content is preserved for a specific period of time, while a document deletion policy ensures that all content is deleted after a specific period of time.
  
If you need to retain documents for a fixed period of time, you can use a hold policy in conjunction with a deletion policy. For example, you could hold documents for three years after they are modified, and then set up a deletion policy to delete those documents three years after they were last modified.
  
Note that a deletion policy cannot override a hold. If a site is on hold and a document deletion policy deletes a document, then the document will be preserved in the Preservation Hold library in the same way as if the document had been deleted manually.
  
## See also

[Apply or remove a document deletion policy for a site](apply-or-remove-a-document-deletion-policy-for-a-site.md)

[Create a document deletion policy](create-a-document-deletion-policy.md)


