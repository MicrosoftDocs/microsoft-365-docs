---
title: "Customize or create a new sensitive information type"
ms.author: bcarter
author: brendacarter
manager: laurawi
ms.date: 2/7/2018
audience: ITPro
ms.topic: overview
ms.collection: 
- Ent_O365
- Strat_O365_Enterprise
- GDPR
- M365-security-compliance
ms.service: O365-seccomp
localization_priority: Priority
search.appverid:
- MET150
ms.custom: 
ms.assetid:
description: "Learn how to modify or create new Office 365 sensitive information types for GDPR."
---
# Customize or create a new sensitive information type

This article provides three examples to demonstrate how to modify or create new Office 365 sensitive information types for GDPR.

- Modify an existing sensitive information type — EU Debit Card Number

- Create a new sensitive information type — email address

- Create a new sensitive information type with example XML file — Contoso customer number

Also see:

- [Create a custom sensitive information type using PowerShell](create-a-custom-sensitive-information-type-in-scc-powershell.md)

- [Customize a built-in sensitive information type](customize-a-built-in-sensitive-information-type.md)

## Modify a sensitive information type to improve accuracy

If you’re using Content Search to search for personal data using sensitive information types and you’re not returning the expected results, or the query returns too many false positives, consider modifying the sensitive information type to work better with your environment.

The best practice when creating or customizing a sensitive information type is to create a new sensitive information type based on an existing one, giving it a unique name and identifiers. For example, if you wish to adjust the parameters of the “EU Debit Card Number” sensitive information type, you could name your copy of that rule “EU Debit Card Enhanced” to distinguish it from the original.

In your new sensitive information type, simply modify the values you wish to change to improve its accuracy. Once complete, upload your new sensitive information type and create a new DLP rule (or modify an existing one) to use the new sensitive information type you just added. Modifying the accuracy of sensitive information types might require some trial and error, so maintaining a copy of the original type allows you to fall back to it if required in the future.

To customize a sensitive information type:

1.  Export the existing Microsoft Rule Package of built in sensitive information types in Office 365.

2.  Rename this XML file and open it in your favorite XML editor.

3.  Isolate the sensitive information type and remove all others.

4.  Use PowerShell to generate two new GUIDs for the sensitive information type you are modifying.

5.  Modify the ID and other basic elements so the sensitive information type is unique (this includes replacing two GUIDs with the new ones you generated).

6.  Tune the match requirements to improve accuracy.

    1.  Proximity modifications — Modify the character pattern proximity to expand or shrink the window in which keywords must be found around the sensitive information type.

    2.  Keyword modifications — Add keywords to one of the \<Keywords\> element in order to provide our sensitive information type more specific corroborative evidence to search for in order to signal a match on this rule. Or remove keywords that are causing false positives.

    3.  Confidence modifications — Modify the confidence with which the sensitive information type must match the criteria specified in its definition before a match is signaled and reported.

7.  Upload the new sensitive information type.

