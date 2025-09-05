.class public Lcom/android/settings/applications/manageapplications/ManageApplications;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ManageApplications.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$SummaryProvider;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;,
        Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;
    }
.end annotation


# static fields
.field static final DEBUG:Z

.field public static final LIST_TYPES_WITH_INSTANT:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

.field private mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mCurrentPkgName:Ljava/lang/String;

.field private mCurrentUid:I

.field private mEmptyView:Landroid/view/View;

.field private mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

.field private mFilterSpinner:Landroid/widget/Spinner;

.field mInvalidSizeStr:Ljava/lang/CharSequence;

.field private mIsWorkOnly:Z

.field private mListContainer:Landroid/view/View;

.field public mListType:I

.field private mLoadingContainer:Landroid/view/View;

.field private mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

.field private mOptionsMenu:Landroid/view/Menu;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

.field private mRootView:Landroid/view/View;

.field private mShowSystem:Z

.field mSortOrder:I

.field private mSpinnerHeader:Landroid/view/View;

.field private mStorageType:I

.field private mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

.field private mUserManager:Landroid/os/UserManager;

.field private mVolumeUuid:Ljava/lang/String;

.field private mWorkUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 145
    const-string v0, "ManageApplications"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    .line 221
    new-instance v0, Landroid/util/ArraySet;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Integer;

    .line 222
    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 223
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 221
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    .line 1425
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$1;

    invoke-direct {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 141
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 181
    const v0, 0x7f0a031f    # @id/sort_order_alpha

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/widget/Spinner;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/applications/manageapplications/AppFilterItem;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;
    .locals 0

    .line 141
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    return-object p0
.end method

.method static getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;
    .locals 1

    .line 426
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;

    invoke-direct {v0, p2}, Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;-><init>(Ljava/lang/String;)V

    .line 427
    const/4 p2, 0x3

    if-ne p0, p2, :cond_2

    .line 428
    const/4 p0, 0x1

    if-ne p1, p0, :cond_0

    .line 429
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_0

    .line 430
    :cond_0
    if-nez p1, :cond_1

    .line 431
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_0

    .line 433
    :cond_1
    move-object p0, v0

    :goto_0
    return-object p0

    .line 435
    :cond_2
    const/16 p1, 0x9

    if-ne p0, p1, :cond_3

    .line 436
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    .line 437
    :cond_3
    const/16 p1, 0xa

    if-ne p0, p1, :cond_4

    .line 438
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    .line 439
    :cond_4
    const/16 p1, 0xb

    if-ne p0, p1, :cond_5

    .line 440
    new-instance p0, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object p1, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    return-object p0

    .line 443
    :cond_5
    const/4 p0, 0x0

    return-object p0
.end method

.method private startAppInfoFragment(Ljava/lang/Class;I)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I)V"
        }
    .end annotation

    .line 590
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v6

    .line 590
    const/4 v5, 0x1

    move-object v0, p1

    move v1, p2

    move-object v4, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings/applications/AppInfoBase;->startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V

    .line 592
    return-void
.end method

