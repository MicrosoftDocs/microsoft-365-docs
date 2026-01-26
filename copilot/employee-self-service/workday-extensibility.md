---
title: Employee Self-Service agent deployment extensibility - Workday
f1.keywords:
- NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 11/17/2025
ms.update-cycle: 180-days
audience: Admin
ms.topic: how-to
ms.service: microsoft-365-copilot
ms.localizationpriority: medium
ms.collection: 
- m365copilot
- magic-ai-copilot
ms.custom: ess-agent
description: "Learn about extending the Employee Self-Service agent to Workday, including two scenario walkthroughs."
---

# Employee Self-Service agent extensibility – Workday

The Employee Self-Service agent allows employees to get their queries answered from admin-configured knowledge sources and external systems. When connected with systems like Workday through the solution accelerator package, the Employee Self-Service agent comes with a large set of ready-to-use topics that cover common scenarios.

However, every organization has unique processes and policies where the business owners would like to extend additional scenarios such as:

- Apply for leave or request for leave balance.
- View job details for their direct reports.
- Move or transfer employees.

To support these needs, the agent is designed to be extensible, so custom topics can be created to work seamlessly alongside with out-of-the-box (OOB) topics. As the customizations can vary from different ranges of complexity, the customization covered in this article is categorized as "pro-code." Pro-code is the most complex in the band as it requires application integration knowledge with other external systems, like Workday.

This article explains the steps to extend the agent by adding new topics tailored to your organization with two different approaches as follows:

- Using Open-Source samples.
- Copilot generated definitions.

## Configure Workday to support additional scenarios