8.  Recrawl your content to identify the sensitive information. See [Manually request crawling and re-indexing of a site](https://support.office.com/article/Manually-request-crawling-and-re-indexing-of-a-site-a-library-or-a-list-9AFA977D-39DE-4321-B4CA-8C7C7E6D264E).

## Example: modify the ‘EU Debit Card Number’ sensitive information type

Improving the accuracy of DLP rules in any system requires testing against a sample data set, and may require fine tuning through repetitive modifications and tests. This example demonstrates modifications to the ‘EU Debit Card Number’ sensitive information type to improve its accuracy.

When searching for an EU Debit Card Number in our example, the definition of that number is strictly defined as 16 digits using a complex pattern, and being subject to the validation of a checksum. We cannot alter this pattern due to the string definition of this sensitive information type. However, we can make the following adjustments to improve the accuracy of how Office 365 DLP finds this sensitive information type within Office 365.

### Proximity modification

We'll shrink the window by modifying the patternProximity value in our \<Entity\> element from 300 to 150 characters. This means that our corroborative evidence, or our keywords, must be closer to our sensitive information type in order to signal a match on this rule.

\<Entity id="48da7072-821e-4804-9fab-72ffb48f6f78" patternsProximity="150" recommendedConfidence="85"\>

### Keyword modifications

Some keywords might cause false positives to occur. As a result you might want to remove keywords. Here are the keywords for this example::

\<Keyword id="Keyword\_card\_terms\_dict"\>

\<Group\>

\<Term\>corporate card\</Term\>

\<Term\>organization card\</Term\>

\<Term\>acct nbr\</Term\>

\<Term\>acct num\</Term\>

\<Term\>acct no\</Term\>

…

\</Group\>

\</Keyword\>

### Confidence modifications

If you remove keywords from the definition, you would typically want to adjust how confident you are that this sensitive information type was found by lowering this value. The default level for EU Debit Card Number type is 85.

\<Entity id="48da7072-821e-4804-9fab-72ffb48f6f78" patternsProximity="150" recommendedConfidence="85"\>

\<Pattern confidenceLevel="85"\>

…

\</Pattern\>

\</Entity\>

## Create a new custom sensitive information type

To create a new custom sensitive information type, start by using Content Search to:

-   Optimize a KQL query

-   See which keywords are most useful

Use these results to create a new sensitive information type. Then optimize the new sensitive information type for your environment.

Note: Many new sensitive information types are coming soon for personal data in EU countries. If you need to create new sensitive information types, begin by targeting data that is custom to your environment.

### Step 1 — Use KQL queries and key words to find additional data in your environment

You might need to create additional queries to find personal data that is subject to GDPR. Content Search uses Keyword Query Language (KQL) to find data. Most sensitive data can’t be accurately detected using just KQL without sensitive information types. So the goal is to test and optimize KQL strings using Content Search and then use these to create and tune new sensitive information types where you can achieve even greater accuracy.

Use these resources to formulate and optimize queries using KQL:

- [Keyword Query Language (KQL) syntax reference (DMC)](https://docs.microsoft.com/sharepoint/dev/general-development/keyword-query-language-kql-syntax-reference)

- [Run a Content Search](content-search.md)

Content Search provides another resource to help you develop KQL queries and sensitive information types — keywords. Why use the keyword list? You can get statistics that show how many items match each keyword. This can help you quickly identify which keywords are the most (and least) effective. For more information about search statistics, see [View keyword statistics for Content Search results](https://support.office.com/article/View-keyword-statistics-for-Content-Search-results-9701a024-c52e-43f0-b545-9a53478aec04).

Keywords on each row are connected by the OR operator in the search query that's created. You can also use a keyword phrase (surrounded by parentheses) in a row.

For more information, see [Keyword queries and search conditions for Content Search](https://support.office.com/article/Keyword-queries-and-search-conditions-for-Content-Search-c4639c2e-7223-4302-8e0d-b6e10f1c3be3).

### Example—Using Content Search to identify email addresses

Email addresses are considered sensitive information related to data subjects. This is a simple example to demonstrate how Content Search can help.

KQL and keywords can’t be used together. Use these tools separately to hone your query and determine keywords that might be useful in sensitive information types.

### KQL query

(^|\\b)([a-zA-Z0-9\_\\-\\.]+)@([a-zA-Z0-9\_\\-\\.]+)\\.([a-zA-Z]{2,5})($|\\b)

Notes:

-   You can use NEAR and ONEAR for proximity searches.

-   Unfortunately, KQL doesn’t support queries with the Regex Class (ex: IdRef="Regex\_email\_address")

### Keywords

Enter each keyword on a separate line. Example keywords:

-   email address

-   mail

-   contact

-   sender

-   recipient

-   cc

-   bcc

In this example, you might learn the keywords are not necessary and produce a lot of false positive results.

### Step 2 — Create a new custom sensitive information type

After using KQL queries and keywords to identify sensitive information, use these to create new custom sensitive information types. In many cases, you’ll require the sophistication of sensitive information types to achieve the right level of accuracy. You can then use these custom sensitive information types with Content Search, in DLP policies and other tools, and within other KQL queries.

The best practice is to create a new sensitive information type based on an existing one. Use the same process described earlier in this article.

### Example — Create a new sensitive information for email addresses 

We’ll continue with the email address as an example because it’s simple. The following table details the modifications recommended for a new email sensitive information type.

<table>
<thead>
<tr class="header">
<th align="left"><strong>Step</strong></th>
<th align="left"><strong>Modification </strong></th>
<th align="left"><strong>Example XML syntax</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">1</td>
<td align="left">Set the IdRef property
<p>Within the &lt;Entity&gt; element, modify the &lt;IdMatch&gt; element so that its idRef property is = to a unique value. This value will point to an element that defines our regular expression to find email addresses.</p></td>
<td align="left">IdRef=&quot;Regex_email_address&quot;</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="left"><p>Proximity attribute</p>
<p>We'll start with a patternProximity value in our &lt;Entity&gt; element of 300.</p></td>
<td align="left">patternsProximity=&quot;300&quot;</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="left"><p>Confidence level</p>
<p>Set the recommendedConfidence property to a value you feel will represent the confidence of finding an accurate match. This will likely require testing with a representative data set to get an accurate result. As an initial setting, set this value to 75.</p></td>
<td align="left"><p>recommendedConfidence=&quot;75&quot;&gt;</p>
<p>The resulting XML for these first three elements combined looks like this:</p>
<p>&lt;Entity id=&quot;42e6348e-27f0-4774-9604-d470cb3e219a&quot; patternsProximity=&quot;300&quot; recommendedConfidence=&quot;75&quot;&gt;</p>
<p>&lt;Pattern confidenceLevel=&quot;75&quot;&gt;</p>
<p>&lt;IdMatch idRef=&quot;Regex_email_address&quot; /&gt;</p>
<p>&lt;Any minMatches=&quot;1&quot;&gt;</p>
<p>&lt;Match idRef=&quot;Keyword_email_terms&quot; /&gt;</p>
<p>&lt;/Any&gt;</p>
<p>&lt;/Pattern&gt;</p>
<p>&lt;/Entity&gt;</p></td>
</tr>
<tr class="even">
<td align="left">4</td>
<td align="left"><p>Regex element</p>
<p>Add a new &lt;Regex&gt; element immediately be below the &lt;Entity&gt; elements that defines the regular expression used to identify email addresses.</p></td>
<td align="left">&lt;Regex id=&quot;Regex_email_address&quot;&gt;(^|\b)([a-zA-Z0-9_\-\.]+)@([a-zA-Z0-9_\-\.]+)\.([a-zA-Z]{2,5})($|\b)&lt;/Regex&gt;</td>
</tr>
<tr class="odd">
<td align="left">5</td>
<td align="left"><p>Keywords</p>
<p>Add a new &lt;Keyword&gt; element below the &lt;Regex&gt; element that defines list of email address related keywords. Ensure that the id value for the &lt;Keyword&gt; element matches the &lt;Match idRef&gt; value in the &lt;Entity&gt;&lt;Pattern&gt; element. You may continue to add your own keywords if needed.</p>
<p>Keywords are likely not necessary to include in an email sensitive information type. These are provided as an example.</p></td>
<td align="left"><p>&lt;Keyword id=&quot;Keyword_email_terms&quot;&gt;</p>
<p>&lt;Group&gt;</p>
<p>&lt;Term&gt;email&lt;/Term&gt;</p>
<p>&lt;Term&gt;email address&lt;/Term&gt;</p>
<p>&lt;Term&gt;contact&lt;/Term&gt;</p>
<p>&lt;/Group&gt;</p>
<p>&lt;/Keyword&gt;</p></td>
</tr>
<tr class="even">
<td align="left">6</td>
<td align="left"><p>LocalizedStrings element</p>
<p>In the &lt;LocalizedStrings&gt;&lt;Resource&gt; element ensure that you have a unique name that identifies your sensitive information type.</p></td>
<td align="left"><p>&lt;LocalizedStrings&gt;</p>
<p>&lt;Resource idRef=&quot;42e6348e-27f0-4774-9604-d470cb3e219a&quot;&gt;</p>
<p>&lt;Name default=&quot;true&quot; langcode=&quot;en-us&quot;&gt;Email Address&lt;/Name&gt;</p>
<p>&lt;Description default=&quot;true&quot; langcode=&quot;en-us&quot;&gt;Detects email addresses.&lt;/Description&gt;</p>
<p>&lt;/Resource&gt;</p>
<p>&lt;/LocalizedStrings&gt;</p></td>
</tr>
</tbody>
</table>

## Create a new sensitive information type with example PowerShell and XML file — Contoso customer number

Contoso uses a Contoso Customer Number (CCN) to identify each customer in their customer database. A CCN consists of the following taxonomy:

-   Two digits to represent the year that the record was created. Contoso was founded in 2002; therefore, the earliest possible value would be 02.

-   Three digits to represent the partner agency that created the record. Possible agency values range from 000 to 999.

-   An alpha character to represent the line of business. Possible values are a-z and should be case insensitive.

-   A four-digit serial number. Possible serial number values range from 0000 to 9999.

Example CCNs:

> 15080P9562
>
> 14040O1119
>
> 15020J8317
>
> 14050E2330
>
> 16050E2166
>
> 17040O1118

Contoso always refers to customers by using a CCN in internal correspondence, external correspondence, documents, etc. They would like to create a custom sensitive information type to detect the use of CCN in Office 365 so that they may apply protection to the use of this form of personal data.

### Create a new sensitive information type for Contoso customer number

<table>
<thead>
<tr class="header">
<th align="left"><strong>Step</strong></th>
<th align="left"><strong>Action </strong></th>
<th align="left"><strong>Result</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">1</td>
<td align="left">Contoso uses PowerShell and Content Search to find documents that match an example set of CCNs.</td>
<td align="left">

<p>#Connect to Office 365 Security &amp; Compliance Center</p>
<p>$adminUser = &quot;alland@contoso.com&quot;</p>
<p>Connect-IPPSSession -UserPrincipalName $adminUser</p>
<p>#Create &amp; start search for sample data</p>
<p>$searchName = &quot;Sample Customer Information Search&quot;</p>
<p>$searchQuery = &quot;15080P9562 OR 14040O1119 OR 15020J8317 OR 14050E2330 OR 16050E2166 OR 17040O1118&quot;</p>
<p>New-ComplianceSearch -Name $searchName -SharePointLocation All -ExchangeLocation All -ContentMatchQuery $searchQuery</p>
<p>Start-ComplianceSearch -Identity $searchName</p>
</td>
</tr>
<tr class="even">
<td align="left">2</td>
<td align="left">Contoso analyzes the results. Every time the CCN was used, an EU formatted date was used and one of these keywords were also used within a proximity of 300 characters.</td>
<td align="left">customer number, customer no, customer #, customer#, Contoso customer</td>
</tr>
<tr class="odd">
<td align="left">3</td>
<td align="left">Contoso developed the following Regular Expression (RegEx) pattern to identify their CCN.</td>
<td align="left">[0-1][0-9][0-9]{3}[A-Za-z][0-9]{4}</td>
</tr>
<tr class="even">
<td align="left">4</td>
<td align="left">Contoso developed the following Regular Expression (RegEx) pattern to identify EU dates in the formats used by their various subsidiaries.</td>
<td align="left">
````xml
(0?[1-9]|[12][0-9]|3[0-1])[\/-](0?[1-9]|1[0-2]|j\x00e4n(uar)?|jan(uary|uari|uar|eiro|vier|v)?|ene(ro)?|genn(aio)?|‌ feb(ruary|ruari|rero|braio|ruar|br)?|f\x00e9vr(ier)?|fev(ereiro)?|mar(zo|o|ch|s)?|m\x00e4rz|maart|‌ apr(ile|il)?|abr(il)?|avril|may(o)?|magg(io)?|mai|mei|mai(o)?|jun(io|i|e|ho)?|giugno|juin|jul(y|io|i|ho)?|lu(glio)?|juil(let)?|ag(o|osto)?|aug(ustus|ust)?|ao\x00fbt|sep|sept(ember|iembre|embre)?|sett(embre)?|set(embro)?|‌ oct(ober|ubre|obre)?|ott(obre)?|okt(ober)?|out(ubro)?|nov(ember|iembre|embre|embro)?|dec(ember)?|‌ dic(iembre|embre)?|dez(ember|embro)?|d\x00e9c(embre)?)[ \/-](19|20)?[0-9]{2}
````
</td>
</tr>
<tr class="odd">
<td align="left">5</td>
<td align="left">Contoso uses PowerShell to generate three unique GUIDs.</td>
<td align="left"><p>#Generate a unique GUID for RulePack Id, Publisher Id, and Entity Id</p>
<p>[guid]::NewGuid().Guid</p>
<p>[guid]::NewGuid().Guid</p>
<p>[guid]::NewGuid().Guid</p></td>
</tr>
<tr class="even">
<td align="left">6</td>
<td align="left">Contoso defines the following parameters for their sensitive item type rule.</td>
<td align="left"><p>Name: Contoso Customer Number (CCN)</p>
<p>Description: Contoso Customer Number (CCN) that looks for additional keywords and EU formatted date</p></td>
</tr>
<tr class="odd">
<td align="left">7</td>
<td align="left">Contoso creates an XML file for a new sensitive information type to detect a Contoso Customer Number (CCN) and saves this to a local file system as C:\Scripts\ContosoCCN.xml in with UTF-8 encoding.</td>
<td align="left">See the XML file below this table.</td>
</tr>
<tr class="even">
<td align="left">8</td>
<td align="left">Contoso creates the custom sensitive information type with the following PowerShell.</td>
<td align="left"><p>#Connect to Office 365 Security &amp; Compliance Center</p>
<p>$adminUser = &quot;alland@contoso.com&quot;</p>
<p>Connect-IPPSSession -UserPrincipalName $adminUser</p>
<p>#Create new Sensitive Information Type</p>
<p>New-DlpSensitiveInformationTypeRulePackage -FileData (Get-Content -Path &quot;C:\Scripts\ContosoCCN.xml&quot; -Encoding Byte -ReadCount 0)</p></td>
</tr>
</tbody>
</table>

### Example XML file for the new sensitive information type (step 7)
```xml
\<?xml version="1.0" encoding="utf-8"?\>

\<RulePackage xmlns="https://schemas.microsoft.com/office/2011/mce"\>

\<RulePack id="130ae63b-a91e-4a12-9e02-a90e36a83d7f"\>

\<Version major="1" minor="0" build="0" revision="0" /\>

\<Publisher id="47148982-defd-42a1-890a-7b9472099f1f" /\>

\<Details defaultLangCode="en"\>

\<LocalizedDetails langcode="en"\>

\<PublisherName\>Contoso Ltd.\</PublisherName\>

\<Name\>Contoso Rule Package\</Name\>

\<Description\>Defines Contoso's custom set of classification rules\</Description\>

\</LocalizedDetails\>

\</Details\>

\</RulePack\>

\<Rules\>

\<!-- Contoso Customer Number (CCN) --\>

\<Entity id="a91f9a2e-6cfc-4622-8c5d-954875aa5b2b" patternsProximity="300" recommendedConfidence="85"\>

\<Pattern confidenceLevel="85"\>

\<IdMatch idRef="Regex\_contoso\_ccn" /\>

\<Match idRef="Keyword\_contoso\_ccn" /\>

\<Match idRef="Regex\_eu\_date" /\>

\</Pattern\>

\</Entity\>

\<Regex id="Regex\_contoso\_ccn"\>[0-1][0-9][0-9]{3}[A-Za-z][0-9]{4}\</Regex\>

\<Keyword id="Keyword\_contoso\_ccn"\>

\<Group matchStyle="word"\>

\<Term caseSensitive="false"\>customer number\</Term\>

\<Term caseSensitive="false"\>customer no\</Term\>

\<Term caseSensitive="false"\>customer \#\</Term\>

\<Term caseSensitive="false"\>customer\#\</Term\>

\<Term caseSensitive="false"\>Contoso customer\</Term\>

\</Group\>

\</Keyword\>

\<Regex id="Regex\_eu\_date"\> (0?[1-9]|[12][0-9]|3[0-1])[\\/-](0?[1-9]|1[0-2]|j\\x00e4n(uar)?|jan(uary|uari|uar|eiro|vier|v)?|ene(ro)?|genn(aio)?‌ |feb(ruary|ruari|rero|braio|ruar|br)?|f\\x00e9vr(ier)?|fev(ereiro)?|mar(zo|o|ch|s)?|m\\x00e4rz|maart‌|apr(ile|il)?|abr(il)?|avril‌ |may(o)?|magg(io)?|mai|mei|mai(o)?|jun(io|i|e|ho)?|giugno|juin|jul(y|io|i|ho)?|lu(glio)?|juil(let)?|ag(o|osto)?|aug(ustus|ust)?|ao\\x00fbt|sep|sept(ember|iembre|embre)?|sett(embre)?|set(embro)?|oct(ober|ubre|obre)?|ott(obre)?|okt(ober)?|out(ubro)?‌ |nov(ember|iembre|embre|embro)?|dec(ember)?|dic(iembre|embre)?|dez(ember|embro)?|d\\x00e9c(embre)?)[ \\/-](19|20)?[0-9]{2}\</Regex\>

\<LocalizedStrings\>

\<Resource idRef="a91f9a2e-6cfc-4622-8c5d-954875aa5b2b"\>

\<Name default="true" langcode="en-us"\>Contoso Customer Number (CCN)\</Name\>

\<Description default="true" langcode="en-us"\>Contoso Customer Number (CCN) that looks for additional keywords and EU formatted date\</Description\>

\</Resource\>

\</LocalizedStrings\>

\</Rules\>

\</RulePackage\>
```
