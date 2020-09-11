---
title: "Add custom and required questions to the booking page"
ms.author: kwekua
author: kwekuako
manager: scotv
audience: Admin
ms.topic: article
ms.service: bookings
localization_priority: Normal
ms.assetid: fd6b7587-5055-4bcd-83a4-13bd4929bfff
description: "If you need to ask customers questions when they book an appointment with you online, you can add custom questions and required questions to the booking page."
---

# Add custom and required questions to the booking page

Bookings lets you create questions to ask your customers when they are booking appointments. It also lets you choose which questions are required.

You associate the questions with a service, so each service can have a different set of questions. For example, a hair stylist may ask customers who are booking a hair coloring appointment if they have any known allergies to bleaches or tints. This allows you and your customers to save time when they arrive for their appointment.

The customers will see the custom questions when they are creating their appointment on the booking page. Staff will see the custom questions when they create a new booking from the Bookings calendar or when viewing an existing appointment. Bookings saves all of your questions to a master list so that you don't have to re-create the same questions for every service. You can also choose whether questions are required or optional.

> [!NOTE]
> The customer's answers to the questions can be seen when you look at their appointment in the booking calendar.

For more information about how to personalize and customize your booking page, see [Customize your booking page](customize-booking-page.md).

## Add custom questions to your services

1. Sign in to Microsoft 365 and go to **Bookings**.

1. Go to **Services** and either edit an existing service or **Add a service**.

1. Scroll down to the **Custom fields** section, and then select **Modify**.

   We already added some basic customer information questions: Customer email, phone number, customer address, and customer notes. The first time you do this, the customer information questions are highlighted in gray. That means that the user will see this question. If you select the question, the highlight box around it will disappear and your customer won't be asked that question.

   In this example, phone number and customer notes have been turned off and we created two new custom questions to ask.

   ![Image of custom questions screen](../media/bookings-questions-custom-fields.png)

1. To make the question required, select the **Required** checkbox. Your customer won't be able to complete the booking until they've answered the required questions.

1. To create a custom question, select **Add a question** from the top of the panel. Write your question, and then select **Save**.

1. Click on the question to enable it. A highlighted box appears around it and the question is enabled.

1. Click **Ok** at the top of the page, and then **Save the service**.

Bookings will save all of your custom questions in a master list so that you can easily add questions to each service without needing to repeatedly type the same questions. For example, if you open a different service, the question you created for the first service will show in the Custom fields section, but it wil be disabled. Click the question so that a highlighted rectangle displays and the question is enabled.

In this example, you can see that the questions that were added for the first service are available for this service. Any questions you create for this service will be available for all services.

   ![Image of questions that appear for multiple services](../media/bookings-questions-services.png)

If your booking page is already published, you don't need to do anything else. Customers will see the questions the next time they book with you. If your booking page isn't published yet, go to the **booking page** from Outlook on the web, and then select **Save and publish**.

> [!WARNING]
> You can also delete questions from the master list. However, if you delete a question it will be deleted from every service. We recommend that you disable the question by selecting it to ensure you do not impact any other services. You can see that a question is disabled if it is not surrounded by a highlighted rectangle.

## Customer experience

When your customers book an appointment with you, the basic customer information questions will show in the **Add your details** section. Any customized questions you add will be in the **Provide additional information** section.

![Image of what customers see when questions are enabled](../media/bookings-questions-customer.png)

## Staff experience

When your customers book an appointment with you, your staff will see the questions and the customer's answers on the booking calendar. To see it, go to **Bookings** \> **Calendar** and then open an appointment.

![Image of what staff see when questions are enabled](../media/bookings-questions-staff.png)
