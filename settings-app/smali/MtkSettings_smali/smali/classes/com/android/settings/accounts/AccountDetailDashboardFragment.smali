.class public Lcom/android/settings/accounts/AccountDetailDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "AccountDetailDashboardFragment.java"


# instance fields
.field mAccount:Landroid/accounts/Account;

.field private mAccountLabel:Ljava/lang/String;

.field private mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

.field mAccountType:Ljava/lang/String;

.field private mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    new-instance v1, Lcom/android/settings/accounts/AccountSyncPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    .line 115
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 116
    new-instance v1, Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    .line 117
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    new-instance v1, Lcom/android/settings/accounts/AccountHeaderPreferenceController;

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v7

    move-object v2, v1

    move-object v3, p1

    move-object v6, p0

    invoke-direct/range {v2 .. v7}, Lcom/android/settings/accounts/AccountHeaderPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/Activity;Landroid/support/v14/preference/PreferenceFragment;Landroid/os/Bundle;)V

    .line 118
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    return-object v0
.end method

.method protected displayTile(Lcom/android/settingslib/drawer/Tile;)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 126
    return v1

    .line 128
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 129
    if-nez v0, :cond_1

    .line 130
    return v1

    .line 132
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    const-string v2, "com.android.settings.ia.account"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    if-eqz v0, :cond_2

    iget-object v1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_2

    .line 134
    iget-object p1, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    const-string v1, "extra.accountName"

    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    iget-object v2, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 136
    :cond_2
    return v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 103
    const v0, 0x7f1206ef    # @string/help_url_account_detail ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 98
    const-string v0, "AccountDetailDashboard"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 93
    const/16 v0, 0x8

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 108
    const v0, 0x7f15000c    # @xml/account_type_settings 'res/xml/account_type_settings.xml'

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 85
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->updateUi()V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceManager;->setPreferenceComparisonCallback(Landroid/support/v7/preference/PreferenceManager$PreferenceComparisonCallback;)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    const-string v2, "user"

    .line 65
    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 66
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 64
    invoke-static {v1, v2, p1, v0}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v0

    .line 67
    if-eqz p1, :cond_2

    .line 68
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 69
    const-string v1, "account"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/accounts/Account;

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    .line 71
    :cond_0
    const-string v1, "account_label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "account_label"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountLabel:Ljava/lang/String;

    .line 74
    :cond_1
    const-string v1, "account_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 75
    const-string v1, "account_type"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    .line 78
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountSynController:Lcom/android/settings/accounts/AccountSyncPreferenceController;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->init(Landroid/accounts/Account;Landroid/os/UserHandle;)V

    .line 79
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mRemoveAccountController:Lcom/android/settings/accounts/RemoveAccountPreferenceController;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->init(Landroid/accounts/Account;Landroid/os/UserHandle;)V

    .line 80
    return-void
.end method

.method updateUi()V
    .locals 4

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 142
    nop

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 144
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, "user_handle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 145
    const-string v3, "user_handle"

    invoke-virtual {v1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/os/UserHandle;

    goto :goto_0

    .line 147
    :cond_0
    move-object v1, v2

    :goto_0
    new-instance v3, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-direct {v3, v0, v1, v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    .line 148
    new-instance v0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;

    invoke-direct {v0, p0, v3, v1}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;-><init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    .line 150
    invoke-virtual {v0, v1, v2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 152
    if-eqz v1, :cond_1

    .line 153
    iget-object v2, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccountType:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 155
    :cond_1
    return-void
.end method
