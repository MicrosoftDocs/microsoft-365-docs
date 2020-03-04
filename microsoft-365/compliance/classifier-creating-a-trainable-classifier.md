---
title: "Create a trainable classifier (preview)"
f1.keywords:
- NOCSH
ms.author: chrfox
author: chrfox
manager: laurawi
audience: Admin
ms.topic: article
ms.service: O365-seccomp
localization_priority: None
ms.collection: M365-security-compliance
search.appverid: 
- MOE150
- MET150
description: "Use trainable classifiers when one of the built-in classifiers won't meet your needs. A Microsoft 365 classifier is a tool you can train to recognize various types of content by giving it samples to look at. This topic shows you how to create a custom classifier."
---

# Creating a trainable classifier (preview)

Use trainable classifiers when one of the out of the box classifiers won't meet your needs. A Microsoft 365 classifier is a tool you can train to recognize various types of content by giving it samples to look at. Training the classifier involves first giving it samples that are human picked and positively match the category. Then, after it has processed those, you test the predictions by giving it a mix of positive and negative samples.

To learn more about the different types of classifiers, see [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md)

This timeline reflects a sample deployment.

![trainable-classifier-timeline](../media/trainable-classifier-deployment-timeline_border.png)

> [!TIP]
> Opt-in is required the first time for trainable classifiers. It takes twelve days for Microsoft 365 to complete a baseline evaluation of your organizations content. Contact your global administrator to kick off the opt-in process.

## Seed content

When you want a trainable classifier to independently and accurately identify an item as being in particular category of content, you first have to present it with many samples of the type of content that are in the category. This feeding of samples to the trainable classifier is known as *seeding*. Seed content is selected by a human and is judged to represent the category of content.

> [!TIP]
> You need to have at least 50 positive samples and as many as 500. The trainable classifier will process up to the 500 most recent created samples (by file created date/time stamp). The more samples you provide, the more accurate the predictions the classifier will make.

## Testing content

Once the trainable classifier has processed enough positive samples to build a prediction model, you need to test the predictions it makes to see if the classifier can correctly distinguish between items that match the category and items that don't. You do this by feeding it another, hopefully larger, set of human picked content that consists of samples that should fall into the category and samples that won't. Once it processes those, you manually go through the results and verify whether each prediction is correct, incorrect, or you aren't sure. The trainable classifier uses this feedback to improve its prediction model.

> [!TIP]
> For best results, have 10,000 items in your test sample set with an even distribution of positive and negative matches.

## How to create a trainable classifier

1. Collect between 50-500 seed content items. These must be only samples that strongly represent the type of content you want the trainable classifier to positively identify as being in the classification category. See, [Default crawled file name extensions and parsed file types in SharePoint Server](https://docs.microsoft.com/sharepoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types) for the supported file types.

> [!IMPORTANT]
> The seed and test sample items must not be encrypted and they must be in English.

> [!IMPORTANT]
> Make sure the items in your seed set are **strong** examples of the category. The trainable classifier initially builds its model based on what you seed it with. The classifier assumes all seed samples are strong positives and has no way of knowing if a sample is a weak or negative match to the category.

2. Place the seed content in a SharePoint Online folder that is dedicated to holding *the seed content only*. Make note of the site, library, and folder URL.

> [!TIP]
> If you create a new site and folder for your seed data, allow at least an hour for that location to be indexed before creating the trainable classifier that will use that seed data.

3. Sign in to Microsoft 365 compliance center with compliance admin or security admin role access and open **Microsoft 365 compliance center** or **Microsoft 365 security center** > **Data classification**

4. Choose the **Trainable classifiers** tab.

5. Choose **Create trainable classifier**.

6. Fill in appropriate values for the `Name`, and `Description` fields of the category of items you want this trainable classifier to identify.

7. Enter the exact SharePoint Online site, library, and folder URL for the seed content site from step 2. Choose `Add`.

8. Review the settings and choose `Create trainable classifier`.

9. Within 24 hours the trainable classifier will process the seed data and build a prediction model. The classifier status is `In progress` while it processes the seed data. When the classifier is finished processing the seed data, the status changes to `Need test items`.

10. You can now view the details page by choosing the classifier.


![trainable classifier ready for testing](../media/classifier-trainable-ready-to-test-detail.png)

11. Collect at least 200 test content items. Microsoft recommends 10,000 for best results. These should be a mix of items that are strong positives, strong negatives and some that are a little less obvious in their nature. See, [Default crawled file name extensions and parsed file types in SharePoint Server](https://docs.microsoft.com/sharepoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types) for the supported file types.

> [!IMPORTANT]
> The sample items must not be encrypted and they must be in English.

12. Place the test content in a SharePoint Online folder that is dedicated to holding *the test content only*. Make note of the SharePoint Online site, library, and folder URL.

> [!TIP]
> If you create a new site and folder for your test data, allow at least an hour for that location to be indexed before creating the trainable classifier that will use that seed data.

13. Choose `Add items to test`.

14. Enter the exact SharePoint Online site, library, and folder URL for the test content site from step 12. Choose `Add`.

15. Finish the wizard by choosing `Done`. Your trainable classifier will take up to an hour to process the test files.

16. When the trainable classifier is done processing your test files, the status on the details page will change to `Ready to review`. If you need to increase the test sample size, choose `Add items to test` and allow the trainable classifier to process the additional items.

![ready to review screenshot](../media/classifier-trainable-ready-to-review-detail.png)

17. Choose `Tested items to review` tab to review items.

18. Microsoft 365 will present 30 items at a time. Review them and in the `We predict this item is "Relevant". Do you agree?` box choose either `Yes` or `No` or `Not sure, skip to next item`. Model accuracy is automatically updated after every 30 items.

![review items box](../media/classifier-trainable-review-detail.png)

19. Review *at least* 200 items.

<!-- insert Analyze steps here-->

20. Continue to review until the accuracy reaches at least 70% and the `Publish the classifier` status is `Ready to use`.

![accuracy and ready to publish](../media/classifier-trainable-review-ready-to-publish.png)

21. Publish the classifier.

22. Once published your classifier will be available as a condition in the [auto-apply retention label policy based on a condition](labels.md#applying-a-retention-label-automatically-based-on-conditions) and in [Communication compliance](communication-compliance.md).

> [!CAUTION]
> Once a classifier is published, it can't go through any additional training, so be very sure that you have tested and reviewed as many items as possible to ensure that the accuracy is as high as possible.

## See also

- [Getting started with trainable classifiers (preview)](classifier-getting-started-with.md)
- [Default crawled file name extensions and parsed file types in SharePoint Server](https://docs.microsoft.com/sharepoint/technical-reference/default-crawled-file-name-extensions-and-parsed-file-types)
