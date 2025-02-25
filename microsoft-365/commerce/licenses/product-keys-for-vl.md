---
title: "Find and use product keys for volume licensing"
f1.keywords: NOCSH
ms.author: cmcatee
author: cmcatee-MSFT
manager: scotv
ms.reviewer: roryh, racheg
audience: Admin
ms.topic: how-to 
ms.service: microsoft-365-business
ms.subservice: m365-commerce-volume-licensing
ms.collection:
- Tier1
- scotvorg
ms.custom: 
- commerce_vl
- AdminTemplateSet                                          
search.appverid: MET150
ms.localizationpriority: medium
description: "Learn how to find and use product keys for volume licensing products in the Microsoft 365 admin center."
ms.date: 12/13/2024
---

# Find and use product keys for volume licensing

A product key lets you use a software product that you licensed under a specific volume licensing program. The volume licensing product keys listed in the Microsoft 365 admin center are only for use with volume license products and are intended only for use by your organization. This article describes the different types of product keys, where to find them, and how to use them.

## Before you begin

You must have one of the following volume licensing roles to view volume licensing product keys for a specific licensing ID:

- Administrator
- Product keys reader

## Find your volume licensing product keys

This section describes the steps to find volume licensing product keys in the admin center. You can copy individual keys to the clipboard and download a CSV file that contains one or more keys in a tab-delimited format. To view and sort keys, open the product key file in Excel or a text editor.

> [!NOTE]
> Some products don't require a product key. You can verify whether a specific product requires a product key in the product description provided for each product listed on the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297371" target="_blank">Products and services</a> page.

### Find and export product keys in the Microsoft 365 admin center

1. In the Microsoft 365 admin center, go to the **Billing** > **Your products** page, and select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Products and services** section, select **View downloads and keys**.
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297371" target="_blank">Products and services</a> page, adjust the category filters or search by product name to find a particular product, then select a product name.
4. In the side panel, select the **Keys** tab to see the list of **License IDs** that you manage. Each key detail includes the **License ID**, **Organization name**, key **Type**, the number of key **Activations or Seats** available, and the **OSA Status**.
   - To copy a key for a specific License ID, in the **Key** column, select the **Copy key to clipboard** icon.
   - To export keys, select the check box for one or more **License IDs**, then select **Export selected keys to CSV**.

#### Export all volume license product keys for all products

To download all volume license product keys for every product that you have access to, go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297371" target="_blank">Products and services</a> page, then select **Export all keys to CSV**.

#### Export volume license product keys for specific License IDs

To download volume license product keys for specific **License IDs**, use the following steps:

1. In the admin center, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297440" target="_blank">Contracts</a> page, select the check box for one or more **License IDs**, then select **Export to CSV**.

### Find product keys for activating Extended Security Update (ESU) licenses

If you bought Extended Security Update (ESU) licenses, you can activate them with Multiple Activation Keys (MAK) that you provision in the admin center. To find the ESU license MAKs, use the following steps:

1. In the admin center, go to the **Billing** > **Your Products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Contracts** section, select **View contracts**.  
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297440" target="_blank">Contracts</a> page, find the **License ID** that the ESU licenses were purchased under, select the three dots (**More actions**), then select **View product keys**. The **Product keys** details page includes contract details and a list of all keys for that contract.

> [!NOTE]
> You can order ESU licenses before the start of the ESU coverage period. However, the ESU MAKs displayed in the Product keys details panel aren’t usable until the defined ESU coverage period begins. For more information, see [Product Lifecycle FAQ - Extended Security Updates](/lifecycle/faq/extended-security-updates).

To verify that you have ESU licenses, go to the **Billing** > **Your products** > <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> page. In the **Transactions** section, select **View orders**. If the order appears in the list, it means the order was submitted.

To buy new ESU licenses, contact your Microsoft Seller or Licensing Solution Partner.

### Find a SQL Server license product key for volume licensing

The SQL Server license product key is embedded in the software's activation wizard and is automatically detected during installation. For more information, see [The SQL Server Installation Guide](/sql/database-engine/install-windows/install-sql-server).

For SQL Server 2022, the embedded license product key is also displayed in the product details panel on the **Keys** tab. Earlier versions of SQL Server display a message that says, "This product does not require a product key."  

Because the product key is automatically detected, you don’t need to identify a volume licensing product key to install any versions of SQL Server. To find the key manually, use the following steps:

1. In the admin center, go to the **Billing** > **Your Products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Product and services** section, select **View downloads and keys**.
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297371" target="_blank">Products and services</a> page, find the **Product Name** for SQL Server, then select the **View downloads** icon (down arrow).
4. In the product details panel, select one or more **Components**, then select **Download**.
5. On your computer, open the downloaded file, then open the folder named **x64**.
6. Open the _DefaultSetup.ini_ file. The SQL license product key is displayed inside the file.

