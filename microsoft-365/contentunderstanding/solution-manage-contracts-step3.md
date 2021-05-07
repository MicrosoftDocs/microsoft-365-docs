---
title: "Step 3. Use Power Automate to create your flow to process your contracts"
ms.author: chuckedmonson
author: chucked
manager: pamgreen
ms.reviewer: ssquires
audience: admin
ms.topic: article
ms.date: 05/10/2021
ms.prod: microsoft-365-enterprise
ms.service: 
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Learn how to use Power Automate to create your flow to process your contracts by using a Microsoft 365 solution."
---

# Step 3. Use Power Automate to create your flow to process your contracts

Now that you've created your Contract Management channel and have attached your SharePoint document library, the next step is to create a Power Automate flow to process your contracts that your SharePoint Syntex model identifies and classifies. You can do this by [creating a Power Automate flow in your SharePoint document library](https://support.microsoft.com/office/create-a-flow-for-a-list-or-library-in-sharepoint-or-onedrive-a9c3e03b-0654-46af-a254-20252e580d01).

For your contracts management solution, you want to create a Power Automate flow to do the following:

-  After a contract has been classified by your SharePoint Syntex model, change the contract status to **In review**.
- The contract is then reviewed and is either approved or rejected.
- For approved contracts, the contract information is posted to a tab for payment processing.
- For rejected contracts, the team is notified for further analysis. 

The following shows the Power Automate flow for the contract management solution.

![Flow diagram showing the entire solution.](../media/content-understanding/flow-entire-process.png)

## Prepare your contract for review

When a contract is identified and classified by your SharePoint Syntex document understanding model, the Power Automate flow will first change the status to "In review."

![Update status.](../media/content-understanding/flow-overview.png)

After checking out the file, change the status value to "In review."

![In review status.](../media/content-understanding/in-review.png)

The next step is to create an adaptive card stating that the contract is waiting for review and posting it to the Contract Management channel.

![Contract review post.](../media/content-understanding/contract-approval-post.png)


![Create adaptive card for review.](../media/content-understanding/adaptive-card.png)

The following is the JSON code used for this step in the Power Automate flow.

```JSON
{
"$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
"type": "AdaptiveCard",
"version": "1.0",
"body": [
    {
    "type": "TextBlock",
    "text": "Contract approval request",
    "size": "large",
    "weight": "bolder",
     "wrap": true
    },
        {
            "type": "Container",
            "items": [
                {
                    "type": "FactSet",
                    "spacing": "Large",
                    "facts": [
                        {
                            "title": "Client",
                            "value": "@{triggerOutputs()?['body/Client']}"
                        },
                        {
                            "title": "Contractor",
                            "value": "@{triggerOutputs()?['body/Contractor']}"
                        },
                        {
                            "title": "Fee amount",
                            "value": "@{triggerOutputs()?['body/FeeAmount']}"
                        },
                        {
                            "title": "Date created",
                            "value": "@{triggerOutputs()?['body/Modified']} "
                        },
                        {
                            "title": "Link",
                            "value": "[@{triggerOutputs()?['body/{FilenameWithExtension}']}](@{triggerOutputs()?['body/{Link}']})"
                        }
                    ]
                }
            ]
         },
    {
    "type": "TextBlock",
    "text": "Comment:"
    },
        {
            "type": "Input.Text",
            "placeholder": "Enter comments",
            "id": "acComments"
        }
],
"actions": [
    {
    "type": "Action.Submit",
    "title": "Approve",
    "data": {
        "x": "Approve"
    }
    },
    {
    "type": "Action.Submit",
    "title": "Reject",
    "data": {
        "x": "Reject"
    }
    }
]
}
```


## Conditional

In your flow, next you need to create a condition in which your contract will be either  approved or rejected.

![Conditional.](../media/content-understanding/condition.png)

## If the contract is approved

When a contract has been approved, the following things occur:

- On the **Contracts** tab, the status in the contract card will change to **Approved**.

   ![Card status approved.](../media/content-understanding/approved-contracts-tab.png)

- In your flow, the status is changed to "Approved."

   ![Flow status approved.](../media/content-understanding/status-approved.png)

- In this solution, the contract data will be added to the **For Payout** tab so that the payouts can be managed. This can be extended to allow the flow to submit the contracts for payment by a third-party financial application (for example, Dynamics CRM).

   ![Contract moved to Pay Out.](../media/content-understanding/for-payout.png)

- In the flow, you create the following item to move approved contracts to the **For Payout** tab.

   ![Flow item to move to Pay Out.](../media/content-understanding/ready-for-payout.png)

- An adaptive card stating that the contract has been approved is created and posted to the Contract Management channel.

   ![Contract approval posted.](../media/content-understanding/adaptive-card-approval.png)

   ![Adaptive card approval.](../media/content-understanding/adaptive-card.png)


   The following is the JSON code used for this step in the Power Automate flow.

