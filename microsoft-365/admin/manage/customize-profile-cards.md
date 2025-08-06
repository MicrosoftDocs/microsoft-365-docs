---
# Required metadata
# For more information, see https://learn.microsoft.com/en-us/help/platform/learn-editor-add-metadata
# For valid values of ms.service, ms.prod, and ms.topic, see https://learn.microsoft.com/en-us/help/platform/metadata-taxonomies

title: customize-profile-cards
description: Informative article on how admins can enable additional properties in profile cards and impact of this
author:      SuryaLashmiS # GitHub alias
ms.author:   srinivasansu # Microsoft alias
ms.service: microsoft-365-admin
ms.topic: article
ms.date:     07/24/2025
manager: scotv
---

# Enriching and customizing your organization's profile cards 

[Profile cards](https://support.microsoft.com/en-us/office/profile-cards-in-microsoft-365-e80f931f-5fc4-4a59-ba6e-c1e35a85b501) in Microsoft 365 show key information about an organization’s employees. As an admin, you can use the Microsoft 365 admin center to add certain properties to your organization's profile cards. These settings are configured under [People settings](/microsoft-365/admin/manage/people-settings-in-microsoft-365-admin-center) section in your admin dashboard.

## Before you begin

You must be a Global Administrator or a People Administrator to do the tasks in this article. For more information, see [About admin roles](../add-users/about-admin-roles.md).

## Properties in profile cards

Properties in profile cards map to attributes in the [Microsoft 365 profile resource](/graph/api/resources/profile?view=graph-rest-beta) and can be populated from various sources, including:  

- [Microsoft Entra ID](/entra/fundamentals/how-to-manage-user-profile-info)

- [Organizational data in Microsoft 365](/entra/fundamentals/how-to-manage-user-profile-info)

- [Microsoft 365 Copilot connectors for people data](/graph/peopleconnectors)

- [User-provided details](https://support.microsoft.com/en-gb/office/edit-your-profile-in-microsoft-365-e7056090-56d4-4b81-bb3f-b6af31089ebe)

Read [Build Microsoft 365 Copilot connectors for people data](/microsoft-365-copilot/extensibility/build-connectors-with-people-data) to learn how to ingest people data from external source systems into Microsoft Graph.

### Default properties

Some properties are shown by default on profile cards when data is available. Admins can't hide these properties:

- Name

- Email

- Chat

- Work phone

- Mobile

- Work location

- Company

- Job title

- Department

- Business address

### Optional properties

Admins can choose to show or hide certain properties on the profile cards. They're hidden by default, but admins can configure their visibility by navigating to **Settings > Org settings > People settings > Profile card > Contact info** in the Microsoft 365 admin center.

When enabled, these properties appear in the **Contact** tab of the profile cards in [Microsoft 365 Copilot app](https://www.microsoft365.com/?omkt=en-US). They're visible to users viewing their own profile and when viewing the profiles of others.

- Division

- Role

- Employee number

- Employee type

- Cost center

- User principal name

- Alias

- Fax

- Street address

- State 

- Postal code

After an admin changes the visibility of these properties, it can take up to 24 hours for changes to be reflected on profile cards.

> [!NOTE]
> If enabled, street address, state, and postal code are shown under the Business address attribute on the cards.

> [!NOTE]
> Hiding a property removes it from profile cards but doesn't delete the underlying data from Microsoft 365 profiles or stop the property from appearing in other Microsoft 365 experiences. To permanently delete the data, admins need to remove it from the source system.

## How to find the source of a property? 

Users can learn the source of each property on their profile cards by [exporting their profile card data](https://support.microsoft.com/en-us/office/export-data-from-your-profile-card-d809f83f-c077-4a95-9b6c-4f093305163d#:~:text=Hover%20over%20your%20name%20or%20profile%20photo%20to,as%20a%20JSON%20file%20in%20your%20Downloads%20folder.). The export shows source IDs for each property, indicating the system the data comes from. [Learn what each source ID represents](/graph/api/resources/profilesourceannotation?view=graph-rest-beta)

If a source ID doesn't have a known mapping, the data comes from a third-party source. In this case, users should contact their tenant admin to identify the system. Admins can then match the source ID with a connector ID in Microsoft 365 admin center to find the data source. 

## How can users edit their profile info? 

Users may want to edit certain organization-managed information shown on their profile card—for example if the property is incorrect or out of date. As above, users should find the source ID of the property and share it with their admin. Admins can then update the info in the source system.  

## Related content

[Manage people data and related experiences from the Microsoft admin center](/microsoft-365/admin/manage/people-settings-in-microsoft-365-admin-center) (article)

[Build Microsoft 365 Copilot connectors for people data](/microsoft-365-copilot/extensibility/build-connectors-with-people-data) (article)

[Microsoft 365 Copilot connectors for people data](/graph/peopleconnectors) (article)
