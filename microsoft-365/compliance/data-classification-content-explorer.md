---
title: "Using data classification content explorer (preview)"
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: Priority
ms.collection: 
- M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Content explorer allows you to natively view labeled items."
---

# Using data classification content explorer (preview)

The data classification content explorer allows you to natively view the items that were summarized on the overview page.

## Content explorer

Content explorer is a current snapshot of the items that have a sensitivity label, a retention label or have been classified as a sensitive information type in your organization.

![content explorer collapsed screenshot](media/data-classification-content-explorer-1.png)

### Permissions

There are two roles that grant access to Content explorer:

- **Content Explorer List viewer**: Membership in this role allows you to see each item and its location.

- **Content Explorer Content viewer**: Membership in this role allows you to view the contents of each item in the list.

The account you use to access Content explorer must be in one or both of the roles. These are independent roles and are not cumulative. For example, if you want to grant an account the ability to view the items and their locations only, grant Content Explorer List viewer rights. If you want that same account to also be able to view the contents of the items in the list, grant Content Explorer Content viewer rights as well.

### How to use content explorer

1. Open **Microsoft 365 compliance center**  > **Data classification** > **Content explorer**.
2. If you know the name of the label, or the sensitive information type, you can type that into the search box.
3. Alternately, you can browse for the item by expanding the label type and selecting the label from the list, an item from the retention label portion of the list is show below.
4. Select a location under **All locations** and drill down the folder structure to the item.
5. Double click to open the item natively in content explorer.

## See also

- [Sensitivity labels](sensitivity-labels.md)
- [Retention labels](labels.md)
- [What the sensitive information types look for](what-the-sensitive-information-types-look-for.md)
- [Overview of retention policies](retention-policies.md)
