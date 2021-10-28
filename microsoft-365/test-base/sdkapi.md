---
title: Test Base API & SDK
description: Test Base API & SDK
search.appverid: MET150
author: mansipatel-usl
ms.author: mapatel
manager: rshastri
audience: Software-Vendor
ms.topic: troubleshooting
ms.date: 07/06/2021
ms.service: virtual-desktop
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: mapatel
f1.keywords: NOCSH
---

# SDK & APIs are available NOW!

Automation is a key aspect of DevOps and agile development. Are you looking to manage Test Base for Microsoft 365 resources, get test results programmatically, and integrate them with our CI tools? Test Base has now released both the REST APIs, and Python SDK!  
 

These APIs/SDK enable IT professionals and app developers to: 

- Manage Test Base accounts, including create, update, and offboard. 
- Manage application packages, including create, update, delete, and download package. 
- Get the test summary, detailed test results, and analysis results. The analysis result includes CPU regression analysis, CPU utilization analysis, memory regression analysis, and memory utilization analysis. 
- Download test results and test execution video recording.  

 

## A step-by-step example 

Below is an example of Test Base account creation by using Python SDK. 

1. Pre-requisites: 

- Install below required components: 

Azure account with an active subscription if you don’t have a subscription 
Python 2.7+ or 3.6+ 
Azure Command-Line Interface (CLI) 

- Install library packages by using pip install from console 

```
pip install azure-identity 
pip install azure-mgmt-testbase	 
```

- Authenticating in dev environment 

When debugging and executing code locally it is typical for developers to use their own accounts for authenticating calls to Azure services. The azure-identity package supports authenticating through Azure CLI to simplify local development. To sign in to Azure CLI, run az login. On a system with a default web browser, the Azure CLI will launch the browser to authenticate a user. 

Check [How to authenticate Python applications with Azure services](https://docs.microsoft.com/en-us/azure/developer/python/azure-sdk-authenticate) | Microsoft Docs and [https://pypi.org/project/azure-identity/](https://pypi.org/project/azure-identity/) for other supported authentication methods. 

```
az login 
```

- Create a Resource Group with your desired name which will be used in following steps. 

2. Below code snippet covers flow to create a Test Base Account including 

- Request credential via Azure CLI for interaction with Azure 
- Initialize Test Base SDK client with the credential and subscription ID for later operations 
- Invoke begin_create from test_base_accounts model to create Test Base Account 

Copy the code to your Python development environment, and replace *"<subscription-id>"* with your Azure subscription ID and *"<resource-group-name>"* with your Resource Group you created above. 

 
```python

from azure.identity import AzureCliCredential
from azure.mgmt.testbase import TestBase
from azure.mgmt.testbase.models import TestBaseAccountResource
from azure.mgmt.testbase.models import TestBaseAccountSKU

# requesting token from Azure CLI for request
# For other authentication approaches, please see: https://pypi.org/project/azure-identity/
credential = AzureCliCredential()
subscription_id = "<subscription-id>"
resource_group = "<resource-group-name>"
testBaseAccount_name = "contoso-testbaseAccount"
testBaseAccount_location = "global"
sku_name = "S0"
sku_tier = "Standard"
sku_locations = {"global"}

# Create client
testBase_client = TestBase(credential, subscription_id)

# Create sku for test base account
sku = TestBaseAccountSKU(name=sku_name, tier=sku_tier, locations=sku_locations)

# Create test base account
parameters = TestBaseAccountResource(location=testBaseAccount_location, sku=sku)
testBaseAccount = testBase_client.test_base_accounts.begin_create(resource_group, testBaseAccount_name, parameters).result()
print("Create test base account:\n{}".format(testBaseAccount))

```


## Learn more 

Check below links to learn more details about the SDK & API. 

**Azure Subscription** 

- [Azure account with an active subscription](https://azure.microsoft.com/free/?utm_source=campaign&utm_campaign=python-dev-center&mktingSource=environment-setup) 

**Python SDK** 

- [Test Base Python SDK Documentation](https://docs.microsoft.com/en-us/python/api/overview/azure/mgmt-testbase-readme?view=azure-python-preview)
- [Test Base Python SDK Sample](https://aka.ms/testbase-sample-py) 
- [Azure General Usage Pattern of Python SDK](https://docs.microsoft.com/en-us/azure/developer/python/azure-sdk-overview#provision-and-manage-azure-resources-with-management-libraries) 

**REST API**  

- [REST API Documentation](https://aka.ms/testbase-api)  

We are continuously gathering and collaborating on feedback to prioritize and improve the future for Test Base. Email us at  tbcomms@microsoft.com, we look forward to hearing your feedback and comments! 

## Join the Test Base community 

We are actively engaging with application developers and enterprise customers now to add more value and help solve additional use cases. We would also like to invite you to come join us at the new Test Base for M365 community on Tech Community so you can share your experiences and connect with others using the service. 