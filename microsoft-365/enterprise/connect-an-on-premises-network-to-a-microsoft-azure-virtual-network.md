---
title: "Connect an on-premises network to a Microsoft Azure virtual network"
ms.author: kvice
author: kelleyvice-msft
manager: scotv
ms.date: 12/18/2023
audience: ITPro
ms.topic: how-to
ms.service: microsoft-365-enterprise
ms.subservice: network
ms.localizationpriority: medium
search.appverid:
- MET150
ms.collection: 
- scotvorg
- Ent_O365
- Strat_O365_Enterprise
- must-keep
f1.keywords:
- CSH
ms.custom: 
- Ent_Solutions
- seo-marvel-apr2020
ms.assetid: 81190961-5454-4a5c-8b0e-6ae75b9fb035
description: "Summary: Learn how to configure a cross-premises Azure virtual network for Office server workloads with a site-to-site VPN connection."
---

# Connect an on-premises network to a Microsoft Azure virtual network

A cross-premises Azure virtual network is connected to your on-premises network, extending your network to include subnets and virtual machines hosted in Azure infrastructure services. This connection lets computers on your on-premises network to directly access virtual machines in Azure and vice versa.

For example, a directory synchronization server running on an Azure virtual machine needs to query your on-premises domain controllers for changes to accounts and synchronize those changes with your Microsoft 365 subscription.

To set up a cross-premises Azure virtual network using a site-to-site virtual private network (VPN) connection, see [VPN Gateway documentation](../../azure/vpn-gateway).
  
Here is your resulting configuration.
  
![The virtual network now hosts virtual machines that are accessible from the on-premises network.](../media/86ab63a6-bfae-4f75-8470-bd40dff123ac.png)
  
## Next step
  
[Deploy Microsoft 365 Directory Synchronization in Microsoft Azure](deploy-microsoft-365-directory-synchronization-dirsync-in-microsoft-azure.md)
