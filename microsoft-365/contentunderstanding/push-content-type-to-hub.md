---
title: Push content types to a hub
description: "Learn how to Push content types to a hub"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW

---
# Push content types to a hub

To make the availability of important content types more consistently available to particular hubs and their associated sites, you can make use of the content type push feature. This feature allows to specify the hubs that you want particular content types to be pushed. Pushing content types makes them quickly available to any site that is newly associated with a hub, and also automatically adds the content type to all new lists & libraries in the hub and its associated sites. This allows organizations to centrally ensure the availability of critical content types without needing to depend on others to enable multiple content type management in lists & libraries as they are created and add the correct content types.
To specify which hubs to push a content type to:
1.	In the new content type gallery, available under the ‘Content services’ option in the modern SharePoint admin center, select the desired content type
2.	Select ‘Edit’ in the command bar
 
3.	In the ‘Push to hub sites’ section, select ‘Choose hub sites’
 
4.	Select the desired hub sites and select ‘Ok’
 
5.	Select ‘Save’
Once this is configured, the content type with these settings will be available in any newly associated site with the hub in a few minutes. Once available, any new list or library created will have the content type automatically added to it within a few minutes of creation. The rules of assignment are still maintained for these content types, i.e., a pushed content type will be added to a document library only if it derives directly or indirectly from the Document content type, and a content type will be added to a list only if it does not derive from the Document content type directly or indirectly.
Note: 
•	For this feature to work, the content type needs to have been published.
•	When pushing a content type to an existing hub & its existing associated sites for the first time, it can take up to an hour from when the hub or associated sites are visited, for the settings to update in the site. Any new associations to the hub will not require this wait and will have the settings reflected in a few minutes. 




## See also



  






