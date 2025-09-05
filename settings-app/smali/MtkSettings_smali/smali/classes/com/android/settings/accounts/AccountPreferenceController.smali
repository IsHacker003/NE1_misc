.class public Lcom/android/settings/accounts/AccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "AccountPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;,
        Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;
    }
.end annotation


# instance fields
.field private mAccountProfileOrder:I

.field private mAuthorities:[Ljava/lang/String;

.field private mAuthoritiesCount:I

.field private mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

.field private mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

.field private mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private mParent:Lcom/android/settings/SettingsPreferenceFragment;

.field private mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

.field private mProfiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;",
            ">;"
        }
    .end annotation
.end field

.field private mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;)V
    .locals 1

    .line 133
    new-instance v0, Lcom/android/settings/accounts/AccountRestrictionHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/accounts/AccountRestrictionHelper;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/accounts/AccountPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;)V

    .line 134
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;[Ljava/lang/String;Lcom/android/settings/accounts/AccountRestrictionHelper;)V
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 139
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 82
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    .line 83
    new-instance v0, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;Lcom/android/settings/accounts/AccountPreferenceController$1;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    .line 87
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    .line 89
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    .line 140
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    .line 141
    iput-object p3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    .line 142
    iput-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 143
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    if-eqz p1, :cond_0

    .line 144
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    array-length p1, p1

    iput p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 148
    iput-object p4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    .line 149
    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->stopListeningToAccountUpdates()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accounts/AccountPreferenceController;)V
    .locals 0

    .line 70
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->listenToAccountUpdates()V

    return-void
.end method

