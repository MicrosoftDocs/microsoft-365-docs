---
title: Securities and Exchange Commission - Regulation Systems Compliance and Integrity (SCI)
description: The SCI rules apply to SCI entities, which include such self-regulatory organizations (SROs) as stock and options exchanges, registered clearing agencies, and alternative trading systems (ATSs).
keywords: Microsoft 365, compliance, offerings
localization_priority: None
ms.prod: microsoft-365-enterprise
ms.topic: article
f1.keywords:
- NOCSH
ms.author: robmazz
author: robmazz
manager: laurawi
audience: itpro
ms.collection: M365-security-compliance
hideEdit: true
titleSuffix: Microsoft Compliance
---

# Securities and Exchange Commission: Regulation Systems Compliance and Integrity (SCI)

## About Regulation SCI

The US Securities and Exchange Commission (SEC) is an independent agency of the US federal government and the primary overseer and regulator of US securities markets. It wields enforcement authority over federal securities laws, proposes new securities rules, and oversees market regulation of the securities industry.

In November 2014, the SEC adopted [Regulation Systems Compliance and Integrity (SCI)](https://www.sec.gov/rules/final/2014/34-73639.pdf) (and Form SCI for reporting SCI events) to bolster the technology infrastructure in the US securities markets. The regulation is designed to reduce the frequency of system outages, improve resiliency when such incidents do occur, and increase SEC oversight of securities market technology and enforcement of its regulations.

The SCI rules apply to SCI entities, which include such self-regulatory organizations (SROs) as stock and options exchanges, registered clearing agencies, and alternative trading systems (ATSs). The rules primarily regulate the systems that directly support key securities market functions: trading, clearance and settlement, order routing, market data, market regulation, and market surveillance.

## Microsoft and SEC Regulation SCI

The US Securities and Exchange Commission (SEC) adopted Regulation SCI to strengthen the technology infrastructure of the financial organizations that operate and support the US securities markets. Under SEC oversight, its requirements are designed to ensure that these systems have high availability, strong resiliency, and low latency (high volume of messages with little delay).

To help guide US financial services customers who must comply with this regulation, Microsoft has published the [Microsoft Azure SEC Regulation Systems Compliance and Integrity Cloud Implementation Guide](https://servicetrust.microsoft.com/ViewPage/TrustDocumentsV3?command=Download&downloadType=Document&downloadId=a69ce0c1-7b7e-44e9-9143-867241e6b2f9&tab=7f51cb60-3d6c-11e9-b2af-7bb9f5d2d913&docTab=7f51cb60-3d6c-11e9-b2af-7bb9f5d2d913_FAQ_and_White_Papers). The guidance within this document:

- Provides an overview of overall Azure capabilities that support strong resiliency, high availability, and low latency.
- Makes clear which control areas and regulatory aspects Azure addresses. This point-by-point mapping of Azure features and services to SCI requirements measures Azure compliance against the regulatory framework. It also helps customers understand where they can shift security responsibilities to Azure that they had fully owned when they operated on premises. These capabilities are backed by the promises Microsoft makes in Azure SLAs.
- Specifies each Regulation SCI requirement that is the customer’s responsibility to address, and offers Azure documentation and services to help them address these responsibilities.

This document provides a thorough checklist of critical Regulation SCI focus areas. This checklist helps financial organizations understand how they can adopt Azure to help assure their regulators, customers, and leadership that they can comply with the applicable regulatory requirements.

## Microsoft in-scope cloud services

- [Azure](https://aka.ms/AzureCompliance)

## How to implement

- [Regulation SCI Implementation Guide](https://servicetrust.microsoft.com/ViewPage/TrustDocumentsV3?command=Download&downloadType=Document&downloadId=a69ce0c1-7b7e-44e9-9143-867241e6b2f9&tab=7f51cb60-3d6c-11e9-b2af-7bb9f5d2d913&docTab=7f51cb60-3d6c-11e9-b2af-7bb9f5d2d913_FAQ_and_White_Papers): Maps Azure capabilities against the regulation and details the shared responsibility for compliance.
- [Designing reliable Azure applications](https://docs.microsoft.com/azure/architecture/resiliency/): A brief overview of how to build reliability into each step of Azure application design.
- [Designing highly available applications](https://docs.microsoft.com/azure/storage/common/storage-designing-ha-apps-with-ragrs): How developers can help ensure that their Azure Storage applications are highly available.
- [Risk Assessment & Compliance Guide](https://aka.ms/RiskGovernanceGuide): Create a governance model for risk assessment of Microsoft cloud services, and regulator notification.

## Frequently asked questions

**What does shared responsibility mean when using cloud technology?**

As computing environments move from datacenters on-premises to those in the cloud, the responsibility of security also shifts—the cloud services provider (CSP) and customer now share that responsibility. For every application and solution, how much of that responsibility falls on the customer and how much on the CSP depends on the Azure model that a customer deploys—IaaS, SaaS, or PaaS. It is the customer’s duty to understand to what degree they are accountable for implementing the required security controls. However, Microsoft provides guidance to help customers navigate this complex dynamic. For more information, read [Shared Responsibilities for Cloud Computing](https://gallery.technet.microsoft.com/Shared-Responsibilities-81d0ff91).

**Which financial institutions can take advantage of Azure to help meet Regulation SCI requirements?**

Financial organizations, or SCI entities, that are subject to this regulation can deploy Azure. The SEC says its regulation applies to 'self-regulatory organizations (SROs), including stock and options exchanges, registered clearing agencies, FINRA, and the MSRB, alternative trading systems (ATSs), that trade NMS and non-NMS stocks exceeding specified volume thresholds, disseminators of consolidated market data (plan processors), and certain exempt clearing agencies.'

## Resources

- [SEC Responses to Frequently Asked Questions Concerning Regulation SCI](https://www.sec.gov/divisions/marketreg/regulation-sci-faq.shtml)
- [Business continuity and disaster recovery (BCDR): Azure Paired Regions](https://docs.microsoft.com/azure/best-practices-availability-paired-regions)
- [Compliance Map of Cloud Computing Regulatory Principles and Microsoft Online Services](https://aka.ms/FinServ-Guide-US)
- [Microsoft Cloud Financial Services Compliance Program](https://aka.ms/FSCP-Print)
- [Financial services compliance in Azure](https://aka.ms/FinServ-Compliance-Azure)
- [Microsoft Financial Services](https://aka.ms/FinServ-Compliance)
- [Microsoft and SEC Rule 17a-4](offering-SEC-17a-4.md)
- [Compliance on the Microsoft Trust Center](https://www.microsoft.com/trust-center/compliance/compliance-overview)
