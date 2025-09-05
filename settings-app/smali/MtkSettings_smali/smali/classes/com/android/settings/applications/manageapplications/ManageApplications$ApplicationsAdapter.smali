.class Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "ManageApplications.java"

# interfaces
.implements Lcom/android/settings/applications/AppStateBaseBridge$Callback;
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/manageapplications/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ApplicationsAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter<",
        "Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;",
        ">;",
        "Lcom/android/settings/applications/AppStateBaseBridge$Callback;",
        "Lcom/android/settingslib/applications/ApplicationsState$Callbacks;"
    }
.end annotation


# instance fields
.field private mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

.field private mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field private final mContext:Landroid/content/Context;

.field private mEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field private final mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

.field private mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

.field private mHasReceivedBridgeCallback:Z

.field private mHasReceivedLoadEntries:Z

.field private mLastIndex:I

.field private mLastSortMode:I

.field private final mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

.field private final mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

.field mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mResumed:Z

.field private final mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field private final mState:Lcom/android/settingslib/applications/ApplicationsState;

.field private mWhichSize:I


# direct methods
.method public constructor <init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/manageapplications/ManageApplications;Lcom/android/settings/applications/manageapplications/AppFilterItem;Landroid/os/Bundle;)V
    .locals 8

    .line 868
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 850
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 851
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 860
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 869
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->setHasStableIds(Z)V

    .line 870
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 871
    invoke-virtual {p1, p0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 872
    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 873
    new-instance p1, Lcom/android/settings/widget/LoadingViewController;

    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 874
    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$700(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 875
    invoke-static {v2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object v2

    invoke-direct {p1, v1, v2}, Lcom/android/settings/widget/LoadingViewController;-><init>(Landroid/view/View;Landroid/view/View;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    .line 877
    invoke-virtual {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 878
    iput-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 879
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    if-ne p1, v0, :cond_0

    .line 880
    new-instance p1, Lcom/android/settings/applications/AppStateNotificationBridge;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 881
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$900(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/app/usage/IUsageStatsManager;

    move-result-object v5

    .line 882
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1000(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/os/UserManager;

    move-result-object v6

    .line 883
    invoke-static {p2}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1100(Lcom/android/settings/applications/manageapplications/ManageApplications;)Lcom/android/settings/notification/NotificationBackend;

    move-result-object v7

    move-object v1, p1

    move-object v4, p0

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/AppStateNotificationBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;Landroid/app/usage/IUsageStatsManager;Landroid/os/UserManager;Lcom/android/settings/notification/NotificationBackend;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    .line 884
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x4

    if-ne p1, p2, :cond_1

    .line 885
    new-instance p1, Lcom/android/settings/applications/AppStateUsageBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateUsageBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto/16 :goto_0

    .line 886
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x5

    if-ne p1, p2, :cond_2

    .line 887
    new-instance p1, Lcom/android/settings/applications/AppStatePowerBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStatePowerBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 888
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x6

    if-ne p1, p2, :cond_3

    .line 889
    new-instance p1, Lcom/android/settings/applications/AppStateOverlayBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateOverlayBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 890
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 p2, 0x7

    if-ne p1, p2, :cond_4

    .line 891
    new-instance p1, Lcom/android/settings/applications/AppStateWriteSettingsBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateWriteSettingsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 892
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 p2, 0x8

    if-ne p1, p2, :cond_5

    .line 893
    new-instance p1, Lcom/android/settings/applications/AppStateInstallAppsBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/applications/AppStateInstallAppsBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 894
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 p2, 0xc

    if-ne p1, p2, :cond_6

    .line 895
    new-instance p1, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p0}, Lcom/android/settings/applications/AppStateDirectoryAccessBridge;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 896
    :cond_6
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/16 p2, 0xd

    if-ne p1, p2, :cond_7

    .line 897
    new-instance p1, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {p1, p2, p3, p0}, Lcom/android/settings/wifi/AppStateChangeWifiStateBridge;-><init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settings/applications/AppStateBaseBridge$Callback;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    goto :goto_0

    .line 899
    :cond_7
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    .line 901
    :goto_0
    if-eqz p4, :cond_8

    .line 902
    const-string p1, "state_last_scroll_index"

    invoke-virtual {p4, p1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 904
    :cond_8
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    .line 833
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .line 833
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Z
    .locals 0

    .line 833
    iget-boolean p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p0
.end method

.method static synthetic access$102(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Z)Z
    .locals 0

    .line 833
    iput-boolean p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/AppStateBaseBridge;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings/applications/manageapplications/FileViewHolderController;
    .locals 0

    .line 833
    iget-object p0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    return-object p0
.end method

.method private hasExtraView()Z
    .locals 1

    .line 1368
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    .line 1369
    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->shouldShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1368
    :goto_0
    return v0
.end method

.method public static synthetic lambda$rebuild$2(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V
    .locals 0

    .line 1078
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onRebuildComplete(Ljava/util/ArrayList;)V

    return-void
.end method

.method public static synthetic lambda$rebuild$3(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V
    .locals 2

    .line 1075
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->rebuild(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;Z)Ljava/util/ArrayList;

    move-result-object p1

    .line 1077
    if-eqz p1, :cond_0

    .line 1078
    new-instance p2, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$u5dJjouyXSv-EkAyCVJkIO0SEV0;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$u5dJjouyXSv-EkAyCVJkIO0SEV0;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)V

    invoke-static {p2}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1080
    :cond_0
    return-void
.end method

.method public static synthetic lambda$setExtraViewController$0(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 0

    .line 947
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onExtraViewCompleted()V

    .line 948
    return-void
.end method

.method public static synthetic lambda$setExtraViewController$1(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V
    .locals 1

    .line 945
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    invoke-interface {v0}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->queryStats()V

    .line 946
    new-instance v0, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$zUDf4sT2ElTE4vuQaXRj16znehk;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$zUDf4sT2ElTE4vuQaXRj16znehk;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 949
    return-void
.end method

.method private static packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z
    .locals 2

    .line 1098
    const/4 v0, 0x0

    if-eqz p0, :cond_3

    if-nez p1, :cond_0

    goto :goto_1

    .line 1101
    :cond_0
    iget-object v1, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    if-nez v1, :cond_1

    goto :goto_0

    .line 1104
    :cond_1
    iget-object p0, p0, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 1102
    :cond_2
    :goto_0
    return v0

    .line 1099
    :cond_3
    :goto_1
    return v0
.end method

.method private removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation

    .line 1109
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1111
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1114
    nop

    .line 1115
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 1116
    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1117
    iget-object v5, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1118
    iget-object v6, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-static {v2, v6}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->packageNameEquals(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageItemInfo;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1119
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1121
    :cond_0
    nop

    .line 1115
    add-int/lit8 v3, v3, 0x1

    move-object v2, v5

    goto :goto_0

    .line 1123
    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->trimToSize()V

    .line 1124
    return-object v1
.end method

.method static shouldUseStableItemHeight(I)Z
    .locals 1

    .line 1085
    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    .line 1093
    return v0

    .line 1089
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    .line 1305
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_2

    packed-switch v0, :pswitch_data_0

    packed-switch v0, :pswitch_data_1

    .line 1344
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mInvalidSizeStr:Ljava/lang/CharSequence;

    iget v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    invoke-virtual {p1, p2, v0, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V

    goto/16 :goto_2

    .line 1341
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/wifi/ChangeWifiStateDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1342
    goto/16 :goto_2

    .line 1338
    :pswitch_1
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1339
    goto/16 :goto_2

    .line 1335
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/ExternalSourcesDetails;->getPreferenceSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1336
    goto :goto_2

    .line 1332
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/WriteSettingsDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1333
    goto :goto_2

    .line 1329
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/applications/appinfo/DrawOverlayDetails;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1330
    goto :goto_2

    .line 1326
    :pswitch_5
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/HighPowerDetail;->getSummary(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1327
    goto :goto_2

    .line 1316
    :pswitch_6
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 1317
    nop

    .line 1318
    new-instance v0, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p2, Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;

    invoke-direct {v0, p2}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;-><init>(Lcom/android/settings/applications/AppStateAppOpsBridge$PermissionState;)V

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateUsageBridge$UsageState;->isPermissible()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 1319
    const p2, 0x7f120144    # @string/app_permission_summary_allowed 'Allowed'

    goto :goto_0

    .line 1320
    :cond_0
    const p2, 0x7f120145    # @string/app_permission_summary_not_allowed 'Not allowed'

    .line 1317
    :goto_0
    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(I)V

    goto :goto_2

    .line 1322
    :cond_1
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1324
    goto :goto_2

    .line 1307
    :cond_2
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_4

    .line 1308
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f0a0321    # @id/sort_order_recent_notification

    if-ne v2, v3, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    invoke-static {v0, p2, v1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 1312
    :cond_4
    invoke-virtual {p1, v2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1314
    nop

    .line 1347
    :goto_2
    return-void

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xc
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 4

    .line 1350
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 1352
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    check-cast v0, Lcom/android/settings/applications/AppStateNotificationBridge;

    .line 1353
    invoke-virtual {v0, p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSwitchOnClickListener(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Landroid/view/View$OnClickListener;

    move-result-object v0

    .line 1354
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->enableSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v2

    .line 1355
    invoke-static {p2}, Lcom/android/settings/applications/AppStateNotificationBridge;->checkSwitch(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z

    move-result v3

    .line 1352
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSwitch(Landroid/view/View$OnClickListener;ZZ)V

    .line 1356
    iget-object v0, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1357
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p2, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v3, 0x7f0a0321    # @id/sort_order_recent_notification

    if-ne v2, v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    invoke-static {v0, p2, v1}, Lcom/android/settings/applications/AppStateNotificationBridge;->getSummary(Landroid/content/Context;Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;Z)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1361
    :cond_2
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 1365
    :goto_1
    return-void
.end method


# virtual methods
.method public getAppEntry(I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1

    .line 1262
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p1
.end method

.method public getApplicationCount()I
    .locals 1

    .line 1258
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemCount()I
    .locals 2

    .line 1251
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1252
    const/4 v0, 0x0

    return v0

    .line 1254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    .line 1267
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1268
    const-wide/16 v0, -0x1

    return-wide v0

    .line 1270
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 3

    .line 1014
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    if-ne v0, p1, :cond_0

    .line 1015
    move p1, v1

    goto :goto_0

    .line 1014
    :cond_0
    nop

    .line 1015
    move p1, v2

    :goto_0
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 1016
    goto :goto_1

    .line 1017
    :cond_1
    nop

    .line 1015
    move v1, v2

    :goto_1
    return v1
.end method

.method public isEnabled(I)Z
    .locals 3

    .line 1274
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemViewType(I)I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v2, 0x5

    if-eq v0, v2, :cond_0

    goto :goto_0

    .line 1278
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1279
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    move-result-object v0

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1280
    invoke-virtual {v0, p1}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isSysWhitelisted(Ljava/lang/String;)Z

    move-result p1

    .line 1279
    xor-int/2addr p1, v1

    return p1

    .line 1276
    :cond_1
    :goto_0
    return v1
.end method

.method public onAllSizesComputed()V
    .locals 2

    .line 1236
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    const v1, 0x7f0a0322    # @id/sort_order_size

    if-ne v0, v1, :cond_0

    .line 1237
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1239
    :cond_0
    return-void
.end method

.method public onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 908
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onAttachedToRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 909
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 910
    new-instance p1, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 911
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 912
    return-void
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 833
    check-cast p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;I)V
    .locals 2

    .line 1285
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p2, v0, :cond_0

    .line 1287
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    invoke-interface {p2, p1}, Lcom/android/settings/applications/manageapplications/FileViewHolderController;->setupView(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;)V

    goto :goto_0

    .line 1290
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1291
    monitor-enter v0

    .line 1292
    :try_start_0
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setTitle(Ljava/lang/CharSequence;)V

    .line 1293
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1294
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1295
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSummary(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1296
    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->updateSwitch(Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    .line 1297
    iget-object v1, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateDisableView(Landroid/content/pm/ApplicationInfo;)V

    .line 1298
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1299
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->isEnabled(I)Z

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setEnabled(Z)V

    .line 1301
    :goto_0
    iget-object p1, p1, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->itemView:Landroid/view/View;

    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1302
    return-void

    .line 1298
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 833
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
    .locals 1

    .line 1003
    iget-object p2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p2, p2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 1004
    invoke-static {p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    .line 1006
    :cond_0
    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->newView(Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 1008
    :goto_0
    new-instance p2, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v0, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    .line 1009
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->shouldUseStableItemHeight(I)Z

    move-result v0

    invoke-direct {p2, p1, v0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;-><init>(Landroid/view/View;Z)V

    .line 1008
    return-object p2
.end method

.method public onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V
    .locals 1

    .line 916
    invoke-super {p0, p1}, Landroid/support/v7/widget/RecyclerView$Adapter;->onDetachedFromRecyclerView(Landroid/support/v7/widget/RecyclerView;)V

    .line 917
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 918
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    .line 919
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 920
    return-void
.end method

.method public onExtraInfoUpdated()V
    .locals 1

    .line 1175
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    .line 1176
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1177
    return-void
.end method

.method public onExtraViewCompleted()V
    .locals 1

    .line 1242
    invoke-direct {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->hasExtraView()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1243
    return-void

    .line 1246
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyItemChanged(I)V

    .line 1247
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 1

    .line 1229
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1230
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1232
    :cond_0
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 1

    .line 1197
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    .line 1199
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1200
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 1193
    return-void
.end method

.method public onPackageListChanged()V
    .locals 0

    .line 1186
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1187
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 4

    .line 1204
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 1205
    return-void

    .line 1207
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1208
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_3

    .line 1209
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 1210
    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 1211
    if-nez v2, :cond_1

    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {p1, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1212
    goto :goto_1

    .line 1214
    :cond_1
    iget-object v3, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1500(Lcom/android/settings/applications/manageapplications/ManageApplications;)Ljava/lang/String;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1219
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 1220
    return-void

    .line 1222
    :cond_2
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mOnScrollListener:Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;

    invoke-virtual {v2, v1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter$OnScrollListener;->postNotifyItemChange(I)V

    .line 1208
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1225
    :cond_3
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 1129
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    .line 1130
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    if-ne v0, v1, :cond_1

    .line 1132
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->removeDuplicateIgnoringUser(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1134
    :cond_1
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mEntries:Ljava/util/ArrayList;

    .line 1135
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 1136
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    const/4 v0, 0x0

    const/16 v2, 0x8

    if-nez p1, :cond_2

    .line 1137
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1138
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 1140
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1400(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1141
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->setVisibility(I)V

    .line 1145
    :goto_0
    iget p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    const/4 v0, -0x1

    if-eq p1, v0, :cond_3

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->getItemCount()I

    move-result p1

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    if-le p1, v2, :cond_3

    .line 1146
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object p1

    iget v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    invoke-virtual {p1, v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->scrollToPosition(I)V

    .line 1147
    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastIndex:I

    .line 1150
    :cond_3
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {p1}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 1151
    invoke-static {p1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$800(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_4

    .line 1152
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    .line 1154
    :cond_4
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget p1, p1, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_5

    .line 1156
    return-void

    .line 1159
    :cond_5
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->haveDisabledApps()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasDisabled(Z)V

    .line 1160
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState;->haveInstantApps()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->setHasInstant(Z)V

    .line 1161
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 1

    .line 1181
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 1182
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 979
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 980
    invoke-static {v0}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1200(Lcom/android/settings/applications/manageapplications/ManageApplications;)Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/LinearLayoutManager;

    .line 981
    const-string v1, "state_last_scroll_index"

    invoke-virtual {v0}, Landroid/support/v7/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 982
    return-void
.end method

.method public pause()V
    .locals 1

    .line 968
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 969
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 970
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onPause()V

    .line 971
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 972
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->pause()V

    .line 975
    :cond_0
    return-void
.end method

.method public rebuild()V
    .locals 4

    .line 1021
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedBridgeCallback:Z

    if-nez v0, :cond_0

    goto/16 :goto_3

    .line 1028
    :cond_0
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v0

    .line 1029
    if-eqz v0, :cond_1

    .line 1030
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    goto :goto_0

    .line 1032
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    .line 1034
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    invoke-virtual {v0}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilter()Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    move-result-object v0

    .line 1035
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    if-eqz v1, :cond_2

    .line 1036
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 1038
    move-object v0, v1

    :cond_2
    iget-object v1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/applications/manageapplications/ManageApplications;->access$1300(Lcom/android/settings/applications/manageapplications/ManageApplications;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 1039
    sget-object v1, Lcom/android/settings/applications/manageapplications/ManageApplications;->LIST_TYPES_WITH_INSTANT:Ljava/util/Set;

    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iget v2, v2, Lcom/android/settings/applications/manageapplications/ManageApplications;->mListType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1040
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_1

    .line 1043
    :cond_3
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v2, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v1, v0, v2}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    goto :goto_1

    .line 1047
    :cond_4
    move-object v1, v0

    :goto_1
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    packed-switch v0, :pswitch_data_0

    .line 1068
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    goto :goto_2

    .line 1049
    :pswitch_0
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mWhichSize:I

    packed-switch v0, :pswitch_data_1

    .line 1057
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1058
    goto :goto_2

    .line 1054
    :pswitch_1
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1055
    goto :goto_2

    .line 1051
    :pswitch_2
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1052
    goto :goto_2

    .line 1062
    :pswitch_3
    sget-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->RECENT_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    .line 1063
    goto :goto_2

    .line 1065
    :pswitch_4
    sget-object v0, Lcom/android/settings/applications/AppStateNotificationBridge;->FREQUENCY_NOTIFICATION_COMPARATOR:Ljava/util/Comparator;

    .line 1066
    nop

    .line 1072
    :goto_2
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;

    sget-object v3, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    invoke-direct {v2, v1, v3}, Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;-><init>(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V

    .line 1073
    nop

    .line 1074
    new-instance v1, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$z53WdtAYQ69qQ4PsDaqCwHe1hfA;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$z53WdtAYQ69qQ4PsDaqCwHe1hfA;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;Lcom/android/settingslib/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 1081
    return-void

    .line 1024
    :cond_5
    :goto_3
    return-void

    :pswitch_data_0
    .packed-switch 0x7f0a0320
        :pswitch_4    # @id/sort_order_frequent_notification
        :pswitch_3    # @id/sort_order_recent_notification
        :pswitch_0    # @id/sort_order_size
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public rebuild(I)V
    .locals 1

    .line 992
    iget v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    if-ne p1, v0, :cond_0

    .line 993
    return-void

    .line 995
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mManageApplications:Lcom/android/settings/applications/manageapplications/ManageApplications;

    iput p1, v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->mSortOrder:I

    .line 996
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 997
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 998
    return-void
.end method

.method public release()V
    .locals 1

    .line 985
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onDestroy()V

    .line 986
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz v0, :cond_0

    .line 987
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {v0}, Lcom/android/settings/applications/AppStateBaseBridge;->release()V

    .line 989
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 3

    .line 953
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Resume!  mResumed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 954
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_2

    .line 955
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 956
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->onResume()V

    .line 957
    iput p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLastSortMode:I

    .line 958
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    if-eqz p1, :cond_1

    .line 959
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraInfoBridge:Lcom/android/settings/applications/AppStateBaseBridge;

    invoke-virtual {p1}, Lcom/android/settings/applications/AppStateBaseBridge;->resume()V

    .line 961
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    goto :goto_0

    .line 963
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    .line 965
    :goto_0
    return-void
.end method

.method public setCompositeFilter(Lcom/android/settingslib/applications/ApplicationsState$AppFilter;)V
    .locals 0

    .line 923
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mCompositeFilter:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 924
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 925
    return-void
.end method

.method public setExtraViewController(Lcom/android/settings/applications/manageapplications/FileViewHolderController;)V
    .locals 0

    .line 941
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mExtraViewController:Lcom/android/settings/applications/manageapplications/FileViewHolderController;

    .line 944
    new-instance p1, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$qMEtWjKuRu1RgrWKYhF-ScJDD7E;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/manageapplications/-$$Lambda$ManageApplications$ApplicationsAdapter$qMEtWjKuRu1RgrWKYhF-ScJDD7E;-><init>(Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 950
    return-void
.end method

.method public setFilter(Lcom/android/settings/applications/manageapplications/AppFilterItem;)V
    .locals 2

    .line 928
    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mAppFilter:Lcom/android/settings/applications/manageapplications/AppFilterItem;

    .line 931
    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v1, v0, :cond_0

    .line 932
    const p1, 0x7f0a0320    # @id/sort_order_frequent_notification

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 933
    :cond_0
    const/4 v0, 0x6

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/AppFilterItem;->getFilterType()I

    move-result p1

    if-ne v0, p1, :cond_1

    .line 934
    const p1, 0x7f0a0321    # @id/sort_order_recent_notification

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild(I)V

    goto :goto_0

    .line 936
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->rebuild()V

    .line 938
    :goto_0
    return-void
.end method

.method updateLoading()V
    .locals 2

    .line 1165
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mHasReceivedLoadEntries:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$Session;->getAllApps()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 1166
    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 1167
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/LoadingViewController;->showContent(Z)V

    goto :goto_1

    .line 1169
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ManageApplications$ApplicationsAdapter;->mLoadingViewController:Lcom/android/settings/widget/LoadingViewController;

    invoke-virtual {v0}, Lcom/android/settings/widget/LoadingViewController;->showLoadingViewDelayed()V

    .line 1171
    :goto_1
    return-void
.end method
