---
title: Prepare certificates and network profiles for Microsoft Managed Desktop 
description:  Certificate requirements and wi-fi connectivity
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

# Prepare certificates and network profiles for Microsoft Managed Desktop  
 
Certificate-based authentication is a common requirement for customers using Microsoft Managed Desktop. You might require certificates to access Wi-Fi or LAN, to connect to VPN solutions, or for accessing internal resources in your organization.   
 
Because Microsoft Managed Desktop devices are joined to Azure Active Directory (Azure AD) and are managed by Microsoft Intune, you must deploy such certificates by using a Simple Certificate Enrollment Protocol (SCEP) or Public Key Cryptography Standard (PKCS) certificate infrastructure that is integrated with Intune.    
 
## Certificate requirements 
 
Root certificates are required to deploy certificates through a SCEP or PKCS infrastructure. Other applications and services in your organization might require root certificates to be deployed to your Microsoft Managed Desktop devices.    
 
Before you deploy SCEP or PKCS certificates to Microsoft Managed Desktop, you should gather requirements for each service that requires a user or device certificate in your organization. To make this activity easier, you can use one of the following planning templates:  
 
- [PKCS certificate template](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-ready/downloads/PKCS-certificate-template.xlsx) 
- [SCEP certificate template](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-ready/downloads/SCEP-certificate-template.xlsx)

  
## Wi-Fi connectivity requirements

To allow a device to be automatically provided with the required Wi-Fi configuration for your enterprise network, you might need a Wi-Fi configuration profile. You can configure Microsoft Managed Desktop to deploy these profiles to your devices. If your network security requires devices to be part of the local domain, you might also need to evaluate your Wi-Fi network infrastructure to make sure it's compatible with Microsoft Managed Desktop devices (Microsoft Managed Desktop devices are Azure AD-joined only). 
 
Before you deploy a Wi-Fi configuration to Microsoft Managed Desktop devices, you will be required to gather your organization’s requirements for each Wi-Fi network. To make this activity easier, you can use this [WiFi profile template](https://github.com/MicrosoftDocs/microsoft-365-docs/raw/public/microsoft-365/managed-desktop/get-ready/downloads/WiFi-profile-template.xlsx).
 
 
## Wired connectivity requirements and 802.1x authentication 
 
If you use 802.1x authentication to secure access from devices to your local area network (LAN), you will need to push the required configuration details to your Microsoft Managed Desktop devices. Microsoft Managed Desktop devices running Windows 10, version 1809 or later support deploying an 802.1x configuration through the WiredNetwork configuration service provider (CSP). For more information, see [WiredNetwork CSP](/windows/client-management/mdm/wirednetwork-csp) documentation. 
 
Before you deploy a wired network configuration profile to Microsoft Managed Desktop devices, gather your organization’s requirements for your wired corporate network. To do so, follow these steps: 
 
 
1. Sign on to a device that has your existing 802.1x profile configured and is connected to the LAN network.  
2. Open a command prompt with administrative credentials. 
3. Find the LAN interface name by running **netsh interface show interface**. 
4. Export the LAN profile XML by running **netsh lan export profile folder=.  Interface=”interface_name”**. 
5. If you need to test your exported profile on Microsoft Managed Desktop device, run **netsh lan add profile filename="PATH_AND_FILENAME.xml" interface="INTERFACE_NAME"**. 
 
 
## Deploy certificate infrastructure  
 
If you already have an existing SCEP or PKCS infrastructure with Intune and this approach meets your requirements, you can also use it for Microsoft Managed Desktop. If no SCEP or PKCS infrastructure already exists, you'll have to prepare one.  
 
For more information, see [Configure a certificate profile for your devices in Microsoft Intune](/intune/certificates-configure). 
 
 
 
## Deploy a LAN profile 
 
Once your LAN profile has been exported, you can prepare the policy for Microsoft Managed Desktop by following these steps:   
 
1. Create a custom profile in Microsoft Intune for the LAN profile using the following settings (see [Use custom settings for Windows 10 devices in Intune](/intune/custom-settings-windows-10)). In **Custom OMA-URI Settings**, select **Add**, and then enter the following values: 
    - Name: *Modern Workplace-Windows 10 LAN Profile* 
    - Description: Enter a description that gives an overview of the setting, and any other important details. 
    - OMA-URI (case sensitive): Enter *./Device/Vendor/MSFT/WiredNetwork/LanXML*
    - Data type: select **String (XML file)**. 
    - Custom XML: Upload the exported XML file.
2. Submit a Support request to Microsoft Managed Desktop IT Operations using the Microsoft Managed Desktop Admin portal to review and deploy the configuration profile to “Modern Workplace Devices – Test”. Microsoft Managed Desktop IT Operations will let you know when the request is completed via the Support request in the Admin portal.
 
## Deploy certificates and Wi-Fi/VPN profile 
 
 
To deploy certificates and profiles, follow these steps:

1. Create a profile for each of the Root and Intermediate certificates (see [Create trusted certificate profiles](/intune/protect/certificates-configure#step-3-create-trusted-certificate-profiles). Each of these profiles must have a description that includes an expiration date in DD/MM/YYYY format. **Certificate profiles without an expiration date will not be deployed.**
2. Create a profile for each SCEP or PKCS certificates (see [Create a SCEP certificate profile](/intune/protect/certificates-scep-configure#create-a-scep-certificate-profile) or [Create a PKCS certificate profile](/intune/protect/certficates-pfx-configure#create-a-pkcs-certificate-profile)) Each of these profiles must have a description that includes an expiration date in DD/MM/YYYY format. **Certificate profiles without an expiration date will not be deployed.**
3. Create a profile for each corporate WiFi network (see [Wi-Fi settings for Windows 10 and later devices](/intune/wi-fi-settings-windows)).
4. Create a profile for each corporate VPN (see [Windows 10 and Windows Holographic device settings to add VPN connections using Intune](/intune/vpn-settings-windows-10)).
5. Submit a Support request titled “Certificate Deployment” or “Wi-Fi Profile Deployment” to Microsoft Managed Desktop IT Operations using the Microsoft Managed Desktop Admin portal to review and deploy the configuration profile to “Modern Workplace Devices – Test”. Microsoft Managed Desktop IT Operations will let you know when the request has been completed via the Support request in the Admin portal. 
 
## Steps to get ready

1. Review [Prerequisites for Microsoft Managed Desktop](prerequisites.md).
2. Use [Readiness assessment tools](readiness-assessment-tool.md).
3. [Prerequisites for guest accounts](guest-accounts.md)
4. [Network configuration for Microsoft Managed Desktop](network.md)
5. [Prepare certificates and network profiles for Microsoft Managed Desktop](certs-wifi-lan.md) (This article)
6. [Prepare on-premises resources access for Microsoft Managed Desktop](authentication.md)
7. [Apps in Microsoft Managed Desktop](apps.md)
8. [Prepare mapped drives for Microsoft Managed Desktop](mapped-drives.md)
9. [Prepare printing resources for Microsoft Managed Desktop](printing.md) 
