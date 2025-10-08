---
title: Troubleshoot issues with the Copilot Tuning expert Q&A model
description: This article describes some of the most common issues with the Microsoft 365 Copilot Tuning expert Q&A task fine-tuning and how to troubleshoot them.
author: kwekuako
ms.author: kwekua
ms.collection: operations-pod
manager: scotv
ms.date: 06/17/2025
audience: Admin
ms.topic: troubleshooting-general
ms.service: microsoft-365-copilot
ms.reviewer: calvind
ms.localizationpriority: medium
recommendations: false
---

# Troubleshoot issues with the Copilot Tuning Expert Q&A model

[!INCLUDE [agent-builder-mcs-lite](../microsoft-365/includes/agent-builder-mcs-lite.md)]

This article describes some of the most common issues with the Microsoft 365 Copilot Tuning expert Q&A task fine-tuning and how to troubleshoot them.

[!INCLUDE [copilot-tuning-preview](includes/copilot-tuning-preview.md)]

## I get a permission or access error when connecting to my content source

An access or permission denied error usually means your account doesn't have the rights to that data source. Make sure you have the appropriate permissions for the content repository. For example, if you're adding a SharePoint site, confirm with your SharePoint administrator that your account (or a group you belong to) has access to that site or document library. If the fine-tuning process uses a security group for access control, make sure that the correct security group is set up and that your user account is included in it before you retry the operation.

## I created a fine-tuned Q&A model, but it isn't showing up when I try to add it to my Copilot agent

If your newly trained model isn't listed in the selection dropdown when you configure your declarative agent, you might have a permissions issue. The model is associated with a security group or access policy, and your account might not be included. Make sure that the security group used during the model creation includes your account (or the account of the person building the agent). You might need to ask your IT admin to add you to that group or recreate the model with a group that you are part of. When your permissions are fixed, the fine-tuned model should appear for selection. 

## When I click "Prepare data for training," no labeling interface or data appears

Some fine-tuning scenarios don't require manual labeling of data. In the Q&A fine-tuning pipeline, if the system doesn't present any data to label after preparation, it means that step is automatically skipped for your scenario. In other words, not all recipes require a labeling stage. You can proceed to the next step of the process. (If you expected a labeling step but didn't get one, the system might have determined that there's nothing to label, which is normal for certain Q&A tasks.)

## The data processing stage is taking a long time

The data preparation or training phase can take quite a while, depending on the size of your content. It's normal for this stage to take several hours, especially if you provided a large document collection. You should receive a notification (for example, an email) when the processing is complete. If you haven't received a notification yet, be patient - it likely means the process is still running. If it's been more than a few hours, check your spam or junk email folder to make sure the notification didn't get misfiled. You can also manually refresh or revisit the fine-tuning page. When the processing is finished, the status on the site indicates that the data is ready or the next step is available.

## I didn't get an email notification that my data processing finished

Double-check your email spam or junk folder for a message about the fine-tuning process having completed. Sometimes, automated notifications can be filtered out. If you don't find an email, don't worry - you don't need the email to proceed. Go back to the fine-tuning interface and check the status of your model there. If the preparation step is completed, the interface will show that your data is ready for the next step (for example, ready for evaluation or ready to train). At that point, you can continue with the fine-tuning workflow even without the email.

## The fine-tuning process stalled or failed partway through (with or without an error status)

If the training/fine-tuning process fails or hangs without a clear error message, the system might not have provided feedback. The current system has limited error handling, so occasionally it might just stop without a specific error code or explanation.

To troubleshoot:
1. Retry the process - In some cases, rerunning the fine-tuning process or restarting from the last step can resolve a transient issue.
2. Make sure any configurations are set correctly and try again.
3. Check for known issues - See if any error message was logged or displayed. If you find an error code, follow the guidance associated with that error code. Documentation or forums might have additional information for specific errors.

Contact support if the issue persists.

## My evaluation (test) dataset came back empty, or I see 0 Q&A pairs generated for evaluation

An empty evaluation file usually indicates that the system could not generate any Q&A samples from your content. One common reason is that the content collection you provided was too small or had no usable data. The model didn't have enough material to create Q&A examples.

To address this:

1. Verify your knowledge source content - Double-check that the documents or data source you selected contain the information you expect. If the content repository was empty or too limited, add more relevant documents and then rerun the fine-tuning process.
2. Run the process again - After you ensure that the content is in place, try the prepare data or fine-tuning step again. This time, it might produce a set of Q&A pairs for evaluation.
3. If it's still empty, seek help - If you still get an empty evaluation or an empty training set, there might be an underlying issue. Contact support for assistance. They might check whether any filtering rules or errors caused your data to be discarded. In rare cases, strict filtering or all content being out of scope can result in no data; support can help identify whether that happened.

