---
title: "All credentials entity definition"
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
- tier3
- purview-compliance
hideEdit: true
feedback_system: None
recommendations: false
description: "All credentials sensitive information type entity definition."
---

# All credential sensitive information types

All credentials is a bundled entity sensitive information type (SIT). It detects credentials from all supported services and environments, which include Amazon, Azure, GitHub, Google, Microsoft general, Slack and more.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Format

Various

## Pattern

Various

## Checksum

No

## Description

The All credentials SIT is a bundled SIT that scans for individual credential types. This includes checksum evaluated values and keyword/pattern combinations. The All credential entity scans for any of the underlying credential information type checksums and/or patterns are detected in a document.

## Contains

This bundled entity SIT contains these individual SITs:

- [Amazon S3 Client Secret Access Key](sit-defn-amazon-s3-client-secret-access-key.md)
- [ASP.NET Machine Key](sit-defn-asp-net-machine-key.md) 
- [Azure AD Client Access Token](sit-defn-azure-ad-client-access-token.md) 
- [Azure AD Client Secret](sit-defn-azure-ad-client-secret.md) 
- [Azure AD User Credentials](sit-defn-azure-ad-user-credentials.md)
- [Azure App Service Deployment Password](sit-defn-azure-app-service-deployment-password.md)
- [Azure Batch Shared Access Key](sit-defn-azure-batch-shared-access-key.md) 
- [Azure Bot Framework Secret Key](sit-defn-azure-bot-framework-secret-key.md) 
- [Azure Bot Service App Secret](sit-defn-azure-bot-service-app-secret.md) 
- [Azure Cognitive Search API Key](sit-defn-azure-cognitive-search-api-key.md) 
- [Azure Cognitive Service Key](sit-defn-azure-cognitive-service-key.md) 
- [Azure Container Registry Access Key](sit-defn-azure-container-registry-access-key.md) 
- [Azure COSMOS DB Account Access Key](sit-defn-azure-cosmos-db-account-access-key.md)
- [Azure Databricks Personal Access Token](sit-defn-azure-databricks-personal-access-token.md)
- [Azure DevOps App Secret](sit-defn-azure-devops-app-secret.md) 
- [Azure DevOps Personal Access Token](sit-defn-azure-devops-personal-access-token.md) 
- [Azure EventGrid Access Key](sit-defn-azure-eventgrid-access-key.md) 
- [Azure Function Master / API Key](sit-defn-azure-function-master-api-key.md) 
- [Azure IoT Shared Access Key](sit-defn-azure-iot-shared-access-key.md)
- [Azure Logic App Shared Access Signature](sit-defn-azure-logic-app-shared-access-signature.md)
- [Azure Machine Learning Web Service API Key](sit-defn-azure-machine-learning-web-service-api-key.md) 
- [Azure Maps Subscription Key](sit-defn-azure-maps-subscription-key.md) 
- [Azure Redis Cache Connection String Password](sit-defn-azure-redis-cache-connection-string-password.md)
- [Azure Service Bus Shared Access Signature](sit-defn-azure-service-bus-shared-access-signature.md) 
- [Azure Shared Access Key / Web Hook Token](sit-defn-azure-shared-access-key-web-hook-token.md)
- [Azure SignalR Access Key](sit-defn-azure-signalr-access-key.md) 
- [Azure SQL Connection String](sit-defn-azure-sql-connection-string.md)
- [Azure Storage Account Access Key](sit-defn-azure-storage-account-access-key.md)
- [Azure Storage Account Shared Access Signature](sit-defn-azure-storage-account-shared-access-signature.md) 
- [Azure Storage Account Shared Access Signature for High Risk Resources](sit-defn-azure-storage-account-shared-access-signature-high-risk-resources.md) 
- [Azure Subscription Management Certificate](sit-defn-azure-subscription-management-certificate.md) 
- [Client Secret / API Key](sit-defn-client-secret-api-key.md)
- [General Password](sit-defn-general-password.md) 
- [General Symmetric Key](sit-defn-general-symmetric-key.md)
- [GitHub Personal Access Token](sit-defn-github-personal-access-token.md)
- [Google API key](sit-defn-google-api-key.md) 
- [Http Authorization Header](sit-defn-http-authorization-header.md)
- [Microsoft Bing Maps Key](sit-defn-google-api-key.md)
- [Slack Access Token](sit-defn-slack-access-token.md) 
- [User Login Credentials](sit-defn-user-login-credentials.md)
- [X.509 Certificate Private Key](sit-defn-x-509-certificate-private-key.md)

## Supported languages

- English
- Bulgarian
- Chinese
- Croatian
- Czech
- Danish
- Estonian
- Finnish
- French
- German
- Hungarian
- Icelandic
- Irish
- Italian
- Japanese
- Latvian
- Lithuanian
- Maltese
- Dutch
- Norwegian
- Polish
- Portuguese
- Romanian
- Slovak
- Slovenian
- Spanish
- Swedish
- Turkish