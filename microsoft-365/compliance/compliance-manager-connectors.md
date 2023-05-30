---
title: "Connectors for Microsoft Purview Compliance Manager"
f1.keywords:
- NOCSH
ms.author: chvukosw
author: chvukosw
manager: laurawi
ms.date: 05/24/2023
audience: Admin
ms.topic: article
ms.service: O365-seccomp
ms.localizationpriority: medium
ms.collection:
- purview-compliance
- m365solution-compliancemanager
- m365initiative-compliance
- tier1
search.appverid:
- MOE150
- MET150
description: "Set up connectors to build assessments for non-Microsoft services in Microsoft Purview Compliance Manager."
---

# Working with connectors in Compliance Manager

Compliance Manager offers a comprehensive set of connectors designed to help you gain a clear understanding of your compliance obligations across the services used in your organization. The connectors provide a seamless link to  non-Microsoft services so that you can include them in your assessments and take advantage of automatic monitoring and testing of controls. Connecting your services to Compliance Manager requires a few simple setup steps. Once your connector is activated, you can select it as an in-scope service when creating an assessment.

[!INCLUDE [purview-preview](../includes/purview-preview.md)]

## Available connectors
The connectors available for Compliance Manager are listed below, with more available in the coming months.

- Salesforce
- Zoom

> [!IMPORTANT]
> Compliance Manager connectors are unique to the Compliance Manager solution and are set up within Compliance Manager. The data connectors that are accessed from the left navigation of the Microsoft Purview compliance portal aren't compatible with Compliance Manager. We recommend interacting with connectors by always selecting **Data connectors** in the upper right corner of Compliance Manager to ensure that any connectors you activate are the ones built specifically for use with Compliance Manager.

## Required roles for setting up connectors

Users must have a Data Connector Admin role or Global Admin role in order to set up Compliance Manager connectors.

## Connector setup steps

1. [Configure settings in your service so that it can integrate with the connector.](#step-1-configure-service-settings-to-enable-the-connector)
1. [Activate the connector in Compliance Manager.](#step-2-activate-the-connector-in-compliance-manager)
1. [Select the connector when building an assessment.](#step-3-add-a-connector-to-assessments)

## Step 1. Configure service settings to enable the connector

For each service, you'll need to do some configurations and get basic information about your accounts. This information is used to create the connection between the service and the Compliance Manager connector so that the connector can retrieve the necessary signals. Visit the pages below and follow the setup instructions before you activate its connector in Compliance Manager:

- [Salesforce setup](compliance-manager-connectors-salesforce.md)
- [Zoom setup](compliance-manager-connectors-zoom.md)

## Step 2. Activate the connector in Compliance Manager

The next step is to "activate a connector" in Compliance Manager by connecting to your desired service. After you activate a connector, you can select it as a service to be monitored when creating an assessment. The connector allows Compliance Manager to receive signals from your designated non-Microsoft service and evaluate configurations in order to determine whether controls are passing or failing.

If you have more than one account for your product, such as accounts for production, for development and testing, for backup disaster recovery, etc., you'll need to activate a connector for each separate account. We refer to each account within a service as a **service instance**.

Follow the steps below to activate a connector:

1. In Compliance Manager, select **Data connectors** in the upper right corner of your screen. You're taken to the Compliance Manager page within the **Data connectors** area of the Microsoft Purview compliance portal.

1. The page displays a list of available connectors to choose from. Select the checkbox next to the name for the product whose connector you want to activate, then select **Activate connector**.

1. You see an information page with details about the connector. Select **Add connector**, which takes you into the connector setup wizard.

1. Review the Microsoft Terms of Service, then select **Accept**.

1. On the **Connector name** page, enter a unique name. You might want a name that helps identify which account the connector is for; for example, "Salesforce Prod" for your Salesforce production account. Then select **Next**.

1. On the **Authentication** page, enter the credentials for the account that you want to link to the connector. The specific fields depend on the service you're connecting to, but are usually a variation of email or account ID, password, and token. See the setup instructions for each service to learn how to get this information. When done entering authentication information, select **Validate connection**. It takes a few seconds to validate the connection.

1. If the connection to your account is validated, you see a **Validation succeeded** message. If validation fails, enter your credentials again until the connection is validated. Select **Next**.

1. On the **Review and finish** page, review the connector details for accuracy. Select **Back** if you need to make changes. Select **Finish** to complete the process.

You'll arrive back at the Compliance Manager data connectors page. Go to **My activated connectors** tab to view your connector, along with any other connectors created by your organization. If you don't see the newly created connector, refresh your browser.

## Step 3. Add a connector to assessments

Now you're ready to build an assessment with a connector so that it tracks progress related to the desired service.

1. From the **Assessments** page in Compliance Manager, select **Add assessment**.

1. From here, begin following the general [assessment creations instructions](compliance-manager-assessments.md#create-an-assessment-using-a-guided-process).
    > [!TIP]
    > When selecting a regulation for the assessment, the **Supported services** column on the **Select regulation** flyout pane shows which services are supported by the regulation template. If the service related to your connector isn't listed, the connector won't show up as an option in step 3, below.

1. When you arrive at the **Select services** page and choose **Select services**, you should see the name of the product related to your activated connector; for example, Salesforce. Check the box next to the service name, select **Add**, then select **Next**.

1. At the **Service instances** page, you choose one or more connectors you've activated for the service. On the row listing your service, select **Manage service instances**.

1. A flyout pane lists all the service instances for your connector. Each instance represents a connector activated by your organization. All service instances are checked by default. If you want the assessment to cover all instances, which means the assessment uses all connectors you activated for that service, leave them all checked and select **Cancel**. Or, uncheck any instances that you don't want to cover in the assessment and select **Update**.

1. Back at the **Service instances** page, select **Next**.

1. On the **Review and finish** page, confirm all your selections are correct, then select **Create assessment**.

The next screen confirms the assessment was created. When you select **Done**, you're taken to your new assessment's details page.

## Viewing service data in an assessment

The assessment details page shows a detailed view of the assessment's rate of progress. When you add a connector as a service for the assessment, you see the connector name as one of the services listed on the assessment's **Progress** tab. You can view more details about service progress by selecting **View service details**.

## Automated monitoring for connectors

Every 24 hours, connector signals are refreshed and any updated status is reflected in your assessment. This means that Compliance Manager provides daily automated refreshed status of configurations in the products for which you've activated connectors.

All improvement actions that are monitored through connectors are automatically monitored and tested so that Compliance Manager can determine whether controls are passing or failing. Improvement action test status is reflected in your assessments so that you can take the necessary actions in your non-Microsoft products to satisfy a control requirement.

## Editing a connector

If you need to edit a connector's name or account credentials, select the connector from your **My activated connectors** page and select the **Edit** command at the top of your connectors list.

## Deleting a connector

To delete a connector, you need to first locate your connector in the Purview **Data connectors** area. Connectors can't be deleted when you access them through the **Data connectors** link in the upper right corner of Compliance Manager. Follow the instructions below to delete a connector:

1. In the Microsoft Purview compliance portal, select **Data connectors** in the left nav.
1. Select the **My Connectors** tab.
1. Locate the connector that you want to delete on the list and select the checkbox next to its name. Select the **Delete** command at the top of the list.
1. In the delete confirmation dialog box, select **Delete**.

Your connector is deleted and removed from the list of your connectors.