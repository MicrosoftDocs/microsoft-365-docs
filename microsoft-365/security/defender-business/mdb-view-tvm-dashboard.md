---
title: View your Microsoft Defender Vulnerability Management dashboard in Microsoft Defender for Business
description: Use your Microsoft Defender Vulnerability Management dashboard to see important items to address in Defender for Business.
search.appverid: MET150
author: denisebmsft
ms.author: deniseb
manager: dansimp 
audience: Admin
ms.topic: conceptual
ms.service: microsoft-365-security
ms.subservice: mdb
ms.localizationpriority: medium
ms.date: 08/02/2022
ms.reviewer: nehabha
f1.keywords: NOCSH 
ms.collection: 
- SMB
- m365-security
- tier1
ms.custom: intro-get-started
---

# Use your vulnerability management dashboard in Microsoft Defender for Business

Defender for Business includes a vulnerability management dashboard that is designed to save your security team time and effort. In addition to providing an exposure score, that dashboard enables you to view information about exposed devices and see relevant security recommendations. You can use your Defender Vulnerability Management dashboard to:

- View your exposure score, which is associated with devices in your company.
- View your top security recommendations, such as addressing impaired communications with devices, turning on firewall protection, or updating Microsoft Defender Antivirus definitions.
- View remediation activities, such as any files that were sent to quarantine, or vulnerabilities found on devices.

## Vulnerability management features and capabilities

Vulnerability management features and capabilities in Microsoft Defender for Business include:

- **Dashboard**: Provides information about vulnerabilities, exposure, and recommendations. You can see recent remediation activities, exposed devices, and ways to improve your company's overall security. Each card in the dashboard includes a link to more detailed information or to a page where you can take a recommended action.

    :::image type="content" source="media/mdb-mdvm-dashboard.png" alt-text="Screenshot of Microsoft Defender Vulnerability Management Dashboard." lightbox="media/mdb-mdvm-dashboard.png":::

- **Recommendations**: Lists current security recommendations and related threat information to review and consider. When you select an item in the list, a flyout panel opens with more details about threats and actions you can take.

- **Remediation**: Lists any remediation actions and their status. Remediation activities can include sending a file to quarantine, stopping a process from running, and blocking a detected threat from running. Remediation activities can also include updating a device, running an antivirus scan, and more. 

    :::image type="content" source="media/mdb-mdvm-remediation.png" alt-text="Screenshot of Microsoft Defender Vulnerability Management-Remediation." lightbox="media/mdb-mdvm-remediation.png":::

- **Inventories**: Lists software and apps currently in use in your organization. You'll see browsers, operating systems, and other software on devices, along with identified weaknesses and threats.

- **Weaknesses**: Lists vulnerabilities along with the number of exposed devices in your organization. If you see "0" in the Exposed devices column, you do not have to take any immediate action. However, you can learn more about each vulnerability listed on this page. Select an item to learn more about it and what you can do to mitigate the potential threat to your company.

    :::image type="content" source="media/mdb-mdvm-weakness-details.png" alt-text="Screenshot of Microsoft Defender Vulnerability Management-Weaknesses." lightbox="media/mdb-mdvm-weakness-details.png":::

- **Event timeline**: Lists vulnerabilities that affect your organization in a timeline view.   

[Learn more about Microsoft Defender Vulnerability Management](../defender-vulnerability-management/defender-vulnerability-management.md).

## Next steps

- [Try tutorials and simulations in Defender for Business](mdb-tutorials.md)
- [Onboard devices to Defender for Business](mdb-onboard-devices.md)
- [View or edit policies in Defender for Business](mdb-view-edit-create-policies.md)
