---
title: "Configure endpoint DLP settings"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/02/2023
audience: ITPro
ms.topic: article
f1_keywords:
- 'ms.o365.cc.DLPLandingPage'
ms.service: O365-seccomp
ms.localizationpriority: high
ms.collection: 
- tier1
- purview-compliance
- SPO_Content
search.appverid: 
- MET150
description: "Learn how to configure endpoint data loss prevention (DLP) central settings."
---

# Configure endpoint data loss prevention settings

Many aspects of Endpoint data loss prevention (DLP) behavior are controlled by centrally configured settings that are applied to all DLP policies for devices. Use these settings to control the following behaviors:

- Cloud egress restrictions
- Various types of restrictive actions on user activities per application.
- File path exclusions for Windows and macOS devices.
- Browser and domain restrictions.
- How business justifications for overriding policies appear in policy tips.
- Whether actions performed on Office, PDF, and CSV files are automatically audited.

To access these settings, from the Microsoft Purview compliance portal, navigate to **Data loss prevention** > **Endpoint DLP settings**.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

[!INCLUDE [dlp-pdf-adobe-requirements](../includes/dlp-pdf-adobe-requirements.md)]

## Endpoint DLP Windows 10/11 and macOS settings
The following table describes the supported endpoint settings for Windows 10/11 and macOS.

