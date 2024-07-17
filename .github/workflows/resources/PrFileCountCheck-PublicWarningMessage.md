## ![STOP](https://docs.microsoft.com/en-us/office/media/internal/prfilecountcheck-stop-sign.png)  Caution: Large pull request

This **public** repo applies limits on the number of files that can be merged in a single pull request (PR):

- **Warning** Warning message and ability to unblock PR using the *{3}*<sup>\*</sup> label - {1}
- **Block** Block message and PR is blocked - {2}

This pull request will change **{0}** files, which exceeds the **warning** limit of **{1}**.

Before this pull request can be merged, you must review the list of files it contains and their changes to confirm they are correct and intentional. **This includes files you did not change and/or do not own**. If there are changes you aren't familiar with, contact the individuals who submitted the commits included in this pull request and review the changes with them.

**The individual who merges this pull request is responsible for ensuring the changes included in it are correct, and for resolving any issues that might result in merging it.**

### To merge this pull request

If you have determined that the changes in this pull request are correct, add the **{3}**<sup>\*</sup> label to it, wait for the **max/pr-file-count** check to pass, and then click **Merge**. To add a label, click the gear icon next to **Labels** and then select **{3}**<sup>\*</sup>.

![Label UI screenshot](https://docs.microsoft.com/en-us/office/media/internal/prfilecountcheck-label-screenshot.gif)

### To reject this pull request

If you can't confirm the changes in this pull request are correct, click **Close pull request** at the bottom of this page to close it without merging. Work with your team to revert any changes that aren't correct.

<sup>\*</sup> You must have write or triage access to this repo to add labels.
