---
title: "Tenant Isolation in Microsoft 365 Search"
ms.author: robmazz
author: robmazz
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: O365-seccomp
localization_priority: Normal
search.appverid:
- MET150
ms.collection:
- Strat_O365_IP
- M365-security-compliance
f1.keywords:
- NOCSH
description: In this article, find an explanation of how tenant isolation works to separate tenant data in Microsoft 365 Search.
ms.custom: seo-marvel-apr2020
---

# Tenant Isolation in Microsoft 365 Search

SharePoint Online search uses a tenant separation model that balances the efficiency of shared data structures with protection against information leaking between tenants. With this model, we prevent the Search features from:

- Returning query results that contain documents from other tenants
- Exposing sufficient information in query results that a skilled user could infer information about other tenants
- Showing schema or settings from another tenant
- Mixing analytics processing information between tenants or store results in the wrong tenant
- Using dictionary entries from another tenant

For each type of tenant data, we use one or more layers of protection in the code to prevent accidental leaking of information. The most critical data has the most layers of protection to make sure that a single defect doesn't result in actual or perceived information leakage.

## Tenant Separation for the Search Index

The search index is stored on disk in the servers hosting the index components and the tenants share the index files. A tenant's indexed documents are visible only for queries for that tenant. Three independent mechanisms prevent information leakage:

- Tenant ID filtering
- Tenant ID term prefixing
- ACL checks

All three mechanisms would have to fail for Search to return documents to the wrong tenant.

## Tenant ID Filtering and Tenant ID Term Prefixing

Search prefixes every term that is indexed in the full-text index with the tenant ID. For example, when the term "*foo*" is indexed for a tenant with an ID of "*123*", the entry in the full-text index is "*123foo.*"

Every query is converted to include the tenant ID using a process called tenant ID filtering. For example, the query "*foo*" is converted to "<*guid*>.*foo* AND *tenantID*:<*guid*>", where <*guid*> represents the tenant performing the query. This query conversion occurs within each index node and neither query nor content processing can influence it. Because the tenant ID is added to every query, the frequency of a term in other tenants can't be inferred by looking at best match ranking in one tenant.

Tenant ID term prefixing occurs only in the full-text index. Fielded searches, such as "*title:foo*", go to a synthetic search index where terms aren't prefixed by tenant ID. Instead, fielded searches are prefixed with the field name. For example, the query "*title:foo*" is converted to "*fields.title:foo AND fields.tenantID*:<*guid*>." Because the frequency of a term doesn't influence ranking of hits in the synthetic search index, there's no need for tenant separation by term prefixing. For a fielded search like "*title:foo*", tenant content separation depends on tenant ID filtering by query conversion.

## Document Access Control List Checks

Search controls access to documents through ACLs that are saved in the search index. Every item is indexed with a set of terms in a special ACL field. The ACL field contains one term per group or user that can view the document. Every query is augmented with a list of access control entry (ACE) terms, one for each group to which the authenticated user belongs.

For example, a query like "<*guid*>.*foo AND tenantID*:<*guid*>" becomes:
"<*guid*>.*foo AND tenantID*:<*guid*> *AND* (*docACL:*<*ace1*> *OR docACL*:<*ace2*> *OR docACL*:<*ace3*> *...*)"

Because user and group identifiers and hence ACEs are unique, this provides an extra level of security between tenants for documents that are only visible to some users. The same is the case for the special "Everyone except external users" ACE that grants access to regular users in the tenant. But since ACEs for "Everyone" are the same for all tenants, tenant separation for public documents depends on tenant ID filtering. Deny ACEs are also supported. The query augmentation adds a clause that removes a document from the result when there is a match with a deny ACE.

In Exchange Online search, the index is partitioned on mailbox ID for individual user's mailboxes instead of tenant ID (subscription ID) as in SharePoint Online. The partitioning mechanism is the same as SharePoint Online, but there is no ACL filtering.
