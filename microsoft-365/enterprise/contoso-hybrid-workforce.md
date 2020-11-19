---
title: "Contoso's COVID-19 response and their hybrid workforce"
author: JoeDavies-MSFT
f1.keywords:
- NOCSH
ms.author: josephd
manager: laurawi
audience: ITPro
ms.topic: article
ms.service: o365-solutions
localization_priority: Normal
ms.collection: 
- M365-subscription-management
- Strat_O365_Enterprise
ms.custom:

description: Understand how the Contoso Corporation responded to the COVID-19 pandemic and engineered their software install and update infrastructure for a hybrid workforce.
---

# Contoso's COVID-19 response and their hybrid workforce

Contoso had always supported its remote workers, who accessed on-premises resources through a central VPN server in the Paris headquarters. Contoso has issued all remote workers a managed laptop. On-premises workers had a mixture of desktop computers and laptops.

## Contoso’s response to COVID-19

With the onset of the COVID-19 pandemic, suddenly all but essential workers were remote workers. Contoso responded by shifting its workforce to work from home and conduct its primary activities through remote access to on-premises resources and online for Microsoft 365 cloud services.

Contoso had remote access VPN servers in the Paris headquarters office to support the 25% of its already remote workforce, but had to quickly move to scale up to supporting 90% of its workforce. Contoso deployed remote access VPN servers in each satellite office so that remote workers would use a local satellite office for access to the intranet.

Contoso also updated the configuration of the VPN clients installed on laptops, tablets, and smart phones for split tunneling so that traffic for the Optimize set of Office 365 endpoints bypassed the VPN connection and was sent directly over the Internet.


## Contoso’s support for a dynamic hybrid workforce

After the initial remote access changes were made to support mostly remote workers during regional lockdowns, Contoso looked at a future hybrid workforce in which a worker could be:

- Always remote.
- Always on premesis.
- A combination of remote or on-premises.

Microsoft identity, security, and compliance features are designed for Zero Trust and to work regardless of the location of the user and their device. 

However, managing new installs and updates of software is dependent on the location of the device, which could come from an on-premises source or an Internet source. Contoso IT architects designed their installs and updates infrastructure based on the location of the device, rather than the user.

They designated two types of devices: dedicated on-premises and roaming.

### Dedicated on-premises (the exception)

Desktops, servers, and other computers that never leave the organization intranet.
No VPN client

Because they are on-premises, they continue to use Microsoft Endpoint Configuration Manager and other on-premises facilities with Microsoft Intune for installs and updates of Windows 10, Microsoft 365 Apps for enterprise, and Edge.

On-prem updates: Windows 10, M365 Apps, and Edge installs and updates from existing on-premises Configuration Manager distribution points


### Roaming (the default)

Laptops issued to many office workers and all remote workers and other organization-owned devices such as smart phones and tablets. At any given time, these devices can be connected to the intranet (while in the office) or directly connected to the Internet (while at home or at another remote location). 

These devices are configured to use Intune or other cloud-based services for installs and updates of Windows 10, Microsoft 365 Apps for enterprise, and Edge.

VPN client installed

### Installs and updates

Because these devices can be connected to the Internet at any given time, these devices use Intune or other cloud-based services for installs and updates of Windows 10, Microsoft 365 Apps for enterprise, and Edge. They do not use the existing on-premises Configuration Manager distribution points.

This means some of the installs and updates will be done over the Internet for roaming devices that are on the intranet, but Contoso IT architects decided that simplicity of configuration was more important than optimization of intranet bandwidth.

Install and update behavior is determined by group membership of computer accounts

OnPremDevices

RoamingDevices


### New onboarding process

For a new dedicated on-premises device, 
Desktop issued to new employee in their office
No VPN client
Employee logs in, receives the latest updates (Win 10, M365 Apps, Edge) from on-prem Configuration Manager distribution points

Roaming device
Ship a laptop computer to their home with computer and user account established, pre-configured as a roaming device for remote work (VPN client)

Employee logs in, receives the latest updates (Win 10, M365 Apps, Edge) from Intune and Internet locations




## See also

[Microsoft 365 for enterprise overview](microsoft-365-overview.md)

[Test lab guides](m365-enterprise-test-lab-guides.md)