If you need help with troubleshooting technical issues during product installation or online service activation, contact Microsoft Technical Support by submitting a [Technical Support request](https://support.microsoft.com/oas).

### Activate Windows Terminal Server and Remote Desktop Service (RDS) without a product key

You don't need a volume license product key or product setup key from the volume licensing product keys page to activate Windows Terminal Server and Remote Desktop Service (RDS).

After you download the server media, you activate the product by completing the product activation wizard. The wizard walks you through the steps to connect the server with the Microsoft Clearing House via the internet to validate the data. Alternatively, for offline servers, the activation wizard offers phone or web activation. For more information, see [Activate the Remote Desktop Services license server](/windows-server/remote/remote-desktop-services/rds-activate-license-server).

During the [Terminal Server activation process](/troubleshoot/windows-server/remote/terminal-server-license-for-deployment?source=recommendations#method-1-for-windows-xp-professional-licenses-that-were-obtained-through-the-volume-licensing-program), you're asked to select the **License Program and Agreement Number**.

If you're unsure of the program type for the License ID used to buy your RDS Client Access Licenses (CALs), go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297440" target="_blank">Contracts</a> page and check the **Parent program** column.

- For Open License customers, enter your Authorization Number as **agreement number**.
- For MPSA, enter your Purchase Account Number, not the MPSA Agreement number.

For information about licensing Terminal Server, installing the remote desktop licensing role, and activating the license server, see [Cannot connect to RDS because no RD Licensing servers are available](/troubleshoot/windows-server/remote/cannot-connect-rds-no-license-server).

### Use one product key for multiple organizations in the same ownership structure

License compliance and asset management are independent of product key activation. Although keys are assigned for each License ID, if you have multiple License IDs, you don't need to use the keys provided under a specific License ID (like agreement, enrollment, affiliate, or license).

If a parent organization has an individual agreement, it can use the same key to deploy a product across parent and child organizations. This flexibility lets you centrally manage your deployment image by using either keys specific to agreements/licenses or one set of keys for all.

## Use volume licensing product keys to activate products

We provide two types of volume licensing product keys to automate and manage the activation of Windows operating systems, Microsoft Office, and other Microsoft products. This automation and management process is called volume activation.

You can use either or both key types to activate systems in your organization:

- **Multiple Activation Keys (MAK)** are commonly used in small or mid-sized organizations that have a volume licensing agreement, but that don't meet the requirements to operate a KMS.
- **Key Management Services (KMS)** lets organizations activate systems within their own network. Minimum activation thresholds make this KMS suited to larger organizations.

As part of volume activation, you might be required to provide a setup key. If your computers are activated with a KMS host, you must have a setup key. For products that you download from the admin center, the setup key is displayed on the download page and might include the following text: “Some products available for download require setup keys.” You need the setup key during product installation, so write it down somewhere that you can access it later.

For more information about setup keys, see [Key Management Services (KMS) client activation and product keys](/windows-server/get-started/kmsclientkeys).

## Key Management Service (KMS) host keys

A Key Management Service (KMS) host key is used to activate the KMS host computer with a Microsoft activation server. The KMS host key can activate up to six KMS hosts with 10 activations per host. Each KMS host can activate an unlimited number of computers.
There are minimum activation thresholds that must be met. The activation thresholds consist of either physical or virtual computers in a network environment. For more information, see [Volume activation for Windows](/windows/deployment/volume-activation/volume-activation-windows).

- **Activation thresholds for Windows:**
  - Your organization must have at least five computers to activate servers that run Windows Server.
  - Your organization must have at least 25 computers to activate client systems that run Windows.
- **Activation thresholds for Microsoft 365:**
  - Your organization must have at least five computers running an edition of Microsoft 365 to activate installed Microsoft 365 products using KMS.

### KMS keys for Open Value and Open Value Subscription License customers

A Multiple Activation Key (MAK) is the recommended activation method for licenses bought under the Open Value or Open Value Subscription volume licensing agreement.
However, in some limited exceptions, KMS keys might be assigned to Open Value or Open Value Subscription licenses for customers who meet the minimum KMS activation threshold for Windows Server, Windows Operating System, and Microsoft 365.

To request an exception, you must have the Administrator or Product Key Reader volume license role. To submit the request, provide the following information on [this web form](https://support.serviceshub.microsoft.com/supportforbusiness/create?sapId=2afa6f15-b710-db46-909a-8346017c802f):

- Agreement / Enrollment Number or License ID
- Product Name (including version and edition)
- The number of host activations required
- Business justification or reason for deployment

> [!NOTE]
> This exception doesn't apply to Open License which retired in December 2021.

### Request more KMS host keys

To request more KMS activations to activate more than six KMS hosts, you must have the Administrator or Product Key Reader volume license role. To submit the request, provide the following information on [this web form](https://support.serviceshub.microsoft.com/supportforbusiness/create?sapId=2afa6f15-b710-db46-909a-8346017c802f):

- Agreement / Enrollment Number or License ID
- Product Name (including version and edition)
- The number of host activations required
- Business justification or reason for deployment

## Multiple Activation Keys (MAK)

A Multiple Activation Key (MAK) activates systems on a one-time basis. MAKs use Microsoft hosted activation services that require a connection with a Microsoft activation server. After computers are activated, no further communication with Microsoft is required.

Each MAK has a preset number of activations based on a percentage of the number of licenses that your organization bought. The number of activations available for a product doesn’t always match the number of purchased licenses displayed in the Licensing Summary.

To see the number of times a MAK is used, use the following steps:

1. In the admin center, go to the **Billing** > **Your products** page, then select the <a href="https://go.microsoft.com/fwlink/p/?linkid=2244144" target="_blank">Volume licensing</a> tab.
2. In the **Products and services** section, select **View downloads and keys**.
3. On the <a href="https://go.microsoft.com/fwlink/p/?linkid=2297371" target="_blank">Products and services</a> page, select a **Product name**.
4. In the product details panel, select the **Keys** tab. The **Activations** or **Seats** column indicates how many activations or seats are used out of the total number of activations or seats.

The number of activations is also displayed in the Volume Activation Management Tool (VAMT) which is part of the Windows Assessment and Deployment Kit (ADK) for Windows. For more information, see [Volume Activation Management Tool (VAMT) technical reference](/windows/deployment/volume-activation/volume-activation-management-tool).

> [!IMPORTANT]
> Volume activation only applies to systems covered under a volume licensing program and is used strictly as a tool for activation. Volume activation isn’t tied to license invoicing or billing.

### Request an increase to MAK activation limits

Increases to MAK activation quantity are granted by exception. To request a MAK activation limit, you must have the Administrator, Key Administrator, or Key Viewer volume licensing role. To submit the request, you must provide the following information on [this web form](https://support.serviceshub.microsoft.com/supportforbusiness/create?sapId=2afa6f15-b710-db46-909a-8346017c802f):

- Agreement/Enrollment Number or License ID and Authorization
- Product Name (including version and edition)
- The last five characters of the product key
- The number of host activations required
- Business justification or reason for deployment

### Activate licenses with a Multiple Activation Key (MAK)

When you use a MAK, you can activate licenses in one of the following two ways:

- **MAK Independent Activation** - Each computer individually connects to Microsoft online or by telephone to complete activation.
- **MAK Proxy Activation** - One centralized activation request is made on behalf of multiple computers with a single connection to Microsoft online or by telephone. This method uses the VAMT.

## Use Windows Server as the KMS host to activate Windows clients

If you deploy Windows using Key Management Service (KMS) as the activation method:

- Windows Server isn't supported as a KMS host to activate Windows.
- A Windows Server KMS key is required to get a patch to allow activation of Windows client machines. For the latest patch, see [Configure a KMS host computer to activate volume licensed versions of Office](/deployoffice/vlactivation/configure-a-kms-host-computer-for-office).

## Volume activation for Microsoft 365, Project, and Visio

When you use volume activation for Microsoft 365, Project, and Visio:

- Office KMS Host activates any Office suite or application.
- Only one Office KMS key can be installed and used for activation.

If you deploy Microsoft 365 using KMS as the activation method:

- You can't activate Microsoft 365 using KMS if you use Windows Server as the KMS host.
- A patch isn't available to allow activation of apps in Microsoft 365.

## Use volume licensing product keys to activate earlier versions

All volume licensing customers have the right to use product keys for reimaging and downgrade purposes. Select Plus, Enterprise Agreement (EA), and Select customers have limited evaluation rights for training and back-up. For more information about reimaging rights, see [Product licensing briefs](https://www.microsoft.com/licensing/docs/view/Licensing-Briefs).

Reimaging rights are granted to all Microsoft Volume Licensing customers. Under these rights, customers can reimage Original Equipment Manufacturer (OEM) or Full Packaged Product (FPP) licensed copies by using media provided under their agreement if the copies made from the volume licensing media are identical to the original licensed product. You can find the volume license keys in the admin center in the product details panel on the **Keys** tab or request your keys through Microsoft Assisted Support. To find support phone numbers, see [Volume License Key Phone Numbers | Microsoft Volume Licensing](https://www.microsoft.com/licensing/existing-customer/activation-centers?rtc=1?rtc=1).

> [!NOTE]
> If you're an Open License customer, you must buy at least one unit of the product that you want to reimage to get access to the product media and receive a product key.

## Contact support

Submit a case in the admin center > <a href="https://go.microsoft.com/fwlink/p/?linkid=2166757" target="_blank">Help & Support</a>. If you’re unable to access the admin center, see [Contacting volume licensing support](/licensing/contact-us).

## Related content

[Download volume licensing products](download-vl-products.md) (article)  
[Online service activation for Open programs FAQ](online-service-activation-faq.yml) (article)  
[Volume Activation Management Tool (VAMT) Technical Reference](/windows/deployment/volume-activation/volume-activation-management-tool) (article)  
[Tools to manage volume activation of Office](/deployoffice/vlactivation/tools-to-manage-volume-activation-of-office) (article)  
[Volume Activation for Windows](/windows/deployment/volume-activation/volume-activation-windows-10) (article)
