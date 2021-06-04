---
title: "Configure search for Microsoft 365 Multi-Geo"
ms.reviewer: adwood
ms.author: tlarsen
author: tklarsen
manager: arnek
audience: ITPro
ms.topic: article
ms.service: o365-solutions
ms.custom: seo-marvel-mar2020
ms.collection: Strat_SP_gtc
localization_priority: Normal
f1.keywords:
- NOCSH
description: Learn how to configure search in a multi-geo environment. Only some clients, such as OneDrive for Business, can return results in a multi-geo environment.
---

# Configure Search for Microsoft 365 Multi-Geo

In a multi-geo environment, each geo location has its own search index and Search Center. When a user searches, the query is fanned out to all the indexes, and the returned results are merged.

For example, a user in one geo location can search for content stored in another geo location, or for content on a SharePoint site that's restricted to a different geo location. If the user has access to this content, search will show the result.

## Which search clients work in a multi-geo environment?

These clients can return results from all geo locations:

- OneDrive for Business
- Delve
- The SharePoint home page
- The Search Center
- Custom search applications that use the SharePoint Search API

### OneDrive for Business

As soon as the multi-geo environment has been set up, users that search in OneDrive get results from all geo locations.

### Delve

As soon as the multi-geo environment has been set up, users that search in Delve get results from all geo locations.

The Delve feed and the profile card only show previews of files that are stored in the central location. For files that are stored in satellite locations, the icon for the file type is shown instead.

### The SharePoint home page

As soon as the multi-geo environment has been set up, users will see news, recent and followed sites from multiple geo locations on their SharePoint home page. If they use the search box on the SharePoint home page, they'll get merged results from multiple geo locations.

### The Search Center

