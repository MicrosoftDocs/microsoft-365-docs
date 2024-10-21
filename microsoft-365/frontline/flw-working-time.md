---
title: Limit access to Microsoft Teams when frontline workers are off shift
author: lana-chin
ms.author: v-chinlana
manager: jtremper
ms.reviewer: aaglick
ms.topic: conceptual
audience: admin
ms.service: microsoft-365-frontline
search.appverid: MET150
description: Learn how to set up the working time feature to limit access to Teams when frontline workers are off shift.  
ms.localizationpriority: medium
ms.collection: 
  - M365-collaboration
  - m365-frontline
appliesto: 
  - Microsoft Teams
  - Microsoft 365 for frontline workers
ms.date: 10/21/2024

---

# Limit access to Microsoft Teams when frontline workers are off shift

## Overview

Working time is a feature that allows admins to limit access to Microsoft Teams for shift workers on Android and iOS mobile devices. These controls are designed for bring-your-own-device (BYOD) or company-owned dedicated device scenarios for frontline workers. [Learn more about frontline device scenarios](flw-devices.md#deployment-models).

With this feature, you can block access to Teams or show a warning message when frontline workers who are off shift open Teams. Consider enabling working time for your frontline workforce if:

- You’re concerned about frontline workers asking for pay outside of working hours if they access work apps.
- Local laws and regulations require you to restrict access to work apps when employees are off shift.

## How it works

When a frontline worker clocks in to their shift and opens Teams, the app checks whether the worker is on or off shift.

- If the worker is on shift, they can access Teams.
- If the worker is off shift when Teams is open, the worker sees a block or warning screen.
  - If you configured a block screen, the worker can’t access Teams until they clock in to their shift.
  - If you configured a warning screen, the worker can dismiss it and choose whether to use Teams at their discretion.
- If a worker is using Teams while clocking out, the worker sees a block or warning screen for the app after they clock out.

:::image type="content" source="media/working-time.png" alt-text="Screenshot of the block access screen and the warning screen.":::

Along with working time, we recommend that you also set up quiet time to automatically mute Teams notifications when workers are off shift.

## Set up working time

Follow these steps to enable working time for your frontline.

### Configure app protection policies for Android and iOS

Use Microsoft Intune [app protection policies](/mem/intune/apps/app-protection-policies) to configure working time to block or warn access to Teams on Android and iOS devices. For more information about policy settings, see:

- [Android app protection policy settings - Conditional launch](/mem/intune/apps/app-protection-policy-settings-android#conditional-launch)
- [iOS app protection policy settings - Conditional launch](/mem/intune/apps/app-protection-policy-settings-ios#conditional-launch)

### Connect your workforce management system (WFM) to the workingTimeSchedule API

#### Create an application

1. Create an application in Microsoft Entra for the [workingTimeSchedule](/graph/api/resources/workingtimeschedule?view=graph-rest-beta) Graph API.

    When you register your application, make sure you choose the **Accounts in this organizational directory only (Single tenant)** option so that only users in your tenant can use the application. To learn more, see [Register an application with the Microsoft identity platform](/entra/identity-platform/quickstart-register-app).
1. Add the hidden application permission for calling the Graph API using the required scope, `Schedule-WorkingTime.ReadWrite.All`.
    1. Sign in to your application in the Azure portal.
    1. Go to the **Manifest** tab. You'll see a JSON that contains the complete definition of your application.
    1. At the end of the manifest, add the `requiredResourceAccess` property.

        This property specifies the set of permissions that your application requires access to. In other words, it contains all the APIs that your application can call. If this property is already present in the manifest, your API has some permissions already granted to it.

    1. Inside the `requiredResourceAccess` array, add an object with an ID of `00000003-0000-0000-0000-c000-0000000000000000` to specify permissions of the Graph application.

        If you already have an object with this same ID inside your `requiredResourceAccess` array, you only need to add the following inside the `resourceAccess` array:
          - An object with the ID of the new hidden permission, `0b21c159-dbf4-4dbb-a6f6-490e412c716e`.
          - The type of permission. In this case, `Role`.

        Here's an example of what the end of the manifest could look like:

        ```json
        {
          ...
          "preAuthorizedApplications": [],
          "publisherDomain": "microsoft.onmicrosoft.com",
          "replyUrlsWithType": [
            {
              "url": "https://localhost:44321/signin-oidc",
              "type": "Web"
            },
            {
              "url": "https://localhost:44321/",
              "type": "Web"
            }
          ],
          "requiredResourceAccess": [
            {
              "resourceAppId": "00000003-0000-0000-c000-000000000000",
              "resourceAccess": [
                {
                  "id": "0b21c159-dbf4-4dbb-a6f6-490e412c716e",
                  "type": "Role"
                }
              ]
            }
          ],
          "samlMetadataUrl": null,
          "signInUrl": null,
          "signInAudience": "AzureADMyOrg",
          "tags": [],
          "tokenEncryptionKeyId": null
        }
        ```

    1. Save the changes.

#### Grant tenant-wide admin consent to the application's hidden permission

You must be a tenant administrator to perform this step.

1. In your browser, go to [https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={ClientAppId}&
response_type=code&scope=https://graph.microsoft.com/.default](https://login.microsoftonline.com/common/oauth2/v2.0/authorize?client_id={ClientAppId}&response_type=code&scope=https://graph.microsoft.com/.default).
1. In the URL, replace `ClientAppId` with your app ID.
1. In the consent dialog, choose **Accept** to grant tenant-wide admin consent to the new hidden permission for the application.

#### Call Graph from the application

Here's how to call Graph endpoints from the application using example code in C#.

1. Create a new console project using .NET 6 or .NET 7 SDK.
1. Install the `Microsoft.Identity.Client` NuGet package.
1. Open the program.cs file, and copy and paste the following example code to it:

    ```cs
        using System.Text;
      using Microsoft.Identity.Client;
      var userId = "928bf23a-81e8-47c9-ad54-2c0206248afe";
      var path = Path.Combine(Path.GetTempPath(),
      "workingTimeTokenGenerator.txt");

      string? accessToken;
      if (!File.Exists(path) || (DateTime.UtcNow - new
      FileInfo(path).LastWriteTimeUtc).TotalMinutes > 59)
      {
        var clientId = "00001111-aaaa-2222-bbbb-3333cccc4444";
        var clientSecret = "Aa1Bb~2Cc3.-Dd4Ee5Ff6Gg7Hh8Ii9_Jj0Kk1Ll2";
        var tenantId = "cad3e174-69d3-4707-abd2-f527f45c367a";
        var scopes = new string[] { "00000003-0000-0000-c000-000000000000/.default" };
        
        var app = ConfidentialClientApplicationBuilder.Create(clientId)
          .WithClientSecret(clientSecret)
          .Build();

        var result = await app.AcquireTokenForClient(scopes)
          .WithAuthority(AzureCloudInstance.AzurePublic, tenantId)
          .ExecuteAsync();

        accessToken = result.AccessToken;
        File.WriteAllText(path, accessToken);
      }
      else
      {
        accessToken = File.ReadAllText(path);
      }

      int number;

      while (true)
      {
        Console.WriteLine("Press 1 for startWorkingTime, 2 for endWorkingTime.");
        var choice = Console.ReadLine();
        if (!Int32.TryParse(choice, out number) || !new[] { 1, 2}.Contains(number))
        {
          Console.WriteLine("Out-of-range election.");
          continue;
        }

        break;
      }

      Console.WriteLine("Performing request...");
      var httpClient = new HttpClient();
      var message = new HttpRequestMessage
      {
        Method = HttpMethod.Post,
        RequestUri = new
      Uri($"https://graph.microsoft.com/beta/users/{userId}/solutions/schedule/{(number == 1 ? "startWorkingTime" : "endWorkingTime")}")
      };
      message.Headers.Add("Authorization", $"Bearer {accessToken}");
      message.Content = new StringContent("", Encoding.UTF8,
      "application/json");
      var response = await httpClient.SendAsync(message);
      if (!response.IsSuccessStatusCode)
      {
        string? content = null;
        try
        {
          content = await response.Content?.ReadAsStringAsync();
        }
        catch
        {
        }

        Console.WriteLine($"Graph returned a non success status code: 
      {response.StatusCode}. Reason phrase: {response.ReasonPhrase}." +
          (content is null ? "Unable to get the response body." :
      $"Content: {content}"));
      }
      else
      {
        Console.WriteLine($"Graph returned a success status code: 
      {response.StatusCode}.");
      }

      Console.WriteLine("Press any key to exit.");
      _ = Console.ReadKey();
    ```

1. In the code, change the following:
    - `tenantId`: Replace with your tenant ID.
    - `clientId`: Replace with the ID of your application.
    - `clientSecret`: You must add a client secret in the *authentication* section of your application. You can also choose to use a security certificate and change the code accordingly.
    - `userId`: Replace with the user to which you want to apply the inWorkingTime or outOfWorkingTime policy.

## Set up quiet time

This step is optional but recommended.

Configure quiet time policies in Intune to automatically mute Teams notifications for frontline workers during nonworking hours. Learn more about how to [create quiet time policies](/mem/intune/apps/apps-quiet-time-policies).

## Frequently asked questions

**Do I need to use the Shifts app in Teams to take advantage of this feature?**

No, this feature relies on the clock in/out signal from your WFM.

**Can I use working time if I don't have a clock in/out system in place?**

No, a clock in/out signal is required to use this feature.

## Related articles

- [workingTimeSchedule](/graph/api/resources/workingtimeschedule?view=graph-rest-beta)
