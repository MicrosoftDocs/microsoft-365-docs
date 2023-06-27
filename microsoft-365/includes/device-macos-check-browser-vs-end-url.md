### OPTIONAL: Allow sensitive data to pass through forbidden domains

Microsoft Purview DLP checks for sensitive data through all stages of its travels. So, if sensitive data gets posted or sent to an allowed domain, but travels through a forbidden domain, it's blocked. Let's take a closer look.

Say that sending sensitive data via Outlook Live (*outlook.live.com*) is permissible, but that sensitive data must not be exposed to *microsoft.com*. However, when a user accesses Outlook Live, the data passes through *microsoft.com* in the background, as shown:

:::image type="content" source="../media/devices-macos-cloud-dataflow-inline.png" alt-text="Screenshot showing the flow of data from source to destination URL.":::

By default, because the sensitive data passes through microsoft.com on its way to outlook.live.com, DLP automatically blocks the data from being shared.

In some cases, however, you may not be concerned with the domains that data passes through on the back end. Instead, you may only be concerned about where the data ultimately ends up, as indicated by the URL that shows up in the address bar. In this case, *outlook.live.com*. To prevent sensitive data from being blocked in our example case, you need to specifically change the default setting.

So, if you only want to monitor the browser and the final destination of the data (the URL in the browser address bar), you can enable *DLP_browser_only_cloud_egress* and *DLP_ax_only_cloud_egress*. Here's how.

To change the settings to allow sensitive data to pass through forbidden domains on its way to a permitted domain:

1. Open the [com.microsoft.wdav.mobileconfig](https://github.com/microsoft/mdatp-xplat/blob/master/macos/settings/data_loss_prevention/cloud_egress/com.microsoft.wdav.mobileconfig) file.

2. Under the `dlp` key, Set `DLP_browser_only_cloud_egress` to *enabled* and set ` DLP_ax_only_cloud_egress` to *enabled* as shown in the following example.


```xml

<key>dlp</key>
     <dict>
         <key>features</key>
         <array>
            <dict>
                <key>name</key>
                <string>DLP_browser_only_cloud_egress</string>
                <key>state</key>
                <string>enabled</string>
            </dict>
             <dict>
                <key>name</key>
                 <string>DLP_ax_only_cloud_egress</string>
                <key>state</key>
                <string>enabled</string>
            </dict>
        </array>
    </dict>
```