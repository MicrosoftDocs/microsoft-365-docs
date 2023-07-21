---
title: Web content filtering
description: Use web content filtering in Microsoft Defender for Endpoint to track and regulate access to websites based on their content categories.
ms.service: microsoft-365-security
ms.author: deniseb
author: denisebmsft
ms.localizationpriority: medium
ms.date: 07/06/2023
manager: dansimp
audience: ITPro
ms.collection:
- m365-security
- tier2
ms.custom: admindeeplinkDEFENDER
ms.topic: conceptual
ms.subservice: mde
search.appverid: met150
---

# Web content filtering

**Applies to:**
- [Microsoft 365 Defender](https://go.microsoft.com/fwlink/?linkid=2118804)
- [Microsoft Defender for Endpoint Plan 1](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Endpoint Plan 2](https://go.microsoft.com/fwlink/p/?linkid=2154037)
- [Microsoft Defender for Business](../defender-business/mdb-overview.md)

> [!TIP]
> Want to experience Microsoft Defender for Endpoint? [Sign up for a free trial.](https://signup.microsoft.com/create-account/signup?products=7f379fee-c4f9-4278-b0a1-e4c8c2fcdf7e&ru=https://aka.ms/MDEp2OpenTrial?ocid=docs-wdatp-main-abovefoldlink&rtc=1)


## What is web content filtering?

Web content filtering is part of the [Web protection](web-protection-overview.md) capabilities in Microsoft Defender for Endpoint and Microsoft Defender for Business. Web content filtering enables your organization to track and regulate access to websites based on their content categories. Many of these websites (even if they're not malicious) might be problematic because of compliance regulations, bandwidth usage, or other concerns.

Configure policies across your device groups to block certain categories. Blocking a category prevents users within specified device groups from accessing URLs associated with the category. For any category that's not blocked, the URLs are automatically audited. Your users can access the URLs without disruption, and you'll gather access statistics to help create a more custom policy decision. Your users will see a block notification if an element on the page they're viewing is making calls to a blocked resource.

> [!NOTE]
> Device group creation is supported in Defender for Endpoint Plan 1 and Plan 2.

Web content filtering is available on the major web browsers, with blocks performed by Windows Defender SmartScreen (Microsoft Edge) and Network Protection (Chrome, Firefox, Brave, and Opera). For more information about browser support, see the [prerequisites](#prerequisites) section.

## Benefits of web content filtering

- Users are prevented from accessing websites in blocked categories, whether they're browsing on-premises or away.
- Your security team can access web reports in the same central location, with visibility over actual blocks and web usage.
- If you are using Defender for Endpoint, your security team can conveniently deploy policies to groups of users using device groups defined in [Microsoft Defender for Endpoint role-based access control settings](/microsoft-365/security/defender-endpoint/rbac).
- If you are using Defender for Business, you can define one web content filtering policy that will be applied to all users.

## Prerequisites

Before trying out this feature, make sure you meet the requirements described in the following table:

| Requirement | Description |
|:---|:---|
| Subscription | Your subscription must include one of the following:<br/>- [Windows 10/11 Enterprise E5](/windows/deployment/deploy-enterprise-licenses)<br/>- [Microsoft 365 E5](https://www.microsoft.com/microsoft-365/enterprise/e5?activetab=pivot%3aoverviewtab)<br/>- Microsoft 365 A5<br/>- Microsoft 365 E5 Security<br/>- [Microsoft 365 E3](https://www.microsoft.com/microsoft-365/enterprise/e3?activetab=pivot%3aoverviewtab)<br/>- [Microsoft Defender for Endpoint Plan 1 or Plan 2](../defender/eval-defender-endpoint-overview.md)<br/>- [Microsoft Defender for Business](../defender-business/mdb-overview.md)<br/>- [Microsoft 365 Business Premium](https://www.microsoft.com/microsoft-365/business/microsoft-365-business-premium)|
| Portal access | You must have access to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>. |
| Operating system | Your organization's devices must be running one of the following operating systems with the [latest antivirus/antimalware updates](microsoft-defender-antivirus-updates.md): <br/>- Windows 11<br/>- Windows 10 Anniversary Update (version 1607) or later <br/>- For information on MacOS availability, see [Network Protection for MacOS](network-protection-macos.md)<br/>- For information on Linux availability, see [Network Protection for Linux](network-protection-linux.md)|
| Related protection | [Windows Defender SmartScreen](/windows/security/threat-protection/microsoft-defender-smartscreen/microsoft-defender-smartscreen-overview) and [network protection](network-protection.md) must be enabled on your organization's devices. |

## Data handling

Data is stored in the region that was selected as part of your [Microsoft Defender for Endpoint data handling settings](data-storage-privacy.md). Your data will not leave the data center in that region. In addition, your data will not be shared with any third parties, including our data providers.

## Precedence for multiple active policies

Applying multiple different web content filtering policies to the same device will result in the more restrictive policy applying for each category. Consider the following scenario:

- **Policy 1**: blocks categories 1 and 2 and audits the rest
- **Policy 2**: blocks categories 3 and 4 and audits the rest

The result is that categories 1 - 4 are all blocked.  This is illustrated in the following image.

:::image type="content" source="images/web-content-filtering-policies-mode-precedence.png" alt-text="Illustrates precedence of web content filtering policy block mode over audit mode":::

## Turn on web content filtering

1. Go to the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a> and sign in.

2. In the navigation pane, select **Settings** \> **Endpoints** \> **General** \> **Advanced Features**.

3. Scroll down until you see **Web content filtering**.

4. Switch the toggle to **On**, and then select **Save preferences**.

### Configure web content filtering policies

Web content filtering policies specify which site categories are blocked on which device groups. To manage the policies, go to **Settings** \> **Endpoints** \> **Web content filtering** (under **Rules**).

Policies can be deployed to block any of the following parent or child categories:

<details>
<summary>Adult content</summary>

**Cults**: Sites related to groups or movements whose members demonstrate passion for a belief system that is different from those that are socially accepted.

**Gambling**: Online gambling and sites that promote gambling skills and practice.

**Nudity**: Sites that provide full-frontal and semi-nude images or videos, typically in artistic form, and might allow the download or sale of such materials.

**Pornography / Sexually explicit**: Sites containing sexually explicit content in an image-based or textual form. Any form of sexually oriented material is also listed here.

**Sex education**: Sites that discuss sex and sexuality in an informative and non-voyeuristic way, including sites that provide education about human reproduction and contraception, sites that offer advice on preventing infection from sexual diseases, and sites that offer advice on sexual health matters.

**Tasteless**: Sites oriented towards content unsuitable for school children to view or that an employer would be uncomfortable with their staff accessing, but not necessarily violent or pornographic.

**Violence**: Sites that display or promote content related to violence against humans or animals.

</details>

<details>
<summary>High bandwidth</summary>

**Download sites**: Sites whose primary function is to allow users to download media content or programs, such as computer programs.

**Image sharing**: Sites that are used primarily for searching or sharing photos, including those that have social aspects.

**Peer-to-peer**: Sites that host peer-to-peer (P2P) software or facilitate the sharing of files using P2P software.

**Streaming media & downloads**: Sites whose primary function is the distribution of streaming media, or sites that allow users to search, watch, or listen to streaming media.

</details>

<details>
<summary>Legal liability</summary>

**Child abuse images**: Sites that include child abuse images or pornography.

**Criminal activity**: Sites that give instruction on, advice about, or promotion of illegal activities.

**Hacking**: Sites that provide resources for illegal or questionable use of computer software or hardware, including sites that distribute copyrighted material that has been cracked.

**Hate & intolerance**: Sites promoting aggressive, degrading, or abusive opinions about any section of the population that could be identified by race, religion, gender, age, nationality, physical disability, economic situation, sexual preferences or any other lifestyle choice.

**Illegal drug**: Sites that sell illegal/controlled substances, promote substance abuse, or sell related paraphernalia.

**Illegal software**: Sites that contain or promote the use of malware, spyware, botnets, phishing scams, or piracy & copyright theft.

**School cheating**: Sites related to plagiarism or school cheating.

**Self-harm**: Sites that promote self-harm, including cyberbullying sites that contain abusive and/or threatening messages towards users.

**Weapons**: Any site that sells weapons or advocates the use of weapons, including but not limited to guns, knives, and ammunition.

</details>

<details>
<summary>Leisure</summary>

**Chat**: Sites that are primarily web-based chat rooms.

**Games**: Sites relating to video or computer games, including sites that promote gaming through hosting online services or information related to gaming.

**Instant messaging**: Sites that can be used to download instant messaging software or client based instant messaging.

**Professional network**: Sites that provide professional networking services.

**Social networking**: Sites that provide social networking services.

**Web-based email**: Sites offering web-based mail services.

</details>

<details>
<summary>Uncategorized</summary>

**Newly registered domains**: Sites that have been newly registered in the past 30 days and have not yet been moved to another category.

**Parked domains**: Sites that have no content or are parked for later use.

**NOTE**: Uncategorized contains only newly registered domains and parked domains, and does not include all other sites outside of these categories.

</details>

### Create a policy

To add a new policy, follow these steps:

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, choose **Settings** > **Endpoints** > **Web content filtering** > **+ Add policy**.

2. Specify a name.

3. Select the categories to block. Use the expand icon to fully expand each parent category and select specific web content categories.

4. Specify the policy scope. Select the device groups to specify where to apply the policy. Only devices in the selected device groups will be prevented from accessing websites in the selected categories.

   > [!IMPORTANT]
   > If you're using either Microsoft 365 Business Premium or Defender for Business, your web content filtering policy is applied to all users by default. Scoping does not apply.

5. Review the summary and save the policy.

> [!NOTE]
> - There may be up to 2 hours of latency between the time a policy is created and the policy being enforced on the device.
> - You can deploy a policy without selecting any category on a device group. This action will create an audit only policy to help you understand user behavior before creating a block policy.
> - If you are removing a policy or changing device groups at the same time, this might cause a delay in policy deployment.
> - Blocking the "Uncategorized" category could lead to unexpected and undesired results.

## End-user experience

The blocking experience for third-party supported browsers is provided by network protection, which provides a system-level message notifying the user of a blocked connection. For a more user-friendly, in-browser experience, consider using Microsoft Edge.

### Allow specific websites

It's possible to override the blocked category in web content filtering to allow a single site by creating a custom indicator policy. The custom indicator policy will supersede the web content filtering policy when it's applied to the device group in question.

To define a custom indicator, follow these steps:

1. In the <a href="https://go.microsoft.com/fwlink/p/?linkid=2077139" target="_blank">Microsoft 365 Defender portal</a>, go to **Settings** \> **Endpoints** \> **Indicators** \> **URL/Domain** \> **Add Item**.

2. Enter the domain of the site.

3. Set the policy action to **Allow**.

### Dispute categories

If you encounter a domain that has been incorrectly categorized, you can dispute the category directly from the Microsoft 365 Defender portal.

To dispute the category of a domain, navigate to **Reports** \> **Web protection** \> **Web Content Filtering Details** \> **Domains**. On the domains tab of the Web Content Filtering reports, you will see an ellipsis beside each of the domains. Hover over this ellipsis and select **Dispute Category**.

A panel will open where you can select the priority and add more details such as the suggested category for recategorization. Once you complete the form, select **Submit**. Our team will review the request within one business day. For immediate unblocking, create a [custom allow indicator](indicator-ip-domain.md).

## Web content filtering cards and details

Select **Reports** \> **Web protection** to view cards with information about web content filtering and web threat protection. The following cards provide summary information about web content filtering.

### Web activity by category

This card lists the parent web content categories with the largest increase or decrease in the number of access attempts. Understand drastic changes in web activity patterns in your organization from last 30 days, 3 months, or 6 months. Select a category name to view more information.

In the first 30 days of using this feature, your organization might not have enough data to display this information.

:::image type="content" source="images/web-activity-by-category600.png" alt-text="The web activity by category card" lightbox="images/web-activity-by-category600.png":::

### Web content filtering  summary card

This card displays the distribution of blocked access attempts across the different parent web content categories. Select one of the colored bars to view more information about a specific parent web category.

:::image type="content" source="images/web-content-filtering-summary.png" alt-text="The web content filtering summary card" lightbox="images/web-content-filtering-summary.png":::

### Web activity summary card

This card displays the total number of requests for web content in all URLs.

:::image type="content" source="images/web-activity-summary.png" alt-text="The web activity summary card" lightbox="images/web-activity-summary.png":::

### View card details

You can access the **Report details** for each card by selecting a table row or colored bar from the chart in the card. The report details page for each card contains extensive statistical data about web content categories, website domains, and device groups.

:::image type="content" source="images/web-protection-report-details.png" alt-text="The web protection report details" lightbox="images/web-protection-report-details.png":::

- **Web categories**: Lists the web content categories that have had access attempts in your organization. Select a specific category to open a summary flyout.

- **Domains**: Lists the web domains that have been accessed or blocked in your organization. Select a specific domain to view detailed information about that domain.

- **Device groups**: Lists all the device groups that have generated web activity in your organization

Use the time range filter at the top left of the page to select a time period. You can also filter the information or customize the columns. Select a row to open a flyout pane with even more information about the selected item.

### Known issues and limitations

Network protection does not currently support SSL inspection, which might result in some sites being allowed by web content filtering that would normally be blocked. Sites would be allowed due to a lack of visibility into encrypted traffic after the TLS handshake has taken place and an inability to parse certain redirects.  This includes redirections from some web-based mail login pages to the mailbox page. As an accepted workaround, you can create a custom block indicator for the login page to ensure no users are able to access the site. Keep in mind, this might block their access to other services associated with the same website.

If you are using Microsoft 365 Business Premium or Microsoft Defender for Business, you can define one web content filtering policy for your environment. That policy will apply to all users by default.

## See also

- [Web protection overview](web-protection-overview.md)
- [Web threat protection](web-threat-protection.md)
- [Monitor web security](web-protection-monitoring.md)
- [Respond to web threats](web-protection-response.md)
- [Requirements for Network Protection](web-content-filtering.md)
[!INCLUDE [Microsoft Defender for Endpoint Tech Community](../../includes/defender-mde-techcommunity.md)]
