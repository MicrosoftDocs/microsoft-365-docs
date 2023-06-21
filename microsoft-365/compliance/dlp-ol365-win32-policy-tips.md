---
title: "Data loss prevention policy tip reference for Outlook 365 for Win32"
f1.keywords:
- CSH
ms.author: chrfox
author: chrfox
manager: laurawi
ms.date: 06/16/2023
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
description: "DLP policy tip reference for Outlook 2013 for Win32."
---

# Data loss prevention policy tip reference for Outlook 365 for Win32

[!INCLUDE [purview-preview](../includes/purview-preview.md)]


> [!NOTE]
> Microsoft Purview data loss prevention will only process the first four MB on message content for policy tip in Outlook 365 for Win32 and only classify up to two MB of attchments.

## DLP policy tips supported

Yes

## DLP policy match email notification supported for Outlook 365 for Win 32

Yes

<!--## Supported versions and channels
 
- Version 2303 build 16.0.16216.10000 and higher
- Semi-annual channel tentative version 2302 build 16.0.16130.20478
-->
## Conditions that support policy tips for Outlook perpetual users

|For Outlook perpetual versions and and users  |These conditions apply  |
|---------|---------|
|-E3 users</br>-E5 users    |- Content contains sensitive information types </br>- Content is shared from Microsoft 365 |

## Conditions that support policy tips for Microsoft 365 for Enterprise users

|For Microsoft 365 for Enterprise Outlook versions and users  |These conditions apply|
|---------|---------|
|- All E3 users </br>- All offline E5 users </br>- All E5 users with connected experience disabled </br>- All online E5 users with production version and build lower than 2303 &16.0.16216.10000 </br>- All online E5 users with semi-annual channel version and build lower than 2302 and 16.0.16130.20478     |- Content contains sensitive information types </br>- Content is shared from Microsoft 365         |
|- All online E5 users with connected experience enabled with production version and build 2303 and 16.0 16216.10000 or higher </br>- semi-annual channel tenative version 2302 build 16.0.16130.20478 | - Content contains sensitive information types </br>- Content contains sensitivity labels (works for email labels, Office docs and PDF files) </br>- Content is shared </br>- Sender is </br>- Sender is member of </br>- Sender domain is </br>- Recipient is </br>- Recipient is a member of </br>- Recipient domain is </br>- Subject contains words|


<!--
>> [!NOTE]
> Outlook does not support showing policy tips for a DLP polcies that's applied to a dynamic distribution group or non-email enabled security groups.
-->

## Actions that support policy tips

All Exchange actions support policy tips

- Restrict access or encrypt the content in Microsoft 365 locations
- Set headers
- Remove header
- Redirect the message to specific users
- Forward the message for approval to sender's manager
- Forward the message for approval to specific approvers
- Add recipient to the To box
- Add recipient to the Cc box
- Add recipient to the Bcc box
- Add the sender's manager as recipient
- Removed O365 Message Encryption and rights protection
- Prepend Email Subject
- Add HTML Disclaimer
- Modify Email Subject
- Deliver the message to the hosted quarantine

## Sensitive information types that support policy tips for Outlook perpetual users

For Outlook perpetual version E3 and E5 users these sensitive information types support policy tips:

