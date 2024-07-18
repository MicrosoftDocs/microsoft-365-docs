## ![STOP](https://docs.microsoft.com/office/media/internal/prfilecountcheck-stop-sign.png)  Invalid base branch - PR blocked

The target (base) branch - **{0}** - you're trying to merge this pull request into only accepts pull requests from the **{1}** branch. 

If you're trying to publish changes you've made to the live site, you must first merge this pull request into the **{1}** branch. After this pull request is merged into the {1} branch, your changes will be published live at the next scheduled publish time. For information about the Marvel publishing process, see [Marvel PubOps publishing process](https://review.docs.microsoft.com/office-authoring-guide/pubops-publishing-process?branch=main).

To change the target branch from {0} to {1}, use the following steps:

1. Select the **Edit** button next to the pull request title.

    ![STOP](https://docs.microsoft.com/Office/media/internal/fa-prcriteriacheck-livemergecheck-fixbranch-step1.png)

2. Select **base:{0}**.
3. In the list that appears, select **{1}**.

    ![STOP](https://docs.microsoft.com/Office/media/internal/fa-prcriteriacheck-livemergecheck-fixbranch-steps2-3.png)

4. Select **Change base**.

    ![STOP](https://docs.microsoft.com/Office/media/internal/fa-prcriteriacheck-livemergecheck-fixbranch-step4.png)

    **NOTE** Clicking **Change base** is safe. The message is specific to more complex branching methods that aren't typically used in Marvel repos. Even with those methods, this message only applies to how commits are tracked in the repo's history. There is no risk of data loss.
