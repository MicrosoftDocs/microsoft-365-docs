**Turn on security defaults**

Security defaults help protect your organization from identity-related attacks by providing preconfigured security settings that Microsoft manages on behalf of your organization. For most organizations, security defaults offer a good level of additional sign-in security.

For more information about security defaults and the policies they enforce, see [<u>What are security defaults?</u>](https://docs.microsoft.com/en-us/azure/active-directory/fundamentals/concept-fundamentals-security-defaults)

If your subscription is new, security defaults might already be turned on for you.

To enable security defaults in your Azure Active Directory (Azure AD) or to check to see if they’re already enabled:

1.  > Sign in to the [<u>Microsoft 365 admin center</u>](https://admin.microsoft.com/) with global admin credentials.

2.  > In the left pane, select **Show All,** and then under **Admin centers**, select **Azure Active Directory**.

3.  > In the left pane of the **Azure Active Directory admin center,** select **Azure Active Directory**, and then select **Properties**.

4.  > At the bottom of the **Properties** page, select **Manage Security defaults**.

5.  > In the right pane, you’ll see the **Enable Security defaults** setting. If **Yes** is selected, then security defaults are already enabled and no further action is required. If security defaults are not currently enabled, then select **Yes** to enable them, and then select **Save**.

**NOTE  
**If you’ve been using [baseline Conditional Access policies](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/concept-baseline-protection), you’ll be prompted to turn them off before using security defaults.

You can use either security defaults or Conditional Access policies, but you cannot use both at the same time.

**Other security options**

If your organization has complex security requirements and you have a Microsoft 365 Business Premium or E3 plan or Azure Active Directory Premium licenses, then you should consider using Conditional Access instead of security defaults.

Conditional Access lets you create and define policies that react to sign-in events and request additional actions before a user is granted access to an application or service. Conditional Access policies can be granular and specific, empowering users to be productive wherever and whenever, but also protecting your organization.

Here are links to step-by-step guides on how to use Conditional Access to configure policies equivalent to those enabled by security defaults:

  - > [Require MFA for administrators](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-policy-admin-mfa)

  - > [Require MFA for Azure management](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-policy-azure-management)

  - > [Block legacy authentication](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-policy-block-legacy)

  - > [Require MFA for all users](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/howto-conditional-access-policy-all-users-mfa)

  - > [Require Azure AD MFA registration](https://docs.microsoft.com/en-us/azure/active-directory/identity-protection/howto-identity-protection-configure-mfa-policy) - Requires Azure AD Identity Protection part of Azure AD Premium P2.

To learn more about Conditional Access, see [What is Conditional Access?](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/overview) For more information about creating Conditional Access policies, see [Create a Conditional Access policy](https://docs.microsoft.com/azure/active-directory/authentication/tutorial-enable-azure-mfa#create-a-conditional-access-policy).

**NOTE**  
If you have a plan or license that provides Conditional Access but haven’t yet created any Conditional Access policies, you’re welcome to use security defaults. However, you’ll need to turn off security defaults before you can use Conditional Access policies.