|Setting |Windows 10, 1809 and later, Windows 11  |macOS (three latest released versions) |Notes  |
|---------|---------|---------|---------|
|Advanced classification | Supported | Supported (preview)|Advanced classification enables these features for macOS (preview): - [Document Fingerprinting](document-fingerprinting.md) </br>- [Exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md#learn-about-exact-data-match-based-sensitive-information-types) </br>- [Trainable classifiers](classifier-learn-about.md) </br>- [Learn about named entities](named-entities-learn.md) |
|File path exclusions     |Supported         |Supported         |macOS includes a recommended list of exclusions that is on by default          |
|Network share coverage and exclusions | Supported |Not Supported|
|Restricted apps     |Supported         |Supported         |         |
|Restricted app groups |Supported |Supported (preview)|
|Unallowed Bluetooth apps    |Supported         |Supported         |         |
|Browser and domain restrictions to sensitive items      |Supported         |Supported         |         |
|Additional settings for Endpoint DLP     |Supported         |Supported         |Only the default business justifications are supported for macOS devices         |
|Always audit file activity for devices     |Supported         |Supported         |         |
|Printer groups| Supported |Not Supported| |
|Removable USB device groups| Supported | Not Supported | |
|Auto-quarantine file from unallowed apps | Supported | Supported (preview)| |
|Network share groups | Supported | Not Supported | |
|VPN settings | Supported | Not Supported | |
|Business justification in policy tips | Supported | Supported (preview)| |
|Notification customization|Supported | Supported (preview)|
|Archive file| Supported | Not supported| |
|File type and File extension |Supported | Not supported| |
| | | | |

## Advanced classification scanning and protection

Advanced classification scanning and protection allow the Microsoft Purview cloud-based data classification service to scan items, classify them, and return the results to the local machine. Therefore, you can take advantage of classification techniques such as [exact data match](sit-learn-about-exact-data-match-based-sits.md) classification, and [named entities](named-entities-learn.md) in your DLP policies.

When advanced classification is turned on, content is sent from the local device to the cloud services for scanning and classification. If bandwidth usage is a concern, you can set a limit on how much bandwidth can be used in a rolling 24-hour period. The limit is configured in **Endpoint DLP settings** and is applied per device. If you set a bandwidth usage limit and it's exceeded, DLP stops sending the user content to the cloud. At that point, data classification continues locally on the device but classification using exact data match, named entities, and trainable classifiers aren't available. When the cumulative bandwidth usage drops below the rolling 24-hour limit, communication with the cloud services resumes.

If bandwidth usage isn't a concern, select **No limit** to allow unlimited bandwidth use.

These Windows versions support advanced classification scanning and protection:

- all Windows 11 versions
- Windows 10 versions 20H1/20H2/21H1 (KB 5006738)
- Windows 10 versions 19H1/19H2 (KB 5007189)
- Windows 10 RS5 (KB 5006744)

> [!NOTE]
>  - Support for advanced classification is available for Office (Word, Excel, PowerPoint) and PDF file types.
> 
> - DLP policy evaluation always occurs in the cloud, even if user content is not being sent.

> [!TIP]
> To use advanced classification for Windows 10 devices, you must install KB5016688. To use advanced classification for Windows 11 devices, KB5016691 must be installed on those Windows 11 devices. Additionally, you must enable advanced classification before **Activity explorer** will display contextual text for DLP rule-matched events. To learn more about contextual text, see [Contextual summary](dlp-learn-about-dlp.md#contextual-summary).  

## File path exclusions

If you want to exclude certain paths from DLP monitoring, DLP alerts, and DLP policy enforcement on your devices, you can turn off those configuration settings by setting up file path exclusions. Files in excluded locations aren't audited and any files that are created or modified in those locations aren't subject to DLP policy enforcement. To configure path exclusions in DLP settings, navigate to [Microsoft Purview compliance portal](https://compliance.microsoft.com) > **Data loss prevention** > **Endpoint DLP settings** > **File path exclusions**.

### Windows 10/11 devices

You can use the following logic to construct your exclusion paths for Windows 10/11 devices:

- Valid file path that ends with `\`, means only files directly under the specified folder are excluded. <br/> Example: `C:\Temp\`

- Valid file path that ends with `\*`, means only files within subfolders of the specified folder are excluded. Files directly under the specified folder itself aren't excluded. <br/> Example: `C:\Temp\*`

- Valid file path that ends without `\` or `\*`, means all files directly under the specified folder and all of its subfolders are excluded. <br/> Example: `C:\Temp`

- A path with wildcard between `\` from each side. <br/> Example: `C:\Users\*\Desktop\`

- A path with wildcard between `\` from each side and with `(number)` to specify the exact number of subfolders to be excluded. <br/> Example: `C:\Users\*(1)\Downloads\`

- A path with SYSTEM environment variables. <br/> Example: `%SystemDrive%\Test\*`

- A mix of all the patterns described above. <br/> Example: `%SystemDrive%\Users\*\Documents\*(2)\Sub\`

### macOS devices

You can also add your own exclusions for macOS devices.

- File path definitions are case insensitive, so `User` is the same as `user`.

- Wildcard values are supported. So a path definition can contain an asterisk (`*`) in the middle of the path or at the end of the path. <br/> Example: `/Users/*/Library/Application Support/Microsoft/Teams/*`

#### Recommended file path exclusions (preview)

For performance reasons, Endpoint DLP includes a list of recommended file path exclusions for macOS devices. These exclusions are turned on by default. You can disable them by toggling the **Include recommended file path exclusions for Mac** option. The list includes:

- /Applications/*
- /System/*
- /usr/*
- /Library/*
- /private/*
- /opt/*
- /Users/*/Library/Application Support/Microsoft/Teams/*

## Set up evidence collection for file activities on devices (preview)

When it identifies items that match policies on devices, DLP can copy them to an [Azure storage account](/azure/storage/common/storage-account-overview). This is useful for auditing policy activity and troubleshooting specific matches. Use this section to add the name and URL of the storage account.

> [!NOTE]
> Before you enable this feature, you must create an Azure storage account and a container in that storage account. You must also configure permissions for the account. As you set up your Azure storage account, keep in mind that you'll probably want to use a storage account that's in the same Azure region/geopolitical boundary as your tenant. You should also consider configuring [Azure storage account access tiers](/azure/storage/blobs/storage-blob-storage-tiers) and [Azure storage account pricing](/azure/storage/common/storage-account-overview#pricing).

- For more information on this feature, see [Learn about collecting files that match data loss prevention policies from devices](dlp-copy-matched-items-learn.md).  
- For more information on how to configure this feature, see [Get started with collecting files that match data loss prevention policies from devices](dlp-copy-matched-items-get-started.md).

## Network share coverage and exclusions

**Network share coverage and exclusions** extends endpoint DLP policies and actions to new and edited files on network shares and mapped network drives. If [just in time protection (preview)](endpoint-dlp-learn-about.md#just-in-time-protection-preview) is also enabled, coverage and exclusions are extended to network shares and mapped drives. If you want to exclude a specific network path for all monitored devices, add the path value in **Exclude these network share paths**.

> [!IMPORTANT]
> To use **Network share coverage and exclusions**, devices must have the following updates applied:
> - Windows 10 - [March 21, 2023—KB5023773 (OS Builds 19042.2788, 19044.2788, and 19045.2788) Preview](https://support.microsoft.com/en-us/topic/march-21-2023-kb5023773-os-builds-19042-2788-19044-2788-and-19045-2788-preview-5850ac11-dd43-4550-89ec-9e63353fef23), [March 28, 2023—KB5023774 (OS Build 22000.1761) Preview](https://support.microsoft.com/en-us/topic/march-28-2023-kb5023774-os-build-22000-1761-preview-67b4cfda-120a-422f-98c0-35124ddba839) 
>- Windows 11 - [March 28, 2023—KB5023778 (OS Build 22621.1485) Preview](https://support.microsoft.com/en-us/topic/march-28-2023-kb5023778-os-build-22621-1485-preview-d490bb51-492e-410c-871f-50ad01b0f765)
>
> - Microsoft Defender [April-2023 (Platform: 4.18.2304.8 | Engine: 1.1.20300.3)](/microsoft-365/security/defender-endpoint/microsoft-defender-antivirus-updates#april-2023-platform-41823048--engine-11203003)

This table shows the default settings for network share coverage and exclusions.

|Network share coverage and exclusions (preview) |Just in time protection (preview) |Resultant behavior  |
|---------|---------|---------|
|Enabled     |Disabled         |- DLP policies scoped to Devices are applied to all network shares and mapped drives that the device is connected to.  [Devices actions](dlp-policy-reference.md#devices-actions)        |
|Disabled    |Enabled         |- Just-in-time protection is applied only to the files on storage devices that are local to the endpoint. |
|Enabled     |Enabled         |- DLP policies that are scoped to Devices are applied to all network shares and mapped drives that the device is connected to. [Devices actions](dlp-policy-reference.md#devices-actions) </br>- Just-in-time protection is applied to all network shares and mapped drives that the device is connected to.         |
| | | |

**Network share coverage and exclusions** complements [DLP On-premises repository actions](dlp-on-premises-scanner-learn.md#dlp-on-premises-repository-actions). This table shows the exclusion settings and the resulting behavior depending on whether DLP is enabled or disabled for on-premises repositories.

|Network share coverage and exclusions|DLP on-premises repositories|Resultant behavior|
|---------|---------|---------|
|Enabled| Disabled|- DLP policies that are scoped to Devices are applied to all network shares and mapped drives that the device is connected to. [Devices actions](dlp-policy-reference.md#devices-actions)|
|Disabled|Enabled|- Policies that are scoped to On-premises repositories can enforce protective actions on on-premises data-at-rest in file shares and SharePoint document libraries and folders.  [DLP On-premises repository actions](dlp-on-premises-scanner-learn.md#dlp-on-premises-repository-actions)|
|Enabled | Enabled|- DLP policies that are scoped to Devices are applied to all network shares and mapped drives that the device is connected to.  [Devices actions](dlp-policy-reference.md#devices-actions)</br>- Policies that are scoped to On-premises repositories can enforce protective actions on on-premises data-at-rest in file shares and SharePoint document libraries and folders. [DLP On-premises repository actions](dlp-on-premises-scanner-learn.md#dlp-on-premises-repository-actions)  
| | | |

## Restricted apps and app groups

### Restricted apps

The **Restricted apps** list (previously called **Unallowed apps**), is a custom list of applications that you create. You configure what actions DLP takes when someone uses an app on the list to ***access*** a DLP-protected file on a device. The **Restricted apps** list is available for Windows 10/11 and macOS devices running any of the three latest macOS releases.

> [!IMPORTANT]
>  - Do not include the path to the executable. Include only the executable name (such as browser.exe).
>
>   - The action (`audit`, `block with override`, or `block`) defined for apps that are on the restricted apps list only applies when a user attempts to ***access*** a protected item.

When **Access by restricted apps** is selected in a policy and a user uses an app that is on the restricted apps list to access a protected file, the activity is `audited`, `blocked`, or `blocked with override`, depending on how you configured the **Restricted apps** list. EXCEPTION: If an app on the **Restricted apps** list is also a member of a **Restricted app group**, the actions configured for activities in the **Restricted app group** override the actions configured for the **Restricted apps** list. All activity is audited and available for review in activity explorer.

### Restricted app groups (preview)

Restricted app groups are collections of apps that you create in DLP settings and then add to a rule in a policy. When you add a restricted app group to a policy, you can take the actions defined in the following table.

|Restricted App group option  |What it allows you to do  |
|---------|---------|
|Don't restrict file activity     | Tells DLP to allow users to access DLP protected items using apps in the app group without taking any action when the user attempts to **Copy to clipboard**, **Copy to a USB removable drive**, **Copy to a network drive**, or **Print** from the app.          |
|Apply a restriction to all activity     | Tells DLP to `Audit only`, `Block with override`, or `Block` when a user attempts to access a DLP-protected item using an app that's in the relevant app group         |
|Apply restrictions to a specific activity     | This setting allows a user to access a DLP-protected item using an app that is in the app group. It also allows you to select a default action (`Audit only`, `Block`, or `Block with override`) for DLP to take when a user attempts to **Copy to clipboard**, **Copy to a USB removable drive**, **Copy to a network drive**, and **Print**.          |
| | |

> [!IMPORTANT]
> Settings in a restricted app *group* override any restrictions set in the restricted apps *list* when they are in the same rule. So, if an app is on the restricted apps list and is also a member of a restricted apps group, the settings of the restricted apps group is applied.

### How DLP applies restrictions to activities

Interactions between **File activities for apps in restricted app groups**, **File activities for all apps**, and the **Restricted app activities** list are scoped to the same rule.

#### Restricted app groups overrides

Configurations defined in **File activities for apps in restricted app groups** override the configurations in the **Restricted app activities** list and **File activities for all apps** in the same rule.

#### Restricted app activities and File activities for all apps

The configurations of **Restricted app activities** and **File activities for all apps** work in concert if the action defined for **Restricted app activities** is either `Audit only`, or `Block with override` in the same rule. Why? Actions defined for **Restricted app activities** only apply when a user accesses a file using an app that's on the list. Once the user has access, the actions defined for activities in **File activities for all apps** apply. 

For instance, take the following example. Say that Notepad.exe is added to **Restricted apps**, and **File activities for all apps** is configured to **Apply restrictions to specific activity**, and both are configured as indicated in this table:

|Setting in policy  |App name  |User activity  |DLP action to take  |
|---------|---------|---------|---------|
|Restricted app activities     |Notepad        |Access a DLP protected item         |Audit only         |
|File activities for all apps   |All apps        | Copy to clipboard        |Audit only         |
|File activities for all apps     |All apps         |Copy to a USB removeable device | Block       |
|File activities for all apps     |All apps         |Copy to a network share         |Audit only         |
|File activities for all apps   |All apps         |Print         |Block         |
|File activities for all apps     |All apps         |Copy or move using unallowed Bluetooth app         |Blocked         |
|File activities for all apps     |All apps         |Remote desktop services         |Block with override         |
| | | | |

When User A opens a DLP-protected file using Notepad, DLP allows the access and audits the activity. While still in Notepad, User A then tries to copy content from the protected item to the clipboard. This action is successful, and DLP audits the activity. User A then tries to print the protected item from Notepad and the activity is blocked.

> [!NOTE]
> When the DLP action to take in **Restricted app activities** is set to `block`, all access is blocked and the user cannot perform any activities on the file.
   
#### File activities for all apps only

If an app *isn't* in the **File activities for apps in restricted app groups** or the **Restricted app activities** list, or *is* in the **Restricted app activities** list, with an action of either `Audit only`, or `Block with override`, any restrictions defined in the **File activities for all apps** are applied in the same rule.  

### macOS devices
<!-- 6/14/2023: No Mac access; can't verify -->

You can also prevent macOS apps from accessing sensitive data by defining them in the **Restricted app activities** list.

> [!NOTE]
> Cross-platform apps must be entered with their unique paths respective to the OS they are running.

To find the full path of Mac apps:

1. On the macOS device, open **Activity Monitor**. Find and double-click the process you want to restrict.

2. Select the **Open Files and Ports** tab.
  
3. Make a note of the full path name, including the name of the app.

### Protect sensitive data from cloud synchronization apps

To prevent sensitive items from being synced to the cloud by cloud sync apps such as *onedrive.exe*, add the cloud sync app to the **Restricted apps** list. 

> [!NOTE]
> When an unallowed cloud-sync app tries to access an item that is protected by a blocking DLP policy, DLP may generate repeated notifications. You can avoid these repeated notifications by enabling the **Auto-quarantine** option under **Restricted apps**.  

#### Auto-quarantine 

When enabled, Auto-quarantine is triggered when a restricted app attempts to access a DLP-protected sensitive item. Auto-quarantine moves the sensitive item to an admin-configured folder. If configured to do so, autoquarrantine can leave a placeholder (**.txt**) file in place of the original. You can configure the text in the placeholder file to tell users the new location of the item, and other pertinent information.  

You can use also auto-quarantine to prevent an endless chain of DLP notifications for the user and admins. For more information, see [Scenario 4: Avoid looping DLP notifications from cloud synchronization apps with auto-quarantine](endpoint-dlp-using.md#scenario-4-avoid-looping-dlp-notifications-from-cloud-synchronization-apps-with-auto-quarantine)

## Unallowed (Restricted) Bluetooth apps

To prevent people from transferring files protected by your policies via specific Bluetooth apps, add those apps to the **Restricted apps** list.

### Browser and domain restrictions to sensitive data

Restrict sensitive files that match your policies from being shared with unrestricted cloud service domains.

### Unallowed browsers

For Windows devices you can restrict the use of specified web browsers, identified by their executable names. The specified browsers are blocked from accessing files that match the conditions of an enforced a DLP policy where the upload-to-cloud services restriction is set to `block` or `block override`. When these browsers are blocked from accessing a file, end users see a toast notification asking them to open the file through Microsoft Edge.

For macOS devices, you must add the full file path. To find the full path of Mac apps:
<!-- 6/14/2023: No Mac access; can't verify -->

1. On the macOS device, open **Activity Monitor**. Find and double-click the process you want to restrict

2. Choose **Open Files and Ports** tab.
  
3. Make sure to make a note of the full path name, including the name of the app.

#### Service domains

You can control whether sensitive files that are protected by your policies can be uploaded to specific service domains.

> [!NOTE]
> The **Service domains** setting only applies to files uploaded using Microsoft Edge, or using instances of Google Chrome or Mozilla Firefox that have the [Microsoft Purview Chrome Extension](dlp-chrome-learn-about.md) installed.

##### Allow

When the **Service domains** list is set to **Allow**, DLP policies aren't applied when a user attempts to upload a sensitive file to any of the domains on the list.

If the list mode is set to **Allow**, any user activity involving a sensitive item and a domain that's on the list is audited. The activity is allowed. When a user attempts an activity involving a sensitive item and a domain that *isn't* on the list, then DLP policies and the actions defined in those policies, are applied.

For example, with this configuration:

- **Service domains** list mode is set to **Allow**.
    - Contoso.com is on the list.
    -  A DLP policy is set to **Block** upload of sensitive items that contain credit card numbers.
 
If a user attempts to upload a sensitive file with credit card numbers to contoso.com, the user activity is allowed, audited, and an event is generated. However, the policy name isn't listed, nor is the name of the triggering rule displayed in the Event details. No alert is generated.

In contrast, if a user attempts to upload a sensitive file with credit card numbers to wingtiptoys.com (which isn't on the *Restricted apps* list), the policy is applied and the user activity is blocked. Additionally, an event is generated, as is an alert.
 
##### Block
 
When the **Service domains** list is set to **Block**, DLP policies are applied when a user attempts to upload a sensitive file to any of the domains on the **Restricted apps** list.

If the list mode is set to **Block**, when a user attempts an activity involving a sensitive item and a domain that is on the list, DLP policies and the actions defined therein, are applied. Any activity involving a sensitive item and a domain that isn't on the list is audited and the user activity is allowed.

Let's take a look at another example. Say we're staring with the following configuration:

- **Service domains** list mode is set to **Block**.
    - Contoso.com is on the list.
    -  A DLP policy is set to **Block with override** for the upload of sensitive items that contain credit card numbers.
 
If a user attempts to upload a sensitive file with credit card numbers to contoso.com, the activity is blocked, but the user can override the block. If the user choose to override the block, an event is generated and an alert is triggered.

However, if a user attempts to upload a sensitive file with credit card numbers to wingtiptoys.com (which isn't on the restricted list), the policy *isn't* applied and the user activity is simply audited. An event is generated, but it doesn't list the policy name or that of the triggering rule in the event details. No alert is generated.

> [!IMPORTANT]
> When the service restriction mode is set to **Allow**, you must have at least one service domain configured before restrictions are enforced.

**Summary table**
The following table shows how the system behaves depending on the settings listed.

|Service domain list setting |Upload sensitive item to site on list  |Upload sensitive item to site not on list  |
|---------|---------|---------|
|Allow   |- No DLP policies are applied </br> - User activity is audited </br> - Event generated        | - DLP policies are applied </br> - Configured actions are taken </br>- Event is generated </br>- Alert is generated          |
|Block    | - DLP policies are applied </br> - Configured actions are taken </br> - Event is generated </br> - Alert is generated         | - No DLP policies are applied </br> - User activity is audited </br>- Event is generated         |
| | | |


When adding a domain to the list, use the FQDN format of the service domain without the ending period (`.`).

For example:

| Input | URL matching behavior |
|---|---|
| **CONTOSO.COM** |**Matches the specified domain name, and any subsite**: <p>*://contoso.com<p>*://contoso.com/ <p>*://contoso.com/anysubsite1 <p>*://contoso.com/anysubsite1/anysubsite2 (etc.) <p>**Does not match sub-domains or unspecified domains**: <p>*://anysubdomain.contoso.com <p>*://anysubdomain.contoso.com.AU |
| ***.CONTOSO.COM** |**Matches the specified domain name, any subdomain, and any site**: <p>*://contoso.com <p>*://contoso.com/anysubsite <p>*://contoso.com/anysubsite1/anysubsite2 <p>*://anysubdomain.contoso.com/ <p>*://anysubdomain.contoso.com/anysubsite/ <p>*://anysubdomain1.anysubdomain2.contoso.com/anysubsite/ <p>*://anysubdomain1.anysubdomain2.contoso.com/anysubsite1/anysubsite2 (etc.) <p>**Does not match unspecified domains** <p>*://anysubdomain.contoso.com.AU/ |
| **`www.contoso.com`** |**Matches the specified domain name**: <p>`www.contoso.com` <p>**Does not match unspecified domains or subdomains** <p>*://anysubdomain.contoso.com/, in this case, you have to put the FQDN domain name itself `www.contoso.com`|
| | |

You can configure up to 50 domains under **Sensitive Service domains**.
	
### Sensitive service domains

When you list a website in **Sensitive service domains**, you can `audit`, `block with override`, or fully `block` user activity when users attempt to take any of the following actions:

- print from a website
- copy data from a website
- save a website as local files
- upload or drag/drop a sensitive file to an excluded website
- (in preview) paste sensitive data to an excluded website

For the print, copy data, and save actions, each website must be listed in a website group.

> [!NOTE]
> The **Service domains** setting only applies to files uploaded using Microsoft Edge or an instance of Google Chrome or Mozilla Firefox that has the [Microsoft Purview Chrome Extension](dlp-chrome-learn-about.md) installed.

The following table shows which browsers support these features:

| Browser | Supported Feature|
|---|---|
| Microsoft Edge | - Print <br> - Copy <br> - Save <br> - Paste (preview) </br>- Upload|
| Google Chrome (with the Microsoft Purview extension)| - Upload </br>- Paste (preview)|
| Mozilla Firefox (with the Microsoft Purview extension)| - Upload </br>- Paste (preview)|

Additionally, for Devices, you must use **Sensitive service domains** with a DLP policy. You can also define website groups that you want to assign policy actions to that are different from the global website group actions. You can add a maximum of 50 websites into a single group and you can create a maximum of 20 groups. For more information, see [Scenario 6: Monitor or restrict user activities on sensitive service domains](endpoint-dlp-using.md#scenario-6-monitor-or-restrict-user-activities-on-sensitive-service-domains).

When it comes to pasting sensitive data to an excluded website, make sure you have following software installed.

- Windows 10 and later (20H2, 21H1, 21H2, and later) - [KB5023773](https://support.microsoft.com/en-us/topic/march-21-2023-kb5023773-os-builds-19042-2788-19044-2788-and-19045-2788-preview-5850ac11-dd43-4550-89ec-9e63353fef23)
- Win 11 21H2 - [KB5023774](https://support.microsoft.com/en-us/topic/march-28-2023-kb5023774-os-build-22000-1761-preview-67b4cfda-120a-422f-98c0-35124ddba839)
- Win 11 22H2 - [KB5023778](https://support.microsoft.com/en-us/topic/march-28-2023-kb5023778-os-build-22621-1485-preview-d490bb51-492e-410c-871f-50ad01b0f765)

> [!IMPORTANT]
> **Known Issue:** Once **PasteToBrowser** (preview) is enabled and deployed in a policy, all onboarded devices will see a briefcase icon in the address bar in Microsoft Edge when browsing to any site. This is not an indicator that a **PasteToBrowser** policy is being applied or enforced on that specific device.

For more information, see [Scenario 7: Restrict pasting sensitive content into a browser](endpoint-dlp-using.md#scenario-7-restrict-pasting-sensitive-content-into-a-browser-preview).

#### Supported syntax for designating websites in a website group

Don't include the networking protocol as part of the URL (for instance, *https://* or *file://*). Instead, use a flexible syntax to include and exclude domains, subdomains, websites, and subsites in your website groups. For example, 

- Use `*` as a wildcard to specify all domains or all subdomains
- Use `/` as a terminator at the end of a URL to scope to that specific site only.

When you add a URL without a terminating slash mark ( `/`), that URL is scoped to that site and all sub-sites.

This syntax applies to all http/https websites. Here are some examples:


| URL added to the website group  | URL will match  | URL won't match |
|---------|---------|---------|
|contoso.com  | //<!--nourl-->contoso.com </br> //<!--nourl-->contoso.com/ </br> //<!--nourl-->contoso.com/allsubsites1 </br> //<!--nourl-->contoso.com/allsubsites1/allsubsites2|        //<!--nourl-->allsubdomains.contoso.com </br> //<!--nourl-->allsubdomains.contoso.com.au    |
|contoso.com/     |//<!--nourl-->contoso.com </br> //<!--nourl-->contoso.com/         |//<!--nourl-->contoso.com/allsubsites1 </br> //<!--nourl-->contoso.com/allsubsites1/allsubsites2 </br> //<!--nourl-->allsubdomains.contoso.com </br> //<!--nourl-->allsubdomains.contoso.com/au   |
|*.contoso.com   | //<!--nourl-->contoso.com </br> //<!--nourl-->contoso.com/allsubsites </br> //<!--nourl-->contoso.com/allsubsites1/allsubsites2 </br> //<!--nourl-->allsubdomains.contoso.com </br> //<!--nourl-->allsubdomains.contoso.com/allsubsites </br> //<!--nourl-->allsubdomains1/allsubdomains2/contoso.com/allsubsites1/allsubsites2         | //<!--nourl-->allsubdomains.contoso.com.au|
|*.contoso.com/xyz     |//<!--nourl-->contoso.com </br> //<!--nourl-->contoso.com/xyz </br> //<!--nourl-->contoso.con/xyz/allsubsites/ </br> //<!--nourl-->allsubdomains.contoso.com/xyz </br> //<!--nourl-->allsubdomains.contoso.com/xyz/allsubsites </br> //<!--nourl-->allsubdomains1.allsubdomains2.contoso.com/xyz/allsubsites </br> //<!--nourl-->allsubdomains1.allsubdomains2.contoso.com/xyz/allsubsites1/allsubsites2         | //<!--nourl-->contoso.com/xyz </br> //<!--nourl-->allsubdomains.contoso.com/xyz/|
|*.contoso.com/xyz/     |//<!--nourl-->contoso.com/xyz </br> //<!--nourl-->allsubdomains.contoso.com/xyz         |//<!--nourl-->contoso.com </br> //<!--nourl-->contoso.com/xyz/allsubsites/ </br> //<!--nourl-->allsubdomains.contoso.com/xyz/allsubsites/ </br> //<!--nourl-->allsubdomains1.allsubdomains2.contoso.com/xyz/allsubsites/ </br> //<!--nourl-->allsubdomains1.allsubdomains2.contoso.com/xyz/allsubsites1/allsubsites2|

## Additional settings for Endpoint DLP

### Business justification in policy tips

You can control how users interact with the business justification option in [DLP policy tip notifications](use-notifications-and-policy-tips.md#add-user-notifications-to-a-dlp-policy). This option appears when users perform an activity that's protected by the **Block with override** setting in a DLP policy. This is a global setting. You can choose from one the following options:

- **Show default options and custom text box**: By default, users can select either a built-in justification, or enter their own text.
- **Only show default options**: Users are limited to selecting from a list of built-in justifications.
- **Only show custom text box**: Users are limited to entering a custom justification. The text box appears in the end-user policy tip notification, without a list of options.

#### Customizing the options in the drop-down menu

You can create up to five customized options that appear when users interact with the policy notification tip by selecting the **Customize the options drop-down menu**. 


|Option |Default text  |
|---------|---------|
|option 1    | **This is part of an established business workflow**  or you can enter customized text        |
|option 2  |**My manager has approved this action** or you can enter customized text         |
|option 3   |**Urgent access required; I'll notify my manager separately** or you can enter customized text          |
|Show false positive option     |**The information in these files is not sensitive** or you can enter customized text          |
|option 5    |**Other** or you can enter customized text         |

## Always audit file activity for devices

By default, when devices are onboarded, activity for Office, PDF, and CSV files is automatically audited and available for review in activity explorer. Turn off this feature if you want this activity to be audited only when onboarded devices are included in an active policy.

File activity is always audited for onboarded devices, regardless of whether they're included in an active policy.

## Printer groups

Use this setting to define groups of printers that you want to assign policy actions to that are different from the global printing actions.

The most common use case for creating printer groups is to use them for limiting the printing of contracts to only those printers in an organization's Legal department. After you define a printer group here, you can use it in all of your policies that are scoped to **Devices**. For more information on configuring policy actions to use authorization groups, see [Scenario 8 Authorization groups](endpoint-dlp-using.md#scenario-8-authorization-groups) .

You can create a maximum of 20 printer groups. Each group can contain a maximum of 50 printers.

> [!NOTE]
> This feature is available for devices running any of the following Windows versions:  
> - Windows 10 and later (20H2, 21H1, 21H2, and later) - [KB5020030](https://support.microsoft.com/en-us/topic/november-15-2022-kb5020030-os-builds-19042-2311-19043-2311-19044-2311-and-19045-2311-preview-237a9048-f853-4e29-a3a2-62efdbea95e2)
> - Win 11 21H2 - [KB5019157](https://support.microsoft.com/en-us/topic/november-15-2022-kb5019157-os-build-22000-1281-preview-d64fb317-3435-49ff-b2c4-d0356a51a6b0)
> - Win 11 22H2 - [KB5020044](https://support.microsoft.com/en-us/topic/november-29-2022-kb5020044-os-build-22621-900-preview-43f0bdf9-0b75-4110-bab3-3bd2433d84b3)
> - Windows Server 2022 - [KB5020032](https://support.microsoft.com/en-us/topic/november-22-2022-kb5020032-os-build-20348-1311-preview-7ca1be57-3555-4377-9eb1-0e4d714d9c68)


Let's look at an example. Say you want your DLP policy to block printing of contracts to all printers except for those that are in the legal department.

1. Use the following parameters to assign printers in each group.

    - **Friendly printer** name - Get the Friendly printer name value from the printer device property details in device manager.
    - **USB printer** - A printer connected through a computer's USB port. Select this option if you want to enforce any USB printer while leaving the USB product ID and USB vendor ID unselected. You can also assign a specific USB printer by specifying its USB product ID and USB vendor ID.
	    - **USB product ID** - Get the **Device Instance** path value from the printer device property details in device manager. Convert that value the to Product ID and Vendor ID format. For more information, see [Standard USB identifiers](/windows-hardware/drivers/install/standard-usb-identifiers).
	    - **USB vendor ID** - Get the **Device Instance** path value from the printer device property details in device manager. Convert that value to the Product ID and Vendor ID format. For more information, see [Standard USB identifiers](/windows-hardware/drivers/install/standard-usb-identifiers).
    - **IP range**
    - **Print to file** - Microsoft Print to PDF or Microsoft XPS Document Writer. If you only want to enforce Microsoft Print to PDF, you should use Friendly printer name with 'Microsoft Print to PDF'.
    - **Universal print deployed on a printer** -  For more information on universal printers, see [Set up Universal Print](/universal-print/fundamentals/universal-print-getting-started).
    - **Corporate printer** - is a print queue shared through on-premises Windows print server in your domain. Its path might look like this:  \\print-server\contoso.com\legal_printer_001
    - **Print to local** -  Any printer connecting through Microsoft print port but not any of above types. For example: print through remote desktop or redirect printer.

2. Assign each printer in the group a **Display name**. These names appear only in the Microsoft Purview console.

3. [Create a printer group](#create-a-printer-group) named **Legal printers** and add individual printers (with an alias) by their friendly name; for instance,: `legal_printer_001`, `legal_printer_002` and `legal_color_printer`.
(You can select multiple parameters at once to help you unambiguously identify a specific printer.)

4. Assign the policy actions to the group in a DLP policy: 
    - `Allow` (audit with no user notifications or alerts)
    - `Audit only` (you can add notifications and alerts)
    - `Block with override` (blocks the action, but the user can override)
    - `Block` (blocks no matter what)

### Create a Printer group

1. Open [Microsoft Purview compliance portal](https://compliance.microsoft.com) and navigate to **Data loss prevention** > **Endpoint DLP settings** > **Printer groups**.
1. Select **Create printer group**.
1. Give the group a name.
1. Select **Add printer**.
1. Give the printer a **Friendly name**. The name you select only appears here.
1. Select the parameters and provide the values to unambiguously identify the specific printer.
1. Select **Add**.
1. Add other printers as needed.
1. Select **Save** and then **Close**.

## Removable storage device groups

Use this setting to define groups of removable storage devices, such as USB thumb drives, that you want to assign policy actions to that are different from the global printing actions. For example, say you want your DLP policy to block items with engineering specifications from being copied to removable storage devices, except for designated USB-connected hard drives that are used to back up data for offsite storage.

You can create a maximum of 20 groups, with a maximum 50 removable storage devices in each group.

> [!NOTE]
> This feature is available for devices running any of the following Windows versions:  
> 
> - Windows 10 and later (20H2, 21H1, 21H2) with KB 5018482
> - Win 11 21H2, 22H2 with KB 5018483
> - Windows 10 RS5 (KB 5006744) and Windows Server 2022 

Use the following parameters to define your removable storage devices.

- **Storage device friendly name** - Get the Friendly name value from the storage device property details in device manager. Wildcard values are supported.
- **USB product ID** - Get the Device Instance path value from the USB device property details in device manager. Convert it to Product ID and Vendor ID format, see [Standard USB identifiers](/windows-hardware/drivers/install/standard-usb-identifiers).
- **USB vendor ID** - Get the Device Instance path value from the USB device property details in device manager. Convert it to Product ID and Vendor ID format, see [Standard USB identifiers](/windows-hardware/drivers/install/standard-usb-identifiers).
- **Serial number ID** - Get the serial number ID value from the storage device property details in device manager. Wildcard values are supported.
- **Device ID** - Get the device ID value from the storage device property details in device manager. Wildcard values are supported.
- **Instance path ID** - Get the device ID value from the storage device property details in device manager. Wildcard values are supported.
- **Hardware ID** - Get the hardware ID value from the storage device property details in device manager. Wildcard values are supported.

You assign each removable storage device in the group an **Alias**. The alias is a friendly name that only appears in the Microsoft Purview console. So, continuing with the example, you would create a removable storage device group named **Backup** and add individual devices  (with an alias) by their friendly name, like `backup_drive_001`, and `backup_drive_002`.

You can multi-select the parameters and then the printer group includes all devices that satisfy those parameters.

You can assign these policy actions to the group in a DLP policy:

- `Allow` (audit with no user notifications or alerts)
- `Audit only` (you can add notifications and alerts)
- `Block with` override (blocks the action, but the user can override)
- `Block` (blocks no matter what)

### Create a Removable storage device group

1. Open [Microsoft Purview compliance portal](https://compliance.microsoft.com) > **Data loss prevention** > **Endpoint DLP settings** > **Removable storage device groups**.
2. Select **Create removable storage device group**.
3. Provide a **Group name**.
4. Select **Add removable storage device**.
5. Provide an **Alias**.
6. Select the parameters and provide the values to unambiguously identify the specific device.
7. Select **Add**.
8. Add other devices to the group as needed.
9. Select **Save** and then **Close**.

The most common use case for creating removable storage groups is to use them to specify which removable storage devices users can copy files to. Generally, copying is only allowed for devices in a designated **Backup** group.

After you define a removable storage device group, you can use it in all of your policies that are scoped to **Devices**. See [Scenario 8: Authorization groups](endpoint-dlp-using.md#scenario-8-authorization-groups) for more information on configuring policy actions to use authorization groups.

## Network share groups

Use this setting to define groups of network share paths that you want to assign policy actions to that are different from the global network share path actions. For example, say you want your DLP policy to prevent users from saving or copying protected files to network shares except the network shares in a particular group.

> [!NOTE]
> This feature is available for devices running any of the following Windows versions:  
> 
> - Windows 10 and later (20H2, 21H1, 21H2) with KB 5018482 
> - Win 11 21H2, 22H2 with KB 5018483
> - Windows 10 RS5 (KB 5006744)  and Windows Server 2022 

To include network share paths in a group, define the prefix that they all the shares start with. For example:

- '\\Library' will match:
    -  \Library folder and all its subfolders.

- You can use Wildcards, for example '\\Users\*\Desktop' will match:
    - '\\Users\user1\Desktop'
    - '\\Users\user1\user2\Desktop'
    - '\\Users\*\Desktop'

- You can also use Environmental variables, for example:
    - %AppData%\app123

You can assign the following policy actions to the group in a DLP policy:

- `Allow` (audit with no user notifications or alerts)
- `Audit only` (you can add notifications and alerts)
- `Block with override` (blocks the action, but the user can override)
- `Block` (blocks no matter what)

Once you have defined a network share group, you can use it in all of your DLP policies that are scoped to **Devices**. For more information about configuring policy actions to use authorization groups, see [Scenario 8 Authorization groups](endpoint-dlp-using.md#scenario-8-authorization-groups).

### Create a Network Share group

1. Open [Microsoft Purview compliance portal](https://compliance.microsoft.com) > **Data loss prevention** > **Endpoint DLP settings** > **Network share groups**.
1.Select **Create network share group**.
1. Provide a **Group name**.
1. Add the file path to the share.
1. Select **Add**.
1. Add other share paths to the group as needed.
1. Select **Save** and then **Close**.

## VPN settings

Use the VPN list to control only those actions that are being carried out over that VPN.

> [!NOTE]
> This feature is available for devices running any of these versions of Windows:  
>
> - Windows 10 and later (20H2, 21H1, 21H2) with KB 5018482
> - Windows 11 21H2, 22H2 with KB 5018483
> - Windows 10 RS5 (KB 5006744)

When you list a VPN in **VPN Settings**, you can assign the following policy actions to them:

- `Allow` (audit with no user notifications or alerts)
- `Audit only` (you can add notifications and alerts)
- `Block with override` (blocks the action, but the user can override)
- `Block` (blocks no matter what)

These actions can be applied individually or collectively to the following user activities:

- Copy to clipboard
- Copy to a USB removable device
- Copy to a network share
- Print
- Copy or move using unallowed (restricted) Bluetooth app
- Copy or move using RDP

When configuring a DLP policy to restrict activity on devices, you can control what happens to each activity performed when users are connected to your organization within any of the VPNs listed.

Use the **Server address** or **Network address** parameters to define the VPN allowed.

### Get the Server address or Network address

1. On a DLP monitored Windows device, open a **Windows PowerShell** window as an administrator.
2. Run the following cmdlet, which returns multiple fields and values.

```powershell-interactive
Get-VpnConnection
```

3. Among the results of the cmdlet, find the **ServerAddress** field and record that value. You use the **ServerAddress** when you create a VPN entry in the VPN list.
4. Find the **Name** field and record that value. The **Name** field maps to the **Network address** field when you create a VPN entry in the VPN list.

### Add a VPN

1. Open [Microsoft Purview compliance portal](https://compliance.microsoft.com) > **Data loss prevention** > **Endpoint DLP settings** > **VPN settings**.
1. Select **Add or edit VPN addresses**.
1. Provide either the **Server address** or **Network address** that you recorded after running `Get-VpnConnection`.
1. Select **Save**.
1. Close the item.

> [!IMPORTANT]
> When you use the VPN list in defining the actions of a policy, you will also see **Corporate network** as an option. **Corporate network** connections are all connections to your organizations resources. These connections can include VPNs. 

See [Scenario 9: Network exceptions](endpoint-dlp-using.md#scenario-9-network-exceptions) for more information on configuring policy actions to use network exceptions.

## See also

- [Learn about Endpoint data loss prevention](endpoint-dlp-learn-about.md)
- [Get started with Endpoint data loss prevention](endpoint-dlp-getting-started.md)
- [Learn about data loss prevention](dlp-learn-about-dlp.md)
- [Get started with Activity explorer](data-classification-activity-explorer.md)
- [Microsoft Defender for Endpoint](/windows/security/threat-protection/)
- [Onboard Windows 10 and Windows 11 devices into Microsoft Purview overview](/microsoft-365/compliance/device-onboarding-overview)
- [Microsoft 365 subscription](https://www.microsoft.com/microsoft-365/compare-microsoft-365-enterprise-plans?rtc=1)
- [Azure Active Directory joined](/azure/active-directory/devices/concept-azure-ad-join)
- [Download the new Microsoft Edge based on Chromium](https://support.microsoft.com/help/4501095/download-the-new-microsoft-edge-based-on-chromium)
- [Get started with the default DLP policy](get-started-with-the-default-dlp-policy.md)
- [Create and Deploy data loss prevention policies](dlp-create-deploy-policy.md)