Refer to the security configuration in the [Workday integration article](workday.md#task-6-security-configuration). Similar permissions need to be applied to the additional scenarios (business processes) being enabled as part of the agent extensibility. We recommend you consult with Workday and security subject matter expects to determine the right permissions to be applied, complying with your organization's security requirements.

## Prerequisites

- Employee Self-Service agent is installed in Copilot Studio.
- Employee Self-Service agent's Workday solution accelerator package is installed and configured in Copilot Studio.
- Follow the steps in [Integrate Workday with your Employee Self-Service deployment](workday.md).
- Maker access to the Copilot Studio environment.
- Admin access to Workday to configure additional permissions for the new business processes to be enabled with agent interaction.
- Access to Copilot Chat, preferably GPT-5.

> [!NOTE]
> Agent extensibility is a customization effort, which isn't covered by this agent's documented baseline functionality.

## Agent extensibility process 

Extending the agent requires an understanding of two key components:

- [Topics](/microsoft-copilot-studio/guidance/topics-overview)
- [Template configurations](workday.md#template-structure-overview)

You also need:

- Configuring Workday enabling additional scenarios for the agent.

Collectively, these components define how conversational scenarios are designed and how they interact with Workday services.

The following process is common for agent's extensibility for additional scenarios with Workday:

1. **Create template configuration**: Define the request and response mapping for the Workday service, save it in your Copilot environment, and validate its correctness.
1. **Create a new topic**: Build a Copilot topic that uses the template configuration to apply for leave on behalf of the employee.
1. **Workday permissions**: Assign all the required permissions to employees in Workday to enable the agent to apply for leave on their behalf.

## Example Scenario - Applying for time Off

Scenario:

All employees should be able to submit their time-off using the agent. These submissions must be recorded in Workday on behalf of the employee.

We begin with the approach of using open-source samples from GitHub to extend scenarios with custom topics.

### Commonly used steps

Use these steps to find the templates, which are used throughout this article.

1. Open [Copilot Studio](https://copilotstudio.microsoft.com/).
1. Select **Solutions** from the left navigation panel.
1. Open the **Default solution**.
1. Use the search box to look for **Employee Self-Service Template Configuration**.
1. Select a Workday template configuration, such as **HRWorkdayHCMEmployeeGetCompanyCode**.
1. Review details of the configuration, including request definitions, parameters, and response mappings.

### 1. Using open-source samples

Open-source samples are sourced from the developer community. These samples are built for the most common scenarios, which can be reused be people implementation team as needed.

The following table shows the list of scenarios that the open-source samples available for Workday can be used for regarding agent extensibility. An example, **Applying Time Off**, is used:

|Scenario |Name |Description |Sample trigger |Source |
|---------|-----|------------|---------------|-------|
|Get vacation balance |EmployeeGetVacationBalance |Returns the requesting user's vacation balance information from Workday. Displays available time off. |What's my vacation balance? |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/EmployeeGetVacationBalance) |
|Request time off |WorkdayEmployeeRequestTimeOff |Allows employees to submit time off requests for themselves through Workday. Prompts for necessary details like dates, hours, and reason. |Request 8 hours vacation on 2026-09-15. |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayEmployeeRequestTimeOff) |
|View job taxonomy |WorkdayEmployeesviewtheirjobtaxonomy |Responds to requests about the requesting user's job taxonomy, including job title, job function, job profile, and job family. |What's my job title? |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayEmployeesviewtheirjobtaxonomy) |
|Get contact information |WorkdayGetContactInformation |Returns the requesting user's contact information, including work/home phones, emails, and addresses, from Workday. |Show my contact details. |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayGetContactInformation) |
|Get education |WorkdayGetEducation |Returns the requesting user's education history, including school, degree, field of study, and years attended. |Show my educational details. |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayGetEducation) |
|Get government IDs |WorkdayGetGovernmentIDs |Returns government ID information associated with the requesting user's profile, including ID types, issued/expiration dates, and country/region. |What are my government IDs? |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayGetGovernmentIDs) |
|Manager - Directs company code |WorkdayManagersdirect-CompanyCode |Returns company code and company name for employees who directly report to the requesting user. Output is produced as a nested markdown list. |What are the company codes for my reports? |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/ManagerScenarios/WorkdayManagersdirect-CompanyCode) |
|Manager - Directs cost center |WorkdayManagersdirect-CostCenter |Returns cost center details for the direct reports of the requesting user. Output is produced as a nested markdown list |What's the cost center of my direct reports? |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/ManagerScenarios/WorkdayManagersdirect-CostCenter) |
|Manager - Directs job taxonomy |WorkdayManagersdirect-Jobtaxanomy |Returns job taxonomy (job title, business title, job profile, job family) for the manager's direct reports. Output is produced as a nested markdown list |Show me my team's job title. |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/ManagerScenarios/WorkdayManagersdirect-Jobtaxanomy) |
|Manager - Directs service anniversary |WorkdayManagerServiceAnniversary |Returns upcoming service anniversaries for a manager's direct reports. The topic returns a markdown table with Employee Name, Hire Date, Upcoming Service Anniversary Date, and Upcoming Milestone |When are the service anniversaries of all directs? |[View on GitHub](https://github.com/microsoft/CopilotStudioSamples/tree/main/EmployeeSelfServiceAgent/Workday/ManagerScenarios/WorkdayManagerServiceAnniversary) |

#### Open-source samples: Create template configuration

