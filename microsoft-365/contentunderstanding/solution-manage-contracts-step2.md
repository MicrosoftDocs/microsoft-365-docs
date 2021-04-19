---
title: "Step 2. Use Microsoft Teams to create your contract management site"
ms.author: chuckedmonson
author: chucked
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to use Microsoft Teams to create your contract management site by using a Microsoft 365 solution."
---

# Step 2. Use Microsoft Teams to create your contract management site

Another key business issue we have in setting up a contracts management solution is the need for a central location in which stakeholders review and manage contracts. For this, we can use [Microsoft Teams](https://docs.microsoft.com/microsoftteams/) to set up a Teams site and use the features in Teams to:

- **Create a location in which stakeholders can easily see all contracts that require action.** For example, in Teams we can create a Contract channel in the Contracts Management Teams site in which members can see a useful tile view of all contracts that need approval. We can also configure the view so that each "card" lists the important data we care about (client, contractor, and fee amount).

     ![Contracts channel](../media/content-understanding/tile-view.png)</br> 

- **Have a location in which members can interact with each other and see important events.** For example, in Teams, the Posts channel can be used to have conversations, get updates, and see actions (such as a member rejecting a contract). When something has happened (such as a new contract submitted for approval), the Posts channel can be used not only to announce it, but also to keep a record of it. And if members subscribe to notifications, they will get notified whenever there is an update to the channel. 

     ![Posts channel](../media/content-understanding/posts.png)</br> 

- **Have a location in which approved contracts will display so that they can be submitted for payment.** In Teams, we can create a <b>For Payment</b> channel that will list all contracts that will need to be submitted to payment. A third party application (for example, Dynamics CRM) can then use the information from this channel to process payment for each contract.

## Attach your SharePoint document library to the "Contracts" channel 

After you create a Contracts channel in your Contracts Management Team site, you need to [attach your SharePoint document library to it](https://support.microsoft.com/office/add-a-sharepoint-page-list-or-document-library-as-a-tab-in-teams-131edef1-455f-4c67-a8ce-efa2ebf25f0b). The SharePoint document library you want to attach is the one in which you applied your SharePoint Syntex document understanding model to in the previous section.

After you attach the SharePoint document library, you will be able to view any classified contracts through a default list view.

   ![List view](../media/content-understanding/list-view.png)</br> 

## Customize your Contracts channel tile view

> [!NOTE]
> This section references code examples that are contained in the <b>ContractCardjson</b> file this is included in the <b>solutionfiles</b> zip file.

While Teams allows you to view your contracts in a tile view, you might want to customize it to view the contract data you want to make visible in the contract card. For example, for the Contracts channel, it is important for members to see the client, contractor, and fee amount on the contract card. All of these were extracted from each contract through your SharePoint Syntex model that was applied to your document library.  We also want to be able to change the tile header bar to different colors for each status so that members can easily see this. For example, all Approved contracts will have a blue header bar.

   ![List view](../media/content-understanding/tile.png)</br> 

The custom tile view we used required us to make changes to the JSON used to format the current tile view. You can reference the JSON we used to create our card view by downloading the [contract card json file](). In the following sections, we will reference specific sections of the code for features you see in the contract cards.

If you want to see or make changes to the JSON code for your view in your Teams channel, in your Teams channel, select the view drop-down menu and select <b>Format current view</b>.

   ![json format](../media/content-understanding/jason-format.png)</br> 

## Card size and shape

In the <b>ContractCardjson</b> file that you downloaded in the reference zip file, look at the following section to see how we formatted the size and shape of the card. </br>

```JSON
                  {
                    "elmType": "div",
                    "style": {
                      "background-color": "#f5f5f5",
                      "padding": "5px",
                      "width": "180px"
                    },
                    "children": [
                      {
                        "elmType": "img",
                        "attributes": {
                          "src": "@thumbnail.large"
                        },
                        "style": {
                          "width": "185px",
                          "height": "248px"
                        }
                      }
```


## Contract status

The following code lets us define the status of each title card. Note that each status value (New, In review, Approved, and Rejected) will display a different color code for each. In the contract card json file that you downloaded, look at the section that defines the status.

```JSON
          {
            "elmType": "div",
            "children": [
              {
                "elmType": "div",
                "style": {
                  "color": "white",
                  "background-color": "=if([$Status] == 'New', '#00b7c3', if([$Status] == 'In review', '#ffaa44', if([$Status] == 'Approved', '#0078d4', if([$Status] == 'Rejected', '#d13438', '#8378de'))))",
                  "padding": "5px 15px",
                  "height": "auto",
                  "text-transform": "uppercase",
                  "font-size": "12.5px"
                },
                "txtContent": "[$Status]"
              }
```


## Extracted fields

Each contract card will display three fields that were extracted for each contract (Client, Contractor, and Fee Amount). Additionally, we also want to display the time/date that the file was classified by the SharePoint Syntex model we used to identify it. 

In the <b>ContractCardjson</b> file that you downloaded, the following sections define each of these.

### Client

This section defines how "Client" will display on the card, and uses the value for the specific contract.

```JSON
                      {
                        "elmType": "div",
                        "style": {
                          "color": "#767676",
                          "font-size": "12px"
                        },
                        "txtContent": "Client"
                      },
                      {
                        "elmType": "div",
                        "style": {
                          "margin-bottom": "12px",
                          "font-size": "16px",
                          "font-weight": "600"
                        },
                        "txtContent": "[$Client]"
                      },
```

### Contractor

This section defines how the "Contractor" will display on the card, and uses the value for the specific contract.

```JSON
                      {
                        "elmType": "div",
                        "style": {
                          "color": "#767676",
                          "font-size": "12px"
                        },
                        "txtContent": "Client"
                      },
                      {
                        "elmType": "div",
                        "style": {
                          "margin-bottom": "12px",
                          "font-size": "16px",
                          "font-weight": "600"
                        },
                        "txtContent": "[$Client]"
},
```


### Fee Amount

This section defines how the "Fee Amount" will display on the card, and uses the value for the specific contract.

```JSON
                      {
                        "elmType": "div",
                        "txtContent": "Fee amount",
                        "style": {
                          "color": "#767676",
                          "font-size": "12px",
                          "margin-bottom": "2px"
                        }
                      },
                      {
                        "elmType": "div",
                        "style": {
                          "margin-bottom": "12px",
                          "font-size": "14px"
                        },
                        "txtContent": "[$FeeAmount]"
                      },
```



### Classification date

This section defines how  "Classification" will display on the card, and uses the value for the specific contract.

```JSON
                      {
                        "elmType": "div",
                        "txtContent": "Classified",
                        "style": {
                          "color": "#767676",
                          "font-size": "12px",
                          "margin-bottom": "2px"
                        }
                      },
                      {
                        "elmType": "div",
                        "style": {
                          "margin-bottom": "12px",
                          "font-size": "14px"
                        },
                        "txtContent": "[$PrimeLastClassified]"
                      }
```