- [ABA routing number](sit-defn-aba-routing.md)
- [Argentina national identity (DNI) number](sit-defn-argentina-national-identity-numbers.md)
- [Australia bank account number](sit-defn-australia-bank-account-number.md)
- [Australia medical account number](sit-defn-australia-medical-account-number.md)
- [Australia passport number](sit-defn-australia-passport-number.md)
- [Australia tax file number](sit-defn-australia-tax-file-number.md)
- [Azure DocumentDB auth key](sit-defn-azure-document-db-auth-key.md)
- [Azure IAAS database connection string and Azure SQL connection string](sit-defn-azure-iaas-database-connection-string-azure-sql-connection-string.md)
- [Azure IoT connection string](sit-defn-azure-iot-connection-string.md)
- [Azure publish setting password](sit-defn-azure-publish-setting-password.md)
- [Azure Redis cache connection string](sit-defn-azure-redis-cache-connection-string.md)
- [Azure SAS](sit-defn-azure-sas.md)
- [Azure service bus connection string](sit-defn-azure-service-bus-connection-string.md)
- [Azure storage account key](sit-defn-azure-storage-account-key.md)
- [Azure Storage account key (generic)](sit-defn-azure-storage-account-key-generic.md)
- [Belgium national number](sit-defn-belgium-national-number.md)
- [Brazil CPF number](sit-defn-brazil-cpf-number.md)
- [Brazil legal entity number (CNPJ)](sit-defn-brazil-legal-entity-number.md)
- [Brazil national identification card (RG)](sit-defn-brazil-national-identification-card.md)
- [Canada bank account number](sit-defn-canada-bank-account-number.md)
- [Canada driver's license number](sit-defn-canada-drivers-license-number.md)
- [Canada health service number](sit-defn-canada-health-service-number.md)
- [Canada passport number](sit-defn-canada-passport-number.md)
- [Canada personal health identification number (PHIN)](sit-defn-canada-personal-health-identification-number.md)
- [Canada social insurance number](sit-defn-canada-social-insurance-number.md)
- [Chile identity card number](sit-defn-chile-identity-card-number.md)
- [China resident identity card (PRC) number](sit-defn-china-resident-identity-card-number.md)
- [Credit card number](sit-defn-credit-card-number.md)
- [Croatia identity card number](sit-defn-croatia-identity-card-number.md)
- [Croatia personal identification (OIB) number](sit-defn-croatia-personal-identification-number.md)
- [Czech personal identity number](sit-defn-czech-personal-identity-number.md)
- [Denmark personal identification number](sit-defn-denmark-personal-identification-number.md)
- [Drug Enforcement Agency (DEA) number](sit-defn-drug-enforcement-agency-number.md)
- [EU debit card number](sit-defn-eu-debit-card-number.md)
- [EU driver's license number](sit-defn-eu-drivers-license-number.md)
- [EU national identification number](sit-defn-eu-national-identification-number.md)
- [EU passport number](sit-defn-eu-passport-number.md)
- [EU social security number or equivalent identification](sit-defn-eu-social-security-number-equivalent-identification.md)
- [EU Tax identification number](sit-defn-eu-tax-identification-number.md)
- [Finland national ID](sit-defn-finland-national-id.md)
- [Finland passport number](sit-defn-finland-passport-number.md)
- [France driver's license number](sit-defn-france-drivers-license-number.md)
- [France national id card (CNI)](sit-defn-france-national-id-card.md)
- [France passport number](sit-defn-france-passport-number.md)
- [France social security number (INSEE)](sit-defn-france-social-security-number.md)
- [Germany driver's license number](sit-defn-germany-drivers-license-number.md)
- [Germany passport number](sit-defn-germany-passport-number.md)
- [Germany identity card number](sit-defn-germany-identity-card-number.md)
- [Greece national ID card](sit-defn-greece-national-id-card.md)
- [Hong Kong identity card (HKID) number](sit-defn-hong-kong-identity-card-number.md)
- [India permanent account number (PAN)](sit-defn-india-permanent-account-number.md)
- [India unique identification (Aadhaar) number](sit-defn-india-unique-identification-number.md)
- [Indonesia identity card (KTP) number](sit-defn-indonesia-identity-card-number.md)
- [International banking account number (IBAN)](sit-defn-international-banking-account-number.md)
- [International classification of diseases (ICD-10-CM)](sit-defn-international-classification-of-diseases-icd-10-cm.md)
- [International classification of diseases (ICD-9-CM)](sit-defn-international-classification-of-diseases-icd-9-cm.md)
- [IP address](sit-defn-ip-address.md)
- [Ireland personal public service (PPS) number](sit-defn-ireland-personal-public-service-number.md)
- [Israel bank account number](sit-defn-israel-bank-account-number.md)
- [Israel national identification number](sit-defn-israel-national-identification-number.md)
- [Italy driver's license number](sit-defn-italy-drivers-license-number.md)
- [Japan bank account number](sit-defn-japan-bank-account-number.md)
- [Japan driver's license number](sit-defn-japan-drivers-license-number.md)
- [Japan passport number](sit-defn-japan-passport-number.md)
- [Japan resident registration number](sit-defn-japan-resident-registration-number.md)
- [Japan social insurance number (SIN)](sit-defn-japan-social-insurance-number.md)
- [Japan residence card number](sit-defn-japan-residence-card-number.md)
- [Malaysia identification card number](sit-defn-malaysia-identification-card-number.md)
- [Netherlands citizens service (BSN) number](sit-defn-netherlands-citizens-service-number.md)
- [New Zealand ministry of health number](sit-defn-new-zealand-ministry-of-health-number.md)
- [Norway identification number](sit-defn-norway-identification-number.md)
- [Philippines unified multi-purpose identification number](sit-defn-philippines-unified-multi-purpose-identification-number.md)
- [Poland identity card](sit-defn-poland-identity-card.md)
- [Poland national ID (PESEL)](sit-defn-poland-national-id.md)
- [Poland passport number](sit-defn-poland-passport-number.md)
- [Portugal citizen card number](sit-defn-portugal-citizen-card-number.md)
- [Saudi Arabia National ID](sit-defn-saudi-arabia-national-id.md)
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- [South Africa identification number](sit-defn-south-africa-identification-number.md)
- [South Korea resident registration number](sit-defn-south-korea-resident-registration-number.md)
- [Spain social security number (SSN)](sit-defn-spain-social-security-number.md)
- [SQL Server connection string](sit-defn-sql-server-connection-string.md)
- [Sweden national ID](sit-defn-sweden-national-id.md)
- [Sweden passport number](sit-defn-sweden-passport-number.md)
- [SWIFT code](sit-defn-swift-code.md)
- [Taiwan national identification number](sit-defn-taiwan-national-identification-number.md)
- [Taiwan passport number](sit-defn-taiwan-passport-number.md)
- [Taiwan-resident certificate (ARC/TARC) number](sit-defn-taiwan-resident-certificate-number.md)
- [Thai population identification code](sit-defn-thai-population-identification-code.md)
- [Turkey national identification number](sit-defn-turkey-national-identification-number.md)
- [U.K. drivers license number](sit-defn-uk-drivers-license-number.md)
- [U.K. electoral roll number](sit-defn-uk-electoral-roll-number.md)
- [U.K. national health service number](sit-defn-uk-national-health-service-number.md)
- [U.K. national insurance number (NINO)](sit-defn-uk-national-insurance-number.md)
- [U.S./U.K. passport number](sit-defn-us-uk-passport-number.md)
- [U.S. bank account number](sit-defn-us-bank-account-number.md)
- [U.S. driver's license number](sit-defn-us-drivers-license-number.md)
- [U.S. individual taxpayer identification number (ITIN)](sit-defn-us-individual-taxpayer-identification-number.md)
- [U.S. social security number (SSN)](sit-defn-us-social-security-number.md)     

## Sensitive information types that support policy tips for Microsoft 365 for Enterprise Outlook users

For these Outlook versions and users:

- All Microsoft 365 for Enterprise E3 users
- All Microsoft 365 for Enterprise offline E5 users
- All Microsoft 365 for Enterprise E5 users with connected experience disabled
- All Microsoft 365 for Enterprise online E5 users with production version and build lower than 2303 &16.0.16216.10000
- All Microsoft 365 for Enterprise online E5 users with semi-annual channel version and build lower than 2302 and 16.0.16130.20478

These sensitive information types support policy tips:

- [ABA routing number](sit-defn-aba-routing.md)
- [Argentina national identity (DNI) number](sit-defn-argentina-national-identity-numbers.md)
- [Australia bank account number](sit-defn-australia-bank-account-number.md)
- [Australia medical account number](sit-defn-australia-medical-account-number.md)
- [Australia passport number](sit-defn-australia-passport-number.md)
- [Australia tax file number](sit-defn-australia-tax-file-number.md)
- [Azure DocumentDB auth key](sit-defn-azure-document-db-auth-key.md)
- [Azure IAAS database connection string and Azure SQL connection string](sit-defn-azure-iaas-database-connection-string-azure-sql-connection-string.md)
- [Azure IoT connection string](sit-defn-azure-iot-connection-string.md)
- [Azure publish setting password](sit-defn-azure-publish-setting-password.md)
- [Azure Redis cache connection string](sit-defn-azure-redis-cache-connection-string.md)
- [Azure SAS](sit-defn-azure-sas.md)
- [Azure service bus connection string](sit-defn-azure-service-bus-connection-string.md)
- [Azure storage account key](sit-defn-azure-storage-account-key.md)
- [Azure Storage account key (generic)](sit-defn-azure-storage-account-key-generic.md)
- [Belgium national number](sit-defn-belgium-national-number.md)
- [Brazil CPF number](sit-defn-brazil-cpf-number.md)
- [Brazil legal entity number (CNPJ)](sit-defn-brazil-legal-entity-number.md)
- [Brazil national identification card (RG)](sit-defn-brazil-national-identification-card.md)
- [Canada bank account number](sit-defn-canada-bank-account-number.md)
- [Canada driver's license number](sit-defn-canada-drivers-license-number.md)
- [Canada health service number](sit-defn-canada-health-service-number.md)
- [Canada passport number](sit-defn-canada-passport-number.md)
- [Canada personal health identification number (PHIN)](sit-defn-canada-personal-health-identification-number.md)
- [Canada social insurance number](sit-defn-canada-social-insurance-number.md)
- [Chile identity card number](sit-defn-chile-identity-card-number.md)
- [China resident identity card (PRC) number](sit-defn-china-resident-identity-card-number.md)
- [Credit card number](sit-defn-credit-card-number.md)
- [Croatia identity card number](sit-defn-croatia-identity-card-number.md)
- [Croatia personal identification (OIB) number](sit-defn-croatia-personal-identification-number.md)
- [Czech personal identity number](sit-defn-czech-personal-identity-number.md)
- [Denmark personal identification number](sit-defn-denmark-personal-identification-number.md)
- [Drug Enforcement Agency (DEA) number](sit-defn-drug-enforcement-agency-number.md)
- [EU debit card number](sit-defn-eu-debit-card-number.md)
- [EU driver's license number](sit-defn-eu-drivers-license-number.md)
- [EU national identification number](sit-defn-eu-national-identification-number.md)
- [EU passport number](sit-defn-eu-passport-number.md)
- [EU social security number or equivalent identification](sit-defn-eu-social-security-number-equivalent-identification.md)
- [EU Tax identification number](sit-defn-eu-tax-identification-number.md)
- [Finland national ID](sit-defn-finland-national-id.md)
- [Finland passport number](sit-defn-finland-passport-number.md)
- [France driver's license number](sit-defn-france-drivers-license-number.md)
- [France national id card (CNI)](sit-defn-france-national-id-card.md)
- [France passport number](sit-defn-france-passport-number.md)
- [France social security number (INSEE)](sit-defn-france-social-security-number.md)
- [Germany driver's license number](sit-defn-germany-drivers-license-number.md)
- [Germany passport number](sit-defn-germany-passport-number.md)
- [Germany identity card number](sit-defn-germany-identity-card-number.md)
- [Greece national ID card](sit-defn-greece-national-id-card.md)
- [Hong Kong identity card (HKID) number](sit-defn-hong-kong-identity-card-number.md)
- [India permanent account number (PAN)](sit-defn-india-permanent-account-number.md)
- [India unique identification (Aadhaar) number](sit-defn-india-unique-identification-number.md)
- [Indonesia identity card (KTP) number](sit-defn-indonesia-identity-card-number.md)
- [International banking account number (IBAN)](sit-defn-international-banking-account-number.md)
- [International classification of diseases (ICD-10-CM)](sit-defn-international-classification-of-diseases-icd-10-cm.md)
- [International classification of diseases (ICD-9-CM)](sit-defn-international-classification-of-diseases-icd-9-cm.md)
- [IP address](sit-defn-ip-address.md)
- [Ireland personal public service (PPS) number](sit-defn-ireland-personal-public-service-number.md)
- [Israel bank account number](sit-defn-israel-bank-account-number.md)
- [Israel national identification number](sit-defn-israel-national-identification-number.md)
- [Italy driver's license number](sit-defn-italy-drivers-license-number.md)
- [Japan bank account number](sit-defn-japan-bank-account-number.md)
- [Japan driver's license number](sit-defn-japan-drivers-license-number.md)
- [Japan passport number](sit-defn-japan-passport-number.md)
- [Japan resident registration number](sit-defn-japan-resident-registration-number.md)
- [Japan social insurance number (SIN)](sit-defn-japan-social-insurance-number.md)
- [Japan residence card number](sit-defn-japan-residence-card-number.md)
- [Malaysia identification card number](sit-defn-malaysia-identification-card-number.md)
- [Netherlands citizens service (BSN) number](sit-defn-netherlands-citizens-service-number.md)
- [New Zealand ministry of health number](sit-defn-new-zealand-ministry-of-health-number.md)
- [Norway identification number](sit-defn-norway-identification-number.md)
- [Philippines unified multi-purpose identification number](sit-defn-philippines-unified-multi-purpose-identification-number.md)
- [Poland identity card](sit-defn-poland-identity-card.md)
- [Poland national ID (PESEL)](sit-defn-poland-national-id.md)
- [Poland passport number](sit-defn-poland-passport-number.md)
- [Portugal citizen card number](sit-defn-portugal-citizen-card-number.md)
- [Saudi Arabia National ID](sit-defn-saudi-arabia-national-id.md)
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- [South Africa identification number](sit-defn-south-africa-identification-number.md)
- [South Korea resident registration number](sit-defn-south-korea-resident-registration-number.md)
- [Spain social security number (SSN)](sit-defn-spain-social-security-number.md)
- [SQL Server connection string](sit-defn-sql-server-connection-string.md)
- [Sweden national ID](sit-defn-sweden-national-id.md)
- [Sweden passport number](sit-defn-sweden-passport-number.md)
- [SWIFT code](sit-defn-swift-code.md)
- [Taiwan national identification number](sit-defn-taiwan-national-identification-number.md)
- [Taiwan passport number](sit-defn-taiwan-passport-number.md)
- [Taiwan-resident certificate (ARC/TARC) number](sit-defn-taiwan-resident-certificate-number.md)
- [Thai population identification code](sit-defn-thai-population-identification-code.md)
- [Turkey national identification number](sit-defn-turkey-national-identification-number.md)
- [U.K. drivers license number](sit-defn-uk-drivers-license-number.md)
- [U.K. electoral roll number](sit-defn-uk-electoral-roll-number.md)
- [U.K. national health service number](sit-defn-uk-national-health-service-number.md)
- [U.K. national insurance number (NINO)](sit-defn-uk-national-insurance-number.md)
- [U.S./U.K. passport number](sit-defn-us-uk-passport-number.md)
- [U.S. bank account number](sit-defn-us-bank-account-number.md)
- [U.S. driver's license number](sit-defn-us-drivers-license-number.md)
- [U.S. individual taxpayer identification number (ITIN)](sit-defn-us-individual-taxpayer-identification-number.md)
- [U.S. social security number (SSN)](sit-defn-us-social-security-number.md)     


For these Outlook versions and users:

- Online E5 users with connected experience enabled with Production version and build 2303 & 16.0.16216.10000 or higher.
- Semi-annual channel tentative version 2302 build 16.0.16130.20478.

These sensitive information types support policy tips:

- [ABA routing number](sit-defn-aba-routing.md)
- [All credentials](sit-defn-all-creds.md)
- [All full names](sit-defn-all-full-names.md)
- [All medical terms and conditions](sit-defn-all-medical-terms-conditions.md)
- [All Physical Addresses](sit-defn-all-physical-addresses.md)
- [Amazon S3 Client Secret Access Key](sit-defn-amazon-s3-client-secret-access-key.md)
- [Argentina national identity (DNI) number](sit-defn-argentina-national-identity-numbers.md)
- [Argentina Unique Tax Identification Key (CUIT/CUIL)](sit-defn-argentina-unique-tax-identification-key.md)
- [ASP.NET machine Key](sit-defn-asp-net-machine-key.md) 
- [Australia bank account number](sit-defn-australia-bank-account-number.md)
- [Australia business number](sit-defn-australia-business-number.md)
- [Australia company number](sit-defn-australia-business-number.md)
- [Australia drivers license number](sit-defn-australia-drivers-license-number.md)
- [Australia medical account number](sit-defn-australia-medical-account-number.md)
- [Australia passport number](sit-defn-australia-passport-number.md)
- [Australia physical addresses](sit-defn-australia-physical-addresses.md)
- [Australia tax file number](sit-defn-australia-tax-file-number.md)
- [Austria drivers license number](sit-defn-austria-drivers-license-number.md)
- [Austria identity card](sit-defn-austria-identity-card.md)
- [Austria passport number](sit-defn-austria-passport-number.md)
- [Austria physical addresses](sit-defn-austria-physical-addresses.md)
- [Austria social security number](sit-defn-austria-social-security-number.md)
- [Austria tax identification number](sit-defn-austria-tax-identification-number.md)
- [Austria value added tax](sit-defn-austria-value-added-tax.md)
- [Azure AD client access token](sit-defn-azure-ad-client-access-token.md) 
- [Azure AD client secret](sit-defn-azure-ad-client-secret.md)
- [Azure AD User Credentials](sit-defn-azure-ad-user-credentials.md)
- [Azure App Service deployment password](sit-defn-azure-app-service-deployment-password.md)
- [Azure Batch shared access key](sit-defn-azure-batch-shared-access-key.md)
- [Azure Bot Framework secret key](sit-defn-azure-bot-framework-secret-key.md)
- [Azure Bot service app secret](sit-defn-azure-bot-service-app-secret.md)
- [Azure Cognitive Search API key](sit-defn-azure-cognitive-search-api-key.md)
- [Azure Cognitive Service key](sit-defn-azure-cognitive-service-key.md)
- [Azure Container Registry access key](sit-defn-azure-container-registry-access-key.md)
- [Azure Cosmos DB account access key](sit-defn-azure-cosmos-db-account-access-key.md) 
- [Azure Databricks personal access token](sit-defn-azure-databricks-personal-access-token.md)
- [Azure DevOps app secret](sit-defn-azure-devops-app-secret.md)
- [Azure DevOps personal access token](sit-defn-azure-devops-personal-access-token.md)
- [Azure DocumentDB auth key](sit-defn-azure-document-db-auth-key.md)
- [Azure EventGrid access key](sit-defn-azure-eventgrid-access-key.md) 
- [Azure Function Master / API key](sit-defn-azure-function-master-api-key.md) 
- [Azure IAAS database connection string and Azure SQL connection string](sit-defn-azure-iaas-database-connection-string-azure-sql-connection-string.md)
- [Azure IoT connection string](sit-defn-azure-iot-connection-string.md)
- [Azure IoT shared access key](sit-defn-azure-iot-shared-access-key.md)
- [Azure Logic app shared access signature](sit-defn-azure-logic-app-shared-access-signature.md) 
- [Azure Machine Learning web service API key](sit-defn-azure-machine-learning-web-service-api-key.md) 
- [Azure Maps subscription key](sit-defn-azure-maps-subscription-key.md) 
- [Azure publish setting password](sit-defn-azure-publish-setting-password.md)
- [Azure Redis cache connection string](sit-defn-azure-redis-cache-connection-string.md)
- [Azure Redis cache connection string password](sit-defn-azure-redis-cache-connection-string-password.md)
- [Azure SAS](sit-defn-azure-sas.md)
- [Azure service bus connection string](sit-defn-azure-service-bus-connection-string.md)
- [Azure service bus shared access signature](sit-defn-azure-service-bus-shared-access-signature.md) 
- [Azure Shared Access key / Web Hook token](sit-defn-azure-shared-access-key-web-hook-token.md) 
- [Azure SignalR access key](sit-defn-azure-signalr-access-key.md)
- [Azure SQL connection string](sit-defn-azure-sql-connection-string.md)
- [Azure storage account access key](sit-defn-azure-storage-account-access-key.md)
- [Azure storage account key](sit-defn-azure-storage-account-key.md)
- [Azure Storage account key (generic)](sit-defn-azure-storage-account-key-generic.md)
- [Azure Storage account shared access signature](sit-defn-azure-storage-account-shared-access-signature.md)
- [Azure Storage account shared access signature for high risk resources](sit-defn-azure-storage-account-shared-access-signature-high-risk-resources.md)
- [Azure subscription management certificate](sit-defn-azure-subscription-management-certificate.md)
- [Belgium driver's license number](sit-defn-belgium-drivers-license-number.md)
- [Belgium national number](sit-defn-belgium-national-number.md)
- [Belgium passport number](sit-defn-belgium-passport-number.md)
- [Belgium physical addresses](sit-defn-belgium-physical-addresses.md)
- [Belgium value added tax number](sit-defn-belgium-value-added-tax-number.md)
- [Blood test terms](sit-defn-blood-test-terms.md)
- [Brand medication names](sit-defn-brand-medication-names.md)
- [Brazil CPF number](sit-defn-brazil-cpf-number.md)
- [Brazil legal entity number (CNPJ)](sit-defn-brazil-legal-entity-number.md)
- [Brazil national identification card (RG)](sit-defn-brazil-national-identification-card.md)
- [Brazil physical addresses](sit-defn-brazil-physical-addresses.md)
- [Bulgaria driver's license number](sit-defn-bulgaria-drivers-license-number.md)
- [Bulgaria passport number](sit-defn-bulgaria-passport-number.md)
- [Bulgaria physical addresses](sit-defn-bulgaria-physical-addresses.md)
- [Bulgaria uniform civil number](sit-defn-bulgaria-uniform-civil-number.md)
- [Canada bank account number](sit-defn-canada-bank-account-number.md)
- [Canada driver's license number](sit-defn-canada-drivers-license-number.md)
- [Canada health service number](sit-defn-canada-health-service-number.md)
- [Canada passport number](sit-defn-canada-passport-number.md)
- [Canada personal health identification number (PHIN)](sit-defn-canada-personal-health-identification-number.md)
- [Canada physical addresses](sit-defn-canada-physical-addresses.md)
- [Canada social insurance number](sit-defn-canada-social-insurance-number.md)
- [Chile identity card number](sit-defn-chile-identity-card-number.md)
- [China resident identity card (PRC) number](sit-defn-china-resident-identity-card-number.md)
- [Client secret / API key](sit-defn-client-secret-api-key.md)
- [Credit card number](sit-defn-credit-card-number.md)
- [Croatia driver's license number](sit-defn-croatia-drivers-license-number.md)
- [Croatia identity card number](sit-defn-croatia-identity-card-number.md)
- [Croatia passport number](sit-defn-croatia-passport-number.md)
- [Croatia personal identification (OIB) number](sit-defn-croatia-personal-identification-number.md)
- [Croatia physical addresses](sit-defn-croatia-physical-addresses.md)
- [Cyprus drivers license number](sit-defn-cyprus-drivers-license-number.md)
- [Cyprus identity card](sit-defn-cyprus-identity-card.md)
- [Cyprus passport number](sit-defn-cyprus-passport-number.md)
- [Cyprus physical addresses](sit-defn-cyprus-physical-addresses.md)
- [Cyprus tax identification number](sit-defn-cyprus-tax-identification-number.md)
- [Czech driver's license number](sit-defn-czech-drivers-license-number.md)
- [Czech passport number](sit-defn-czech-passport-number.md)
- [Czech personal identity number](sit-defn-czech-personal-identity-number.md)
- [Czech Republic physical addresses](sit-defn-czech-republic-physical-addresses.md)
- [Denmark driver's license number](sit-defn-denmark-drivers-license-number.md)
- [Denmark passport number](sit-defn-denmark-passport-number.md)
- [Denmark personal identification number](sit-defn-denmark-personal-identification-number.md)
- [Denmark physical addresses](sit-defn-denmark-physical-addresses.md)
- [Diseases](sit-defn-diseases.md)
- [Drug Enforcement Agency (DEA) number](sit-defn-drug-enforcement-agency-number.md)
- [Estonia driver's license number](sit-defn-estonia-drivers-license-number.md)
- [Estonia passport number](sit-defn-estonia-passport-number.md)
- [Estonia Personal Identification Code](sit-defn-estonia-personal-identification-code.md)
- [Estonia physical addresses](sit-defn-estonia-physical-addresses.md)
- [EU debit card number](sit-defn-eu-debit-card-number.md)
- [EU driver's license number](sit-defn-eu-drivers-license-number.md)
- [EU national identification number](sit-defn-eu-national-identification-number.md)
- [EU passport number](sit-defn-eu-passport-number.md)
- [EU social security number or equivalent identification](sit-defn-eu-social-security-number-equivalent-identification.md)
- [EU Tax identification number](sit-defn-eu-tax-identification-number.md)
- [Finland driver's license number](sit-defn-finland-drivers-license-number.md)
- [Finland european health insurance number](sit-defn-finland-european-health-insurance-number.md)
- [Finland national ID](sit-defn-finland-national-id.md)
- [Finland passport number](sit-defn-finland-passport-number.md)
- [Finland physical addresses](sit-defn-finland-physical-addresses.md)
- [France driver's license number](sit-defn-france-drivers-license-number.md)
- [France health insurance number](sit-defn-france-health-insurance-number.md)
- [France national id card (CNI)](sit-defn-france-national-id-card.md)
- [France passport number](sit-defn-france-passport-number.md)
- [France physical addresses](sit-defn-france-physical-addresses.md)
- [France social security number (INSEE)](sit-defn-france-social-security-number.md)
- [France tax identification number](sit-defn-france-tax-identification-number.md)
- [France value added tax number](sit-defn-france-value-added-tax-number.md)
- [General password](sit-defn-general-password.md)
- [General Symmetric key](sit-defn-general-symmetric-key.md)
- [Generic medication names](sit-defn-generic-medication-names.md)
- [Germany driver's license number](sit-defn-germany-drivers-license-number.md)
- [Germany identity card number](sit-defn-germany-identity-card-number.md)
- [Germany passport number](sit-defn-germany-passport-number.md)
- [Germany physical addresses](sit-defn-germany-physical-addresses.md)
- [Germany tax identification number](sit-defn-germany-tax-identification-number.md)
- [Germany value added tax number](sit-defn-germany-value-added-tax-number.md)
- [GitHub Personal Access Token](sit-defn-github-personal-access-token.md) 
- [Google API key](sit-defn-google-api-key.md)
- [Greece driver's license number](sit-defn-greece-drivers-license-number.md)
- [Greece national ID card](sit-defn-greece-national-id-card.md)
- [Greece passport number](sit-defn-greece-passport-number.md)
- [Greece physical addresses](sit-defn-greece-physical-addresses.md)
- [Greece Social Security Number (AMKA)](sit-defn-greece-social-security-number.md)
- [Greece tax identification number](sit-defn-greece-tax-identification-number.md)
- [Hong Kong identity card (HKID) number](sit-defn-hong-kong-identity-card-number.md)
- [Http authorization header](sit-defn-http-authorization-header.md)
- [Hungary driver's license number](sit-defn-hungary-drivers-license-number.md)
- [Hungary passport number](sit-defn-hungary-passport-number.md)
- [Hungary personal identification number](sit-defn-hungary-personal-identification-number.md)
- [Hungary physical addresses](sit-defn-hungary-physical-addresses.md)
- [Hungary social security number (TAJ)](sit-defn-hungary-social-security-number.md)
- [Hungary tax identification number](sit-defn-hungary-tax-identification-number.md)
- [Hungary value added tax number](sit-defn-hungary-value-added-tax-number.md)
- [Iceland physical addresses](sit-defn-iceland-physical-addresses.md)
- [Impairments Listed In The U.S. Disability Evaluation Under Social Security](sit-defn-impairments-us-disability-evaluation-under-social-security.md)
- [India Driver's License Number](sit-defn-india-drivers-license-number.md)
- [India GST Number](sit-defn-india-gst-number.md)
- [India permanent account number (PAN)](sit-defn-india-permanent-account-number.md)
- [India unique identification (Aadhaar) number](sit-defn-india-unique-identification-number.md)
- [India Voter Id Card](sit-defn-india-voter-id-card.md)
- [Indonesia identity card (KTP) number](sit-defn-indonesia-identity-card-number.md)
- [International banking account number (IBAN)](sit-defn-international-banking-account-number.md)
- [International classification of diseases (ICD-10-CM)](sit-defn-international-classification-of-diseases-icd-10-cm.md)
- [International classification of diseases (ICD-9-CM)](sit-defn-international-classification-of-diseases-icd-9-cm.md)
- [IP address](sit-defn-ip-address.md)
- [IP Address v4](sit-defn-ip-address-v4.md)
- [IP Address v6](sit-defn-ip-address-v6.md)
- [Ireland driver's license number](sit-defn-ireland-drivers-license-number.md)
- [Ireland passport number](sit-defn-ireland-passport-number.md)
- [Ireland personal public service (PPS) number](sit-defn-ireland-personal-public-service-number.md)
- [Ireland physical addresses](sit-defn-ireland-physical-addresses.md)
- [Israel bank account number](sit-defn-israel-bank-account-number.md)
- [Israel national identification number](sit-defn-israel-national-identification-number.md)
- [Italy driver's license number](sit-defn-italy-drivers-license-number.md)
- [Italy fiscal code](sit-defn-italy-fiscal-code.md)
- [Italy passport number](sit-defn-italy-passport-number.md)
- [Italy physical addresses](sit-defn-italy-physical-addresses.md)
- [Italy value added tax number](sit-defn-italy-value-added-tax-number.md)
- [Japan bank account number](sit-defn-japan-bank-account-number.md)
- [Japan driver's license number](sit-defn-japan-drivers-license-number.md)
- [Japan My Number - Corporate](sit-defn-japan-my-number-corporate.md)
- [Japan My Number - Personal](sit-defn-japan-my-number-personal.md)
- [Japan passport number](sit-defn-japan-passport-number.md)
- [Japan physical addresses](sit-defn-japan-physical-addresses.md)
- [Japan residence card number](sit-defn-japan-residence-card-number.md)
- [Japan resident registration number](sit-defn-japan-resident-registration-number.md)
- [Japan social insurance number (SIN)](sit-defn-japan-social-insurance-number.md)
- [Lab test terms](sit-defn-lab-test-terms.md)
- [Latvia driver's license number](sit-defn-latvia-drivers-license-number.md)
- [Latvia passport number](sit-defn-latvia-passport-number.md)
- [Latvia personal code](sit-defn-latvia-personal-code.md)
- [Latvia physical addresses](sit-defn-latvia-physical-addresses.md)
- [Liechtenstein physical addresses](sit-defn-liechtenstein-physical-addresses.md)
- [Lifestyles that relate to medical conditions](sit-defn-lifestyles-relate-to-medical-conditions.md)
- [Lithuania driver's license number](sit-defn-lithuania-drivers-license-number.md)
- [Lithuania passport number](sit-defn-lithuania-passport-number.md)
- [Lithuania personal code](sit-defn-lithuania-personal-code.md)
- [Lithuania physical addresses](sit-defn-lithuania-physical-addresses.md)
- [Luxemburg driver's license number](sit-defn-luxemburg-drivers-license-number.md)
- [Luxemburg national identification number (natural persons)](sit-defn-luxemburg-national-identification-number-natural-persons.md)
- [Luxemburg national identification number (non-natural persons)](sit-defn-luxemburg-national-identification-number-non-natural-persons.md)
- [Luxemburg passport number](sit-defn-luxemburg-passport-number.md)
- [Luxemburg physical addresses](sit-defn-luxemburg-physical-addresses.md)
- [Malaysia identification card number](sit-defn-malaysia-identification-card-number.md)
- [Malaysia passport number](sit-defn-malaysia-passport-number.md)
- [Malta driver's license number](sit-defn-malta-drivers-license-number.md)
- [Malta identity card number](sit-defn-malta-identity-card-number.md)
- [Malta passport number](sit-defn-malta-passport-number.md)
- [Malta physical addresses](sit-defn-malta-physical-addresses.md)
- [Malta tax identification number](sit-defn-malta-tax-identification-number.md)
- [Medical specialities](sit-defn-medical-specialities.md)
- [Medicare Beneficiary Identifier (MBI) card](sit-defn-medicare-beneficiary-Identifier-card.md)
- [Mexico Unique Population Registry Code (CURP)](sit-defn-mexico-unique-population-registry-code.md)
- [Microsoft Bing maps key](sit-defn-microsoft-bing-maps-key.md)
- [Netherlands citizen's service (BSN) number](sit-defn-netherlands-citizens-service-number.md)
- [Netherlands driver's license number](sit-defn-netherlands-drivers-license-number.md)
- [Netherlands passport number](sit-defn-netherlands-passport-number.md)
- [Netherlands physical addresses](sit-defn-netherlands-physical-addresses.md)
- [Netherlands tax identification number](sit-defn-netherlands-tax-identification-number.md)
- [Netherlands value added tax number](sit-defn-netherlands-value-added-tax-number.md)
- [New Zealand bank account number](sit-defn-new-zealand-bank-account-number.md)
- [New Zealand driver's license number](sit-defn-new-zealand-drivers-license-number.md)
- [New Zealand inland revenue number](sit-defn-new-zealand-inland-revenue-number.md)
- [New Zealand ministry of health number](sit-defn-new-zealand-ministry-of-health-number.md)
- [New Zealand physical addresses](sit-defn-new-zealand-physical-addresses.md)
- [New Zealand social welfare number](sit-defn-new-zealand-social-welfare-number.md)
- [Norway identification number](sit-defn-norway-identification-number.md)
- [Norway physical addresses](sit-defn-norway-physical-addresses.md)
- [Philippines passport number](sit-defn-philippines-passport-number.md)
- [Philippines unified multi-purpose identification number](sit-defn-philippines-unified-multi-purpose-identification-number.md)
- [Poland driver's license number](sit-defn-poland-drivers-license-number.md)
- [Poland identity card](sit-defn-poland-identity-card.md)
- [Poland national ID (PESEL)](sit-defn-poland-national-id.md)
- [Poland passport number](sit-defn-poland-passport-number.md)
- [Poland physical addresses](sit-defn-poland-physical-addresses.md)
- [Poland REGON number](sit-defn-poland-regon-number.md)
- [Poland tax identification number](sit-defn-poland-tax-identification-number.md)
- [Portugal citizen card number](sit-defn-portugal-citizen-card-number.md)
- [Portugal driver's license number](sit-defn-portugal-drivers-license-number.md)
- [Portugal passport number](sit-defn-portugal-passport-number.md)
- [Portugal physical addresses](sit-defn-portugal-physical-addresses.md)
- [Portugal tax identification number](sit-defn-portugal-tax-identification-number.md)
- [Qatari identification card number](sit-defn-qatari-id-card-number.md)
- [Romania driver's license number](sit-defn-romania-drivers-license-number.md)
- [Romania passport number](sit-defn-romania-passport-number.md)
- [Romania personal numeric code (CNP)](sit-defn-romania-personal-numeric-code.md)
- [Romania physical addresses](sit-defn-romania-physical-addresses.md)
- [Russia passport number domestic](sit-defn-russia-passport-number-domestic.md)
- [Russia passport number international](sit-defn-russia-passport-number-international.md)
- [Saudi Arabia National ID](sit-defn-saudi-arabia-national-id.md)
- [Singapore passport number](sit-defn-singapore-passport-number.md#singapore-passport-number)
- [Singapore national registration identity card (NRIC) number](sit-defn-singapore-national-registration-identity-card-number.md)
- [Slack access token](sit-defn-slack-access-token.md)
- [Slovakia driver's license number](sit-defn-slovakia-drivers-license-number.md)
- [Slovakia passport number](sit-defn-slovakia-passport-number.md)
- [Slovakia personal number](sit-defn-slovakia-personal-number.md)
- [Slovakia physical addresses](sit-defn-slovakia-physical-addresses.md)
- [Slovenia driver's license number](sit-defn-slovenia-drivers-license-number.md)
- [Slovenia passport number](sit-defn-slovenia-passport-number.md)
- [Slovenia physical addresses](sit-defn-slovenia-physical-addresses.md)
- [Slovenia tax identification number](sit-defn-slovenia-tax-identification-number.md)
- [Slovenia Unique Master Citizen Number](sit-defn-slovenia-unique-master-citizen-number.md)
- [South Africa identification number](sit-defn-south-africa-identification-number.md)
- [South Korea driver's license number](sit-defn-south-korea-drivers-license-number.md)
- [South Korea passport number](sit-defn-south-korea-passport-number.md)
- [South Korea resident registration number](sit-defn-south-korea-resident-registration-number.md)
- [Spain DNI](sit-defn-spain-dni.md)
- [Spain driver's license number](sit-defn-spain-drivers-license-number.md)
- [Spain passport number](sit-defn-spain-passport-number.md)
- [Spain physical addresses](sit-defn-spain-physical-addresses.md)
- [Spain social security number (SSN)](sit-defn-spain-social-security-number.md)
- [Spain tax identification number](sit-defn-spain-tax-identification-number.md)
- [SQL Server connection string](sit-defn-sql-server-connection-string.md)
- [Surgical procedures](sit-defn-surgical-procedures.md)
- [Sweden driver's license number](sit-defn-sweden-drivers-license-number.md)
- [Sweden national ID](sit-defn-sweden-national-id.md)
- [Sweden passport number](sit-defn-sweden-passport-number.md)
- [Sweden physical addresses](sit-defn-sweden-physical-addresses.md)
- [Sweden tax identification number](sit-defn-sweden-tax-identification-number.md)
- [SWIFT code](sit-defn-swift-code.md)
- [Switzerland physical addresses](sit-defn-switzerland-physical-addresses.md)
- [Switzerland SSN AHV number](sit-defn-switzerland-ssn-ahv-number.md)
- [Taiwan national identification number](sit-defn-taiwan-national-identification-number.md)
- [Taiwan passport number](sit-defn-taiwan-passport-number.md)
- [Taiwan-resident certificate (ARC/TARC) number](sit-defn-taiwan-resident-certificate-number.md)
- [Thai population identification code](sit-defn-thai-population-identification-code.md)
- [Turkey national identification number](sit-defn-turkey-national-identification-number.md)
- [Turkey physical addresses](sit-defn-turkey-physical-addresses.md)
- [Types of medication](sit-defn-types-of-medication.md)
- [U.A.E. identity card number](sit-defn-uae-identity-card-number.md)
- [U.A.E. passport number](sit-defn-uae-passport-number.md)
- [U.K. driver's license number](sit-defn-uk-drivers-license-number.md)
- [U.K. electoral roll number](sit-defn-uk-electoral-roll-number.md)
- [U.K. national health service number](sit-defn-uk-national-health-service-number.md)
- [U.K. national insurance number (NINO)](sit-defn-uk-national-insurance-number.md)
- [U.K. physical addresses](sit-defn-uk-physical-addresses.md)
- [U.K. Unique Taxpayer Reference Number](sit-defn-uk-unique-taxpayer-reference-number.md)
- [U.S. bank account number](sit-defn-us-bank-account-number.md)
- [U.S. driver's license number](sit-defn-us-drivers-license-number.md)
- [U.S. individual taxpayer identification number (ITIN)](sit-defn-us-individual-taxpayer-identification-number.md)
- [U.S. physical addresses](sit-defn-us-physical-addresses.md)
- [U.S. social security number (SSN)](sit-defn-us-social-security-number.md)
- [U.S./U.K. passport number](sit-defn-us-uk-passport-number.md)
- [Ukraine passport domestic](sit-defn-ukraine-passport-domestic.md)
- [Ukraine passport international](sit-defn-ukraine-passport-international.md)
- [User login credentials](sit-defn-user-login-credentials.md)
- [X.509 certificate private key](sit-defn-x-509-certificate-private-key.md)

#### Named entity sensitive information types that support policy tips for Outlook 365 for Win 32

Yes.

For more information on named entity SITs, see [Learn about named entities](named-entities-learn.md)

#### Exact Data Match sensitive information types that support policy tips Outlook 365 for Win32

Yes.

For more information on exact data match based SITs, see [Learn about exact data match based sensitive information types](sit-learn-about-exact-data-match-based-sits.md)

#### Custom sensitive information types support for policy tips in Outlook 365 for Win32

Yes.

Custom sensitive information types that use REGEX, functions, keyword lists and keyword dictionaries support policy tips in Outlook on the Web. For more details, see [Create custom sensitive information types in the compliance portal](create-a-custom-sensitive-information-type.md) and [Create a custom sensitive information type using PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md).


<!--### Document Fingerprint SITs

Policy tips are not supported.

For more information on document fingerprint SITs, see [Document fingerprinting](document-fingerprinting.md)-->

## Sensitivity label support

Applies to:

- Outlook versions that are included in Microsoft 365 for Enterprise
- E5 users with connected experience enabled with production version and build 2303 & 16.0.16216.10000 or higher
- Semi-annual channel tentative version 2302 build 16.0.16130.20478

Yes.

For more information on sensitivity labels, see [Learn about sensitivity labels](sensitivity-labels.md)

## Trainable classifiers support

Applies to:
- Outlook versions that are included in Microsoft 365 for Enterprise
- E5 users with connected experience enabled with production version and build 2303 & 16.0.16216.10000 or higher
- Semi-annual channel tentative version 2302 build 16.0.16130.20478

Yes.

- [Adult, racy, and gory images](classifier-tc-definitions.md#adult-racy-and-gory-images)
- [Agreements](classifier-tc-definitions.md#agreements)
- [Bank statement](classifier-tc-definitions.md#bank-statement)
- [Budget](classifier-tc-definitions.md#budget)
- [Business plan](classifier-tc-definitions.md#business-plan)
- [Completion certificates](classifier-tc-definitions.md#completion-certificates)
- [Construction specifications](classifier-tc-definitions.md#construction-specifications)
- [Corporate sabotage](classifier-tc-definitions.md#corporate-sabotage)
- [Customer complaints](classifier-tc-definitions.md#customer-complaints)
- [Discrimination](classifier-tc-definitions.md#discrimination)
- [Employee disciplinary action](classifier-tc-definitions.md#employee-disciplinary-action)
- [Employee insurance](classifier-tc-definitions.md#employee-insurance)
- [Employment agreement](classifier-tc-definitions.md#employee-agreement)
- [Employee Pension Records](classifier-tc-definitions.md#employee-pension-records)
- [Employee Stocks and Financial Bond Records](classifier-tc-definitions.md#employee-stocks-and-financial-bond-records)
- [Enterprise Risk Management](classifier-tc-definitions.md#enterprise-risk-management)
- [Finance](classifier-tc-definitions.md#finance)
- [Financial audit](classifier-tc-definitions.md#financial-audit)
- [Financial statement](classifier-tc-definitions.md#financial-statement)
- [Freight Documents](classifier-tc-definitions.md#freight-documents)
- [Gifts & entertainment](classifier-tc-definitions.md#gifts--entertainment)
- [Harassment](classifier-tc-definitions.md#harassment)
- [Health/Medical forms](classifier-tc-definitions.md#healthmedical-forms)
- [Healthcare](classifier-tc-definitions.md#healthcare)
- [Human resources](classifier-tc-definitions.md)
- [Invoice](classifier-tc-definitions.md#invoice)
- [Intellectual property](classifier-tc-definitions.md#intellectual-property)
- [Information technology](classifier-tc-definitions.md#information-technology)
- [Legal affairs](classifier-tc-definitions.md#legal-affairs)
- [Legal Agreements](classifier-tc-definitions.md#legal-agreements)
- [License agreement](classifier-tc-definitions.md#license-agreement)
- [Loan agreements and offer letters](classifier-tc-definitions.md#loan-agreements-and-offer-letters)
- [Merger and acquisition files](classifier-tc-definitions.md#merger-and-acquisition-files)
- [Manufacturing batch records](classifier-tc-definitions.md#manufacturing-batch-records)
- [Meeting notes](classifier-tc-definitions.md#meeting-notes)
- [Money laundering](classifier-tc-definitions.md#money-laundering)
- [Network design files](classifier-tc-definitions.md#network-design-files)
- [Non-disclosure agreement](classifier-tc-definitions.md#non-disclosure-agreement)
- [Paystub](classifier-tc-definitions.md#paystub)
- [Personal Financial Information](classifier-tc-definitions.md#personal-financial-information)
- [Procurement](classifier-tc-definitions.md#procurement)
- [Project documents](classifier-tc-definitions.md#project-documents)
- [Profanity](classifier-tc-definitions.md#profanity)
- [Quotation](classifier-tc-definitions.md#quotation)
- [Regulatory collusion](classifier-tc-definitions.md#regulatory-collusion)
- [Resume](classifier-tc-definitions.md#resume)
- [Safety records](classifier-tc-definitions.md#safety-records)
- [Sales and revenue](classifier-tc-definitions.md#sales-and-revenue)
- [Software product development files](classifier-tc-definitions.md#software-product-development-files)
- [Source code](classifier-tc-definitions.md#source-code)
- [Standard Operating Procedures and Manuals](classifier-tc-definitions.md#standard-operating-procedures-and-manuals)
- [Statement of Accounts](classifier-tc-definitions.md#statement-of-accounts)
- [Statement of work](classifier-tc-definitions.md#statement-of-work)
- [Stock manipulation](classifier-tc-definitions.md#stock-manipulation)
- [Tax documents](classifier-tc-definitions.md#tax-documents)
- [Threat](classifier-tc-definitions.md#threat)
- [Unauthorized disclosure](classifier-tc-definitions.md#unauthorized-disclosure)
- [Wire Transfer](classifier-tc-definitions.md#wire-transfer)
- [Word count requirements](classifier-tc-definitions.md#word-count-requirements)

For more information on trainable classifiers, see [Learn about trainable classifiers](classifier-learn-about.md)