1. Download the template configuration from the [open-source sample](https://github.com/microsoft/CopilotStudioSamples/blob/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayEmployeeRequestTimeOff/msdyn_HRWorkdayAbsenceEnterTimeOff_EnterTimeOffInfo.xml).
2. Save the new template into the agent's template configurations:
    1. Open the Employee Self-Service agent in Copilot Studio.
    1. Navigate to **Solutions** > **Default**. Select **All** if Workday isn't visible.
    3. Select **New** > **More** > **Other** > **Employee Self-Service Template Configuration** to add a new agen'ts template configuration.
    4. In the **New Employee Self-Service Template Configuration** form, complete the following fields:

      |Field       |Instructions  |Example value  |
      |------------|---------|---------|
      |Name        |Provide a more appropriate value for the template configuration. |WorkdayEmployeeRequestTimeOff |
      |Unique name |1. Open the template configuration downloaded from open source in Step 1 using a preferred editor. </br>2. Search for the xml element `<requestTemplate>`, copy the value of the **name** attribute, and paste it into the **Unique Name** field. |msdyn_HRWorkdayAbsenceEnterTimeOff_EnterTimeOffInfo |
      |Value       |Copy the contents of entire template configuration and paste it into the **Value** field |Sample template configuration contents |

    5. Select **Save** and **Close**.

#### Open-source samples: Create a new topic

1. Download the template configuration from the [open-source sample](https://github.com/microsoft/CopilotStudioSamples/blob/main/EmployeeSelfServiceAgent/Workday/EmployeeScenarios/WorkdayEmployeeRequestTimeOff/topic.yaml).
1. Open the downloaded file in a preferred editor.
1. Copy the entire contents in the topic definition
1. Open the Employee Self-Service agent in Copilot Studio.
1. Navigate to the **Topics** tab and create a new topic.
    1. Select the  **+** Add a topic button and select **From blank**.
    1. On the top right corner Select **More**, then select **Open code editor**.
1. Paste the copied topic definition from step 3 into the code editor.
1. In this example scenario, **Applying Time off**, you need to list the type of **Time off** values setup in Workday when the agent's interacting with an employee.
1. Adjust the **Time_Off_Type_Id** in the topic definition.
    1. Login into Workday and search for **Time Off Types**.
    1. Select the **Time Off Types** report.
    1. Export the report to a worksheet, so you can copy the **Time Off Type ID**.
    1. Return to the code editor in Copilot Studio.
    1. Search for Input.ChoiceSet in the code editor.
    1. Navigate to the choices node, which indicates a drop-down UI control to list all the Time Off Types.
    1. Replace each subnode with the **Title** attribute that displays the Time Off Type and **Value** attribute from Time Off Type ID(s) copied in step C.
1. Change the topic Name from **Untitled** to **Request Time Off**, or any desired name.
1. Select **Save**.

#### Open-source samples: Configure Workday permissions

The example scenario **Applying Time Off** requires each employee to have access to request time off in Workday via the SOAP API.

The following permissions should be applied for this example scenario following the steps mentioned above in Configure Workday to support additional scenarios:

|Security domain |Security groups to be added in the security domain |Integration permissions: Put access |Integration permissions: Get access |
|---------------------|-----------------|----|----|
|Workerdate: Time Off |Employee as Self |Yes |Yes |

> [!NOTE]
> Because every organization may have their own security and governance for their Workday implementation, we recommend you consult with a Workday implementation and integration subject matter expert.

#### Open-source samples: Test the newly added scenario

Follow these steps to test the newly added scenario:

1. Open the Employee Self-Service agent in Copilot Studio.
1. Navigate to the **Topics** tab and open the topic you made in [Open-source samples: Create a new topic](#open-source-samples-create-a-new-topic).
1. Select the **Test** button in top right corner of Copilot Studio to open the test chat window:
  - Test prompt:
    - Apply time off for November 5 with the reason: Going on vacation.
  - The Adaptive Card appears with the configured list of Time Off Types.
  - Complete the form with required information and submit the form.
  - A successful leave application submission should be displayed.

### 2. Copilot-generated functions

This approach relies on the Copilot-generated definitions. You need some prompt skills and service API integration knowledge to generate the definition files (xml).

> [!NOTE]
> Copilot-generated definitions may not be always accurate and meet the integration specifications to use **as is** in this example walkthrough. The application integrators and developers must work together to ensure that the generated definitions meet the requirements. This approach must be used only as a starter for generating base definition/configuration files. You need to adjust it to meet the actual integration requirements.

#### Copilot-generated functions: Create template definitions

1. Find the right service and operations to be consumed for the additional scenario to be extended for the agent.
2. Workday services directory can be found [here](https://community.workday.com/sites/default/files/file-hosting/productionapi/index.html).
3. In this example scenario, **Applying Time Off**, the service used is [Absence_Management](https://community.workday.com/sites/default/files/file-hosting/productionapi/Absence_Management/v44.2/Absence_Management.html) and the operation is [Enter_TimeOff](https://community.workday.com/sites/default/files/file-hosting/productionapi/Absence_Management/v44.2/Enter_Time_Off.html).
4. Download the sample request and response format files from the service directory:
  - Sample request file: [Enter_Time_Off_Request.xml](https://community.workday.com/sites/default/files/file-hosting/productionapi/Absence_Management/v44.2/samples/Enter_Time_Off_Request.xml)
  - Sample response file: [Time_Off_Event_Response.xml](https://community.workday.com/sites/default/files/file-hosting/productionapi/Absence_Management/v44.2/samples/Time_Off_Event_Response.xml)
5. Now that you have the Workday format files, you next need to get the Employee Self-Service agent template configuration file to use as a reference for Copilot generation.
    1. Open the Employee Self-Service agent in Copilot Studio.
    2. Select **Solutions** from the left navigation menu.
    3. Go to **Solutions** > **Workday**. Select **All** if Workday isn't visible.
    4. In the left inner pane, Objects explorer, search for **Employee Self-Service Template Configuration** and select the folder from search results.
    5. From the list of Template configurations in right pane, use the search box in top right to search for **HRWorkdayHCMEmployeeUpdatePersonalEmail** and open it.
    6. Copy all content from the **Value** attribute and paste it in a new text file.
    7. Save the text file with a desired name. For this example, the file name could be *sample_configuration_template.xml*.
6. Rename all the .xml files to .txt files, to be used in the Copilot chat. These files serve as reference inputs for Copilot to learn the correct format and structure of the template.
7. Attach all the renamed .txt files to the Copilot chat.
8. Use Microsoft 365 Copilot to generate the template configuration with the prompt below:

  ```
  You're an integration specialist creating a configuration for a Copilot Studio bot to call a Workday SOAP API. Your task is to create a complete XML configuration file for a 'Request Time Off' scenario.

  Follow these specific instructions:

  Overall Structure: The final XML must follow the exact structure of the provided sample_configuration_template.txt, including the <scenario>,<apiRequests > and <requestTemplates> sections.

  API Request Payload: The <requestTemplates> section must contain the body of an Enter_Time_Off_Request API call.

  Use the Enter_Time_Off_Request.txt file as the definitive source for the payload's structure.

  Simplify the payload to only include the elements necessary for this request.

  Dynamic Inputs: The request payload must be parameterized with placeholders for the following dynamic inputs from the employee:

  {Date}

  {Reason} (The ID for the time off reason)

  {Comment}

  {Employee_ID}

  Response Handling: The section must be configured to extract the Time Off Event ID from the API response.

  Use the Time_Off_Event_Response.txt file to determine the correct XPath for extracting the ID from the element.

  The key for the extracted property should be TimeOffEventID.

  Generate a single, complete XML file based on these instructions and the attached reference files.
  ```

9. Save the resulted Template configuration into Employee Self-Service agent's template configurations.
    1. Open the Employee Self-Service agent in Copilot Studio.
    1. Navigate to **Solutions** > **Default**. Select **All** if Workday isn't visible.
    1. Select **New** > **More** > **Other** > **Employee Self-Service Template Configuration** to add a new agent's template configuration using a form.
    1. In the new form, complete the following fields:

      |Field       |Instructions  |Example value  |
      |------------|---------|---------|
      |Name        |Provide a more appropriate value for the template configuration. |WorkdayEmployeeRequestTimeOff |
      |Unique name |1. Open the template configuration downloaded from open source in Step 1 using a preferred editor. </br>2. Search for the xml element `<requestTemplate>`, copy the value of the **name** attribute, and paste it into the **Unique Name** field. |msdyn_HRWorkdayAbsenceEnterTimeOff_EnterTimeOffInfo |
      |Value       |Copy the contents of entire template configuration and paste it into the **Value** field |Sample template configuration contents |

#### Copilot-generated functions: Create a new topic

1. Copy one of the existing topic definitions to use as a reference in the Copilot chat prompt.
    1. Open the Employee Self-Service agent in Copilot Studio.
    2. Navigate to the **Topics** tab.
    3. Search for **Workday Update Email** and open it.
    4. Select **More** on the top right corner and select **Open code editor**.
    5. Copy the contents from the code editor and save it in a text file with a desired name. For this example, we use sample_topic.yaml.
2. Rename both the extensions for the template configuration (xml) from previous section and topic definition (yaml) from the previous step to .txt.
3. Use Microsoft 365 Copilot chat, preferably with GPT 5, to generate the topic definition.
    1. Attach the existing topic definition file saved in the previous step to the chat window.
    2. Attach the template configuration file from the [Copilot-generated functions: Create a new topic](#copilot-generated-functions-create-a-new-topic) section.
    3. Use the following prompt to generate a topic definition for applying leave. Adjust the generated file to meet the scenario requirements.

      ```
      You're an integration specialist creating a topic definition YAML for Microsoft Copilot Studio. Your task is to create a complete topic definition for a "Request Time Off" scenario.

      Use the attached sample_topic.yaml as the reference for structure and logic. Follow the same overall flow (metadata, modelDescription, beginDialog, AdaptiveCardPrompt, calling the common execution dialog, success/failure handling with retry, and Cancel handling). For parameters construction, follow the exact pattern shown in the sample_topic.yaml.

      Refer to the attached XML file TimeOffRequestConfigurationTemplate.xml and extract the exact scenarioName from it to use when calling the Workday flow.

      The topic must collect these inputs via an Adaptive Card:

      Date of Leave

      Reason (Vacation, Sick Leave, Bereavement)

      Hours (default 8)

      Justification

      Buttons: Submit and Cancel

      To escape a double quote inside a string, double it ("").
      ```

4. Open the generated topic definition file in a preferred editor.
5. Copy the entire contents in the topic definition.
6. Open the Employee Self-Service agent in Copilot Studio.
7. Navigate to the *Topics** tab and create a new topic.
    1. Select the **+** (plus) > **From blank**.
    2. On the top right corner, select **More** > **Open code editor**.
8. Paste the copied topic definition from step 3 into the code editor.
9. In this example scenario, "Applying Time off", you need to list the type of Time off values setup in Workday when the agent is interacting with an employee.
10. Adjust the "Time_Off_Type_Id" in the topic definition.
    1. Login into Workday and search for **Time Off Types**.
    2. Select the **Time Off Types** report.
    3. Export the report to a worksheet so the **Time Off Type ID** can be copied.
    4. Return to the code editor in Copilot Studio.
    5. Search for **Input.ChoiceSet** in the code editor.
    6. Navigate to the **choices** node, which lists the Time Off Types in a drop-down UI control.
    7. Replace each subnode with the **Title** attribute that displays the Time Off Type and the **Value** attribute from the Time Off Type IDs copied in the third step.
11. Change the topic name from **Untitled** to **Request Time Off**, or any name you choose.
12. Select **Save**.

#### Copilot-generated functions: Configure workday permissions

The example scenario **Applying Time Off** requires each employee to have access to request time off in Workday via the SOAP API.

The following permissions should be applied for this example scenario following the steps mentioned previously in [Configure Workday to support additional scenarios](#configure-workday-to-support-additional-scenarios):

|Security domain |Security groups to be added in the security domain |Integration permissions: Put access |Integration permissions: Get access |
|---------------------|-----------------|----|----|
|Workerdate: Time Off |Employee as Self |Yes |Yes |

> [!NOTE]
> Because every organization may have their own security and governance for their Workday implementation, we recommend you consult with a Workday implementation and integration subject matter expert.

#### Copilot-generated functions: Test the newly added scenario

Follow these steps to test the newly added scenario:

1. Open the Employee Self-Service agent in Copilot Studio.
1. Navigate to the **Topics** tab and open the topic you made in [Open-source samples: Create a new topic](#open-source-samples-create-a-new-topic).
1. Select the **Test** button in top right corner of Copilot Studio to open the test chat window:
  - Test prompt:
    - Apply time off for November 5th with the reason: Going on vacation.
  - The Adaptive Card appears with the configured list of Time Off Types.
  - Complete the form with required information and submit the form.
  - A successful leave application submission should be displayed.