```JSON
{ 
    "type": "AdaptiveCard",
    "body": [
        {
            "type": "Container",
            "style": "emphasis",
            "items": [
                {
                    "type": "ColumnSet",
                    "columns": [
                        {
                            "type": "Column",
                            "items": [
                                {
                                    "type": "TextBlock",
                                    "size": "Large",
                                    "weight": "Bolder",
                                    "text": "CONTRACT APPROVED"
                                }
                            ],
                            "width": "stretch"
                        }
                    ]
                }
            ],
            "bleed": true
        },
        {
            "type": "Container",
            "items": [
                {
                    "type": "FactSet",
                    "spacing": "Large",
                    "facts": [
                        {
                            "title": "Client",
                            "value": "@{triggerOutputs()?['body/Client']}"
                        },
                        {
                            "title": "Contractor",
                            "value": "@{triggerOutputs()?['body/Contractor']}"
                        },
                        {
                            "title": "Fee amount",
                            "value": "@{triggerOutputs()?['body/FeeAmount']}"
                        },
                        {
                            "title": "Approval by",
                            "value": "@{body('Post_an_Adaptive_Card_to_a_Teams_channel_and_wait_for_a_response')?['responder']['displayName']}"
                        },
                        {
                            "title": "Approved date",
                            "value": "@{body('Post_an_Adaptive_Card_to_a_Teams_channel_and_wait_for_a_response')?['responseTime']}"
                        },
                        {
                            "title": "Approval comment",
                            "value": "@{body('Post_an_Adaptive_Card_to_a_Teams_channel_and_wait_for_a_response')?['data']['acComments']}"
                        },
                        {
                            "title": " ",
                            "value": " "
                        },
                        {
                            "title": "Status",
                            "value": "Ready for payout"
                        }
                    ]
                }
            ]
        }
    ],
    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
    "version": "1.2",
    "fallbackText": "This card requires Adaptive Cards v1.2 support to be rendered properly."
}
```

## If the contract is rejected

When a contract has been rejected, the following things occur:

- On the **Contracts** tab, the status in the contract card will change to **Rejected**.

   ![Card status rejected.](../media/content-understanding/rejected-contracts-tab.png)

- In your flow, you check out the contract file, change the status to **Rejected**, and then check the file back in.

   ![Flow status rejected.](../media/content-understanding/reject-flow.png)

- In your flow, you create an adaptive card stating that the contract has been rejected.

   ![Flow status rejected.](../media/content-understanding/reject-flow-item.png)

The following is the JSON code used for this step in the Power Automate flow.

```JSON
{ 
    "type": "AdaptiveCard",
    "body": [
        {
            "type": "Container",
            "style": "attention",
            "items": [
                {
                    "type": "ColumnSet",
                    "columns": [
                        {
                            "type": "Column",
                            "items": [
                                {
                                    "type": "TextBlock",
                                    "size": "Large",
                                    "weight": "Bolder",
                                    "text": "CONTRACT REJECTED"
                                }
                            ],
                            "width": "stretch"
                        }
                    ]
                }
            ],
            "bleed": true
        },
        {
            "type": "Container",
            "items": [
                {
                    "type": "FactSet",
                    "spacing": "Large",
                    "facts": [
                        {
                            "title": "Client",
                            "value": "@{triggerOutputs()?['body/Client']}"
                        },
                        {
                            "title": "Contractor",
                            "value": "@{triggerOutputs()?['body/Contractor']}"
                        },
                        {
                            "title": "Fee amount",
                            "value": "@{triggerOutputs()?['body/FeeAmount']}"
                        },
                        {
                            "title": "Rejected by",
                            "value": "@{body('Post_an_Adaptive_Card_to_a_Teams_channel_and_wait_for_a_response')?['responder']['displayName']}"
                        },
                        {
                            "title": "Rejected date",
                            "value": "@{body('Post_an_Adaptive_Card_to_a_Teams_channel_and_wait_for_a_response')?['responseTime']}"
                        },
                        {
                            "title": "Comment",
                            "value": "@{body('Post_an_Adaptive_Card_to_a_Teams_channel_and_wait_for_a_response')?['data']['acComments']}"
                        },
                        {
                            "title": " ",
                            "value": " "
                        },
                        {
                            "title": "Status",
                            "value": "Needs review"
                        }
                    ]
                }
            ]
        }
    ],
    "$schema": "http://adaptivecards.io/schemas/adaptive-card.json",
    "version": "1.2",
    "fallbackText": "This card requires Adaptive Cards v1.2 support to be rendered properly."
}
```

- The card is posted in the Contract Management channel.

   ![Flow adaptive card to reject.](../media/content-understanding/rejected.png)