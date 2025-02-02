---
title: "Configure search for Microsoft 365 Multi-Geo"
ms.reviewer:
ms.date: 12/10/2024
ms.author: kvice
author: kelleyvice-msft
manager: scotv
audience: ITPro
ms.topic: article
ms.service: microsoft-365-enterprise
ms.subservice: administration
ms.custom: seo-marvel-mar2020
ms.collection: 
- Strat_SP_gtc
- must-keep
ms.localizationpriority: medium
f1.keywords:
- NOCSH
description: Learn how to configure search in a multi-geo environment. Only some clients, such as OneDrive, can return results in a multi-geo environment.
---

# Configure Search for Microsoft 365 Multi-Geo

## Configure Multi-Geo Search

Your Multi-Geo _Tenant_ will have aggregate search capabilities allowing a search query to return results from anywhere within the _Tenant_.

By default, searches from these entry points will return aggregate results, even though each search index is located within its relevant _Geography_ location:

- OneDrive
- Delve
- SharePoint Home
- Search Center

Additionally, Multi-Geo search capabilities can be configured for your custom search applications that use the SharePoint search API.

Please review [Configure Search for OneDrive Multi-Geo](configure-search-for-multi-geo.md) for instructions including any limitations and differences.

## Validating the Microsoft 365 Multi-Geo configuration

Below are some basic use cases you may wish to include in your validation plan before broadly rolling out Microsoft 365 Multi-Geo to your company. Once you have completed these tests and any additional use cases that are relevant to your company, you may choose to move on to adding the users in your initial pilot group.

OneDrive:

Select OneDrive from the Microsoft 365 app launcher and confirm that you are automatically directed to the appropriate _Geography_ location for the user, based on the user's PDL. OneDrive should now begin provisioning at that location. Once provisioned, try uploading and downloading some documents.

OneDrive Mobile App:

Log in to your OneDrive mobile App with your test account credentials. Confirm that you can see your OneDrive files and can interact with them from your mobile device.

OneDrive sync client:

Confirm that the OneDrive sync client automatically detects your OneDrive _Geography_ location upon login. If you need to download the sync client, you can click **Sync** in the OneDrive library.

Office applications:

Confirm that you can access OneDrive by logging in from an Office application, such as Word. Open the Office application and select **OneDrive – \<TenantName\>**. Office will detect your OneDrive location and show you the files that you can open.

Sharing:

Try sharing OneDrive files. Confirm that the people picker shows you all your SharePoint users regardless of their _Geography_ location.

In a multi-geo environment, each _Geography_ location has its own search index and Search Center. When a user searches, the query is fanned out to all the indexes, and the returned results are merged.

For example, a user in one _Geography_ location can search for content stored in another _Geography_ location, or for content on a SharePoint site that's restricted to a different Geography location. If the user has access to this content, search will show the result.

## Which search clients work in a Multi-Geo environment?

These clients can return results from all Geography locations:

- OneDrive
- Delve
- The SharePoint home page
- The Search Center
- Custom search applications that use the SharePoint Search API

### OneDrive

As soon as the Multi-Geo environment has been set up, users that search in OneDrive get results from all _Geography_ locations.

### Delve

As soon as the Multi-Geo environment has been set up, users that search in Delve get results from all _Geography_ locations.

The Delve feed and the profile card only show previews of files that are stored in the central location. For files that are stored in _Satellite Geography_ locations, the icon for the file type is shown instead.

### The SharePoint home page

As soon as the Multi-Geo environment has been set up, users will see news, recent and followed sites from multiple _Geography_ locations on their SharePoint home page. If they use the search box on the SharePoint home page, they'll get merged results from multiple _Geography_ locations.

### The Search Center