.method private startApplicationDetailsActivity()V
    .locals 3

    .line 541
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 583
    const-class v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const v1, 0x7f120151    # @string/application_info_label 'App info'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    goto/16 :goto_0

    .line 576
    :pswitch_0
    const-class v0, Lcom/android/settings/wifi/ChangeWifiStateDetails;

    const v1, 0x7f12039f    # @string/change_wifi_state_title 'Wi-Fi control'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 578
    goto :goto_0

    .line 573
    :pswitch_1
    const-class v0, Lcom/android/settings/applications/DirectoryAccessDetails;

    const v1, 0x7f120542    # @string/directory_access 'Directory access'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 574
    goto :goto_0

    .line 570
    :pswitch_2
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f120d40    # @string/storage_photos_videos 'Photos & videos'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 571
    goto :goto_0

    .line 567
    :pswitch_3
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f120d3b    # @string/storage_movies_tv 'Movie & TV apps'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 568
    goto :goto_0

    .line 564
    :pswitch_4
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f1206a8    # @string/game_storage_settings 'Games'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 565
    goto :goto_0

    .line 561
    :pswitch_5
    const-class v0, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;

    const v1, 0x7f120757    # @string/install_other_apps 'Install unknown apps'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 562
    goto :goto_0

    .line 558
    :pswitch_6
    const-class v0, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;

    const v1, 0x7f121135    # @string/write_system_settings 'Modify system settings'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 559
    goto :goto_0

    .line 555
    :pswitch_7
    const-class v0, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;

    const v1, 0x7f120a0c    # @string/overlay_settings 'Display over other apps'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 556
    goto :goto_0

    .line 552
    :pswitch_8
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    invoke-static {p0, v0, v2, v1}, Lcom/android/settings/fuelgauge/HighPowerDetail;->show(Landroid/app/Fragment;ILjava/lang/String;I)V

    .line 553
    goto :goto_0

    .line 546
    :pswitch_9
    const-class v0, Lcom/android/settings/applications/UsageAccessDetails;

    const v1, 0x7f120e78    # @string/usage_access 'Usage access'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 547
    goto :goto_0

    .line 549
    :pswitch_a
    const-class v0, Lcom/android/settings/applications/AppStorageSettings;

    const v1, 0x7f120d42    # @string/storage_settings 'Storage'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 550
    goto :goto_0

    .line 543
    :cond_0
    const-class v0, Lcom/android/settings/notification/AppNotificationSettings;

    const v1, 0x7f1209f2    # @string/notifications_title 'Notifications'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startAppInfoFragment(Ljava/lang/Class;I)V

    .line 544
    nop

    .line 587
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method createHeader()V
    .locals 5

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 387
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v2, 0x7f0a0265    # @id/pinned_header

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout;

    .line 388
    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    .line 389
    const/4 v2, 0x0

    const v3, 0x7f0d0036    # @layout/apps_filter_spinner 'res/layout/apps_filter_spinner.xml'

    invoke-virtual {v0, v3, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    .line 390
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    const v3, 0x7f0a0156    # @id/filter_spinner

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    .line 391
    new-instance v0, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    .line 392
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 394
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSpinnerHeader:Landroid/view/View;

    invoke-virtual {v1, v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;I)V

    .line 396
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    .line 397
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 398
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v2, 0x9

    const/4 v3, 0x1

    if-nez v1, :cond_0

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 400
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 401
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 404
    :cond_0
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v1, v3, :cond_1

    .line 405
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v4, 0x6

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 406
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v4, 0x7

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 407
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v4, 0x2

    invoke-virtual {v1, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->disableFilter(I)V

    .line 409
    :cond_1
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v4, 0x5

    if-ne v1, v4, :cond_2

    .line 410
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {v1, v3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->enableFilter(I)V

    .line 413
    :cond_2
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    iget-object v4, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    invoke-static {v1, v3, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getCompositeFilter(IILjava/lang/String;)Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v1

    .line 414
    iget-boolean v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v3, :cond_3

    .line 415
    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    .line 416
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    invoke-direct {v2, v1, v0}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 418
    move-object v1, v2

    :cond_3
    if-eqz v1, :cond_4

    .line 419
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 421
    :cond_4
    return-void
.end method

.method getHelpResource()I
    .locals 2

    .line 619
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v0, :cond_0

    .line 620
    const v0, 0x7f1206dc    # @string/help_uri_apps ''

    return v0

    .line 621
    :cond_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    .line 622
    const v0, 0x7f12071b    # @string/help_url_usage_access ''

    return v0

    .line 624
    :cond_1
    const v0, 0x7f1206e2    # @string/help_uri_notifications ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 2

    .line 448
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 v1, 0xdd

    packed-switch v0, :pswitch_data_0

    .line 479
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 477
    :pswitch_1
    const/16 v0, 0x152

    return v0

    .line 475
    :pswitch_2
    const/16 v0, 0x503

    return v0

    .line 463
    :pswitch_3
    const/16 v0, 0x444

    return v0

    .line 461
    :pswitch_4
    const/16 v0, 0x3a7

    return v0

    .line 459
    :pswitch_5
    const/16 v0, 0x346

    return v0

    .line 473
    :pswitch_6
    const/16 v0, 0x328

    return v0

    .line 471
    :pswitch_7
    return v1

    .line 469
    :pswitch_8
    return v1

    .line 467
    :pswitch_9
    const/16 v0, 0xb8

    return v0

    .line 465
    :pswitch_a
    const/16 v0, 0x5f

    return v0

    .line 454
    :pswitch_b
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 455
    const/16 v0, 0x347

    return v0

    .line 457
    :cond_0
    const/16 v0, 0xb6

    return v0

    .line 452
    :pswitch_c
    const/16 v0, 0x85

    return v0

    .line 450
    :pswitch_d
    const/16 v0, 0x41

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 527
    const/4 p2, 0x1

    if-ne p1, p2, :cond_3

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 528
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne p1, p2, :cond_0

    .line 529
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    goto :goto_1

    .line 530
    :cond_0
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x5

    if-eq p1, p2, :cond_2

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x6

    if-eq p1, p2, :cond_2

    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_1

    goto :goto_0

    .line 534
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/applications/ApplicationsState;->requestSize(Ljava/lang/String;I)V

    goto :goto_1

    .line 532
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    iget p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/applications/AppStateBaseBridge;->forceUpdate(Ljava/lang/String;I)V

    .line 537
    :cond_3
    :goto_1
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 696
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-nez v0, :cond_0

    .line 697
    return-void

    .line 699
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->getChildAdapterPosition(Landroid/view/View;)I

    move-result p1

    .line 701
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    .line 702
    const-string p1, "ManageApplications"

    const-string v0, "Cannot find position for child, skipping onClick handling"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    return-void

    .line 705
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getApplicationCount()I

    move-result v0

    if-le v0, p1, :cond_2

    .line 706
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p1

    .line 707
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentPkgName:Ljava/lang/String;

    .line 708
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    .line 709
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->startApplicationDetailsActivity()V

    .line 710
    goto :goto_0

    .line 711
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$300(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    move-result-object p1

    invoke-interface {p1, p0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->onClick(Landroid/app/Fragment;)V

    .line 713
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 241
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 242
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasOptionsMenu(Z)V

    .line 243
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 244
    invoke-virtual {v1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 246
    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getArguments()Landroid/os/Bundle;

    move-result-object v3

    .line 248
    const-string v4, ":settings:show_fragment_title_resid"

    const v5, 0x7f120151    # @string/application_info_label 'App info'

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 250
    if-eqz v3, :cond_0

    const-string v6, "classname"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    .line 251
    :goto_0
    if-nez v6, :cond_1

    .line 252
    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v6

    .line 254
    :cond_1
    const-class v2, Lcom/android/settings/Settings$StorageUseActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v7, -0x1

    const v8, 0x7f0a0322    # @id/sort_order_size

    const/4 v9, 0x0

    if-eqz v2, :cond_3

    .line 255
    if-eqz v3, :cond_2

    const-string v0, "volumeUuid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 256
    const-string v0, "volumeUuid"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 257
    const-string v0, "storageType"

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    .line 258
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    goto :goto_1

    .line 261
    :cond_2
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 263
    :goto_1
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_2

    .line 264
    :cond_3
    const-class v2, Lcom/android/settings/Settings$UsageAccessSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 265
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 266
    const v4, 0x7f120e78    # @string/usage_access 'Usage access'

    goto/16 :goto_2

    .line 267
    :cond_4
    const-class v2, Lcom/android/settings/Settings$HighPowerApplicationsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 268
    const/4 v2, 0x5

    iput v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 270
    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 271
    const v4, 0x7f120723    # @string/high_power_apps 'Battery optimization'

    goto/16 :goto_2

    .line 272
    :cond_5
    const-class v2, Lcom/android/settings/Settings$OverlaySettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 273
    const/4 v0, 0x6

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 274
    const v4, 0x7f120dca    # @string/system_alert_window_settings 'Display over other apps'

    goto/16 :goto_2

    .line 275
    :cond_6
    const-class v2, Lcom/android/settings/Settings$WriteSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 276
    const/4 v0, 0x7

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 277
    const v4, 0x7f12112f    # @string/write_settings 'Modify system settings'

    goto/16 :goto_2

    .line 278
    :cond_7
    const-class v2, Lcom/android/settings/Settings$ManageExternalSourcesActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 279
    const/16 v0, 0x8

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 280
    const v4, 0x7f120757    # @string/install_other_apps 'Install unknown apps'

    goto/16 :goto_2

    .line 281
    :cond_8
    const-class v2, Lcom/android/settings/Settings$GamesStorageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 282
    const/16 v0, 0x9

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 283
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_2

    .line 284
    :cond_9
    const-class v2, Lcom/android/settings/Settings$MoviesStorageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    .line 285
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 286
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    goto/16 :goto_2

    .line 287
    :cond_a
    const-class v2, Lcom/android/settings/Settings$PhotosStorageActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 288
    const/16 v0, 0xb

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 289
    iput v8, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 290
    const-string v0, "storageType"

    invoke-virtual {v3, v0, v9}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    goto :goto_2

    .line 291
    :cond_b
    const-class v2, Lcom/android/settings/Settings$DirectoryAccessSettingsActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 292
    const/16 v0, 0xc

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 293
    const v4, 0x7f120542    # @string/directory_access 'Directory access'

    goto :goto_2

    .line 294
    :cond_c
    const-class v2, Lcom/android/settings/Settings$ChangeWifiStateActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 295
    const/16 v0, 0xd

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 296
    const v4, 0x7f12039f    # @string/change_wifi_state_title 'Wi-Fi control'

    goto :goto_2

    .line 297
    :cond_d
    const-class v2, Lcom/android/settings/Settings$NotificationAppListActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 298
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 299
    const-string v0, "usagestats"

    .line 300
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 299
    invoke-static {v0}, Landroid/app/usage/IUsageStatsManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUsageStatsManager:Landroid/app/usage/IUsageStatsManager;

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mUserManager:Landroid/os/UserManager;

    .line 302
    new-instance v0, Lcom/android/settings/notification/NotificationBackend;

    invoke-direct {v0}, Lcom/android/settings/notification/NotificationBackend;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mNotificationBackend:Lcom/android/settings/notification/NotificationBackend;

    .line 303
    const v0, 0x7f0a0321    # @id/sort_order_recent_notification

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 304
    const v4, 0x7f120141    # @string/app_notifications_title 'App notifications'

    goto :goto_2

    .line 306
    :cond_e
    if-ne v4, v7, :cond_f

    .line 307
    nop

    .line 309
    move v4, v5

    :cond_f
    iput v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 311
    :goto_2
    invoke-static {}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getInstance()Lcom/android/settings/applications/manageapplications/AppFilterRegistry;

    move-result-object v0

    .line 312
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->getDefaultFilterType(I)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/manageapplications/AppFilterRegistry;->get(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 313
    if-eqz v3, :cond_10

    const-string v0, "workProfileOnly"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v9

    nop

    :cond_10
    iput-boolean v9, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    .line 314
    if-eqz v3, :cond_11

    const-string v0, "workId"

    invoke-virtual {v3, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    nop

    :cond_11
    iput v7, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    .line 316
    if-eqz p1, :cond_12

    .line 317
    const-string v0, "sortOrder"

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 318
    const-string v0, "showSystem"

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 321
    :cond_12
    const p1, 0x7f120769    # @string/invalid_size_value 'Couldn’t compute package size.'

    invoke-virtual {v1, p1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    .line 323
    new-instance p1, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {p1, v1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    .line 325
    if-lez v4, :cond_13

    .line 326
    invoke-virtual {v1, v4}, Landroid/app/Activity;->setTitle(I)V

    .line 328
    :cond_13
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 596
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 597
    if-nez v0, :cond_0

    .line 598
    return-void

    .line 600
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getHelpResource()I

    move-result v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, p1, v1, v2}, Lcom/android/settingslib/HelpUtils;->prepareHelpMenuItem(Landroid/app/Activity;Landroid/view/Menu;ILjava/lang/String;)Z

    .line 601
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 602
    const v0, 0x7f0e0002    # @menu/manage_apps 'res/menu/manage_apps.xml'

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 605
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .line 333
    const v0, 0x7f0d00b8    # @layout/manage_applications_apps 'res/layout/manage_applications_apps.xml'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 334
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v0, 0x7f0a01f4    # @id/loading_container

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mLoadingContainer:Landroid/view/View;

    .line 335
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    const v0, 0x7f0a01f2    # @id/list_container

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    .line 336
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const/4 v0, 0x1

    if-eqz p1, :cond_4

    .line 338
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const v1, 0x1020004    # @android:id/empty

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mEmptyView:Landroid/view/View;

    .line 339
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-direct {p1, v1, p0, v2, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    .line 341
    const/4 p1, 0x0

    if-eqz p3, :cond_0

    .line 342
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v2, "hasEntries"

    .line 343
    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 342
    invoke-static {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$002(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 344
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    const-string v2, "hasBridge"

    .line 345
    invoke-virtual {p3, v2, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 344
    invoke-static {v1, v2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$102(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z

    .line 347
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mIsWorkOnly:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mWorkUserId:I

    goto :goto_0

    :cond_1
    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mCurrentUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 348
    :goto_0
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    if-ne v2, v0, :cond_2

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 350
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v4, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;

    new-instance v5, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v5, v2}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 355
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lcom/android/settings/applications/manageapplications/MusicViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 350
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V

    .line 356
    goto :goto_1

    :cond_2
    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mStorageType:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 358
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    new-instance v4, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;

    new-instance v5, Lcom/android/settingslib/applications/StorageStatsSource;

    invoke-direct {v5, v2}, Lcom/android/settingslib/applications/StorageStatsSource;-><init>(Landroid/content/Context;)V

    iget-object v6, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mVolumeUuid:Ljava/lang/String;

    .line 363
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-direct {v4, v2, v5, v6, v1}, Lcom/android/settings/applications/manageapplications/PhotosViewHolderController;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/StorageStatsSource;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 358
    invoke-virtual {v3, v4}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V

    .line 365
    :cond_3
    :goto_1
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListContainer:Landroid/view/View;

    const v2, 0x7f0a005d    # @id/apps_list

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 366
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v2, Landroid/support/v7/widget/LinearLayoutManager;

    .line 367
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3, v0, p1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 366
    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 368
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 373
    :cond_4
    instance-of p1, p2, Landroid/preference/PreferenceFrameLayout;

    if-eqz p1, :cond_5

    .line 374
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;

    iput-boolean v0, p1, Landroid/preference/PreferenceFrameLayout$LayoutParams;->removeBorders:Z

    .line 377
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->createHeader()V

    .line 379
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 381
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroyOptionsMenu()V
    .locals 1

    .line 614
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    .line 615
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 517
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroyView()V

    .line 519
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->release()V

    .line 522
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mRootView:Landroid/view/View;

    .line 523
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 717
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    invoke-virtual {p1, p3}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->getFilter(I)Lcom/android/settings/applications/manageapplications/AppFilterItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 718
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V

    .line 720
    sget-boolean p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ManageApplications"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Selecting filter "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 725
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 653
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 654
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v1, 0x1

    sparse-switch p1, :sswitch_data_0

    .line 688
    const/4 p1, 0x0

    return p1

    .line 657
    :sswitch_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz p1, :cond_0

    .line 658
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 667
    :sswitch_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    .line 668
    return v1

    .line 663
    :sswitch_2
    iget-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    xor-int/2addr p1, v1

    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    .line 664
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 665
    nop

    .line 690
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 691
    return v1

    .line 670
    :sswitch_3
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x2

    if-ne p1, v1, :cond_1

    .line 671
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 672
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v2, 0x7f1203f8    # @string/configure_notification_settings 'Notifications'

    .line 673
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 674
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 675
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 676
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_1

    .line 678
    :cond_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/DefaultAppSettings;

    .line 679
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v2, 0x7f1203f6    # @string/configure_apps 'Configure apps'

    .line 680
    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 682
    invoke-virtual {p1, p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 683
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 685
    :goto_1
    return v1

    :sswitch_data_0
    .sparse-switch
        0x7f0a003e -> :sswitch_3    # @id/advanced
        0x7f0a018d -> :sswitch_2    # @id/hide_system
        0x7f0a02ab -> :sswitch_1    # @id/reset_app_preferences
        0x7f0a0307 -> :sswitch_2    # @id/show_system
        0x7f0a031f -> :sswitch_0    # @id/sort_order_alpha
        0x7f0a0322 -> :sswitch_0    # @id/sort_order_size
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 610
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 495
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 497
    const-string v0, "sortOrder"

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 498
    const-string v0, "showSystem"

    iget-boolean v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 499
    const-string v0, "hasEntries"

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$000(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 500
    const-string v0, "hasBridge"

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->access$100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 502
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 504
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 485
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStart()V

    .line 486
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateView()V

    .line 487
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 488
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 489
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateLoading()V

    .line 491
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 508
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onStop()V

    .line 509
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mApplications:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 512
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->stop()V

    .line 513
    return-void
.end method

.method public setHasDisabled(Z)V
    .locals 2

    .line 736
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eqz v0, :cond_0

    .line 737
    return-void

    .line 739
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 740
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 741
    return-void
.end method

.method public setHasInstant(Z)V
    .locals 2

    .line 744
    sget-object v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 745
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mFilterAdapter:Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$FilterSpinnerAdapter;->setFilterEnabled(IZ)V

    .line 747
    :cond_0
    return-void
.end method

.method updateOptionsMenu()V
    .locals 6

    .line 629
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    if-nez v0, :cond_0

    .line 630
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v1, 0x7f0a003e    # @id/advanced

    invoke-interface {v0, v1}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 634
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a031f    # @id/sort_order_alpha

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v4, 0x3

    const/4 v5, 0x1

    if-ne v3, v4, :cond_1

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v3, v2, :cond_1

    move v2, v5

    goto :goto_0

    :cond_1
    move v2, v1

    :goto_0
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 636
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a0322    # @id/sort_order_size

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne v3, v4, :cond_2

    iget v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    if-eq v3, v2, :cond_2

    move v2, v5

    goto :goto_1

    :cond_2
    move v2, v1

    :goto_1
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 639
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a0307    # @id/show_system

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    const/4 v3, 0x5

    if-nez v2, :cond_3

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v2, v3, :cond_3

    move v2, v5

    goto :goto_2

    :cond_3
    move v2, v1

    :goto_2
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 641
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a018d    # @id/hide_system

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mShowSystem:Z

    if-eqz v2, :cond_4

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-eq v2, v3, :cond_4

    move v2, v5

    goto :goto_3

    :cond_4
    move v2, v1

    :goto_3
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 644
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a02ab    # @id/reset_app_preferences

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-nez v2, :cond_5

    goto :goto_4

    :cond_5
    move v5, v1

    :goto_4
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 647
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a0321    # @id/sort_order_recent_notification

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 648
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mOptionsMenu:Landroid/view/Menu;

    const v2, 0x7f0a0320    # @id/sort_order_frequent_notification

    invoke-interface {v0, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 649
    return-void
.end method

.method public updateView()V
    .locals 1

    .line 728
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->updateOptionsMenu()V

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 730
    if-eqz v0, :cond_0

    .line 731
    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 733
    :cond_0
    return-void
.end method
