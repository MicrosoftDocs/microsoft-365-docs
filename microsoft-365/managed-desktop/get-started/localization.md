---
title: Localize the user experience
description:  How to localize devices for users
keywords: Microsoft Managed Desktop, Microsoft 365, service, documentation
ms.service: m365-md
author: jaimeo
f1.keywords:
- NOCSH
ms.author: jaimeo
ms.localizationpriority: normal
ms.collection: M365-modern-desktop
manager: laurawi
ms.topic: article
audience: Admin
---

# Localize the user experience

Users of Microsoft Managed Desktop devices can select the language of their choice either during the setup process (the "out of box experience") or afterwards.

## During setup (the "out of box experience")

During the process of completing setup, users can select the language of their choice. This selection affects these attributes:

- Windows 10 language features:
    - Display language
    - Keyboard language
    - Language-related Features on Demand

- Microsoft 365 Apps for Enterprise language features:
    - Display language
    - Proofing and authoring tools

> [!NOTE]
> Users can only get language-related Features On Demand by selecting the language during the setup process.

## After completing setup

Users can select the language of their choice for Windows 10 and Microsoft 365 Apps for Enterprise anytime after the setup process is complete. Specifically:

- Windows 10 language features:
    - Display language
    - Keyboard language

- Microsoft 365 Apps for Enterprise language features:
    - Display language
    - Proofing and authoring tools

To make the [Supported languages](#supported-languages) for Microsoft 365 Apps for Enterprise available for your users to install, add the users to the **Modern Workplace-Office-Language_Packs** group. The languages will be available in the Intune Company Portal.


## Supported languages

For new devices, your manufacturer must provide device images that include the languages you require. If your manufacturer's image includes languages other than those provided in the supported languages list it is still supported by the service.

If you are reusing existing devices, you might need to work with your Microsoft account representative to obtain appropriate images. For more information, see [Device images](../service-description/device-images.md).

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

Microsoft 365 Apps for Enterprise might support a slightly different list.

If your users need a language other than the ones listed here, file a [support request](../working-with-managed-desktop/admin-support.md) by using the [Admin portal](access-admin-portal.md).

## Languages for support and operations

### User support
Microsoft Managed Desktop provides support only in English. If users choose another language in the Get Help app, they will get support from the general Microsoft support channels, rather than support directly from Microsoft Managed Desktop. For more information, see [Getting help for users](../working-with-managed-desktop/end-user-support.md).

If your users need support in other languages, you'll have to provide that through non-Microsoft support sources or from your own organization.

### Admin support and operations
Microsoft Managed Desktop provides admin support only in English. This includes the Admin portal and all communications with Microsoft Managed Desktop Operations. You should assume that all admin-related interactions and interfaces will be in English, unless specified otherwise.