After the multi-geo environment has been set up, each Search Center continues to only show results from their own _Geography_ location. Admins must [change the settings of each Search Center](#_Set_up_a_1) to get results from all _Geography_ locations. Afterwards, users that search in the Search Center get results from all _Geography_ locations.

### Custom search applications

As usual, custom search applications interact with the search indexes by using the existing SharePoint Search REST APIs. To get results from all, or some _Geography_ locations, the application must [call the API and include the new Multi-Geo query parameters](#_Get_custom_search) in the request. This triggers a fan out of the query to all _Geography_ locations.

## What's different about search in a Multi-Geo environment?

Some search features you might be familiar with, work differently in a multi-geo environment.

<table>
<thead>
<tr class="header">
<th align="left">Feature</th>
<th align="left">How it works</th>
<th align="left">Workaround</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Promoted results</td>
<td align="left">You can create query rules with promoted results at different levels: for the whole <i>Tenant</i>, for a site collection, or for a site. In a Multi-Geo environment, define promoted results at the <i>Tenant</i> level to promote the results to the Search Centers in all <i>Geography</i> locations. If you only want to promote results in the Search Center that's in the <i>Geography</i> location of the site collection or site, define the promoted results at the site collection or site level. These results are not promoted in other <i>Geography</i> locations.</td>
<td align="left">If you don't need different promoted results per <i>Geography</i> location, for example different rules for traveling, we recommend defining promoted results at the <i>Tenant</i> level.</td>
</tr>
<tr class="even">
<td align="left">Search refiners</td>
<td align="left">Search returns refiners from all the <i>Geography</i> locations of a <i>Tenant</i> and then aggregates them. The aggregation is a best effort, meaning that the refiner counts might not be 100% accurate. For most search-driven scenarios, this accuracy is sufficient.
</td>
<td align="left">For search-driven applications that depend on refiner completeness, query each <i>Geography</i> location independently.</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Multi-Geo search doesn't support dynamic bucketing for numerical refiners.</td>
<td align="left">Use the <a href="/sharepoint/dev/general-development/query-refinement-in-sharepoint">"Discretize" parameter</a> for numerical refiners.</td>
</tr>
<tr class="even">
<td align="left">Document IDs</td>
<td align="left">If you're developing a search-driven application that depends on document IDs, note that document IDs in a Multi-Geo environment aren't unique across <i>Geography</i> locations, they are unique per <i>Geography</i> location.</td>
<td align="left">We've added a column that identifies the <i>Geography</i> location. Use this column to achieve uniqueness. This column is named "GeoLocationSource".</td>
</tr>
<tr class="odd">
<td align="left">Number of results</td>
<td align="left">The search results page shows combined results from the <i>Geography</i> locations, but it's not possible to page beyond 500 results.</td>
<td align="left"></td>
</tr>
<tr class="even">
<td align="left">Hybrid search</td>
<td align="left">In a hybrid SharePoint environment with <a href="/sharepoint/hybrid/learn-about-cloud-hybrid-search-for-sharepoint">cloud hybrid search</a>,  on-premises content is added to the Microsoft 365 index of the central location.</td>
<td align="left"></td>
</tr>
</tbody>
</table>

## What's not supported for search in a multi-geo environment?

Some of the search features you might be familiar with, aren't supported in a multi-geo environment.

<table>
<thead>
<tr class="header">
<th align="left">Search feature</th>
<th align="left">Note</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">App-only authentication</td>
<td align="left">App-only authentication (privileged access from services) isn't supported in multi-geo search.</td>
</tr>
<tr class="even">
<td align="left">Guests</td>
<td align="left">Guests only get results from the <i>Geography</i> location that they're searching from.</td>
</tr>
</tbody>
</table>

## How does search work in a Multi-Geo environment?

All the search clients use the existing SharePoint Search REST APIs to interact with the search indexes.

![Diagram showing how SharePoint Search REST APIs interact with the search indexes.](../media/configure-search-for-multi-geo-image1-1.png)

1. A search client calls the Search REST endpoint with the query property EnableMultiGeoSearch= true.
2. The query is sent to all _Geography_ locations in the _Tenant_.
3. Search results from each _Geography_ location are merged and ranked.
4. The client gets unified search results.

<span id="_Set_up_a" class="anchor"><span id="_Ref501388384" class="anchor"></span></span>Notice that we don't merge the search results until we've received results from all the geo locations. This means that multi-geo searches have additional latency compared to searches in an environment with only one geo location.

<span id="_Set_up_a_1" class="anchor"><span id="_Ref505252370" class="anchor"></span></span>
## Get a Search Center to show results from all geo locations

Each Search Center has several verticals and you have to set up each vertical individually.

1. Ensure that you perform these steps with an account that has permission to edit the search results page and the Search Result Web Part.

2. Navigate to the search results page (see the [list](https://support.office.com/article/174d36e0-2f85-461a-ad9a-8b3f434a4213) of search results pages)

3. Select the vertical to set up, click **Settings** gear icon in the upper, right corner, and then click **Edit Page**. The search results page opens in Edit mode.

   ![Edit page selection in Settings.](../media/configure-search-for-multi-geo-image2.png)

4. In the Search Results Web Part, move the pointer to the upper, right corner of the web part, click the arrow, and then click **Edit Web Part** on the menu. The Search Results Web Part tool pane opens under the ribbon in the top right of the page.

   ![Edit Web Part selection.](../media/configure-search-for-multi-geo-image3.png)

5. In the Web Part tool pane, in the **Settings** section, under **Results control settings**, select **Show Multi-Geo results** to get the Search Results Web Part to show results from all geo locations.

6. Click **OK** to save your change and close the Web Part tool pane.

7. Check your changes to the Search Results Web Part by clicking **Check-In** on the Page tab of the main menu.

8. Publish the changes by using the link provided in the note at the top of the page.

<span id="_Get_custom_search" class="anchor"><span id="_Ref501388387" class="anchor"></span></span>
## Get custom search applications to show results from all or some geo locations

Custom search applications get results from all, or some, _Geography_ locations by specifying query parameters with the request to the SharePoint Search REST API. Depending on the query parameters, the query is fanned out to all _Geography_ locations, or to some geo locations. For example, if you only need to query a subset of _Geography_ locations to find relevant information, you can control the fan out to only these. If the request succeeds, the SharePoint Search REST API returns response data.

### Requirement

For each geo location, you must ensure that all users in the organization have been granted the **Read** permission level for the root website (for example contoso**APAC**.sharepoint.com/ and contoso**EU**.sharepoint.com/). [Learn about permissions](https://support.office.com/article/understanding-permission-levels-in-sharepoint-87ecbb0e-6550-491a-8826-c075e4859848).

### Query parameters

EnableMultiGeoSearch - This is a Boolean value that specifies whether the query shall be fanned out to the indexes of other geo locations of the multi-geo _Tenant_. Set it to **true** to fan out the query; **false** to not fan out the query. If you don't include this parameter, the default value is **false**, except when making a REST API call against a site which uses the Enterprise Search Center template, in this case the default value is **true**. If you use the parameter in an environment that isn't multi-geo, the parameter is ignored.

ClientType - This is a string. Enter a unique client name for each search application. If you don't include this parameter, the query is not fanned out to other geo locations.

MultiGeoSearchConfiguration - This is an optional list of which geo locations in the multi-geo _Tenant_ to fan the query out to when **EnableMultiGeoSearch** is **true**. If you don't include this parameter, or leave it blank, the query is fanned out to all geo locations. For each geo location, enter the following items, in JSON format:

<table>
<thead>
<tr class="header">
<th align="left">Item</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">DataLocation</td>
<td align="left">The <i>Geography</i> location, for example NAM.</td>
</tr>
<tr class="even">
<td align="left">EndPoint</td>
<td align="left">The endpoint to connect to, for example https://contoso.sharepoint.com</td>
</tr>
<tr class="odd">
<td align="left">SourceId</td>
<td align="left">The GUID of the result source, for example B81EAB55-3140-4312-B0F4-9459D1B4FFEE.</td>
</tr>
</tbody>
</table>

If you omit DataLocation or EndPoint, or if a DataLocation is duplicated, the request fails. [You can get information about the endpoint of a tenant's geo locations by using Microsoft Graph](/sharepoint/dev/solution-guidance/multigeo-discovery).

### Response data

MultiGeoSearchStatus – This is a property that the SharePoint Search API returns in response to a request. The value of the property is a string and gives the following information about the results that the SharePoint Search API returns:

<table>
<thead>
<tr class="header">
<th align="left">Value</th>
<th align="left">Description</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Full</td>
<td align="left">Full results from <strong>all</strong> the <i>Geography</i> locations.</td>
</tr>
<tr class="even">
<td align="left">Partial</td>
<td align="left">Partial results from one or more <i>Geography</i> locations. The results are incomplete due to a transient error.</td>
</tr>
</tbody>
</table>

### Query using the REST service

With a GET request, you specify the query parameters in the URL. With a POST request, you pass the query parameters in the body in JavaScript Object Notation (JSON) format.

#### Request headers

<table>
<thead>
<tr class="header">
<th align="left">Name</th>
<th align="left">Value</th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Content-Type</td>
<td align="left">application/json;odata=verbose</td>
</tr>
</tbody>
</table>

#### Sample GET request that's fanned out to **all** geo locations

```http
https://<tenant>/_api/search/query?querytext='sharepoint'&Properties='EnableMultiGeoSearch:true'&ClientType='my_client_id'
```

#### Sample GET request to fan out to **some** geo locations

```http
https://<tenant>/_api/search/query?querytext='site'&ClientType='my_client_id'&Properties='EnableMultiGeoSearch:true, MultiGeoSearchConfiguration:[{DataLocation\\:"NAM"\\,Endpoint\\:"https\\://contosoNAM.sharepoint.com"\\,SourceId\\:"B81EAB55-3140-4312-B0F4-9459D1B4FFEE"}\\,{DataLocation\\:"CAN"\\,Endpoint\\:"https\\://contosoCAN.sharepoint-df.com"}]'
```

> [!NOTE]
> Commas and colons in the list of geo locations for the MultiGeoSearchConfiguration property are preceded by the **backslash** character. This is because GET requests use colons to separate properties and commas to separate arguments of properties. Without the backslash as an escape character, the MultiGeoSearchConfiguration property is interpreted wrongly.

#### Sample POST request that's fanned out to **all** geo locations

```http
    {
    "request": {
            "__metadata": {
            "type": "Microsoft.Office.Server.Search.REST.SearchRequest"
        },
        "Querytext": "sharepoint",
        "Properties": {
            "results": [
                {
                    "Name": "EnableMultiGeoSearch",
                    "Value": {
                        "QueryPropertyValueTypeIndex": 3,
                        "BoolVal": true
                    }
                }
            ]
        },
        "ClientType": "my_client_id"
        }
    }
```

#### Sample POST request that's fanned out to **some** geo locations

```http
    {
        "request": {
            "Querytext": "SharePoint",
            "ClientType": "my_client_id",
            "Properties": {
                "results": [
                    {
                        "Name": "EnableMultiGeoSearch",
                        "Value": {
                            "QueryPropertyValueTypeIndex": 3,
                            "BoolVal": true
                        }
                    },
                    {
                        "Name": "MultiGeoSearchConfiguration",
                        "Value": {
                        "StrVal": "[{\"DataLocation\":\"NAM\",\"Endpoint\":\"https://contoso.sharepoint.com\",\"SourceId\":\"B81EAB55-3140-4312-B0F4-9459D1B4FFEE\"},{\"DataLocation\":\"CAN\",\"Endpoint\":\"https://contosoCAN.sharepoint.com\"}]",
                            "QueryPropertyValueTypeIndex": 1
                        }
                    }
                ]
            }
        }
    }
```

### Query using CSOM

Here's a sample CSOM query that's fanned out to **all** _Geography_ locations:

```CSOM
var keywordQuery = new KeywordQuery(ctx);
keywordQuery.QueryText = query.SearchQueryText;
keywordQuery.ClientType = <enter a string here>;
keywordQuery.Properties["EnableMultiGeoSearch"] = true;
```
