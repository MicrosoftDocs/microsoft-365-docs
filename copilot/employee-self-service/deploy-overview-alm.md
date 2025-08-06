---
title: Employee Self-Service agent deployment overview
f1.keywords: NOCSH
ms.author: heidip
author: MicrosoftHeidi
manager: dansimp
ms.reviewer: semani
ms.date: 7/3/2025
audience: Admin
ms.topic: article
ms.service: microsoft-365-copilot
ms.custom: ess-agent
robots: NOINDEX, NOFOLLOW
ms.localizationpriority: medium
ms.collection: m365copilot
description: Learn about the deployment process and application lifecycle management for the Employee Self-Service agent
appliesto:
  - ✅ Microsoft 365 Copilot
---

# Employee Self-Service agent deployment overview

>[!NOTE]
>The Employee Self-Service agent is currently in limited public preview. Deployment processes are subject to change before this product becomes generally available.

There are several steps necessary to deploy the Employee Self-Service (ESS) Agent. Refer to the table for an overview of the deployment process.

|Role                         |Development environment |Production environment |
|-----------------------------|------------------------|-----------------------|
|Power Platform administrator |- Create environment for development and testing. </br>- Create a preferred custom solution. |Create an environment for production rollout. |
|Copilot Studio maker         |- Install the ESS agent. </br>- Install ISV extension packs and set up connectors. </br>- Customize and test. </br>- Export as a managed solution. |-Install the ESS agent. </br>- Import customization solution. </br>- Test. </br>- Publish. |

## Deployment stages

There are four stages in deploying the ESS agent.

1. Prepare:
    1. Set up roles.
    1. Set up your environment.
    1. Infra, set up for third-party ISV integration.
2. Install:
    1. Install the ESS agent.
    1. Install third-party ISV packages.
3. Customize:
    1. Configure core ESS agent.
    1. Provide third-party ISV configurations.
    1. Identify knowledge sources.
    1. Provide frequent queries.
    1. Identify sensitive queries.
4. Publish:
    1. Publish ESS agent.
    1. Approve ESS agent.
    1. Identify test users.

## Determine your application lifecycle management process

Application lifecycle management (ALM) includes governance, development, and maintenance. The key areas of ALM are as follows:

**Governance** includes managing requirements, managing resources, and nurturing, as well as system administration, such as data security, user access, change tracking, reviewing, auditing, deployment control, and roll back.

**Application development** includes identifying current issues, planning, design, building and testing the application, and making continuous improvements. This area includes traditional developer and app maker roles.

**Maintenance** includes deploying the app and maintaining optional and dependent technologies.

The application lifecycle is the cyclical software development process involving these areas:

- Plan and track
- Develop
- Build and test
- Deploy
- Operate
- Monitor
- Learn from discovery.

ALM for Microsoft Copilot Studio uses Dataverse in Microsoft Power Platform to securely store and manage the data and processes business applications use. To use the Power Platform features and tools available to manage ALM, all environments participating in ALM must include a Dataverse database.

The following concepts are important for understanding ALM using Microsoft Power Platform:

**Solutions** are the mechanisms for implementing ALM. You use solutions to distribute components across environments through export and import. A component represents an artifact used in your application that you can potentially customize. Anything that can be included in a solution is a component, such as tables, columns, canvas and model-driven apps, Power Automate flows, agents, charts, and plugins.

**Dataverse** stores all the artifacts, including solutions and [in-product deployment pipelines](/power-platform/alm/pipelines).

**Source control** is your source of truth for storing and collaborating on your components. [Learn more about source control](/power-platform/alm/git-integration/overview).

**Continuous integration and continuous delivery platforms** such as [Azure DevOps](/azure/devops/user-guide/what-is-azure-devops?view=azure-devops&preserve-view=true) allows you to automate your build, test, and deployment pipeline. These platforms can also be used with in-product pipelines.

Every organization has their own ALM process to deploy and test enterprise applications. The ESS Agent is published using Microsoft Copilot Studio, which brings Power Platform ALM directly into the Copilot Studio app. Makers and developers work in development environments using unmanaged solutions, then import them to other downstream environments, such as tests, as managed solutions. You need to work with your organization's Power Platform administrator to establish your ALM process. We recommend you have at least two separate environments to author, update, and test the agent.

The ESS Agent has three distinct persona experiences:

