---
title: 'Review'
description: Review section after onboarding.
search.appverid: MET150
author: mansipatel-usl
ms.author: tinachen
manager: rshastri
audience: Software-Vendor
ms.topic: how-to
ms.date: 07/06/2021
ms.service: test-base
ms.localizationpriority: medium
ms.collection: TestBase-M365
ms.custom:                 # This is an optional, free-form field you can use to define your own collection of articles. If you have more than one value, format as a bulleted list. This field truncates to something like 144 characters (inclusive of spaces) so keep it short.
ms.reviewer: tinachen
f1.keywords: NOCSH
---

# Step 6: Review your selections to create your package.

1. On this tab, the service displays your test details and runs a quick completeness check.

    A **Validation passed** or **Validation failed** message shows whether you can proceed to next steps or not.

2. Review your test details and if satisfied, click on the **Create** button.

    :::image type="content" alt-text="View validation." source="Media/validation.png" lightbox="Media/validation.png":::

3. This will onboard your package to the Test Base environment. If your package is successfully created, an automated test which verifies whether your package can be successfully executed on Azure will be triggered.

    ![Successful result.](Media/successful.png)

    > [!NOTE]
    > You will get a notification from the Azure portal to notify you on the success or failure of the package verification.
    >
    > Please note that the process can take up to 24 hours, so it is likely your webpage will timeout if you are not active on it and hence, the notification will not inform you of the completion of this on-demand run.

    - Peradventure this happens, you can view the status of your package on the **Manage packages** tab.

      :::image type="content" alt-text="Image for managing packages." source="Media/managepackages.png" lightbox="Media/managepackages.png":::

    - For successful tests, their results can be seen via the **Test Summary**, **Security Updates Results** and **Feature Updates Results** pages at scheduled intervals, often starting a few days after your upload.
  
    - While failed tests, require you to upload a new package. 

      You can download the **test logs** for further analysis from the **Security update results** and **Feature updates results** pages.

    - If you experience repeated test failures, please reach out to testbasepreview@microsoft.com with details of your error.

## Next steps

Discover our Content Guidelines via the link below.

> [!div class="nextstepaction"]
> [Next step](contentguideline.md)
