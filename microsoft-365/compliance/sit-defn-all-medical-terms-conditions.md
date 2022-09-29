---
title: "All medical terms and conditions entity definition"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date:
audience: Admin
search.appverid: MET150
ms.topic: reference
f1_keywords:
- 'ms.o365.cc.UnifiedDLPRuleContainsSensitiveInformation'
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- tier2
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "All medical terms and conditions sensitive information type entity definition."
---

# All medical terms and conditions

All medical terms and conditions is a bundled named entity that detects medical terms and medical conditions. It detects English terms only. Use this SIT to detect all possible matches of medical terms and conditions.

## Format

Dictionary

## Pattern

Dictionary

## Checksum

No

## Description

This bundled named entity matches text that mentions medical conditions that are present in curated dictionaries. There's one curated dictionary per supported language. The dictionaries are from many international medical resources. The dictionaries include as many medical conditions as possible without risking a large number of false positives. Each entry contains the different forms that a single condition is commonly written in to ensure coverage, for example:

- *TB*
- *tuberculosis*
- *phthisis pulmonalis*

## Contains

This bundled named entity SIT contains these individual SITs.

- Blood test terms
- Types of medication
- Diseases
- Generic medication names
- Impairments listed in the U.S. Disability Evaluation Under Social Security
- Lab test terms
- Lifestyles that relate to medical conditions
- Medical specialties
- Surgical procedures
- Brand medication names

