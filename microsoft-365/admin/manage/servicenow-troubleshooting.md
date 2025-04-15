---
title: "Troubleshooting Microsoft 365 support integration with ServiceNow"
f1.keywords:
- NOCSH
ms.author: efrene
author: efrene
manager: scotv
ms.date: 10/28/2021
audience: Admin
ms.topic: troubleshooting-general
ms.service: microsoft-365-business
ms.localizationpriority: medium
ms.collection:
- Tier2
- scotvorg
- M365-subscription-management
- Adm_TOC
ms.custom: AdminSurgePortfolio
ROBOTS: NOINDEX, NOFOLLOW
search.appverid:
- MET150
description: "Scoped Certified application installation and configuration guide for ServiceNow."
---

# Troubleshooting Microsoft 365 support integration with ServiceNow

| \#  | Problem  | Diagnostics action     |
|-----|--------------------------------|----------------------|
| 1   | Can’t see **Microsoft 365 support** tab                                                                                                                                                                                    | Verify the current view and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit                        |
| 2   | Select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the setup steps for the app."                                                                      | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 3   | Select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the final set up step for the app."                                                                | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 4   | Type the problem in search box and select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the setup steps for the app."                                   | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 5   | Type problem in search box and select **Microsoft recommended solutions** but get error "Please contact your ServiceNow admin and ask them to complete the final set up step for the app."                                 | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 6   | Select **Contact Microsoft support**, but get the error "Please contact your ServiceNow admin and ask them to complete the setup steps for the app."                                                                       | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 7   | Select **Contact Microsoft support**, but get the error "Please contact your ServiceNow admin and ask them to complete the final set up step for the app."                                                                 | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 8   | Select **Contact Microsoft support** but get the error "{EmailAddress} is not a valid Microsoft 365 admin account. You need Microsoft 365 admin privileges to open a service request. In the app, link the admin account." | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 9   | Select **Microsoft recommended solutions** but nothing shows up                                                                                                                                                            | Check **System Logs – Outbound HTTP logs** with filter login.microsoftonline.com and connector.rave.microsoft.com |
| 10  | Select **Microsoft recommended solutions** but get error "Please contact app support."                                                                                                                                     | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 11  | Type problem in search box and select **Microsoft recommended solutions** but nothing shows up                                                                                                                             | Check **System Logs – Outbound HTTP logs** with filter login.microsoftonline.com and connector.rave.microsoft.com |
| 12  | Type problem in search box and select **Microsoft recommended solutions** but get error "Please contact app support."                                                                                                      | Check the error message on top of the form and **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit     |
| 13  | User selects **Contact Microsoft support**, but nothing happens                                                                                                                                                            | Check **System Logs – Outbound HTTP logs** with filter login.microsoftonline.com and connector.rave.microsoft.com |
| 14  | Can’t see Microsoft recommended solution after reopening the incident                                                                                                                                                      | Check **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit                                              |
| 15  | Can’t see Microsoft cases when reopening the incident that was transferred to Microsoft support                                                                                                                            | Check **System Logs** &gt; **All** with filter x\_mioms\_m365\_assit                                              |
| 16  | Can’t save ticket details, get error "Unable to save ticket details. Please contact App support."                                                                                                                          | Check the error message on top of form                                                                            |
