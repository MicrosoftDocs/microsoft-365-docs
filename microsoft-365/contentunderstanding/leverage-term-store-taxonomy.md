---
title: "Leverage term store taxonomy when creating an extractor"
ms.author: efrene
author: efrene
manager: pamgreen
ms.date: 10/1/2020
audience: admin
ms.topic: article
ms.prod: microsoft-365-enterprise
search.appverid: 
localization_priority: None
ROBOTS: NOINDEX, NOFOLLOW
description: "Leverage term store taxonomy when creating an extractor in your document understanding model in Microsoft SharePoint Syntex."
---

# Leverage term store taxonomy when creating an extractor


</br>

> [!VIDEO https://www.microsoft.com/videoplayer/embed/RE4CSoL]

</br>

When you create an extractor in your document understanding model in SharePoint Syntex, you can take advantage of [Managed Metadata services](https://docs.microsoft.com/sharepoint/managed-metadata#terms) term store taxonomy to display preferred terms for data that you extract.  

As an example, your model identifies and classifies all **Contract** documents that are uploaded to the document library.  Additionally, the model also extracts a **Contract Service** value from each contract, and will display it in a column in your library view. Among the various Contract Services values in the contracts, there are several older values that your company no longer uses and have been renamed. For example, all references to the terms *Design*, *Graphics*, or *Topography* contract services should now be called *Creative*. Whenever your model extracts one of the outdated terms from a contract document, you want it to display the current term - Creative - in your library view. In the example below, while training the model we see that one sample document contains the outdated term of *Design*.

   ![Term store](../media/content-understanding/design.png)</br>


## Term set synonyms 

Term sets are configured in the Managed Metadata services term store in the SharePoint admin center. In the the example below, the *Contract Services* [term set](https://docs.microsoft.com/sharepoint/managed-metadata#term-set) is configured to include a number of terms, including *Creative*.  The details for it show that the term has three synonyms (*Design*, *Graphics*, and *Topography*) and the synonyms should be translated to *Creative*.

   ![Term set](../media/content-understanding/term-store.png)</br>

<Mike, here is where I am unsure about how to describe this.  What action tells the model that when I create an extractor to extract and display a Contract Services column, how is that column "marked" to use the managed metadata term set for Creative Services?>

## Configure your document library site column for a managed metadata field


   ![Create managed metadata](../media/content-understanding/creative.png)</br>

## See Also
[Introduction to Managed Metadata](https://docs.microsoft.com/sharepoint/managed-metadata#terms)</br>
[Create an extractor](create-an-extractor.md)</br>
[Create a managed metadata column](https://support.microsoft.com/office/create-a-managed-metadata-column-8fad9e35-a618-4400-b3c7-46f02785d27f?redirectSourcePath=%252farticle%252fc2a06717-8105-4aea-890d-3082853ab7b7&ui=en-US&rs=en-US&ad=US)</br>





