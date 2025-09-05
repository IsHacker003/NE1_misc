.class public Lcom/android/settings/accounts/AccountSyncSettings;
.super Lcom/android/settings/accounts/AccountPreferenceBase;
.source "AccountSyncSettings.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mErrorInfoView:Landroid/widget/TextView;

.field private mInvisibleAdapters:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/SyncAdapterType;",
            ">;"
        }
    .end annotation
.end field

.field private mProviderIcon:Landroid/widget/ImageView;

.field private mProviderId:Landroid/widget/TextView;

.field private mUserId:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;-><init>()V

    .line 72
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    return-void
.end method

.method private accountExists(Landroid/accounts/Account;)Z
    .locals 5

    .line 499
    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 501
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v1

    iget-object v2, p1, Landroid/accounts/Account;->type:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, v3}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v1

    .line 503
    array-length v2, v1

    .line 504
    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 505
    aget-object v4, v1, v3

    invoke-virtual {v4, p1}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 506
    const/4 p1, 0x1

    return p1

    .line 504
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    :cond_2
    return v0
.end method

.method private addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 7

    .line 189
    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/AccountSyncSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 190
    if-nez v0, :cond_0

    .line 191
    new-instance v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    move-object v1, v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/accounts/SyncStateSwitchPreference;-><init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_0

    .line 195
    :cond_0
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 197
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 198
    const/4 p3, 0x0

    invoke-virtual {v0, p3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setPersistent(Z)V

    .line 199
    iget-object p4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 200
    invoke-virtual {p4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p4

    .line 199
    invoke-virtual {p1, p2, p3, p4}, Landroid/content/pm/PackageManager;->resolveContentProviderAsUser(Ljava/lang/String;II)Landroid/content/pm/ProviderInfo;

    move-result-object p3

    .line 201
    if-nez p3, :cond_1

    .line 202
    return-void

    .line 204
    :cond_1
    invoke-virtual {p3, p1}, Landroid/content/pm/ProviderInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 205
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 206
    const-string p1, "AccountPreferenceBase"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Provider needs a label for authority \'"

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "\'"

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    return-void

    .line 209
    :cond_2
    invoke-virtual {v0, p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 210
    invoke-virtual {v0, p2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setKey(Ljava/lang/String;)V

    .line 211
    return-void
.end method

.method private cancelSyncForEnabledProviders()V
    .locals 1

    .line 359
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 361
    if-eqz v0, :cond_0

    .line 362
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 364
    :cond_0
    return-void
.end method

.method private isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/SyncInfo;",
            ">;",
            "Landroid/accounts/Account;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 400
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/SyncInfo;

    .line 401
    iget-object v1, v0, Landroid/content/SyncInfo;->account:Landroid/accounts/Account;

    invoke-virtual {v1, p2}, Landroid/accounts/Account;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v0, v0, Landroid/content/SyncInfo;->authority:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    const/4 p1, 0x1

    return p1

    .line 404
    :cond_0
    goto :goto_0

    .line 405
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private requestAccountAccessIfNeeded(Ljava/lang/String;)Z
    .locals 11

    .line 321
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 322
    return v0

    .line 327
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 328
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 327
    invoke-virtual {v1, p1, v2}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v5
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    nop

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const-class v2, Landroid/accounts/AccountManager;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accounts/AccountManager;

    .line 335
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, v3}, Landroid/accounts/AccountManager;->hasAccountAccess(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 336
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1, v2, p1, v3}, Landroid/accounts/AccountManager;->createRequestAccountAccessIntentSenderAsUser(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/content/IntentSender;

    move-result-object v4

    .line 338
    if-eqz v4, :cond_1

    .line 340
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v3, p0

    :try_start_1
    invoke-virtual/range {v3 .. v10}, Lcom/android/settings/accounts/AccountSyncSettings;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;IIILandroid/os/Bundle;)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_0

    .line 341
    const/4 p1, 0x1

    return p1

    .line 342
    :catch_0
    move-exception p1

    .line 343
    const-string v1, "AccountPreferenceBase"

    const-string v2, "Error requesting account access"

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 347
    :cond_1
    return v0

    .line 329
    :catch_1
    move-exception p1

    .line 330
    const-string v1, "AccountPreferenceBase"

    const-string v2, "Invalid sync "

    invoke-static {v1, v2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 331
    return v0
.end method

.method private requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V
    .locals 2

    .line 389
    if-eqz p3, :cond_0

    .line 390
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 391
    const-string v0, "force"

    const/4 v1, 0x1

    invoke-virtual {p3, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {p1, p2, v0, p3}, Landroid/content/ContentResolver;->requestSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;ILandroid/os/Bundle;)V

    .line 394
    goto :goto_0

    .line 395
    :cond_0
    iget-object p3, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {p3}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p3

    invoke-static {p1, p2, p3}, Landroid/content/ContentResolver;->cancelSyncAsUser(Landroid/accounts/Account;Ljava/lang/String;I)V

    .line 397
    :goto_0
    return-void
.end method

.method private requestOrCancelSyncForEnabledProviders(Z)V
    .locals 4

    .line 368
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 369
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 370
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 371
    instance-of v3, v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v3, :cond_0

    .line 372
    goto :goto_1

    .line 374
    :cond_0
    check-cast v2, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 375
    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result v3

    if-nez v3, :cond_1

    .line 376
    goto :goto_1

    .line 378
    :cond_1
    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v3

    invoke-virtual {v2}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v2, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 369
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 381
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_3

    .line 382
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/SyncAdapterType;

    .line 383
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-direct {p0, v2, v1, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 384
    goto :goto_2

    .line 386
    :cond_3
    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 4

    .line 161
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 162
    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 163
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    goto :goto_0

    .line 164
    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 165
    nop

    .line 166
    if-eqz v0, :cond_1

    .line 167
    const v0, 0x7f12008f    # @string/accessibility_work_account_title 'Work account - %s'

    goto :goto_1

    .line 168
    :cond_1
    const v0, 0x7f12005c    # @string/accessibility_personal_account_title 'Personal account - %s'

    :goto_1
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v2, v3, v1

    .line 166
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v2, v0}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 170
    return-void
.end method

.method private setFeedsState()V
    .locals 22

    .line 420
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    .line 421
    iget-object v2, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 422
    invoke-static {v2}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v3

    .line 423
    nop

    .line 426
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 428
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    const/4 v6, 0x0

    const/4 v7, 0x0

    :goto_0
    if-ge v6, v4, :cond_10

    .line 429
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v6}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v8

    .line 430
    instance-of v9, v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-nez v9, :cond_0

    .line 431
    nop

    .line 428
    move-object/from16 v21, v1

    move-object/from16 v19, v3

    move/from16 v20, v4

    move/from16 v18, v6

    const/4 v11, 0x0

    goto/16 :goto_b

    .line 433
    :cond_0
    check-cast v8, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 435
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v9

    .line 436
    invoke-virtual {v8}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v10

    .line 438
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncStatusAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Landroid/content/SyncStatusInfo;

    move-result-object v11

    .line 439
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v12

    .line 441
    if-nez v11, :cond_1

    .line 442
    const/4 v13, 0x0

    goto :goto_1

    .line 441
    :cond_1
    iget-boolean v13, v11, Landroid/content/SyncStatusInfo;->pending:Z

    .line 442
    :goto_1
    if-nez v11, :cond_2

    .line 444
    const/4 v14, 0x0

    goto :goto_2

    .line 442
    :cond_2
    iget-boolean v14, v11, Landroid/content/SyncStatusInfo;->initialize:Z

    .line 444
    :goto_2
    invoke-direct {v0, v3, v10, v9}, Lcom/android/settings/accounts/AccountSyncSettings;->isSyncing(Ljava/util/List;Landroid/accounts/Account;Ljava/lang/String;)Z

    move-result v15

    .line 445
    const-wide/16 v16, 0x0

    if-eqz v11, :cond_3

    move/from16 v18, v6

    iget-wide v5, v11, Landroid/content/SyncStatusInfo;->lastFailureTime:J

    cmp-long v5, v5, v16

    if-eqz v5, :cond_4

    .line 447
    const/4 v5, 0x0

    invoke-virtual {v11, v5}, Landroid/content/SyncStatusInfo;->getLastFailureMesgAsInt(I)I

    move-result v6

    const/4 v5, 0x1

    if-eq v6, v5, :cond_4

    .line 449
    const/4 v5, 0x1

    goto :goto_3

    .line 447
    :cond_3
    move/from16 v18, v6

    .line 449
    :cond_4
    const/4 v5, 0x0

    :goto_3
    if-nez v12, :cond_5

    .line 450
    const/4 v5, 0x0

    :cond_5
    if-eqz v5, :cond_6

    if-nez v15, :cond_6

    if-nez v13, :cond_6

    .line 451
    nop

    .line 453
    const/4 v7, 0x1

    :cond_6
    const-string v6, "AccountPreferenceBase"

    move-object/from16 v19, v3

    const/4 v3, 0x3

    invoke-static {v6, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 454
    const-string v3, "AccountPreferenceBase"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v20, v4

    const-string v4, "Update sync status: "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " active = "

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " pend ="

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 458
    :cond_7
    move/from16 v20, v4

    :goto_4
    if-nez v11, :cond_8

    .line 459
    move-wide/from16 v3, v16

    goto :goto_5

    .line 458
    :cond_8
    iget-wide v3, v11, Landroid/content/SyncStatusInfo;->lastSuccessTime:J

    .line 459
    :goto_5
    if-nez v12, :cond_9

    .line 460
    const v3, 0x7f120dbd    # @string/sync_disabled 'Sync is OFF'

    invoke-virtual {v8, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    .line 470
    :goto_6
    move-object/from16 v21, v1

    const/4 v11, 0x0

    goto :goto_7

    .line 461
    :cond_9
    if-eqz v15, :cond_a

    .line 462
    const v3, 0x7f120dc2    # @string/sync_in_progress 'Syncing now…'

    invoke-virtual {v8, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(I)V

    goto :goto_6

    .line 463
    :cond_a
    cmp-long v6, v3, v16

    if-eqz v6, :cond_b

    .line 464
    invoke-virtual {v1, v3, v4}, Ljava/util/Date;->setTime(J)V

    .line 465
    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->formatSyncDate(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    .line 466
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v6, 0x7f1207d1    # @string/last_synced 'Last synced %1$s'

    move-object/from16 v21, v1

    const/4 v11, 0x1

    new-array v1, v11, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v3, v1, v11

    invoke-virtual {v4, v6, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 467
    goto :goto_7

    .line 468
    :cond_b
    move-object/from16 v21, v1

    const/4 v11, 0x0

    const-string v1, ""

    invoke-virtual {v8, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 470
    :goto_7
    invoke-static {v10, v9, v2}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v1

    .line 472
    if-eqz v15, :cond_c

    if-ltz v1, :cond_c

    if-nez v14, :cond_c

    const/4 v3, 0x1

    goto :goto_8

    :cond_c
    move v3, v11

    :goto_8
    invoke-virtual {v8, v3}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setActive(Z)V

    .line 474
    if-eqz v13, :cond_d

    if-ltz v1, :cond_d

    if-nez v14, :cond_d

    const/4 v1, 0x1

    goto :goto_9

    :cond_d
    move v1, v11

    :goto_9
    invoke-virtual {v8, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setPending(Z)V

    .line 477
    invoke-virtual {v8, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setFailed(Z)V

    .line 478
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v1

    .line 480
    const/4 v5, 0x1

    xor-int/2addr v1, v5

    invoke-virtual {v8, v1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setOneTimeSyncMode(Z)V

    .line 481
    if-nez v1, :cond_f

    if-eqz v12, :cond_e

    goto :goto_a

    :cond_e
    move v5, v11

    nop

    :cond_f
    :goto_a
    invoke-virtual {v8, v5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setChecked(Z)V

    .line 428
    :goto_b
    add-int/lit8 v6, v18, 0x1

    move-object/from16 v3, v19

    move/from16 v4, v20

    move-object/from16 v1, v21

    goto/16 :goto_0

    .line 483
    :cond_10
    const/4 v11, 0x0

    iget-object v0, v0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    if-eqz v7, :cond_11

    move v5, v11

    goto :goto_c

    :cond_11
    const/16 v5, 0x8

    :goto_c
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 484
    return-void
.end method

.method private startSyncForEnabledProviders()V
    .locals 1

    .line 351
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSyncForEnabledProviders(Z)V

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 353
    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 356
    :cond_0
    return-void
.end method

.method private updateAccountSwitches()V
    .locals 9

    .line 513
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 515
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 516
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 515
    invoke-static {v0}, Landroid/content/ContentResolver;->getSyncAdapterTypesAsUser(I)[Landroid/content/SyncAdapterType;

    move-result-object v0

    .line 517
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 518
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x3

    if-ge v4, v2, :cond_3

    .line 519
    aget-object v6, v0, v4

    .line 521
    iget-object v7, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    iget-object v8, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v8, v8, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    goto :goto_1

    .line 522
    :cond_0
    invoke-virtual {v6}, Landroid/content/SyncAdapterType;->isUserVisible()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 523
    const-string v7, "AccountPreferenceBase"

    invoke-static {v7, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 524
    const-string v5, "AccountPreferenceBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateAccountSwitches: added authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " to accountType "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v6, Landroid/content/SyncAdapterType;->accountType:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :cond_1
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 531
    :cond_2
    iget-object v5, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mInvisibleAdapters:Ljava/util/ArrayList;

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 518
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 535
    :cond_3
    const-string v0, "AccountPreferenceBase"

    invoke-static {v0, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 536
    const-string v0, "AccountPreferenceBase"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "looking for sync adapters that match account "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 539
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_2
    if-ge v3, v0, :cond_7

    .line 540
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/SyncAdapterType;

    .line 542
    iget-object v4, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v6, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 543
    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 542
    invoke-static {v4, v6, v7}, Landroid/content/ContentResolver;->getIsSyncableAsUser(Landroid/accounts/Account;Ljava/lang/String;I)I

    move-result v4

    .line 544
    const-string v6, "AccountPreferenceBase"

    invoke-static {v6, v5}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 545
    const-string v6, "AccountPreferenceBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  found authority "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    :cond_5
    if-lez v4, :cond_6

    .line 550
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 551
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    .line 550
    invoke-virtual {v4, v6, v7}, Landroid/content/pm/PackageManager;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v4

    .line 552
    iget-object v6, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v7, v2, Landroid/content/SyncAdapterType;->authority:Ljava/lang/String;

    .line 553
    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v8

    .line 552
    invoke-direct {p0, v6, v7, v8, v4}, Lcom/android/settings/accounts/AccountSyncSettings;->addSyncStateSwitch(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 556
    goto :goto_3

    .line 554
    :catch_0
    move-exception v4

    .line 555
    const-string v6, "AccountPreferenceBase"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No uid for package"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Landroid/content/SyncAdapterType;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 539
    :cond_6
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 559
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 560
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 1

    .line 94
    const/16 v0, 0x66

    if-eq p1, v0, :cond_0

    .line 98
    const/4 p1, 0x0

    return p1

    .line 96
    :cond_0
    const/16 p1, 0x24b

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 576
    const v0, 0x7f1206f0    # @string/help_url_accounts ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 89
    const/16 v0, 0x9

    return v0
.end method

.method protected initializeUi(Landroid/view/View;)V
    .locals 2

    .line 129
    const v0, 0x7f0a0375    # @id/sync_settings_error_info

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    .line 130
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mErrorInfoView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 132
    const v0, 0x7f0a03c0    # @id/user_id

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    .line 133
    const v0, 0x7f0a028e    # @id/provider_id

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    .line 134
    const v0, 0x7f0a028d    # @id/provider_icon

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    .line 135
    return-void
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 0

    .line 488
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 489
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 492
    return-void

    .line 494
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAccountSwitches()V

    .line 495
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->onSyncStateUpdated()V

    .line 496
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 139
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 142
    if-nez p1, :cond_0

    .line 143
    const-string p1, "AccountPreferenceBase"

    const-string v0, "No arguments provided when starting intent. ACCOUNT_KEY needed."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 145
    return-void

    .line 147
    :cond_0
    const-string v0, "account"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/accounts/Account;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    .line 148
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-direct {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->accountExists(Landroid/accounts/Account;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 149
    const-string p1, "AccountPreferenceBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Account provided does not exist: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->finish()V

    .line 151
    return-void

    .line 153
    :cond_1
    const-string p1, "AccountPreferenceBase"

    const/4 v0, 0x2

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 154
    const-string p1, "AccountPreferenceBase"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Got account: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    :cond_2
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 158
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 255
    const/4 p3, -0x1

    if-ne p2, p3, :cond_1

    .line 256
    nop

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p2

    .line 258
    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    .line 259
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 260
    instance-of v1, v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v1, :cond_0

    .line 261
    check-cast v0, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 262
    invoke-virtual {v0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getUid()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 263
    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 264
    return-void

    .line 258
    :cond_0
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 269
    :cond_1
    return-void
.end method

.method protected onAuthDescriptionsUpdated()V
    .locals 2

    .line 567
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onAuthDescriptionsUpdated()V

    .line 568
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    if-eqz v0, :cond_0

    .line 569
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getDrawableForType(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mProviderId:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAccount:Landroid/accounts/Account;

    iget-object v1, v1, Landroid/accounts/Account;->type:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->getLabelForType(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 572
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreate(Landroid/os/Bundle;)V

    .line 105
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 106
    const p1, 0x7f15000b    # @xml/account_sync_settings 'res/xml/account_sync_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->addPreferencesFromResource(I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 108
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setAccessibilityTitle()V

    .line 110
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->setHasOptionsMenu(Z)V

    .line 111
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 76
    nop

    .line 77
    const/4 v0, 0x0

    const/16 v1, 0x66

    if-ne p1, v1, :cond_0

    .line 78
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120363    # @string/cant_sync_dialog_title 'Can’t manually sync'

    .line 79
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x7f120362    # @string/cant_sync_dialog_message 'Sync for this item is currently disabled. To change this setting, temporarily turn on background dat ...'

    .line 80
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v1, 0x104000a    # @android:string/ok

    .line 81
    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 82
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 84
    :cond_0
    return-object v0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .line 215
    nop

    .line 216
    const v0, 0x7f120dc5    # @string/sync_menu_sync_now 'Sync now'

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 215
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p1, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 217
    const v2, 0x7f080133    # @drawable/ic_menu_refresh_holo_dark 'res/drawable-xhdpi/ic_menu_refresh_holo_dark.png'

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 218
    nop

    .line 219
    const v2, 0x7f120dc4    # @string/sync_menu_sync_cancel 'Cancel sync'

    invoke-virtual {p0, v2}, Lcom/android/settings/accounts/AccountSyncSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 218
    const/4 v3, 0x2

    invoke-interface {p1, v1, v3, v1, v2}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    .line 220
    const v2, 0x1080038    # @android:drawable/ic_menu_close_clear_cancel

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v1

    .line 222
    const/4 v2, 0x4

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 224
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 227
    invoke-super {p0, p1, p2}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 228
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 116
    const/4 v0, 0x0

    const v1, 0x7f0d0028    # @layout/account_sync_screen 'res/layout/account_sync_screen.xml'

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 118
    const v2, 0x7f0a026e    # @id/prefs_container

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 119
    invoke-static {p2, v1, v2, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 120
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/accounts/AccountPreferenceBase;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 121
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 123
    invoke-virtual {p0, v1}, Lcom/android/settings/accounts/AccountSyncSettings;->initializeUi(Landroid/view/View;)V

    .line 125
    return-object v1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 242
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 250
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 247
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->cancelSyncForEnabledProviders()V

    .line 248
    return v1

    .line 244
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->startSyncForEnabledProviders()V

    .line 245
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .line 183
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPause()V

    .line 184
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 185
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    .line 273
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 274
    const/4 p1, 0x0

    return p1

    .line 276
    :cond_0
    instance-of v0, p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    if-eqz v0, :cond_6

    .line 277
    check-cast p1, Lcom/android/settings/accounts/SyncStateSwitchPreference;

    .line 278
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAuthority()Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getAccount()Landroid/accounts/Account;

    move-result-object v1

    .line 280
    iget-object v2, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 281
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getPackageName()Ljava/lang/String;

    move-result-object v3

    .line 283
    invoke-static {v1, v0, v2}, Landroid/content/ContentResolver;->getSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;I)Z

    move-result v4

    .line 285
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isOneTimeSyncMode()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_2

    .line 289
    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 290
    return v6

    .line 292
    :cond_1
    invoke-direct {p0, v1, v0, v6}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    goto :goto_0

    .line 294
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->isChecked()Z

    move-result p1

    .line 295
    nop

    .line 296
    if-eq p1, v4, :cond_5

    .line 301
    if-eqz p1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/accounts/AccountSyncSettings;->requestAccountAccessIfNeeded(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 302
    return v6

    .line 305
    :cond_3
    invoke-static {v1, v0, p1, v2}, Landroid/content/ContentResolver;->setSyncAutomaticallyAsUser(Landroid/accounts/Account;Ljava/lang/String;ZI)V

    .line 309
    invoke-static {v2}, Landroid/content/ContentResolver;->getMasterSyncAutomaticallyAsUser(I)Z

    move-result v2

    if-eqz v2, :cond_4

    if-nez p1, :cond_5

    .line 310
    :cond_4
    invoke-direct {p0, v1, v0, p1}, Lcom/android/settings/accounts/AccountSyncSettings;->requestOrCancelSync(Landroid/accounts/Account;Ljava/lang/String;Z)V

    .line 314
    :cond_5
    :goto_0
    return v6

    .line 316
    :cond_6
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 3

    .line 232
    invoke-super {p0, p1}, Lcom/android/settings/accounts/AccountPreferenceBase;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 234
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mUserHandle:Landroid/os/UserHandle;

    .line 235
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 234
    invoke-static {v0}, Landroid/content/ContentResolver;->getCurrentSyncsAsUser(I)Ljava/util/List;

    move-result-object v0

    .line 235
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 236
    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    invoke-interface {v2, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 237
    const/4 v1, 0x2

    invoke-interface {p1, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 238
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 174
    const-string v0, "dummy"

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->removePreference(Ljava/lang/String;)Z

    .line 175
    iget-object v0, p0, Lcom/android/settings/accounts/AccountSyncSettings;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->updateAuthDescriptions()V

    .line 177
    invoke-static {}, Landroid/os/Binder;->getCallingUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accounts/AccountSyncSettings;->onAccountsUpdate(Landroid/os/UserHandle;)V

    .line 178
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->onResume()V

    .line 179
    return-void
.end method

.method protected onSyncStateUpdated()V
    .locals 1

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 411
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->setFeedsState()V

    .line 412
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountSyncSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 413
    if-eqz v0, :cond_1

    .line 414
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 416
    :cond_1
    return-void
.end method

.method public bridge synthetic updateAuthDescriptions()V
    .locals 0

    .line 60
    invoke-super {p0}, Lcom/android/settings/accounts/AccountPreferenceBase;->updateAuthDescriptions()V

    return-void
.end method
