---
title: "GDPR discovery, protection, and reporting in the Microsoft 365 dev/test environment"
description: Learn how to configure and demonstrate personally identifiable information (PII) for GDPR an in Microsoft 365 dev/test environment.
f1.keywords:
- NOCSH
ms.author: bcarter
author: brendacarter
manager: laurawi
audience: ITPro
ms.topic: article
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- M365-security-compliance
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.assetid: c2112ce8-1c4b-424f-b200-59e161db2d21
titleSuffix: Microsoft GDPR
ms.custom: seo-marvel-apr2020
---

# GDPR discovery, protection, and reporting in the dev/test environment

 **Summary:** Demonstrate GDPR capabilities in Microsoft 365.

This article describes how you configure and demonstrate personally identifiable information (PII) discovery, protection, and reporting for the General Data Protection Regulation (GDPR) in a Microsoft 365 dev/test environment.

## Phase 1: Create and configure your trial Microsoft 365 subscription

First, follow the steps in [Phase 2 of the Microsoft 365 dev/test environment](https://docs.microsoft.com/Office365/Enterprise/office-365-dev-test-environment#phase-2-create-an-office-365-trial-subscription) article.

Next, use these steps to configure the eDiscovery manager:

1. Sign in to your Microsoft 365 trial tenant with your global administrator account.
2. From the Microsoft 365 home page, click **Security & Compliance**.
3. From the new Security & Compliance tab, click **Permissions** > **eDiscovery Manager**.
4. Click **Edit** for eDiscovery Manager, and then click **Choose eDiscovery Manager**.
5. Click **+ Add**, search for your global administrator account name and add your global administrator account as an eDiscovery Manager.
6. Click **Done** > **Save** > **Close**.

## Phase 2: Add personally identifiable information to your tenant

In this phase, you create a document with PII for a set of example International Banking Account Numbers (IBANs) and store it on a SharePoint Online site in your Microsoft 365 dev/test environment.

1. On your local computer, open Microsoft Word.
2. Paste the following table in the Word file and save it as 'IBANs.docx' on your local computer.

   |Number|Country|Code|IBAN|
   |---|---|---|---|
   |1|Austria SEPA|AT|AT611904300234573201|
   |2|Bulgaria SEPA|BG|BG80BNBG96611020345678|
   |3|Denmark SEPA|DK|DK5000400440116243|
   |4|Finland SEPA|FI|FI2112345600000785|
   |5|France SEPA|FR|FR1420041010050500013M02606|
   |6|Germany SEPA|DE|DE89370400440532013000|
   |7|Greece SEPA|GR|GR1601101250000000012300695|
   |8|Italy SEPA|IT|GR1601101250000000012300695|
   |9|Netherlands SEPA|NL|NL91ABNA0417164300|
   |10|Poland SEPA|PL|PL27114020040000300201355387|

   Note:- This sample data set is derived from publicly available information and is intended to be used for test purposes only.

3. In a new tab of your browser, type:  **https://**\<YourTenantName\>**.sharepoint.com**
4. Click **Documents** to open the document library for this site. If you're prompted for a new list experience tour, click **Next** until it's finished.
5. Click **Upload** > **Files** and select the IBANs.docx you created in step 2.

## Phase 3: Demonstrate data discovery

In this phase, you demonstrate search to find the document created and stored in Phase 2, based on its content containing IBANs.

1. From the Security & Compliance tab, click **Home**, and then click **Search & investigation** > **Content search**.
2. Create a new search item by clicking on **+**.
3. In a new window, provide the following information:
    a. Name: IBAN Search
    b. Where do you want us to look?: **Choose specific sites to search** (click **+**), and then enter the site's URL: **https://**\<YourTenantName\>**.sharepoint.com/**
    c. Click **Add**, and then click **OK**. If you see a Warning, click **OK**.
    d. Click **Next** on a **New search** window.
    e. For **What do you want us to look for?**:
**SensitiveType:"International Banking Account Number (IBAN)"**, and then click **Search**.

4. Make sure you see at least one item listed in the **IBAN Search** results.

## Phase 4: Create a custom sensitive information type via PowerShell

In this phase, you create a custom sensitive information type for the fictional Contoso Corporation using Microsoft PowerShell.  Contoso uses a Contoso Customer Number (CCN) to identify each customer in their customer database. A CCN consists of the following structure:

- Two digits to represent the year that the record was created.
  - Contoso was founded in 2002; therefore, the earliest possible value would be 02.
- Three digits to represent the partner agency that created the record.
  - Possible agency values range from 000 to 999.
- An alphabetic character to represent the line of business.
  - Possible values are a-z and should be case insensitive.
- A four-digit serial number.
  - Possible serial number values range from 0000 to 9999.

Contoso always refers to customers by using a CCN in internal correspondence, external correspondence, documents, and other forms. Contoso needs a custom sensitive item type to detect the use of CCNs in Microsoft 365 content so that they may apply protection to the use of this form of personal identifiable information.

1. Use the multi-factor authentication (MFA) connection instructions in [Connect to Security & Compliance Center PowerShell](https://docs.microsoft.com/powershell/exchange/connect-to-scc-powershell) and connect to the Security & Compliance Center with UPN of your global administrator account.

2. Run the following PowerShell commands.

   ```powershell
   #Create & start search for sample data
   $searchName = "Sample Customer Information Search"
   $searchQuery = "15080P9562 OR 14040O1119 OR 15020J8317 OR 14050E2330 OR 16050E2166 OR 17040O1118"
   New-ComplianceSearch -Name $searchName -SharePointLocation All -ExchangeLocation All -ContentMatchQuery $searchQuery
   Start-ComplianceSearch -Identity $searchName#Create & start search for sample data
   $searchName = "Sample Customer Information Search"
   $searchQuery = "15080P9562 OR 14040O1119 OR 15020J8317 OR 14050E2330 OR 16050E2166 OR 17040O1118"
   New-ComplianceSearch -Name $searchName -SharePointLocation All -ExchangeLocation All -ContentMatchQuery $searchQuery
   Start-ComplianceSearch -Identity $searchName
   ```

3. Run the following PowerShell commands and copy the generated GUIDs to an open instance of Notepad on your computer in the order in which they are listed.

   ```powershell
   #Generate three unique GUIDs
   Write-Host "GUID1 = "([guid]::NewGuid().Guid)
   Write-Host "GUID2 = "([guid]::NewGuid().Guid)
   Write-Host "GUID3 = "([guid]::NewGuid().Guid)
   ```

4. On your local computer, open another instance of Notepad and paste in the following content:

   ```text
   <?xml version="1.0" encoding="utf-8"?>
   <RulePackage xmlns="https://schemas.microsoft.com/office/2011/mce">
   <RulePack id="GUID1">
   <Version major="1" minor="0" build="0" revision="0" />
   <Publisher id="GUID2" />
   <Details defaultLangCode="en">
   <LocalizedDetails langcode="en">
   <PublisherName>Contoso Ltd.</PublisherName>
   <Name>Contoso Rule Package</Name>
   <Description>Defines Contoso's custom set of classification rules</Description>
   </LocalizedDetails>
   </Details>
   </RulePack>
   <Rules>
   <!-- Contoso Customer Number (CCN) -->
   <Entity id="GUID3" patternsProximity="300" recommendedConfidence="85">
   <Pattern confidenceLevel="85">
   <IdMatch idRef="Regex_contoso_ccn" />
   <Match idRef="Keyword_contoso_ccn" />
   <Match idRef="Regex_eu_date" />
   </Pattern>
   </Entity>
   <Regex id="Regex_contoso_ccn">[0-1][0-9][0-9]{3}[A-Za-z][0-9]{4}</Regex>
   <Keyword id="Keyword_contoso_ccn">
   <Group matchStyle="word">
   <Term caseSensitive="false">customer number</Term>
   <Term caseSensitive="false">customer no</Term>
   <Term caseSensitive="false">customer #</Term>
   <Term caseSensitive="false">customer#</Term>
   <Term caseSensitive="false">Contoso customer</Term>
   </Group>
   </Keyword>
   <Regex id="Regex_eu_date"> (0?[1-9]|[12][0-9]|3[0-1])[\/-](0?[1-9]|1[0-2]|j\x00e4n(uar)?|jan(uary|uari|uar|eiro|vier|v)?|ene(ro)?|genn(aio)? |feb(ruary|ruari|rero|braio|ruar|br)?|f\x00e9vr(ier)?|fev(ereiro)?|mar(zo|o|ch|s)?|m\x00e4rz|maart|apr(ile|il)?|abr(il)?|avril |may(o)?|magg(io)?|mai|mei|mai(o)?|jun(io|i|e|ho)?|giugno|juin|jul(y|io|i|ho)?|lu(glio)?|juil(let)?|ag(o|osto)?|aug(ustus|ust)?|ao\x00fbt|sep|sept(ember|iembre|embre)?|sett(embre)?|set(embro)?|oct(ober|ubre|obre)?|ott(obre)?|okt(ober)?|out(ubro)? |nov(ember|iembre|embre|embro)?|dec(ember)?|dic(iembre|embre)?|dez(ember|embro)?|d\x00e9c(embre)?)[ \/-](19|20)?[0-9]{2}</Regex>
   <LocalizedStrings>
   <Resource idRef="GUID3">
   <Name default="true" langcode="en-us">Contoso Customer Number (CCN)</Name>
   <Description default="true" langcode="en-us">Contoso Customer Number (CCN) that looks for additional keywords and EU formatted date</Description>
   </Resource>
   </LocalizedStrings>
   </Rules>
   </RulePackage>
   ```

5. Replace the values of GUID1, GUID2, and GUID3 in the XML text of step 4 with their values from step 3, and then save the contents on your local computer with the name ContosoCCN.xml.

6. Fill in the path to your ContosoCCN.xml file and run the following commands.

   ```powershell
   #Create new Sensitive Information Type
   $path="<path to the ContosoCCN.xml file, such as C:\Scripts\ContosoCCN.xml>"
   New-DlpSensitiveInformationTypeRulePackage -FileData (Get-Content -Path $path -Encoding Byte -ReadCount 0)
   ```

7. From the Security & Compliance tab, click **Classifications** > **Sensitive information types**. You should see the Contoso Customer Number (CCN) in the list.

## Phase 5: Demonstrate data protection

Protection of personal information in Microsoft 365 includes using data loss prevention (DLP) capabilities.  With DLP policies, you can automatically protect sensitive information across Microsoft 365.

There are multiple ways you can apply the protection. Educating and raising awareness to where EU resident data is stored in your environment and how your employees are permitted to handle it represents one level of information protection using Office 365 DLP.

In this phase, you create a new DLP policy and demonstrate how it gets applied to the IBANs.docx file you stored in SharePoint Online in Phase 2 and when you attempt to send an email containing IBANs.

1. From the Security & Compliance tab of your browser, click **Home**.
2. Click **Data loss prevention** > **Policy**.
3. Click **+ Create a policy**.
4. In **Start with a template or create a custom policy**, click **Custom** > **Custom policy** > **Next**.
5. In **Name your policy**, provide the following details and then click **Next**:
    a. Name: **EU Citizen PII Policy**
    b. Description: **Protect the personally identifiable information of European citizens**
6. In **Choose locations**, select **All locations in Microsoft 365**. This will include content in Exchange email and OneDrive and SharePoint documents. And then click **Next**.
7. In **Customize the type of content you want to protect**, click **Find content that contains:** and then click **Edit**.
8. In **Choose the types of content to protect**, click **Add** > **Sensitive info types**.
9. In **Sensitive info types**, click **+ Add**.
10. In **Sensitive info types**, search for **IBAN**, select the check box for **International Banking Account Number (IBAN)**, and then click **Add**.
11. Confirm that the **International Banking Account Number (IBAN)** sensitive information type was added, and then click **Done**.
12. In **Content contains**, confirm that the sensitive information types were added and then click **Save**.
13. In **Customize the type of content you want to protect**, confirm  **Find content that contains:** contains the **International Banking Account Number (IBAN)**, and then click **Next**.
14. In **Detect when content that's being shared contains:**, change the value from **10** to **1**, and then click **Next**.
15. In **Do you want to turn on the policy or test things out first?**, choose the following settings, and then click **Next**.
    a. Select the option for **I'd like to test it out first**
    b. Select the check box for **Show policy tips while in test mode**
16. In **Review your settings**, click **Create** after reviewing the settings. NOTE: After you create a new DLP policy, it will take a while for it to take effect.
17. On your local computer, open a private instance of your browser.
18. In the address bar, type **https://**\<YourTenantName\>**.sharepoint.com** and sign in using your global administrator account.
19. Click **Documents**.
20. Click the file named 'IBANs.docx'. You should see 'Policy tip for IBANs.docx'.  The IBANs.docx file was shared with external recipients, which violates the DLP policy.
21. In the address bar, type: `https://outlook.office365.com`
22. Click **New** - **Email message** and provide the following:

    - **To:** \<a personal email address\>
    - **Subject:** GDPR Test
    - **Body:** Copy in the table of values shown below.

      |Number|Country|Code|IBAN|
      |---|---|---|---|
      |1|Austria SEPA|AT|AT611904300234573201|
      |2|Bulgaria SEPA|BG|BG80BNBG96611020345678|
      |3|Denmark SEPA|DK|DK5000400440116243|
      |4|Finland SEPA|FI|FI2112345600000785|
      |5|France SEPA|FR|FR1420041010050500013M02606|
      |6|Germany SEPA|DE|DE89370400440532013000|
      |7|Greece SEPA|GR|GR1601101250000000012300695|
      |8|Italy SEPA|IT|GR1601101250000000012300695|
      |9|Netherlands SEPA|NL|NL91ABNA0417164300|
      |10|Poland SEPA|PL|PL27114020040000300201355387|
      |

    Note:- This sample data set is derived from publicly available information and is intended to be used for test purposes only.

23. You will see that the DLP policy recognized that body of the email contains IBANs and provides you with the policy tip at the top of the message window.
24. Close the private instance of your browser.

## Phase 6: Demonstrate reporting

In this phase, you demonstrate Microsoft 365 reporting based on the DLP policy configured in Phase 5.

   1. From the Security & Compliance tab of your browser, click **Home**.
   2. Click **Reports** > **Dashboard** > **DLP policy matches**.
   3. Your DLP policy helps identify and protect organization's sensitive information. For example, in the report you will see that the policy identified the document that contains IBANs stored in SharePoint Online.

## See Also

[Office 365 Information Protection for GDPR](office-365-information-protection-for-gdpr.md)

[GDPR for Microsoft 365](https://docs.microsoft.com/microsoft-365/compliance/gdpr?toc=/microsoft-365/enterprise/toc.json)
