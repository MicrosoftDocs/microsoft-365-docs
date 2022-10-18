---
title: "Overview of app types available for a managed environment"
ms.author: erikre
author: erikre
manager: dougeby
audience: ITPro
ms.topic: article
description: Understand the app types that are available in a managed environment.
ms.service: o365-solutions
ms.localizationpriority: high
ms.collection:
- highpri
ms.custom:
keywords:
---

# App types available for a managed environment - Overview

Because there are a wide variety of apps available, where apps can be either acquired or created, understanding and grouping apps based on type can be helpful. This overview provide a view of app types based on how apps are acquired, created, used, installed, and run.

There are several app types that you'll want to consider when determining which apps you want to manage and provide to your workforce. Understanding the complete breadth of app types is an important step to understanding apps that can be assign, delivered and managed using the Intune product family.

The users of apps and devices at your company (your company's workforce) might have several app requirements. Before adding apps to Intune and making them available to your workforce, you may find it helpful to assess and understand a few app fundamentals. There are various types of apps that are available for Intune. You must determine app requirements that are needed by the users at your company, such as the platforms and capabilities that your workforce needs. You must determine whether to use Intune to manage the devices (including apps) or have Intune manage the apps without managing the devices. Also, you must determine the apps and capabilities that your workforce needs, and who needs them. The information in this article helps you get started.

## General app types

| App type | Description |
|---|---|
| Apps from the store (store apps) | Apps that are purchased or downloaded from a 3rd party, such as Google, Microsoft, or Apple. These apps have been uploaded by the app developer to either the Microsoft store, the iOS/iPadOS store, or the Android store. The provider of a store app maintains and provides updates to the app. You select the app in the store list and add it by using Intune as an available app for your users. |
| Apps created in-house or as a custom app (line-of-business) | Apps that are created by or for your organization. These apps are often called Line-of-Business (LOB) apps. Intune installs the app on the device (you supply the installation file). Apps that are created in-house or as a custom app are line-of-business (LOB) apps. The functionality of this type of app has been created for one of the Intune supported platforms, such as Windows, iOS/iPadOS, macOS, or Android. Your organization creates and provides you with updates as a separate file. You provide updates of the app to users by adding and deploying the updates using Intune.|
| Apps that are built-in (built-in apps) | Curated managed apps that provide specific functionality. Intune installs the app on the device. |
| Apps on the web (web link or web app) | Intune creates a shortcut to the web app on the device home screen. Web apps are client-server applications. The server provides the web app, which includes the UI, content, and functionality. Additionally, modern web hosting platforms commonly offer security, load balancing, and other benefits. This type of app is separately maintained on the web. You use Intune to point to this app type. You also assign which groups of users can access the app. |
| Specific Microsoft apps | Intune provides specific Microsoft apps with specialized settings that you can select when adding the apps to Intune. |
| Other apps | Description |

## Apps from the store



| App type | Description |
|---|---|
| Android store apps | description |
| Managed Google Play apps | description |
| iOS store apps | description |
| Microsoft store apps | description |


## Apps created in-house or as a custom app

Custom apps are commonly referred to as line-of-business (LOB) apps. LOB apps are apps that have been created in-house for your organization. These apps can be created in a variety of methods and made available in a number of ways. 

### Custom apps types

| App type | Description |
|---|---|
| Android line-of-business (LOB) apps | description |
| iOS/iPadOS LOB apps | description |
| Windows LOB apps | description |
| macOS LOB apps | description |
| macOS apps (DMG) | description |
| Windows app (Win32) | description |

## Apps that are built-in

| App type | Description |
|---|---|
| Built-in iOS/iPadOS app | description |
| Built-in Android app | description |


## Apps on the web

| App type | Description |
|---|---|
| iOS/iPadOS web clip | description |
| Windows web link | description |
| Web link | Cross platform web apps |

## Specific Microsoft apps

| App type | Description |
|---|---|
| Microsoft 365 apps for Windows 10 and later | description |
| Microsoft 365 apps for macOS | description |
| Microsoft Edge for Windows 10 and later | description |
| Microsoft Edge for macOS| description |
| Microsoft Defender for Endpoint for macOS | description |

## Other apps

| App type | Description |
|---|---|
| Android Enterprise system apps | description |