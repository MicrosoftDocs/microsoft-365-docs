---
title: Push content types to a hub
description: "Learn how to Push content types to a hub"
ms.author: mikeplum
author: MikePlumleyMSFT
manager: serdars
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
ms.collection: enabler-strategic
localization_priority: Priority

---
# Push content types to a hub

</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4GyeV]  

</br>


To make important content types more consistently available to SharePoint libraries and lists, you can push them to the hubs that you choose. This automatically adds them to any new lists and libraries created on the sites associated with the hub, and to any new sites added to the hub.

For this feature to work, The content types being pushed must already be published.

To push content types to hubs

1. In the SharePoint admin center, expand **Content services**, and then click **Content type gallery**.

2. Click the content type that you want to push to hubs.

3. Click **Edit** in the command bar.
 
4. Click **Choose hub sites**.
 
5. Select the desired hub sites and then click **OK**.
 
6. Click **Save**.

When pushing a content type to an existing hub & its existing associated sites for the first time, it can take up to an hour from when the hub or associated sites are visited, for the settings to update in the site. Any new associations to the hub will not require this wait and will have the settings reflected in a few minutes. 

Once this is configured, the content type with these settings will be available in any newly associated site with the hub in a few minutes. Once available, any new list or library created will have the content type automatically added to it within a few minutes of creation. A pushed content type will be added to a document library only if it derives directly or indirectly from the Document content type, and a content type will be added to a list only if it does not derive from the Document content type directly or indirectly.

## See also



  






