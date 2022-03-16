---
title: Localize the user experience
description:  How to localize devices for users
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: tiaraquan
f1.keywords:
- NOCSH
ms.author: tiaraquan
ms.localizationpriority: medium
ms.collection: M365-modern-desktop
manager: dougeby
ms.topic: article
audience: Admin
---

# Localize the user experience

Users of Microsoft Managed Desktop devices can select the language of their choice either during the setup process (the "out of box experience"), or afterwards.

## During setup (the "out of box experience")

During setup, users can select the language of their choice. This selection affects these attributes:

| Attribute | Description |
| ------ | ------ |
| Windows 10 language features | <ul><li>Display language</li><li>Keyboard language</li><li>Language-related Features on Demand</li><ul> |
| Microsoft 365 Apps for Enterprise language features | <ul><li>Display language</li><li>Proofing and authoring tools</li></ul> |

> [!NOTE]
> Users can only get language-related Features On Demand by selecting the language during the setup process.

## After completing setup

Users can select the language of their choice for Windows 10, and Microsoft 365 Apps for Enterprise anytime after the setup process is complete. Specifically:

| Feature | Description |
| ------ | ------ |
| Windows 10 language features | <ul><li>Display language</li><li>Keyboard language</li><ul> |
| Microsoft 365 Apps for Enterprise language features | <ul><li>Display language</li><li>Proofing and authoring tools</li></ul> |

## Install more languages

> [!NOTE]
> As of March 16, 2022, we're phasing out the Modern Workplace-Office-Language_Packs group that allows yours to add languages to Microsoft Office. The transition to the new method (see below) will be completed in April 2022. If you have any issues during this transition period, please reach out to [support](../working-with-managed-desktop/admin-support.md).

By default, Microsoft Office requires users to be admin. Microsoft Managed Desktop deploys an Office policy to enable standard users to install language accessory packs directly from their Office apps. For more information, see [Allow users who aren't admins to install additional languages](/deployoffice/overview-deploying-languages-microsoft-365-apps#allow-users-who-arent-admins-to-install-additional-languages).

## Supported languages

For new devices, your manufacturer must provide device images that include the languages you require. If your manufacturer's image includes languages that aren't included in the supported languages list, the device is still supported by the service.

If you're reusing existing devices, you might need to work with your Microsoft account representative to obtain appropriate images. For more information, see [Device images](../service-description/device-images.md).

The [universal image](../service-description/device-images.md#universal-image) provided by Microsoft Managed Desktop includes these languages and for Windows 10:

- Arabic
- Bulgarian
- Chinese Simplified
- Chinese Traditional
- Croatian
- Czech
- Danish  
- Dutch  
- English (US, GB, AU, CA, IN)
- Estonian
- Finnish
- French (France, Canada)
- German
- Greek
- Hebrew
- Hungarian
- Indonesian
- Italian
- Japanese
- Korean
- Latvian
- Lithuanian
- Norwegian (Bokmål)
- Polish
- Portuguese (Brazil)
- Portuguese (Portugal)
- Romanian
- Russian
- Serbian (Latin alphabet)
- Slovak
- Slovenian
- Spanish (Spain, Mexico)
- Swedish
- Thai
- Turkish
- Ukrainian
- Vietnamese

> [!NOTE]
> Microsoft 365 Apps for Enterprise might support a slightly different list.

If your users need a language other than the ones listed here, file a [support request](../working-with-managed-desktop/admin-support.md) by using the [Admin portal](access-admin-portal.md).

## Languages for support and operations

### Admin support and operations

Microsoft Managed Desktop provides admin support only in English. This support includes the Admin portal and all communications with Microsoft Managed Desktop Operations. You should assume that all admin-related interactions and interfaces will be in English, unless specified otherwise.
