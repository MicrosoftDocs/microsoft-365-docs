---
title: Onboard Microsoft Sentinel to Microsoft 365 Defender 
description: Learn how to connect your Microsoft Sentinel environment to Microsoft 365 Defender to unify your security operations.
ms.service: microsoft-365-security
ms.subservice: m365d
ms.mktglfcycl: deploy
ms.sitesec: library
ms.pagetype: security
f1.keywords: 
  - NOCSH
ms.author: cwatson
author: cwatson-cat
ms.localizationpriority: high
manager: dansimp
audience: ITPro
ms.collection: 
    - m365-security
    - m365solution-getstarted
    - highpri
    - tier1
ms.topic: how-to
search.appverid: 
  - MOE150
  - MET150
ms.date: 10/05/2023
---

# Onboard Microsoft Sentinel to Microsoft 365 Defender

**Applies to:**
- Microsoft 365 Defender


Intro paragraph

## Prerequisites
Include perm requirements

## (Procedural steps)

## Resources

Many of the Microsoft Sentinel features are integrated into Microsoft 365 Defender. For these features, you'll notice that the experience between Microsoft Sentinel in the Azure portal and Microsoft 365 Defender are similar. Leverage the following articles to help you start working with Microsoft Sentinel in Microsoft 365 Defender. When using these articles, keep in mind that your starting point in this context is Microsoft 365 Defender instead of the Azure portal.

- Enable solutions and content
  - [Discover and manage Microsoft Sentinel out-of-the-box content](/azure/sentinel/sentinel-solutions-deploy)
  - [Microsoft Sentinel content hub catalog](/azure/sentinel/sentinel-solutions-catalog)
  - [Deploy custom content from your repository](/azure/sentinel/ci-cd)
  
- Collect data
  - [Find your Microsoft Sentinel data connector](/azure/sentinel/data-connectors-reference)
  
- Integrate threat intelligence
  - [Enable data connector for Microsoft Defender Threat Intelligence](/azure/sentinel/connect-mdti-data-connector)
  - [Connect your threat intelligence platform to Microsoft Sentinel with the upload indicators API](/azure/sentinel/connect-threat-intelligence-upload-api)
  - [Connect Microsoft Sentinel to STIX/TAXII threat intelligence feeds](/azure/sentinel/connect-threat-intelligence-taxii)
  - [Add indicators in bulk to Microsoft Sentinel threat intelligence from a CSV or JSON file](/azure/sentinel/indicators-bulk-file-import)
  - [Work with threat indicators in Microsoft Sentinel](/azure/sentinel/work-with-threat-indicators)

- Detect threats
  - [Understand security coverage by the MITRE ATT&CK framework](/azure/sentinel/mitre-coverage)
  - [Create custom analytics rules to detect threats](/azure/sentinel/detect-threats-custom)
  - [Work with near-real-time (NRT) detection analytics rules in Microsoft Sentinel](/azure/sentinel/create-nrt-rules)
  - [Create watchlists](/azure/sentinel/watchlists-create)
  - [Manage watchlists in Microsoft Sentinel](/azure/sentinel/watchlists-manage)
  
- Hunt for threats
  - [Conduct end-to-end threat hunting with Hunts](/azure/sentinel/hunts)
  - [Use hunting bookmarks for data investigations](/azure/sentinel/bookmarks)
  - [Use hunting Livestream in Microsoft Sentinel to detect threat](/azure/sentinel/livestream)
  - [Hunt for security threats with Jupyter notebooks](/azure/sentinel/notebooks-hunt)

- Investigate incidents
  - [Search across long time spans in large datasets](/sentinel/search-jobs)
  - [Restore archived logs from search](/azure/sentinel/restore)
- Automate responses
  - [Create automation rules](/azure/sentinel/create-manage-use-automation-rules)
  - [Create and customize Microsoft Sentinel playbooks from content templates](/azure/sentinel/use-playbook-templates)

- Manage Microsoft Sentinel

  - [Visualize and monitor your data by using workbooks](/azure/sentinel/monitor-your-data)