After the multi-geo environment has been set up, each Search Center continues to only show results from their own geo location. Admins must [change the settings of each Search Center](#_Set_up_a_1) to get results from all geo locations. Afterwards, users that search in the Search Center get results from all geo locations.

### Custom search applications

As usual, custom search applications interact with the search indexes by using the existing SharePoint Search REST APIs. To get results from all, or some geo locations, the application must [call the API and include the new Multi-Geo query parameters](#_Get_custom_search) in the request. This triggers a fan out of the query to all geo locations.

## What's different about search in a multi-geo environment?

Some search features you might be familiar with, work differently in a multi-geo environment.

<table>
<thead>
<tr class="header">
<th align="left"><strong>Feature</strong></th>
<th align="left"><strong>How it works</strong></th>
<th align="left"><strong>Workaround</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">Promoted results</td>
<td align="left">You can create query rules with promoted results at different levels: for the whole tenant, for a site collection, or for a site. In a multi-geo environment, define promoted results at the tenant level to promote the results to the Search Centers in all geo locations. If you only want to promote results in the Search Center that's in the geo location of the site collection or site, define the promoted results at the site collection or site level. These results are not promoted in other geo locations.</td>
<td align="left">If you don't need different promoted results per geo location, for example different rules for traveling, we recommend defining promoted results at the tenant level.</td>
</tr>
<tr class="even">
<td align="left">Search refiners</td>
<td align="left">Search returns refiners from all the geo locations of a tenant and then aggregates them. The aggregation is a best effort, meaning that the refiner counts might not be 100% accurate. For most search-driven scenarios, this accuracy is sufficient. 
</td>
<td align="left">For search-driven applications that depend on refiner completeness, query each geo location independently.</td>
</tr>
<tr class="odd">
<td align="left"></td>
<td align="left">Multi-geo search doesn't support dynamic bucketing for numerical refiners.</td>
<td align="left">Use the <a href="/sharepoint/dev/general-development/query-refinement-in-sharepoint">"Discretize" parameter</a> for numerical refiners.</td>
</tr>
<tr class="even">
<td align="left">Document IDs</td>
<td align="left">If you're developing a search-driven application that depends on document IDs, note that document IDs in a multi-geo environment aren't unique across geo locations, they are unique per geo location.</td>
<td align="left">We've added a column that identifies the geo location. Use this column to achieve uniqueness. This column is named "GeoLocationSource".</td>
</tr>
<tr class="odd">
<td align="left">Number of results</td>
<td align="left">The search results page shows combined results from the geo locations, but it's not possible to page beyond 500 results.</td>
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
<th align="left"><strong>Search feature</strong></th>
<th align="left"><strong>Note</strong></th>
</tr>
</thead>
<tbody>
<tr class="odd">
<td align="left">App-only authentication</td>
<td align="left">App-only authentication (privileged access from services) isn't supported in multi-geo search.</td>
</tr>
<tr class="even">
<td align="left">Guest users</td>
<td align="left">Guest users only get results from the geo location that they're searching from.</td>
</tr>
</tbody>
</table>

## How does search work in a multi-geo environment?

All the search clients use the existing SharePoint Search REST APIs to interact with the search indexes.

![Diagram showing how SharePoint Search REST APIs interact with the search indexes](../media/configure-search-for-multi-geo-image1-1.png)

1. A search client calls the Search REST endpoint with the query property EnableMultiGeoSearch= true.
2. The query is sent to all geo locations in the tenant.
3. Search results from each geo location are merged and ranked.
4. The client gets unified search results.

<span id="_Set_up_a" class="anchor"><span id="_Ref501388384" class="anchor"></span></span>Notice that we don't merge the search results until we've received results from all the geo locations. This means that multi-geo searches have additional latency compared to searches in an environment with only one geo location.

<span id="_Set_up_a_1" class="anchor"><span id="_Ref505252370" class="anchor"></span></span>
## Get a Search Center to show results from all geo locations

Each Search Center has several verticals and you have to set up each vertical individually.

1. Ensure that you perform these steps with an account that has permission to edit the search results page and the Search Result Web Part.

2. Navigate to the search results page (see the [list](https://support.office.com/article/174d36e0-2f85-461a-ad9a-8b3f434a4213) of search results pages)

3. Select the vertical to set up, click **Settings** gear icon in the upper, right corner, and then click **Edit Page**. The search results page opens in Edit mode.

   ![Edit page selection in Settings](../media/configure-search-for-multi-geo-image2.png)

4. In the Search Results Web Part, move the pointer to the upper, right corner of the web part, click the arrow, and then click **Edit Web Part** on the menu. The Search Results Web Part tool pane opens under the ribbon in the top right of the page.

   ![Edit Web Part selection](../media/configure-search-for-multi-geo-image3.png)

5. In the Web Part tool pane, in the **Settings** section, under **Results control settings**, select **Show Multi-Geo results** to get the Search Results Web Part to show results from all geo locations.

6. Click **OK** to save your change and close the Web Part tool pane.

7. Check your changes to the Search Results Web Part by clicking **Check-In** on the Page tab of the main menu.

8. Publish the changes by using the link provided in the note at the top of the page.

<span id="_Get_custom_search" class="anchor"><span id="_Ref501388387" class="anchor"></span></span>
## Get custom search applications to show results from all or some geo locations

Custom search applications get results from all, or some, geo locations by specifying query parameters with the request to the SharePoint Search REST API. Depending on the query parameters, the query is fanned out to all geo locations, or to some geo locations. For example, if you only need to query a subset of geo locations to find relevant information, you can control the fan out to only these. If the request succeeds, the SharePoint Search REST API returns response data.

### Requirement

For each geo location, you must ensure that all users in the organization have been granted the **Read** permission level for the root website (for example contoso**APAC**.sharepoint.com/ and contoso**EU**.sharepoint.com/). [Learn about permissions](https://support.office.com/article/understanding-permission-levels-in-sharepoint-87ecbb0e-6550-491a-8826-c075e4859848).

### Query parameters

EnableMultiGeoSearch - This is a Boolean value that specifies whether the query shall be fanned out to the indexes of other geo locations of the multi-geo tenant. Set it to **true** to fan out the query; **false** to not fan out the query. If you don't include this parameter, the default value is **false**, except when making a REST API call against a site which uses the Enterprise Search Center template, in this case the default value is **true**. If you use the parameter in an environment that isn't multi-geo, the parameter is ignored.

ClientType - This is a string. Enter a unique client name for each search application. If you don't include this parameter, the query is not fanned out to other geo locations.

MultiGeoSearchConfiguration - This is an optional list of which geo locations in the multi-geo tenant to fan the query out to when **EnableMultiGeoSearch** is **true**. If you don't include this parameter, or leave it blank, the query is fanned out to all geo locations. For each geo location, enter the following items, in JSON format:

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
<td align="left">The geo location, for example NAM.</td>
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
<td align="left">Full results from <strong>all</strong> the geo locations.</td>
</tr>
<tr class="even">
<td align="left">Partial</td>
<td align="left">Partial results from one or more geo locations. The results are incomplete due to a transient error.</td>
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

https:// \<tenant\>/\_api/search/query?querytext='sharepoint'&Properties='EnableMultiGeoSearch:true'&ClientType='my\_client\_id'

#### Sample GET request to fan out to **some** geo locations

https:// \<tenant\>/\_api/search/query?querytext='site'&ClientType='my_client_id'&Properties='EnableMultiGeoSearch:true, MultiGeoSearchConfiguration:[{DataLocation\\:"NAM"\\,Endpoint\\:"https\\://contosoNAM.sharepoint.com"\\,SourceId\\:"B81EAB55-3140-4312-B0F4-9459D1B4FFEE"}\\,{DataLocation\\:"CAN"\\,Endpoint\\:"https\\://contosoCAN.sharepoint-df.com"}]'

> [!NOTE]
> Commas and colons in the list of geo locations for the MultiGeoSearchConfiguration property are preceded by the **backslash** character. This is because GET requests use colons to separate properties and commas to separate arguments of properties. Without the backslash as an escape character, the MultiGeoSearchConfiguration property is interpreted wrongly.

#### Sample POST request that's fanned out to **all** geo locations

```text
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

```text
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

Here's a sample CSOM query that's fanned out to **all** geo locations:

```text
var keywordQuery = new KeywordQuery(ctx);
keywordQuery.QueryText = query.SearchQueryText;
keywordQuery.ClientType = <enter a string here>;
keywordQuery.Properties["EnableMultiGeoSearch"] = true;
```