## The model training finished, but the *answers it gives seem strange or irrelevant* ("weird")

If your fine-tuned Q&A model's responses are not making sense or seem unrelated to your domain, the culprit is often the training data quality or quantity. A model can only perform as well as the data it was trained on. Here are steps to troubleshoot a \"weird\" or low-quality model output:

1. Ensure sufficient training data: Check that the knowledge source you provided has enough useful content. If your content collection was very small or empty, the model may have essentially trained on nothing, resulting in effectively a "vanilla" or nonsense model[1]. Make sure you include enough documents or Q&A pairs covering the subject matter you expect the model to handle.
2. Provide relevant data: If the model's answers are off-topic, some of your training documents might not match the intended domain. For example, if you're building a finance Q&A bot but the content fed in was mostly generic or unrelated, the model won't have the right knowledge. Refine your content to be more relevant to the expected questions.
3. Retrain after improvements: After adding more or better data, run the fine-tuning process again. Improving the dataset often leads to a direct improvement in answer quality.

If you've done the above and the model's answers are still incorrect or incoherent, consider reaching out to support. There could be an edge-case issue with the fine-tuning pipeline itself. But in most cases, bolstering your training data (or adjusting the task instructions) should greatly improve the model's responses.

## The model's evaluation answers looked good, but the agent's answers aren't good

This is a known behavior. The fine-tuned model might perform well in the isolated evaluation, but the deployed agent's behavior can differ if the agent configuration doesn't fully carry over the model's nuances. In particular, the agent might need additional instructions to use the model effectively. To resolve this:

1. Compare evaluation vs. agent outputs - Identify what's missing or different. For example, maybe the evaluation answers had a friendly, empathetic tone that you liked, but the agent's answers feel more generic or terse.
2. Adjust the agent's instructions - In the Copilot Studio lite experience, add or refine the system instructions or prompts for the agent. Reinforce the qualities you want that you saw in the evaluation stage. For example, add the instructions "Respond in an empathetic tone," or "Include the detailed steps if available.".
3. Test again - After you update the instructions, test the agent with the same questions. The answers should align more closely with the fine-tuned model's expected behavior. This iterative tuning of the agent is sometimes necessary to get the best results. The fine-tuned model provides the knowledge, and the agent's instructions shape how that knowledge is expressed.

## The answers from my Q&A agent are still not what I expected

If you find the overall answer quality unsatisfactory, you might need to refine your fine-tuning setup further. Consider these steps:

1. Improve or increase training data - Make sure that the dataset used for fine-tuning is high quality, relevant, and comprehensive for the domain of questions. If possible, add more examples or documents that cover the scope of queries you expect. A richer dataset can significantly improve the model's accuracy.
2. Refine the initial configuration - During the model setup, you likely provided some initial instructions or filled out a form (sometimes referred to as a questionnaire about the domain and task). Revisit those inputs. Edit or refine the task description and settings to better guide the model. For example, if you realize the model is answering at too high a level, make sure the instructions specify the desired depth or context.
3. Provide clear examples - If the system allows, give example Q&A pairs or further guidance. Some fine-tuning processes let you review or label data. Use that opportunity to teach the model what correct answers look like.
4. Iterate and test - Fine-tuning is often an iterative process. After making changes, retrain (or partially train if supported) and then test the Q&A agent again. Gradually, you can converge on better performance. Remember that open-ended or extremely complex questions might always be challenging, but the goal is to get the majority of expected queries answered well.

## Some answers from the Q&A Copilot not have any citations

In the current version of the system, not every answer will include a citation, even if it's pulling information from your content. The Q&A fine-tuning pipeline works with retrieval - when the answer comes directly from retrieved documents (using the RAG retrieval component), the system will show citation links. However, if the answer is coming from the fine-tuned model's own knowledge (for example, something it learned during training that isn't a direct quote from a document), it might respond without attaching a source citation. This behavior is expected.

The presence of citations is generally a good sign that the answer used the documents you provided at runtime. Lack of a citation doesn't necessarily mean the answer is wrong; it might just mean the answer was generated from the model's internal knowledge, or the question didn't require retrieving a document.

If you believe an answer should have a citation (for example, it seems to be quoting a document you provided) but no citation is shown, verify that your knowledge sources were properly connected during the agent's run. It's possible that the agent answered from the fine-tuned model rather than the real document.

Keep in mind that an answer without a citation isn't unusual in some cases. You can always verify critical information by manually searching your source content, and if you feel something is missing a citation or is incorrect, use the feedback mechanisms in the tool to let the developers know (for example, by reporting a bad answer).

## Related content

- [Microsoft 365 Copilot Tuning overview (preview)](copilot-tuning-overview.md)

If you need support or want to provide feedback, see [Copilot Tuning FAQ](copilot-tuning-faq.yml).
