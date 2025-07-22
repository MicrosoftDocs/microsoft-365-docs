---
title: "Understand MCA-E Product Activation Keys"
f1.keywords: NOCSH
ms.author: deevsharma, avantikajha
author: 
manager: nikotha
ms.reviewer: 
audience: Admin
ms.topic: know-more 
ms.service: microsoft-365-business
ms.subservice: m365-commerce-mcae
description: "Understand the characteristics of different product activation keys provided with your MCA-E purchases"
ms.date: 07/22/2025
---

# Understand MCA-E Product Activation Keys

## Table of Contents

- [Prerequisites](#prerequisites)
- [Summary](#summary)
- [Context](#context)
- [Multiple Activation Key (MAK)](#multiple-activation-key-mak)
  - [MAK Key Considerations for Remote Desktop Services Client Access Licenses (RDS CALs)](#mak-key-considerations-for-remote-desktop-services-client-access-licenses-rds-cals)
  - [Alternative Approach](#alternative-approach)
- [Key Management Service (KMS) Key](#key-management-service-kms-key)
- [Setup Key](#setup-key)
- [Contacting Microsoft Support for MCA-E Key Issues](#contacting-microsoft-support-for-mca-e-key-issues)
- [Additional Resources](#additional-resources)

## Prerequisites

- **Portal**: Microsoft Admin Portal
- **Entra Role**: Billing Admin or Higher
- **Billing Account Role**: Owner or Contributor

## Summary

| **Key Type** | **Purpose** | **Activation Method** | **Best For** | **Persistence** | **Special Notes** |
|--------------|-------------|-----------------------|--------------|-----------------|-------------------|
| **MAK (Multiple Activation Key)** | Permanently activates a specific number of devices. | Online activation via Microsoft servers. | Small to medium organizations with stable hardware setups. | Permanent unless significant hardware changes occur. | Default activation count exceeds purchased licenses to allow for reinstallations. |
| **KMS (Key Management Service)** | Enables local activation service within organization's network. | Devices periodically connect to internal KMS host server. | Large organizations with frequent deployments or reimaging. | Must reconnect to KMS host every 180 days. | Ideal for ongoing license management without individual internet activation. |
| **Setup Key** | Allows installation of Microsoft software. | Used during setup; does not activate product. | Deployment or evaluation scenarios. | Temporary; requires MAK or KMS for activation. | Generic keys used only to initiate installation. |

## Context

Microsoft offers a diverse selection of products, each requiring specific types of product activation keys to ensure proper licensing and functionality. With every purchase, customers receive the appropriate activation key or keys, tailored to meet the needs of the product acquired. Depending on the nature and volume of the items bought, customers may be provided with a single key type or a combination of multiple key types.

This document provides detailed information regarding the key types supported for purchases made via Microsoft Customer Agreement for Enterprise (MCA-E), focusing specifically on three main types of activation keys: Multiple Activation Key (MAK), Key Management Service (KMS) key, and Setup key. It explains not only the function and intended use case for each type of key but also outlines typical scenarios in which each key should be deployed. Understanding the distinctions among MAK, KMS, and Setup keys ensures that organizations can make informed decisions about deployment, compliance, and ongoing license management.

## Multiple Activation Key (MAK)

A MAK is used to activate a specific number of devices permanently. The default activations provided are greater than the number of purchased licenses to allow for scenarios like reinstallation for hardware replacement or upgrades. This method is typically suitable for organizations with a limited number of computers or where machines are not regularly reimaged or replaced. Once a device is activated using a MAK, it remains activated permanently unless significant hardware changes prompt reactivation. MAK activation can occur online, directly connecting to Microsoft's activation servers.

### MAK Key Considerations for Remote Desktop Services Client Access Licenses (RDS CALs)

For a single order of RDS CALs a single MAK will be granted. When the product activation key is added in the RDS licensing server it defaults to show a quantity of 500, regardless of the purchased quantity. While this number doesn't reflect the actual number of obtained licenses, there's neither a technical problem for user-based licensing caused, nor an issue with license compliance.

Technically, when RD Sessions Hosts are [set to "per-user" licensing mode](https://learn.microsoft.com/en-us/powershell/module/remotedesktop/set-rdlicenseconfiguration), there's no enforcement that the number of RDS CALs added to the RD licensing server matches the maximum number of RDS sessions that are allowed. Usage of RDS User CALs is being tracked, but if there are more active sessions than the number of RDS CALs, CALs are still [issued from the "Over-Used CAL Pool"](https://learn.microsoft.com/en-us/windows-server/remote/remote-desktop-services/rds-client-access-license#understanding-the-rds-cal-model). This means an RD Session Host set to per-user licensing mode will never block a session regardless of how many RDS per-user CALs are being added.

From a licensing perspective, the [licensing terms](https://www.microsoft.com/Licensing/product-licensing/products?rtc=1) don't specify at all that there's a specific requirement to add and activate RDS CALs, the concept of an RD licensing server is solely a technical requirement for RDS servers.

### Alternative Approach

For orders above 500 licenses, you could decide to split orders to receive multiple key packages, one for each separate order. This allows you to have the numbers displayed on the RD licensing server better match the total number of RDS CALs obtained. However, this would just be a cosmetic fix and neither change the technical working nor change licensing compliance.

## Key Management Service (KMS) Key

A KMS key enables organizations to set up a local activation service within their own network. Rather than contacting Microsoft's servers individually, client devices connect periodically to the internal KMS host server to renew their activation. KMS activation is ideal for larger organizations or environments where computers are frequently deployed, reimaged, or replaced, as it allows ongoing management without individual internet-based activation for each device. Devices activated through KMS must reconnect to the KMS host at least once every 180 days to remain activated.

Refer to [Activate using Key Management Service | Microsoft Learn](https://learn.microsoft.com/en-us/windows/deployment/volume-activation/activate-using-key-management-service-vamt?source=recommendations) to learn more about activation via KMS keys.

## Setup Key

Setup keys are primarily used during the installation process of Microsoft software. These keys allow the installation to proceed but do not themselves activate the product. In most cases, setup keys are generic and meant for use during deployment or evaluation. Activation must still be completed using either a MAK or KMS key once installation is finished.

## Contacting Microsoft Support for MCA-E Key Issues

1. Log in to the Microsoft Admin Center using your administrator credentials.
2. Go to the Help & Support section, typically located in the left-hand menu.
3. Click on "Submit a request" or a similar option.
4. Fill out the required form with detailed information about your issue or question.
5. Attach any relevant screenshots or error messages to help the support team.
6. Submit your request once the form is complete.
7. Monitor your email or the Admin Center dashboard for updates from Microsoft's support team.

## Additional Resources

[Activate using Key Management Service](https://learn.microsoft.com/en-us/windows/deployment/volume-activation/activate-using-key-management-service-vamt?source=recommendations)<br>
Learn how to use Key Management Service (KMS) to activate Windows.

[Create a Key Management Services (KMS) Activation Host in Windows Server](https://learn.microsoft.com/en-us/windows-server/get-started/kms-create-host?source=recommendations)<br>
See how to create a Key Management Services (KMS) activation host that you can use for volume activation on Windows Server and Windows KMS clients.

[Guidelines for troubleshooting KMS](https://learn.microsoft.com/en-us/windows-server/get-started/activation-troubleshoot-kms-general?source=recommendations)<br>
This guide provides information about the KMS service and suggests tools and approaches for troubleshooting activation issues in Windows Server.