1. Administrator: Prepare the tenant to deploy, configure, and operate the ESS agent with the correct roles assigned to identified administrators.
1. Environment maker: Install, configure, and publish the agent, including third-party ISV packages.
1. User: Consume the ESS Agent within Microsoft Teams or Microsoft 365 Copilot chat. Users' data is harnessed from Microsoft 365 Graph.

These experiences are within the boundary of a single tenant, whereas the environment maker's experience installing and publishing the agent can vary among different environments within Power Platform. We recommend you establish ALM environments, such as Developer, Test, and Production, for publishing and testing the ESS Agent. Each of the third-party ISV applications can also be connected to the respective environments if each application has their own ALM instances (such as Developer, Test, and Production).
We recommend you have end users using a live production tenant to make use of recent and meaningful user-object interactions in Microsoft Graph.

## Quality Assurance Strategy (QA)

Deploying Copilot agents is a transformative initiative, but without rigorous testing, even the most promising agent can fall short of expectations. Here's why testing is essential:

- Ensures accuracy, relevance, and trust:
  - *simulate real-world scenarios, including edge cases, to uncover unguarded areas early*.
- Supports security, compliance, and governance:
  - *Involve compliance, security, governance, and corporate communications teams early in the testing phase*.
- Refines user experience and tone:
  - *Using Copilot Studio's instruction field to define tone, language, and behavior explicitly*.
- Enables performance benchmarking and continuous improvement:
  - *Define success metrics (for example, resolution rate, user satisfaction) and track them from pilot to production*.
- Validates technical integration and readiness:
  - *A phased rollout – starting in dev/test environments before scaling to production*.
- Aligns with Microsoft's deployment framework:
  - *Scenario-based testing*.
  - *CI/CD pipelines for version control*.
  - *Final DLP and RBAC validations*.
  - *Simulated test data for controlled evaluations*.
  - *Adopt a proven, enterprise-grade approach*.

### Golden prompt testing framework

This framework is one of the most common testing frameworks for quality testing the agent serving as the final gate before production deployment. This information is shared here **only** for guidance and aligns with the standard QA process established for your enterprise.

**What are golden prompts?**

Golden prompts are a curated set of test scenarios that: 

- Represent critical user workflows and edge cases
- Possess known, expected responses (golden responses)
- Cover core functionality that must never break
- Serve as regression detection mechanisms

The following **Process flow** can help you understand testing and golden prompts. Think of this flow as circular rather than linear, as testing is iterative and continuous.

1. Scenarios
1. Golden prompt testing
1. Go or abort
1. Production release
1. Feedback
1. Repeat

### Implementation guidelines

#### Golden prompt maintenance

|Responsibility    |QA Team |
|------------------|--------|
|Activities        |- Maintain comprehensive library of golden prompts </br>- Regularly review and update prompts based on: </br>--New feature additions </br>--Historical failure patterns </br>--Customer feedback </br>--Usage analytics |
|Prompt categories |- **Core functionality:** Basic system operations </br>- **Integration points:** API calls, database operations </br>- **Edge cases:** Boundary conditions, error scenarios </br>- **Performance:** Response time and resource usage </br>- **Security:** Authentication, authorization, data validation |

#### Prerelease testing protocol

|Trigger          |Quality gate for production deployment |
|-----------------|---------------------------------------|
|Process          |1. **Testing strategy** Begin by testing the updated package in the Copilot Studio test window as an initial validation step. Additionally, consider using a ring deployment strategy to progressively test the package across lower environments before promoting it to production. </br>2. **Automated execution** Run all golden prompts against the modified package. </br>3. **Response verification** Compare actual responses with expected golden responses. </br>4. **Tolerance checking** Apply acceptable variance thresholds where applicable. </br>**Failure analysis** Investigate any mismatches or failures. |
|Success criteria |- All golden prompts must pass </br>- Response times within acceptable ranges </br>- No security vulnerabilities introduced </br>- Memory/resource usage within limits |

#### Go/Abort decision framework

|Decision authority |Release management qualifying QA team approval |
|-------------------|-----------------------------------------------|
|Go criteria        |- 100% golden prompt pass rate </br>- All critical functionality verified </br>- Performance benchmarks met </br>- Security checks passed |
|Abort triggers     |- Any golden prompt failure </br>- Performance degradation beyond threshold </br>- Security vulnerability detected </br>- Resource usage exceeds limits |
