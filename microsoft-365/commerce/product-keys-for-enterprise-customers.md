---
title: "Understand product keys for Microsoft Customer Agreement for Enterprise customers"
f1.keywords: NOCSH
author: cmcatee-MSFT
ms.author: cmcatee
manager: dansimp
ms.reviewer: deevsharma, nikotha
audience: Admin
ms.topic: concept-article
ms.service: microsoft-365-business
ms.subservice: m365-commerce-marketplace
ms.localizationpriority: medium
ms.collection:
- Tier1
- M365-subscription-management 
- Adm_O365
search.appverid: MET150
ms.custom: 
- commerce_purchase
description: "Learn about the types of product keys available to Microsoft Customer Agreement for Enterprise customers."
ROBOTS: NOINDEX, NOFOLLOW
ms.date: 08/05/2025
---

# Understand product keys for Microsoft Customer Agreement for Enterprise customers

> [!IMPORTANT]
> This article only applies to enterprise customers with a Microsoft Customer Agreement.

Microsoft offers a diverse selection of products for enterprise customers and each product requires a specific type of product activation key to ensure proper licensing and functionality. With every product you buy, you receive the appropriate activation key or keys, tailored to meet the needs of those products. Depending on the type and quantity of the products that you buy, you might be provided with a single key type or a combination of multiple key types.

This article describes the three main activation key types supported for purchases made via the Microsoft Customer Agreement for Enterprise (MCA-E): Multiple Activation Keys (MAK), Key Management Service (KMS) keys, and Setup keys. The article explains the function and intended use case for each type of key, and outlines typical scenarios in which each key should be deployed. By understanding the distinctions between MAK, KMS, and Setup keys, you ensure that your organization can make informed decisions about deployment, compliance, and ongoing license management.

## Before you begin

You must be at least a Billing administrator, and you must be a billing account owner or contributor to access and download keys. For information about billing account and billing profile roles, see [Understand your Microsoft business billing account](manage-billing-accounts.md) and [Manage your Microsoft business billing profiles](billing-and-payments/manage-billing-profiles.md).

## Summary of key types

The following table describes the purpose and activation method for each key type, and includes usage recommendations, persistence information, and special notes.

|Key Type  |Purpose  |Activation Method  |Best for  |Persistence  |Special Notes |
|---------|---------|---------|---------|---------|---------|
|Multiple Activation Key (MAK)     |Permanently activates a specific number of devices.         |Online activation via Microsoft servers.         |Small to medium organizations with stable hardware setups.         |Permanent unless significant hardware changes occur.         |Default activation count exceeds purchased licenses to allow for reinstallations.         |
|Key Management Service (KMS)     |Enables a local activation service within an organization’s network.         |Devices periodically connect to internal KMS host server.         |Large organizations with frequent deployments or device reimaging.         |Must reconnect to KMS host every 180 days.         |Ideal for ongoing license management without individual internet activation.         |
|Setup Key    |Allows the installation of Microsoft software.         |Used during setup; doesn’t activate the product.         |Deployment or evaluation scenarios.         |Temporary; requires MAK or KMS for activation.         |Generic keys used only to initiate installation.         |

## Multiple Activation Keys

A Multiple Activation Key (MAK) is used to permanently activate a specific number of devices. The default number of activations provided is greater than the number of purchased licenses to allow for scenarios like reinstallation for hardware replacement or upgrades. This method is typically suitable for organizations with a limited number of computers or where machines aren’t regularly reimaged or replaced. After a device is activated using a MAK, it remains permanently activated unless significant hardware changes prompt reactivation. MAK activation can occur online, connecting directly to Microsoft’s activation servers.

### MAK considerations for Remote Desktop Services Client Access Licenses

For a single order of Remote Desktop Services Client Access Licenses (RDS CALs) a single MAK is granted. When the product activation key is added in the RDS licensing server, by default it shows a quantity of 500, regardless of the purchased quantity. While this default number doesn't reflect the actual number of obtained licenses, it doesn’t cause a technical problem for user-based licensing, and there’s no issue with license compliance.

Technically, when Remote Desktop Sessions Hosts are [set to per-user licensing mode](/powershell/module/remotedesktop/set-rdlicenseconfiguration), there's no enforcement that the number of RDS CALs added to the RD licensing server matches the maximum number of RDS sessions allowed. Usage of RDS User CALs is tracked, but if there are more active sessions than the number of RDS CALs, CALs are still [issued from the **Over-Used CAL Pool**](/windows-server/remote/remote-desktop-services/rds-client-access-license#understanding-the-rds-cal-model). This means that an RD Session Host set to per-user licensing mode will never block a session regardless of how many RDS per-user CALs are added.

From a licensing perspective, the [licensing terms](https://www.microsoft.com/Licensing/product-licensing/products?rtc=1) don't specify that there's a specific requirement to add and activate RDS CALs. The concept of an RD licensing server is solely a technical requirement for RDS servers.

> [!NOTE]
> For orders above 500 licenses, you can choose to split up orders to receive multiple key packages, one for each separate order. This allows you to have the number of keys displayed on the RD licensing server better match the total number of RDS CALs obtained. However, splitting up the orders is simply a cosmetic fix and doesn’t change the way the products work or change licensing compliance.

## Key Management Service key

A Key Management Service (KMS) key lets organizations set up a local activation service within their own network. Rather than contacting Microsoft’s servers individually, client devices periodically connect to the internal KMS host server to renew their activation. KMS activation is ideal for larger organizations or environments where computers are frequently deployed, reimaged, or replaced, because it allows ongoing management without individual internet-based activation for each device. To remain activated, devices activated through KMS must reconnect to the KMS host at least once every 180 days.

To learn more about activation via KMS keys, see [Activate using Key Management Service | Microsoft Learn](/windows/deployment/volume-activation/activate-using-key-management-service-vamt).

## Setup key

Setup keys are primarily used during the installation process of Microsoft software. These keys allow the installation to proceed but don’t activate the product. In most cases, setup keys are generic and meant for use during deployment or evaluation. Activation must still be completed using either a MAK or KMS key after installation is finished.

## Contact Microsoft support for MCA-E key issues

For help with MCA-E keys, [contact Microsoft support](../admin/get-help-support.md#online-support).

## Related content

[Activate using Key Management Service](/windows/deployment/volume-activation/activate-using-key-management-service-vamt) (article)\
[Create a Key Management Services (KMS) Activation Host in Windows Server](/windows-server/get-started/kms-create-host) (article)\
[Guidelines for troubleshooting KMS](/windows-server/get-started/activation-troubleshoot-kms-general) (article)