.method private accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z
    .locals 3

    .line 547
    iget v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 549
    return v1

    .line 551
    :cond_0
    invoke-virtual {p1, p2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    .line 553
    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 554
    const-string p1, "AccountPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No sync authorities for account type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    return v0

    .line 557
    :cond_1
    move p2, v0

    :goto_0
    iget v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthoritiesCount:I

    if-ge p2, v2, :cond_3

    .line 558
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    aget-object v2, v2, p2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 559
    return v1

    .line 557
    :cond_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 562
    :cond_3
    return v0
.end method

.method private getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settingslib/accounts/AuthenticatorHelper;",
            "Landroid/os/UserHandle;",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/accounts/AccountTypePreference;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    .line 479
    invoke-virtual/range {p1 .. p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v3

    .line 480
    new-instance v4, Ljava/util/ArrayList;

    array-length v5, v3

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 483
    const/4 v6, 0x0

    :goto_0
    array-length v7, v3

    if-ge v6, v7, :cond_5

    .line 484
    aget-object v7, v3, v6

    .line 486
    invoke-direct {v0, v1, v7}, Lcom/android/settings/accounts/AccountPreferenceController;->accountTypeHasAnyRequestedAuthorities(Lcom/android/settingslib/accounts/AuthenticatorHelper;Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 487
    nop

    .line 483
    :goto_1
    move-object/from16 v22, v3

    goto/16 :goto_5

    .line 489
    :cond_0
    iget-object v8, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v8, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 490
    if-nez v8, :cond_1

    .line 491
    goto :goto_1

    .line 493
    :cond_1
    invoke-virtual {v1, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getPackageForType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 494
    invoke-virtual {v1, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelIdForType(Ljava/lang/String;)I

    move-result v15

    .line 496
    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v9}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    move-result-object v9

    .line 497
    invoke-virtual {v9, v7, v2}, Landroid/accounts/AccountManager;->getAccountsByTypeAsUser(Ljava/lang/String;Landroid/os/UserHandle;)[Landroid/accounts/Account;

    move-result-object v14

    .line 498
    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v9, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getDrawableForType(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v20

    .line 499
    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v9}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v9

    invoke-virtual {v9}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v21

    .line 502
    array-length v13, v14

    const/4 v12, 0x0

    :goto_2
    if-ge v12, v13, :cond_4

    aget-object v11, v14, v12

    .line 503
    nop

    .line 504
    invoke-static {v11}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p3

    invoke-virtual {v10, v9}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/accounts/AccountTypePreference;

    .line 505
    if-eqz v9, :cond_2

    .line 506
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 507
    nop

    .line 502
    :goto_3
    move-object/from16 v22, v3

    move v2, v12

    move/from16 v23, v13

    move-object/from16 v24, v14

    move/from16 v25, v15

    goto :goto_4

    .line 509
    :cond_2
    iget-object v9, v11, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 510
    invoke-virtual {v1, v9}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAuthoritiesForAccountType(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v9

    .line 511
    iget-object v5, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    invoke-static {v5, v9}, Lcom/android/settings/accounts/AccountRestrictionHelper;->showAccount([Ljava/lang/String;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 512
    goto :goto_3

    .line 514
    :cond_3
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 515
    const-string v9, "account"

    invoke-virtual {v5, v9, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 517
    const-string v9, "user_handle"

    invoke-virtual {v5, v9, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 519
    const-string v9, "account_type"

    invoke-virtual {v5, v9, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 521
    const-string v9, "account_label"

    .line 522
    move-object/from16 v22, v3

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 521
    invoke-virtual {v5, v9, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 523
    const-string v3, "account_title_res"

    invoke-virtual {v5, v3, v15}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 525
    const-string v3, "android.intent.extra.USER"

    invoke-virtual {v5, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 526
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreference;

    iget-object v9, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 527
    invoke-virtual {v9, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->getMetricsCategory(Ljava/lang/Object;)I

    move-result v2

    const-class v9, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 529
    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v16

    move-object v9, v3

    move-object/from16 v10, v21

    move-object/from16 v17, v11

    move v11, v2

    move v2, v12

    move-object/from16 v12, v17

    move/from16 v23, v13

    move-object/from16 v13, v19

    move-object/from16 v24, v14

    move v14, v15

    move/from16 v25, v15

    move-object v15, v8

    move-object/from16 v17, v5

    move-object/from16 v18, v20

    invoke-direct/range {v9 .. v18}, Lcom/android/settings/accounts/AccountTypePreference;-><init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V

    .line 526
    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    :goto_4
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v3, v22

    move/from16 v13, v23

    move-object/from16 v14, v24

    move/from16 v15, v25

    move-object/from16 v2, p2

    goto/16 :goto_2

    .line 531
    :cond_4
    move-object/from16 v22, v3

    iget-object v2, v0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->preloadDrawableForType(Landroid/content/Context;Ljava/lang/String;)V

    .line 483
    :goto_5
    add-int/lit8 v6, v6, 0x1

    move-object/from16 v3, v22

    move-object/from16 v2, p2

    goto/16 :goto_0

    .line 534
    :cond_5
    new-instance v1, Lcom/android/settings/accounts/AccountPreferenceController$1;

    invoke-direct {v1, v0}, Lcom/android/settings/accounts/AccountPreferenceController$1;-><init>(Lcom/android/settings/accounts/AccountPreferenceController;)V

    invoke-static {v4, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 542
    return-object v4
.end method

.method private getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;
    .locals 3

    .line 381
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 382
    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 383
    if-nez p1, :cond_0

    .line 384
    const/4 p1, 0x0

    return-object p1

    .line 386
    :cond_0
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 387
    iget-object p2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1208ad    # @string/managing_admin 'Managed by %s'

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private isSingleProfile()Z
    .locals 3

    .line 566
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    nop

    :cond_1
    :goto_0
    return v1
.end method

.method private listenToAccountUpdates()V
    .locals 3

    .line 406
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 407
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 408
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 409
    if-eqz v2, :cond_0

    .line 410
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->listenToAccountUpdates()V

    .line 407
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 413
    :cond_1
    return-void
.end method

.method private newAddAccountPreference()Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 351
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 352
    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 353
    const v1, 0x7f1200ae    # @string/add_account_label 'Add account'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    .line 354
    const v1, 0x7f08012f    # @drawable/ic_menu_add 'res/drawable/ic_menu_add.xml'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setIcon(I)V

    .line 355
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 356
    const/16 v1, 0x3e8

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 357
    return-object v0
.end method

.method private newManagedProfileSettings()Landroid/support/v7/preference/Preference;
    .locals 2

    .line 372
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 373
    const v1, 0x7f1208ab    # @string/managed_profile_settings_title 'Work profile settings'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 374
    const v1, 0x7f080159    # @drawable/ic_settings_24dp 'res/drawable/ic_settings_24dp.xml'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 375
    invoke-virtual {v0, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 376
    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 377
    return-object v0
.end method

.method private newRemoveWorkProfilePreference()Lcom/android/settingslib/RestrictedPreference;
    .locals 2

    .line 361
    new-instance v0, Lcom/android/settingslib/RestrictedPreference;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 362
    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 363
    const v1, 0x7f120b20    # @string/remove_managed_profile_label 'Remove work profile'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    .line 364
    const v1, 0x7f0800ee    # @drawable/ic_delete 'res/drawable/ic_delete.xml'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setIcon(I)V

    .line 365
    invoke-virtual {v0, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 366
    const/16 v1, 0x3ea

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 367
    return-object v0
.end method

.method private stopListeningToAccountUpdates()V
    .locals 3

    .line 416
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 417
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 418
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 419
    if-eqz v2, :cond_0

    .line 420
    invoke-virtual {v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->stopListeningToAccountUpdates()V

    .line 417
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 423
    :cond_1
    return-void
.end method

.method private updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V
    .locals 7

    .line 426
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 427
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 431
    :cond_0
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 432
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-direct {v0, v2}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 434
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v3, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 435
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    .line 434
    invoke-direct {p0, v2, v3, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->getAccountTypePreferences(Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;Landroid/util/ArrayMap;)Ljava/util/ArrayList;

    move-result-object v2

    .line 437
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 438
    :goto_0
    if-ge v1, v3, :cond_2

    .line 439
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/accounts/AccountTypePreference;

    .line 440
    invoke-virtual {v4, v1}, Lcom/android/settings/accounts/AccountTypePreference;->setOrder(I)V

    .line 441
    invoke-virtual {v4}, Lcom/android/settings/accounts/AccountTypePreference;->getKey()Ljava/lang/String;

    move-result-object v5

    .line 442
    iget-object v6, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 443
    iget-object v6, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v4}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 444
    iget-object v6, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v6, v5, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 438
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 447
    :cond_2
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v1, :cond_3

    .line 448
    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 450
    :cond_3
    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 451
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v3, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    .line 452
    invoke-virtual {v3, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/Preference;

    .line 451
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 453
    iget-object v2, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->accountPreferences:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    goto :goto_1

    .line 455
    :cond_4
    goto :goto_2

    .line 456
    :cond_5
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 458
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_6

    .line 459
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 460
    invoke-virtual {v2}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    .line 462
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 463
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f0800a5    # @drawable/empty_icon 'res/drawable/empty_icon.xml'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 464
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1208aa    # @string/managed_profile_not_available_label 'Work profile isn’t available yet'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 467
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfileNotAvailablePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 469
    :goto_2
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_7

    .line 470
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object v1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 472
    :cond_7
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_8

    .line 473
    iget-object v0, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    iget-object p1, p1, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 475
    :cond_8
    return-void

    .line 429
    :cond_9
    :goto_3
    return-void
.end method

.method private updateProfileUi(Landroid/content/pm/UserInfo;)V
    .locals 8

    .line 296
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 297
    return-void

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget v1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 300
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 301
    iput-boolean v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    .line 302
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 304
    new-instance v1, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 305
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    invoke-direct {v1, v2, p1, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 307
    :cond_1
    return-void

    .line 309
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    .line 310
    new-instance v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {v2}, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;-><init>()V

    .line 311
    iput-object p1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    .line 312
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 313
    invoke-virtual {v4}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/accounts/AccountRestrictionHelper;->createAccessiblePreferenceCategory(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;

    move-result-object v3

    .line 314
    iget v4, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAccountProfileOrder:I

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setOrder(I)V

    .line 315
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isSingleProfile()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_3

    .line 316
    const v4, 0x7f120094    # @string/account_for_section_header 'Accounts for %1$s'

    new-array v5, v5, [Ljava/lang/Object;

    .line 317
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v6

    iget-object v7, p1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v1

    .line 316
    invoke-virtual {v0, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120095    # @string/account_settings 'Accounts'

    .line 319
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    goto :goto_0

    .line 320
    :cond_3
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 321
    const v4, 0x7f12038d    # @string/category_work 'Work'

    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setTitle(I)V

    .line 322
    invoke-direct {p0, v0, p1}, Lcom/android/settings/accounts/AccountPreferenceController;->getWorkGroupSummary(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object v4

    .line 323
    invoke-virtual {v3, v4}, Lcom/android/settings/AccessiblePreferenceCategory;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    iget-object v6, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f120042    # @string/accessibility_category_work 'Work profile accounts - %s'

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v4, v5, v1

    .line 325
    invoke-virtual {v6, v7, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 324
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 326
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newRemoveWorkProfilePreference()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    .line 327
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v4, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v5, "no_remove_managed_profile"

    .line 328
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    .line 327
    invoke-virtual {v1, v4, v5, v6}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 329
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newManagedProfileSettings()Landroid/support/v7/preference/Preference;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    .line 330
    goto :goto_0

    .line 331
    :cond_4
    const v1, 0x7f12038c    # @string/category_personal 'Personal'

    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setTitle(I)V

    .line 332
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    const v4, 0x7f120041    # @string/accessibility_category_personal 'Personal profile accounts'

    .line 333
    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 332
    invoke-virtual {v3, v1}, Lcom/android/settings/AccessiblePreferenceCategory;->setContentDescription(Ljava/lang/String;)V

    .line 335
    :goto_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 336
    if-eqz v1, :cond_5

    .line 337
    invoke-virtual {v1, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 339
    :cond_5
    iput-object v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 340
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 341
    new-instance v1, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 342
    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v3

    invoke-direct {v1, v0, v3, p0}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    iput-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->authenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 343
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->newAddAccountPreference()Lcom/android/settingslib/RestrictedPreference;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 344
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mHelper:Lcom/android/settings/accounts/AccountRestrictionHelper;

    iget-object v1, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    const-string v3, "no_modify_accounts"

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v1, v3, v4}, Lcom/android/settings/accounts/AccountRestrictionHelper;->enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V

    .line 347
    :cond_6
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 348
    return-void
.end method

.method private updateUi()V
    .locals 5

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 266
    const-string v0, "AccountPrefController"

    const-string v1, "We should not be showing settings for a managed profile"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void

    .line 270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 271
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    .line 270
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isRestrictedProfile()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 275
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 276
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    .line 277
    goto :goto_2

    .line 278
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 279
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 280
    move v3, v1

    :goto_1
    if-ge v3, v2, :cond_3

    .line 281
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/UserInfo;

    invoke-direct {p0, v4}, Lcom/android/settings/accounts/AccountPreferenceController;->updateProfileUi(Landroid/content/pm/UserInfo;)V

    .line 280
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 284
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->cleanUpPreferences()V

    .line 289
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 290
    :goto_3
    if-ge v1, v0, :cond_4

    .line 291
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    invoke-direct {p0, v2}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    .line 290
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 293
    :cond_4
    return-void
.end method


# virtual methods
.method cleanUpPreferences()V
    .locals 4

    .line 391
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 392
    if-nez v0, :cond_0

    .line 393
    return-void

    .line 395
    :cond_0
    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 396
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 397
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 398
    iget-boolean v3, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->pendingRemoval:Z

    if-eqz v3, :cond_1

    .line 399
    iget-object v2, v2, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->preferenceGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 400
    iget-object v2, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v2, v1}, Landroid/util/SparseArray;->removeAt(I)V

    .line 396
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 403
    :cond_2
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    .line 165
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 158
    const/4 v0, 0x0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onAccountsUpdate(Landroid/os/UserHandle;)V
    .locals 3

    .line 220
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 221
    if-eqz v0, :cond_0

    .line 222
    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateAccountTypes(Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;)V

    goto :goto_0

    .line 224
    :cond_0
    const-string v0, "AccountPrefController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Missing Settings screen for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 214
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->stopListeningToAccountUpdates()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->unregister(Landroid/content/Context;)V

    .line 216
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 6

    .line 231
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 232
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 233
    iget-object v3, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mProfiles:Landroid/util/SparseArray;

    invoke-virtual {v3, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;

    .line 234
    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->addAccountPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v5, 0x1

    if-ne p1, v4, :cond_0

    .line 235
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.settings.ADD_ACCOUNT_SETTINGS"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 236
    const-string v0, "android.intent.extra.USER"

    iget-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 237
    const-string v0, "authorities"

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mAuthorities:[Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 238
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 239
    return v5

    .line 241
    :cond_0
    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->removeWorkProfilePreference:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v4, :cond_1

    .line 242
    iget-object p1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    .line 243
    invoke-static {p1}, Lcom/android/settings/accounts/RemoveUserFragment;->newInstance(I)Lcom/android/settings/accounts/RemoveUserFragment;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "removeUser"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/accounts/RemoveUserFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 245
    return v5

    .line 247
    :cond_1
    iget-object v4, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->managedProfilePreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v4, :cond_2

    .line 248
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string v0, "android.intent.extra.USER"

    iget-object v1, v3, Lcom/android/settings/accounts/AccountPreferenceController$ProfileData;->userInfo:Landroid/content/pm/UserInfo;

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->getUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 250
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mParent:Lcom/android/settings/SettingsPreferenceFragment;

    .line 251
    invoke-virtual {v1}, Lcom/android/settings/SettingsPreferenceFragment;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/accounts/ManagedProfileSettings;

    .line 252
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f1208ab    # @string/managed_profile_settings_title 'Work profile settings'

    .line 253
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 254
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 255
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 257
    return v5

    .line 232
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 260
    :cond_3
    return v1
.end method

.method public onResume()V
    .locals 2

    .line 207
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->updateUi()V

    .line 208
    iget-object v0, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mManagedProfileBroadcastReceiver:Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/accounts/AccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settings/accounts/AccountPreferenceController$ManagedProfileBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 209
    invoke-direct {p0}, Lcom/android/settings/accounts/AccountPreferenceController;->listenToAccountUpdates()V

    .line 210
    return-void
.end method
