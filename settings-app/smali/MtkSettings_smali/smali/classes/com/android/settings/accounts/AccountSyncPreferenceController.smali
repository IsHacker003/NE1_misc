.class public Lcom/android/settings/accounts/AccountSyncPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountSyncPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 50
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 84
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 77
    const-string v0, "account_sync"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 59
    const-string v0, "account_sync"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 60
    const/4 p1, 0x0

    return p1

    .line 62
    :cond_0
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string v0, "android.intent.extra.USER"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 65
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/accounts/AccountSyncSettings;

    .line 66
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const/16 v0, 0x8

    .line 68
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f12009e    # @string/account_sync_title 'Account sync'

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 70
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 72
    const/4 p1, 0x1

    return p1
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 98
    iput-object p2, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 99
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 54
    const/4 v0, 0x1

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    .line 93
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 94
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 88
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;)V

    .line 89
    return-void
.end method

.method updateSummary(Landroid/support/v7/preference/Preference;)V
    .locals 11

    .line 103
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    if-nez v0, :cond_0

    .line 104
    return-void

    .line 106
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 107
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v1

    .line 108
    nop

    .line 109
    nop

    .line 110
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    .line 111
    array-length v4, v1

    move v5, v2

    move v6, v5

    move v7, v6

    :goto_0
    if-ge v5, v4, :cond_5

    .line 112
    aget-object v8, v1, v5

    .line 113
    iget-object v9, v8, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v10, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v10, v10, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    invoke-virtual {v8}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 114
    goto :goto_1

    .line 116
    :cond_1
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v10, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 117
    invoke-static {v9, v10, v0}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v9

    .line 118
    if-lez v9, :cond_3

    .line 119
    add-int/lit8 v7, v7, 0x1

    .line 120
    iget-object v9, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-static {v9, v8, v0}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v8

    .line 122
    nop

    .line 123
    invoke-static {v0}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v9

    .line 124
    xor-int/2addr v9, v3

    if-nez v9, :cond_2

    if-eqz v8, :cond_3

    .line 125
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 111
    :cond_3
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 130
    :cond_4
    move v6, v2

    move v7, v6

    :cond_5
    if-nez v6, :cond_6

    .line 131
    const v0, 0x7f12009b    # @string/account_sync_summary_all_off 'Sync off for all items'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 132
    :cond_6
    if-ne v6, v7, :cond_7

    .line 133
    const v0, 0x7f12009c    # @string/account_sync_summary_all_on 'Sync on for all items'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 135
    :cond_7
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12009d    # @string/account_sync_summary_some_on 'Sync on for %1$d of %2$d items'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 136
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    invoke-virtual {v0, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :goto_2
    return-void
.end method
