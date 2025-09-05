.class public Lcom/android/settings/applications/RunningState;
.super Ljava/lang/Object;
.source "RunningState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/RunningState$ServiceProcessComparator;,
        Lcom/android/settings/applications/RunningState$MergedItem;,
        Lcom/android/settings/applications/RunningState$ProcessItem;,
        Lcom/android/settings/applications/RunningState$ServiceItem;,
        Lcom/android/settings/applications/RunningState$BaseItem;,
        Lcom/android/settings/applications/RunningState$UserState;,
        Lcom/android/settings/applications/RunningState$OnRefreshUiListener;,
        Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;,
        Lcom/android/settings/applications/RunningState$BackgroundHandler;,
        Lcom/android/settings/applications/RunningState$AppProcessInfo;
    }
.end annotation


# static fields
.field static sGlobalLock:Ljava/lang/Object;

.field static sInstance:Lcom/android/settings/applications/RunningState;


# instance fields
.field final mAllProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mAm:Landroid/app/ActivityManager;

.field final mApplicationContext:Landroid/content/Context;

.field final mBackgroundComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

.field mBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mBackgroundProcessMemory:J

.field final mBackgroundThread:Landroid/os/HandlerThread;

.field mForegroundProcessMemory:J

.field final mHandler:Landroid/os/Handler;

.field mHaveData:Z

.field final mHideManagedProfiles:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mInterestingProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$BaseItem;",
            ">;"
        }
    .end annotation
.end field

.field final mLock:Ljava/lang/Object;

.field mMergedItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mMyUserId:I

.field mNumBackgroundProcesses:I

.field mNumForegroundProcesses:I

.field mNumServiceProcesses:I

.field final mOtherUserBackgroundItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mOtherUserMergedItems:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPm:Landroid/content/pm/PackageManager;

.field final mProcessItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

.field mResumed:Z

.field final mRunningProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field mSequence:I

.field final mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

.field mServiceProcessMemory:J

.field final mServiceProcessesByName:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;>;"
        }
    .end annotation
.end field

.field final mServiceProcessesByPid:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$ProcessItem;",
            ">;"
        }
    .end annotation
.end field

.field final mTmpAppProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$AppProcessInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mUm:Landroid/os/UserManager;

.field private final mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

.field mUserBackgroundItems:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation
.end field

.field mWatchingBackgroundItems:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 777
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 93
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    .line 98
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    .line 102
    new-instance v0, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/RunningState$ServiceProcessComparator;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    .line 107
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    .line 110
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    .line 114
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    .line 125
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    .line 138
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 142
    new-instance v1, Lcom/android/settings/applications/RunningState$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$1;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundComparator:Ljava/util/Comparator;

    .line 203
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 210
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 254
    new-instance v1, Lcom/android/settings/applications/RunningState$2;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState$2;-><init>(Lcom/android/settings/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    .line 319
    new-instance v1, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;-><init>(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$1;)V

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    .line 778
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 779
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "activity"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActivityManager;

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mAm:Landroid/app/ActivityManager;

    .line 780
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mPm:Landroid/content/pm/PackageManager;

    .line 781
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    .line 782
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    .line 783
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    invoke-virtual {p1, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 784
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->canHaveProfile()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    .line 785
    iput-boolean v0, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 786
    new-instance p1, Landroid/os/HandlerThread;

    const-string v0, "RunningState:Background"

    invoke-direct {p1, v0}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    .line 787
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 788
    new-instance p1, Lcom/android/settings/applications/RunningState$BackgroundHandler;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mBackgroundThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/applications/RunningState$BackgroundHandler;-><init>(Lcom/android/settings/applications/RunningState;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    .line 789
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->register(Landroid/content/Context;)V

    .line 790
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/RunningState;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/applications/RunningState;->reset()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/applications/RunningState;Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/RunningState;->update(Landroid/content/Context;Landroid/app/ActivityManager;)Z

    move-result p0

    return p0
.end method

.method private addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Landroid/util/SparseArray<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ")V"
        }
    .end annotation

    .line 869
    iget v0, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 870
    if-eqz v0, :cond_1

    iget v1, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v2, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    .line 871
    :goto_1
    if-eqz v1, :cond_5

    .line 872
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    iget v2, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 873
    if-nez v1, :cond_2

    .line 875
    return-void

    .line 877
    :cond_2
    iget-boolean v2, p0, Lcom/android/settings/applications/RunningState;->mHideManagedProfiles:Z

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 878
    return-void

    .line 880
    :cond_3
    if-nez v0, :cond_4

    .line 881
    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v2, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-direct {v0, v2}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 882
    iget v2, p4, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {p3, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_2

    .line 884
    :cond_4
    iget-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    .line 886
    :goto_2
    iget p3, p0, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    .line 887
    new-instance p3, Lcom/android/settings/applications/RunningState$UserState;

    invoke-direct {p3}, Lcom/android/settings/applications/RunningState$UserState;-><init>()V

    iput-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    .line 888
    iget-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iput-object v1, p3, Lcom/android/settings/applications/RunningState$UserState;->mInfo:Landroid/content/pm/UserInfo;

    .line 889
    iget-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mUm:Landroid/os/UserManager;

    invoke-static {p1, v2, v1}, Lcom/android/settingslib/Utils;->getUserIcon(Landroid/content/Context;Landroid/os/UserManager;Landroid/content/pm/UserInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/applications/RunningState$UserState;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 890
    iget-object p3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUser:Lcom/android/settings/applications/RunningState$UserState;

    invoke-static {p1, v1}, Lcom/android/settingslib/Utils;->getUserLabel(Landroid/content/Context;Landroid/content/pm/UserInfo;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p3, Lcom/android/settings/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    .line 891
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 893
    :cond_5
    iget-object p1, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 894
    return-void
.end method

.method static getInstance(Landroid/content/Context;)Lcom/android/settings/applications/RunningState;
    .locals 2

    .line 769
    sget-object v0, Lcom/android/settings/applications/RunningState;->sGlobalLock:Ljava/lang/Object;

    monitor-enter v0

    .line 770
    :try_start_0
    sget-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    if-nez v1, :cond_0

    .line 771
    new-instance v1, Lcom/android/settings/applications/RunningState;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/RunningState;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    .line 773
    :cond_0
    sget-object p0, Lcom/android/settings/applications/RunningState;->sInstance:Lcom/android/settings/applications/RunningState;

    monitor-exit v0

    return-object p0

    .line 774
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z
    .locals 3

    .line 845
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    .line 846
    return v1

    .line 848
    :cond_0
    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x64

    if-lt v0, v2, :cond_1

    iget v0, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v2, 0x15e

    if-ge v0, v2, :cond_1

    iget p1, p1, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    if-nez p1, :cond_1

    .line 853
    return v1

    .line 855
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method static makeLabel(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    .locals 1

    .line 752
    if-eqz p2, :cond_1

    iget v0, p2, Landroid/content/pm/PackageItemInfo;->labelRes:I

    if-nez v0, :cond_0

    iget-object v0, p2, Landroid/content/pm/PackageItemInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    invoke-virtual {p2, p0}, Landroid/content/pm/PackageItemInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 755
    if-eqz p0, :cond_1

    .line 756
    return-object p0

    .line 760
    :cond_1
    nop

    .line 761
    const/16 p0, 0x2e

    invoke-virtual {p1, p0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p0

    .line 762
    if-ltz p0, :cond_2

    .line 763
    add-int/lit8 p0, p0, 0x1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    invoke-virtual {p1, p0, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 765
    :cond_2
    return-object p1
.end method

.method private reset()V
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 860
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 861
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 862
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 863
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 864
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 865
    return-void
.end method

.method private update(Landroid/content/Context;Landroid/app/ActivityManager;)Z
    .locals 30

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    .line 897
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 899
    iget v3, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    const/4 v4, 0x1

    add-int/2addr v3, v4

    iput v3, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    .line 901
    nop

    .line 905
    nop

    .line 906
    const/16 v3, 0x64

    move-object/from16 v5, p2

    invoke-virtual {v5, v3}, Landroid/app/ActivityManager;->getRunningServices(I)Ljava/util/List;

    move-result-object v3

    .line 907
    if-eqz v3, :cond_0

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_0

    .line 908
    :cond_0
    const/4 v7, 0x0

    :goto_0
    move v8, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v8, :cond_3

    .line 909
    invoke-interface {v3, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 913
    iget-boolean v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->started:Z

    if-nez v10, :cond_1

    iget v10, v9, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-nez v10, :cond_1

    .line 914
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 915
    add-int/lit8 v7, v7, -0x1

    .line 916
    add-int/lit8 v8, v8, -0x1

    .line 917
    goto :goto_2

    .line 921
    :cond_1
    iget v9, v9, Landroid/app/ActivityManager$RunningServiceInfo;->flags:I

    and-int/lit8 v9, v9, 0x8

    if-eqz v9, :cond_2

    .line 923
    invoke-interface {v3, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 924
    add-int/lit8 v7, v7, -0x1

    .line 925
    add-int/lit8 v8, v8, -0x1

    .line 926
    nop

    .line 908
    :cond_2
    :goto_2
    add-int/2addr v7, v4

    goto :goto_1

    .line 932
    :cond_3
    nop

    .line 933
    invoke-virtual/range {p2 .. p2}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v5

    .line 934
    if-eqz v5, :cond_4

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_3

    .line 935
    :cond_4
    const/4 v7, 0x0

    :goto_3
    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 936
    const/4 v9, 0x0

    :goto_4
    if-ge v9, v7, :cond_5

    .line 937
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 938
    iget-object v11, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v12, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    new-instance v13, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    invoke-direct {v13, v10}, Lcom/android/settings/applications/RunningState$AppProcessInfo;-><init>(Landroid/app/ActivityManager$RunningAppProcessInfo;)V

    invoke-virtual {v11, v12, v13}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 936
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 943
    :cond_5
    const/4 v9, 0x0

    :goto_5
    const-wide/16 v10, 0x0

    if-ge v9, v8, :cond_7

    .line 944
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 945
    iget-wide v13, v12, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v10, v13, v10

    if-nez v10, :cond_6

    iget v10, v12, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v10, :cond_6

    .line 946
    iget-object v10, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v11, v12, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 947
    if-eqz v10, :cond_6

    .line 948
    iput-boolean v4, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    .line 949
    iget-boolean v11, v12, Landroid/app/ActivityManager$RunningServiceInfo;->foreground:Z

    if-eqz v11, :cond_6

    .line 950
    iput-boolean v4, v10, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    .line 943
    :cond_6
    add-int/lit8 v9, v9, 0x1

    goto :goto_5

    .line 957
    :cond_7
    const/4 v9, 0x0

    const/4 v12, 0x0

    :goto_6
    if-ge v9, v8, :cond_14

    .line 958
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 965
    iget-wide v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v14, v14, v10

    if-nez v14, :cond_b

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    if-lez v14, :cond_b

    .line 966
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    invoke-virtual {v14, v15}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 967
    if-eqz v14, :cond_b

    iget-boolean v15, v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasForegroundServices:Z

    if-nez v15, :cond_b

    .line 973
    iget-object v15, v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v15, v15, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v6, 0x12c

    if-ge v15, v6, :cond_b

    .line 977
    nop

    .line 978
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v14, v14, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v14, v14, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    .line 979
    :goto_7
    if-eqz v6, :cond_a

    .line 980
    iget-boolean v14, v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;->hasServices:Z

    if-nez v14, :cond_9

    iget-object v14, v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    invoke-direct {v1, v14}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v14

    if-eqz v14, :cond_8

    goto :goto_8

    .line 984
    :cond_8
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mTmpAppProcesses:Landroid/util/SparseArray;

    iget-object v6, v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;->info:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    invoke-virtual {v14, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$AppProcessInfo;

    goto :goto_7

    .line 981
    :cond_9
    :goto_8
    nop

    .line 982
    nop

    .line 986
    move v6, v4

    goto :goto_9

    :cond_a
    const/4 v6, 0x0

    :goto_9
    if-eqz v6, :cond_b

    .line 987
    nop

    .line 957
    move-object/from16 v16, v5

    goto/16 :goto_c

    .line 993
    :cond_b
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v6, v14}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 994
    if-nez v6, :cond_c

    .line 995
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 996
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    iget v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    invoke-virtual {v14, v15, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 998
    :cond_c
    iget-object v14, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 999
    if-nez v14, :cond_d

    .line 1000
    nop

    .line 1001
    new-instance v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->uid:I

    iget-object v15, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-direct {v14, v2, v12, v15}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1002
    iget-object v12, v13, Landroid/app/ActivityManager$RunningServiceInfo;->process:Ljava/lang/String;

    invoke-virtual {v6, v12, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1005
    move v12, v4

    :cond_d
    iget v6, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v15, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v6, v15, :cond_13

    .line 1006
    move-object/from16 v16, v5

    iget-wide v4, v13, Landroid/app/ActivityManager$RunningServiceInfo;->restarting:J

    cmp-long v4, v4, v10

    if-nez v4, :cond_e

    iget v6, v13, Landroid/app/ActivityManager$RunningServiceInfo;->pid:I

    goto :goto_a

    .line 1007
    :cond_e
    const/4 v6, 0x0

    :goto_a
    iget v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v6, v4, :cond_12

    .line 1008
    nop

    .line 1009
    iget v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eq v4, v6, :cond_11

    .line 1010
    iget v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v4, :cond_f

    .line 1011
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v5, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->remove(I)V

    .line 1013
    :cond_f
    if-eqz v6, :cond_10

    .line 1014
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v4, v6, v14}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1016
    :cond_10
    iput v6, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1019
    :cond_11
    const/4 v12, 0x1

    :cond_12
    iget-object v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1020
    iget v4, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v4, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    goto :goto_b

    .line 1022
    :cond_13
    move-object/from16 v16, v5

    :goto_b
    invoke-virtual {v14, v2, v13}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateService(Landroid/content/Context;Landroid/app/ActivityManager$RunningServiceInfo;)Z

    move-result v4

    or-int/2addr v12, v4

    .line 957
    :goto_c
    add-int/lit8 v9, v9, 0x1

    move-object/from16 v5, v16

    const/4 v4, 0x1

    goto/16 :goto_6

    .line 1027
    :cond_14
    move-object/from16 v16, v5

    move v4, v12

    const/4 v3, 0x0

    :goto_d
    if-ge v3, v7, :cond_19

    .line 1028
    move-object/from16 v5, v16

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1029
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1030
    if-nez v8, :cond_16

    .line 1034
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v8, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1035
    if-nez v8, :cond_15

    .line 1036
    nop

    .line 1037
    new-instance v4, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    iget-object v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-direct {v4, v2, v8, v9}, Lcom/android/settings/applications/RunningState$ProcessItem;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 1038
    iget v8, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iput v8, v4, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    .line 1039
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v9, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    invoke-virtual {v8, v9, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1041
    move-object v8, v4

    const/4 v4, 0x1

    :cond_15
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v9}, Landroid/util/SparseArray;->clear()V

    .line 1044
    :cond_16
    invoke-direct {v1, v6}, Lcom/android/settings/applications/RunningState;->isInterestingProcess(Landroid/app/ActivityManager$RunningAppProcessInfo;)Z

    move-result v9

    if-eqz v9, :cond_18

    .line 1045
    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_17

    .line 1046
    nop

    .line 1047
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1049
    const/4 v4, 0x1

    :cond_17
    iget v9, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    .line 1050
    const/4 v9, 0x1

    iput-boolean v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1051
    invoke-virtual {v8, v0}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    goto :goto_e

    .line 1053
    :cond_18
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    .line 1056
    :goto_e
    iget v9, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    iput v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    .line 1057
    iput-object v6, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 1027
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v16, v5

    goto :goto_d

    .line 1062
    :cond_19
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1063
    move v5, v4

    move v4, v3

    const/4 v3, 0x0

    :goto_f
    const/4 v6, 0x0

    if-ge v3, v4, :cond_1e

    .line 1064
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1065
    iget v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningSeq:I

    iget v9, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v8, v9, :cond_1d

    .line 1066
    iget-object v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v8, v8, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 1067
    if-eqz v8, :cond_1c

    .line 1068
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1069
    if-nez v6, :cond_1a

    .line 1070
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v8}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1072
    :cond_1a
    if-eqz v6, :cond_1b

    .line 1073
    iget-object v6, v6, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    iget v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v6, v8, v7}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1075
    :cond_1b
    goto :goto_10

    .line 1079
    :cond_1c
    iput-object v6, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1081
    :goto_10
    add-int/lit8 v3, v3, 0x1

    .line 1082
    goto :goto_11

    .line 1083
    :cond_1d
    nop

    .line 1084
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v6, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/util/SparseArray;->remove(I)V

    .line 1085
    add-int/lit8 v4, v4, -0x1

    .line 1087
    const/4 v5, 0x1

    :goto_11
    goto :goto_f

    .line 1090
    :cond_1e
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1091
    move v4, v3

    const/4 v3, 0x0

    :goto_12
    if-ge v3, v4, :cond_21

    .line 1092
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1093
    iget-boolean v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mInteresting:Z

    if-eqz v8, :cond_1f

    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    iget v7, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_20

    .line 1094
    :cond_1f
    nop

    .line 1095
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 1096
    add-int/lit8 v3, v3, -0x1

    .line 1097
    add-int/lit8 v4, v4, -0x1

    .line 1091
    const/4 v5, 0x1

    :cond_20
    const/4 v7, 0x1

    add-int/2addr v3, v7

    goto :goto_12

    .line 1104
    :cond_21
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1105
    const/4 v4, 0x0

    :goto_13
    if-ge v4, v3, :cond_23

    .line 1106
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    invoke-virtual {v7, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1107
    iget v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v9, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v8, v9, :cond_22

    .line 1108
    iget v8, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v7, v2, v0, v8}, Lcom/android/settings/applications/RunningState$ProcessItem;->buildDependencyChain(Landroid/content/Context;Landroid/content/pm/PackageManager;I)Z

    move-result v7

    or-int/2addr v5, v7

    .line 1105
    :cond_22
    add-int/lit8 v4, v4, 0x1

    goto :goto_13

    .line 1113
    :cond_23
    nop

    .line 1114
    move-object v4, v6

    const/4 v3, 0x0

    :goto_14
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v7

    if-ge v3, v7, :cond_2c

    .line 1115
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/HashMap;

    .line 1116
    invoke-virtual {v7}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .line 1117
    :goto_15
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2b

    .line 1118
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1119
    iget v12, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v12, v13, :cond_27

    .line 1120
    invoke-virtual {v9, v0}, Lcom/android/settings/applications/RunningState$ProcessItem;->ensureLabel(Landroid/content/pm/PackageManager;)V

    .line 1121
    iget v12, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-nez v12, :cond_24

    .line 1124
    iget-object v12, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mDependentProcesses:Landroid/util/SparseArray;

    invoke-virtual {v12}, Landroid/util/SparseArray;->clear()V

    .line 1140
    :cond_24
    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .line 1141
    :goto_16
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_26

    .line 1142
    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1143
    iget v12, v12, Lcom/android/settings/applications/RunningState$ServiceItem;->mCurSeq:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v12, v13, :cond_25

    .line 1144
    nop

    .line 1145
    invoke-interface {v9}, Ljava/util/Iterator;->remove()V

    .line 1147
    const/4 v5, 0x1

    :cond_25
    goto :goto_16

    .line 1148
    :cond_26
    goto :goto_15

    .line 1127
    :cond_27
    nop

    .line 1128
    invoke-interface {v8}, Ljava/util/Iterator;->remove()V

    .line 1129
    invoke-virtual {v7}, Ljava/util/HashMap;->size()I

    move-result v5

    if-nez v5, :cond_29

    .line 1130
    if-nez v4, :cond_28

    .line 1131
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1133
    :cond_28
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v5, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1135
    :cond_29
    iget v5, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-eqz v5, :cond_2a

    .line 1136
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByPid:Landroid/util/SparseArray;

    iget v9, v9, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->remove(I)V

    .line 1117
    :cond_2a
    const/4 v5, 0x1

    goto :goto_15

    .line 1114
    :cond_2b
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_14

    .line 1151
    :cond_2c
    if-eqz v4, :cond_2d

    .line 1152
    const/4 v0, 0x0

    :goto_17
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_2d

    .line 1153
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1154
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v7, v3}, Landroid/util/SparseArray;->remove(I)V

    .line 1152
    add-int/lit8 v0, v0, 0x1

    goto :goto_17

    .line 1158
    :cond_2d
    if-eqz v5, :cond_41

    .line 1160
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1161
    const/4 v3, 0x0

    :goto_18
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_32

    .line 1162
    iget-object v4, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessesByName:Landroid/util/SparseArray;

    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_19
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_31

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1163
    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1164
    const/4 v8, 0x1

    iput-boolean v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1165
    const-wide v8, 0x7fffffffffffffffL

    iput-wide v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1166
    iget-object v8, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v8}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_30

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1167
    iget-object v12, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    if-eqz v12, :cond_2e

    iget-object v12, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mServiceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v12, v12, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v13, 0x1

    and-int/2addr v12, v13

    if-eqz v12, :cond_2e

    .line 1170
    iput-boolean v13, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsSystem:Z

    .line 1172
    :cond_2e
    iget-object v12, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v12, :cond_2f

    iget-object v12, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v12, v12, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v12, :cond_2f

    .line 1174
    const/4 v12, 0x0

    iput-boolean v12, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mIsStarted:Z

    .line 1175
    iget-wide v12, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    iget-object v14, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v14, v14, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    cmp-long v12, v12, v14

    if-lez v12, :cond_2f

    .line 1176
    iget-object v9, v9, Lcom/android/settings/applications/RunningState$ServiceItem;->mRunningService:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-wide v12, v9, Landroid/app/ActivityManager$RunningServiceInfo;->activeSince:J

    iput-wide v12, v7, Lcom/android/settings/applications/RunningState$ProcessItem;->mActiveSince:J

    .line 1179
    :cond_2f
    goto :goto_1a

    .line 1180
    :cond_30
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1181
    goto :goto_19

    .line 1161
    :cond_31
    add-int/lit8 v3, v3, 0x1

    goto :goto_18

    .line 1184
    :cond_32
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessComparator:Lcom/android/settings/applications/RunningState$ServiceProcessComparator;

    invoke-static {v0, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1186
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1187
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1189
    const/4 v7, 0x0

    :goto_1b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v7, v8, :cond_3a

    .line 1190
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1191
    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mNeedDivider:Z

    .line 1193
    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1195
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8, v3, v12}, Lcom/android/settings/applications/RunningState$ProcessItem;->addDependentProcesses(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1197
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1198
    iget v12, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    if-lez v12, :cond_33

    .line 1199
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1203
    :cond_33
    nop

    .line 1204
    nop

    .line 1205
    nop

    .line 1206
    iget-object v12, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v12}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v12

    invoke-interface {v12}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v14, v6

    const/4 v13, 0x0

    :goto_1c
    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_36

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1207
    iput-boolean v13, v15, Lcom/android/settings/applications/RunningState$ServiceItem;->mNeedDivider:Z

    .line 1208
    nop

    .line 1209
    invoke-virtual {v3, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1210
    iget-object v13, v15, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v13, :cond_35

    .line 1211
    if-eqz v14, :cond_34

    iget-object v13, v15, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-eq v14, v13, :cond_34

    .line 1212
    nop

    .line 1214
    :cond_34
    iget-object v13, v15, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1218
    move-object v14, v13

    goto :goto_1d

    .line 1216
    :cond_35
    nop

    .line 1218
    :goto_1d
    nop

    .line 1206
    const/4 v13, 0x1

    goto :goto_1c

    .line 1220
    :cond_36
    nop

    .line 1223
    new-instance v12, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v13, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v12, v13}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    .line 1224
    iget-object v13, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v13}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1e
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_37

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ServiceItem;

    .line 1225
    iget-object v15, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {v15, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1226
    iput-object v12, v14, Lcom/android/settings/applications/RunningState$ServiceItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1227
    goto :goto_1e

    .line 1228
    :cond_37
    iput-object v8, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1229
    iget-object v8, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 1230
    :goto_1f
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    const/4 v13, 0x1

    sub-int/2addr v8, v13

    if-ge v9, v8, :cond_38

    .line 1231
    iget-object v8, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mOtherProcesses:Ljava/util/ArrayList;

    iget-object v13, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v13, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v8, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1230
    add-int/lit8 v9, v9, 0x1

    goto :goto_1f

    .line 1235
    :cond_38
    const/4 v8, 0x0

    invoke-virtual {v12, v2, v8}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1236
    iget v8, v12, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v9, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v8, v9, :cond_39

    .line 1237
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v4, v8, v12}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_20

    .line 1239
    :cond_39
    invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1189
    :goto_20
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_1b

    .line 1245
    :cond_3a
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1246
    const/4 v7, 0x0

    :goto_21
    if-ge v7, v0, :cond_3e

    .line 1247
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mInterestingProcesses:Ljava/util/ArrayList;

    invoke-virtual {v8, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1248
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mClient:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-nez v9, :cond_3d

    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mServices:Ljava/util/HashMap;

    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    move-result v9

    if-gtz v9, :cond_3d

    .line 1249
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    if-nez v9, :cond_3b

    .line 1250
    new-instance v9, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v12, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v9, v12}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1251
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v8, v9, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1253
    :cond_3b
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v12, 0x0

    invoke-virtual {v9, v2, v12}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1254
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iget v9, v9, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v12, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v9, v12, :cond_3c

    .line 1255
    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    iget-object v12, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-direct {v1, v2, v4, v9, v12}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_22

    .line 1258
    :cond_3c
    iget-object v9, v8, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    const/4 v12, 0x0

    invoke-virtual {v4, v12, v9}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 1260
    :goto_22
    iget-object v9, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1246
    :cond_3d
    add-int/lit8 v7, v7, 0x1

    goto :goto_21

    .line 1266
    :cond_3e
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1267
    const/4 v7, 0x0

    :goto_23
    if-ge v7, v0, :cond_40

    .line 1268
    iget-object v8, v1, Lcom/android/settings/applications/RunningState;->mOtherUserMergedItems:Landroid/util/SparseArray;

    invoke-virtual {v8, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1269
    iget v9, v8, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    iget v12, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v9, v12, :cond_3f

    .line 1270
    const/4 v9, 0x0

    invoke-virtual {v8, v2, v9}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    goto :goto_24

    .line 1267
    :cond_3f
    const/4 v9, 0x0

    :goto_24
    add-int/lit8 v7, v7, 0x1

    goto :goto_23

    .line 1274
    :cond_40
    const/4 v9, 0x0

    iget-object v7, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 1275
    :try_start_0
    iput-object v3, v1, Lcom/android/settings/applications/RunningState;->mItems:Ljava/util/ArrayList;

    .line 1276
    iput-object v4, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    .line 1277
    monitor-exit v7

    goto :goto_25

    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 1282
    :cond_41
    const/4 v9, 0x0

    :goto_25
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1283
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1284
    nop

    .line 1285
    nop

    .line 1286
    nop

    .line 1287
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v0

    .line 1288
    move v3, v9

    move v4, v3

    move v7, v4

    move v8, v7

    :goto_26
    const/16 v12, 0xc8

    const/16 v13, 0x190

    if-ge v3, v0, :cond_45

    .line 1289
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mRunningProcesses:Landroid/util/SparseArray;

    invoke-virtual {v14, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1290
    iget v15, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v6, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-eq v15, v6, :cond_44

    .line 1293
    iget-object v6, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-lt v6, v13, :cond_42

    .line 1295
    add-int/lit8 v7, v7, 0x1

    .line 1296
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1297
    :cond_42
    iget-object v6, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v6, v6, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    if-gt v6, v12, :cond_43

    .line 1299
    add-int/lit8 v8, v8, 0x1

    .line 1300
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v6, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_27

    .line 1302
    :cond_43
    const-string v6, "RunningState"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Unknown non-service process: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " #"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v13, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_27

    .line 1306
    :cond_44
    add-int/lit8 v4, v4, 0x1

    .line 1288
    :goto_27
    add-int/lit8 v3, v3, 0x1

    const/4 v6, 0x0

    goto :goto_26

    .line 1310
    :cond_45
    nop

    .line 1311
    nop

    .line 1312
    nop

    .line 1313
    nop

    .line 1314
    nop

    .line 1315
    nop

    .line 1317
    :try_start_1
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1318
    new-array v3, v0, [I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_8

    .line 1319
    move v6, v9

    :goto_28
    if-ge v6, v0, :cond_46

    .line 1320
    :try_start_2
    iget-object v14, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v14, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/RunningState$ProcessItem;

    iget v14, v14, Lcom/android/settings/applications/RunningState$ProcessItem;->mPid:I

    aput v14, v3, v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1319
    add-int/lit8 v6, v6, 0x1

    goto :goto_28

    .line 1364
    :catch_0
    move-exception v0

    move/from16 v25, v5

    move-wide v14, v10

    move-wide/from16 v17, v14

    move-wide/from16 v19, v17

    const/4 v6, 0x0

    move v10, v9

    goto/16 :goto_36

    .line 1322
    :cond_46
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    .line 1323
    invoke-interface {v0, v3}, Landroid/app/IActivityManager;->getProcessPss([I)[J

    move-result-object v0
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_8

    .line 1324
    nop

    .line 1325
    move-wide v14, v10

    move-wide/from16 v17, v14

    move-wide/from16 v19, v17

    const/4 v6, 0x0

    move v11, v5

    move v5, v9

    move v10, v5

    :goto_29
    :try_start_4
    array-length v12, v3

    if-ge v5, v12, :cond_51

    .line 1326
    iget-object v12, v1, Lcom/android/settings/applications/RunningState;->mAllProcessItems:Ljava/util/ArrayList;

    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/settings/applications/RunningState$ProcessItem;
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_7

    .line 1327
    move-wide/from16 v21, v14

    :try_start_5
    aget-wide v13, v0, v5

    iget v15, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    invoke-virtual {v12, v2, v13, v14, v15}, Lcom/android/settings/applications/RunningState$ProcessItem;->updateSize(Landroid/content/Context;JI)Z

    move-result v13

    or-int/2addr v11, v13

    .line 1328
    iget v13, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mCurSeq:I

    iget v14, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v13, v14, :cond_47

    .line 1329
    iget-wide v12, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J

    add-long v19, v19, v12

    .line 1325
    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move/from16 v25, v11

    move-wide/from16 v14, v21

    :goto_2a
    const/16 v3, 0xc8

    goto/16 :goto_34

    .line 1330
    :cond_47
    iget-object v13, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v13, v13, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v14, 0x190

    if-lt v13, v14, :cond_4f

    .line 1332
    iget-wide v14, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_6

    add-long v13, v21, v14

    .line 1334
    if-eqz v6, :cond_49

    .line 1335
    :try_start_6
    new-instance v15, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object/from16 v23, v0

    iget v0, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v15, v0}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v15, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1336
    iget-object v0, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v12, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1337
    iget v0, v15, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v12, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v0, v12, :cond_48

    const/4 v0, 0x1

    goto :goto_2b

    :cond_48
    const/4 v0, 0x0

    :goto_2b
    or-int/2addr v10, v0

    .line 1338
    invoke-virtual {v6, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1356
    :goto_2c
    move-object/from16 v24, v3

    move/from16 v25, v11

    goto/16 :goto_33

    .line 1364
    :catch_1
    move-exception v0

    move/from16 v25, v11

    :goto_2d
    move-wide v14, v13

    goto/16 :goto_36

    .line 1340
    :cond_49
    move-object/from16 v23, v0

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v9, v0, :cond_4b

    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1341
    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eq v0, v12, :cond_4a

    goto :goto_2e

    .line 1353
    :cond_4a
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v15, v0

    check-cast v15, Lcom/android/settings/applications/RunningState$MergedItem;

    goto :goto_2c

    .line 1342
    :cond_4b
    :goto_2e
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15, v7}, Ljava/util/ArrayList;-><init>(I)V
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1343
    move v6, v10

    const/4 v0, 0x0

    :goto_2f
    if-ge v0, v9, :cond_4d

    .line 1344
    :try_start_7
    iget-object v10, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1345
    move-object/from16 v24, v3

    iget v3, v10, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_2

    move/from16 v25, v11

    :try_start_8
    iget v11, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v3, v11, :cond_4c

    const/4 v3, 0x1

    goto :goto_30

    :cond_4c
    const/4 v3, 0x0

    :goto_30
    or-int/2addr v6, v3

    .line 1346
    invoke-virtual {v15, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1343
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, v24

    move/from16 v11, v25

    goto :goto_2f

    .line 1364
    :catch_2
    move-exception v0

    move/from16 v25, v11

    :goto_31
    move v10, v6

    move-object v6, v15

    goto :goto_2d

    .line 1348
    :cond_4d
    move-object/from16 v24, v3

    move/from16 v25, v11

    new-instance v0, Lcom/android/settings/applications/RunningState$MergedItem;

    iget v3, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mUserId:I

    invoke-direct {v0, v3}, Lcom/android/settings/applications/RunningState$MergedItem;-><init>(I)V

    iput-object v0, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1349
    iget-object v3, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mMergedItem:Lcom/android/settings/applications/RunningState$MergedItem;

    iput-object v12, v3, Lcom/android/settings/applications/RunningState$MergedItem;->mProcess:Lcom/android/settings/applications/RunningState$ProcessItem;

    .line 1350
    iget v3, v0, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v10, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v3, v10, :cond_4e

    const/4 v3, 0x1

    goto :goto_32

    :cond_4e
    const/4 v3, 0x0

    :goto_32
    or-int/2addr v6, v3

    .line 1351
    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_4

    .line 1356
    move v10, v6

    move-object v6, v15

    move-object v15, v0

    :goto_33
    const/4 v3, 0x1

    :try_start_9
    invoke-virtual {v15, v2, v3}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1357
    invoke-virtual {v15, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_3

    .line 1358
    add-int/lit8 v9, v9, 0x1

    .line 1359
    nop

    .line 1325
    move-wide v14, v13

    goto/16 :goto_2a

    .line 1364
    :catch_3
    move-exception v0

    goto/16 :goto_2d

    :catch_4
    move-exception v0

    goto :goto_31

    .line 1359
    :cond_4f
    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move/from16 v25, v11

    :try_start_a
    iget-object v0, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mRunningProcessInfo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v3, 0xc8

    if-gt v0, v3, :cond_50

    .line 1361
    iget-wide v11, v12, Lcom/android/settings/applications/RunningState$ProcessItem;->mSize:J
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_5

    add-long v17, v17, v11

    .line 1325
    :cond_50
    move-wide/from16 v14, v21

    :goto_34
    add-int/lit8 v5, v5, 0x1

    move v12, v3

    move-object/from16 v0, v23

    move-object/from16 v3, v24

    move/from16 v11, v25

    const/16 v13, 0x190

    goto/16 :goto_29

    .line 1364
    :catch_5
    move-exception v0

    goto :goto_35

    :catch_6
    move-exception v0

    move/from16 v25, v11

    :goto_35
    move-wide/from16 v14, v21

    goto :goto_36

    .line 1365
    :cond_51
    move-wide/from16 v21, v14

    .line 1367
    move/from16 v26, v10

    move/from16 v25, v11

    goto :goto_37

    .line 1364
    :catch_7
    move-exception v0

    move-wide/from16 v21, v14

    move/from16 v25, v11

    goto :goto_36

    :catch_8
    move-exception v0

    move/from16 v25, v5

    move-wide v14, v10

    move-wide/from16 v17, v14

    move-wide/from16 v19, v17

    const/4 v6, 0x0

    const/4 v10, 0x0

    .line 1367
    :goto_36
    move/from16 v26, v10

    :goto_37
    move-wide/from16 v11, v17

    move-wide/from16 v9, v19

    if-nez v6, :cond_54

    .line 1369
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v7, :cond_54

    .line 1370
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v7}, Ljava/util/ArrayList;-><init>(I)V

    .line 1371
    const/4 v3, 0x0

    :goto_38
    if-ge v3, v7, :cond_53

    .line 1372
    iget-object v5, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1373
    iget v6, v5, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    iget v13, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v6, v13, :cond_52

    const/4 v6, 0x1

    goto :goto_39

    :cond_52
    const/4 v6, 0x0

    :goto_39
    or-int v26, v26, v6

    .line 1374
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1371
    add-int/lit8 v3, v3, 0x1

    goto :goto_38

    .line 1379
    :cond_53
    move-object v6, v0

    :cond_54
    if-eqz v6, :cond_5a

    .line 1382
    if-nez v26, :cond_55

    .line 1384
    nop

    .line 1412
    move-object/from16 v28, v6

    goto :goto_3d

    .line 1388
    :cond_55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1389
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1390
    const/4 v5, 0x0

    :goto_3a
    if-ge v5, v3, :cond_57

    .line 1391
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1392
    move/from16 v27, v3

    iget v3, v13, Lcom/android/settings/applications/RunningState$MergedItem;->mUserId:I

    move-object/from16 v28, v6

    iget v6, v1, Lcom/android/settings/applications/RunningState;->mMyUserId:I

    if-eq v3, v6, :cond_56

    .line 1393
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-direct {v1, v2, v0, v3, v13}, Lcom/android/settings/applications/RunningState;->addOtherUserItem(Landroid/content/Context;Ljava/util/ArrayList;Landroid/util/SparseArray;Lcom/android/settings/applications/RunningState$MergedItem;)V

    goto :goto_3b

    .line 1396
    :cond_56
    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1390
    :goto_3b
    add-int/lit8 v5, v5, 0x1

    move/from16 v3, v27

    move-object/from16 v6, v28

    goto :goto_3a

    .line 1401
    :cond_57
    move-object/from16 v28, v6

    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1402
    const/4 v5, 0x0

    :goto_3c
    if-ge v5, v3, :cond_59

    .line 1403
    iget-object v6, v1, Lcom/android/settings/applications/RunningState;->mOtherUserBackgroundItems:Landroid/util/SparseArray;

    invoke-virtual {v6, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/RunningState$MergedItem;

    .line 1404
    iget v13, v6, Lcom/android/settings/applications/RunningState$MergedItem;->mCurSeq:I

    move-object/from16 v29, v0

    iget v0, v1, Lcom/android/settings/applications/RunningState;->mSequence:I

    if-ne v13, v0, :cond_58

    .line 1405
    const/4 v13, 0x1

    invoke-virtual {v6, v2, v13}, Lcom/android/settings/applications/RunningState$MergedItem;->update(Landroid/content/Context;Z)Z

    .line 1406
    invoke-virtual {v6, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1402
    :cond_58
    add-int/lit8 v5, v5, 0x1

    move-object/from16 v0, v29

    goto :goto_3c

    .line 1412
    :cond_59
    move-object/from16 v29, v0

    move-object/from16 v6, v29

    goto :goto_3d

    :cond_5a
    move-object/from16 v28, v6

    const/4 v6, 0x0

    :goto_3d
    const/4 v0, 0x0

    :goto_3e
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_5b

    .line 1413
    iget-object v3, v1, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/RunningState$MergedItem;

    invoke-virtual {v3, v2}, Lcom/android/settings/applications/RunningState$MergedItem;->updateSize(Landroid/content/Context;)Z

    .line 1412
    add-int/lit8 v0, v0, 0x1

    goto :goto_3e

    .line 1416
    :cond_5b
    iget-object v2, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 1417
    :try_start_b
    iput v7, v1, Lcom/android/settings/applications/RunningState;->mNumBackgroundProcesses:I

    .line 1418
    iput v8, v1, Lcom/android/settings/applications/RunningState;->mNumForegroundProcesses:I

    .line 1419
    iput v4, v1, Lcom/android/settings/applications/RunningState;->mNumServiceProcesses:I

    .line 1420
    iput-wide v14, v1, Lcom/android/settings/applications/RunningState;->mBackgroundProcessMemory:J

    .line 1421
    iput-wide v11, v1, Lcom/android/settings/applications/RunningState;->mForegroundProcessMemory:J

    .line 1422
    iput-wide v9, v1, Lcom/android/settings/applications/RunningState;->mServiceProcessMemory:J

    .line 1423
    if-eqz v28, :cond_5c

    .line 1424
    move-object/from16 v0, v28

    iput-object v0, v1, Lcom/android/settings/applications/RunningState;->mBackgroundItems:Ljava/util/ArrayList;

    .line 1425
    iput-object v6, v1, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    .line 1426
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    if-eqz v0, :cond_5c

    .line 1427
    nop

    .line 1430
    const/16 v25, 0x1

    :cond_5c
    iget-boolean v0, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    if-nez v0, :cond_5d

    .line 1431
    const/4 v3, 0x1

    iput-boolean v3, v1, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 1432
    iget-object v0, v1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 1434
    :cond_5d
    monitor-exit v2

    .line 1436
    return v25

    .line 1434
    :catchall_1
    move-exception v0

    monitor-exit v2
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    throw v0
.end method


# virtual methods
.method getCurrentBackgroundItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .line 1452
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1453
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mUserBackgroundItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 1454
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method getCurrentMergedItems()Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/RunningState$MergedItem;",
            ">;"
        }
    .end annotation

    .line 1446
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1447
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mMergedItems:Ljava/util/ArrayList;

    monitor-exit v0

    return-object v1

    .line 1448
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method hasData()Z
    .locals 2

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 821
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    monitor-exit v0

    return v1

    .line 822
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method pause()V
    .locals 3

    .line 837
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 838
    const/4 v1, 0x0

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 839
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 840
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 841
    monitor-exit v0

    .line 842
    return-void

    .line 841
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method resume(Lcom/android/settings/applications/RunningState$OnRefreshUiListener;)V
    .locals 4

    .line 793
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 794
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mResumed:Z

    .line 795
    iput-object p1, p0, Lcom/android/settings/applications/RunningState;->mRefreshUiListener:Lcom/android/settings/applications/RunningState$OnRefreshUiListener;

    .line 796
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mUmBroadcastReceiver:Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;

    invoke-virtual {p1}, Lcom/android/settings/applications/RunningState$UserManagerBroadcastReceiver;->checkUsersChangedLocked()Z

    move-result p1

    .line 797
    iget-object v2, p0, Lcom/android/settings/applications/RunningState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/settings/applications/RunningState;->mApplicationContext:Landroid/content/Context;

    .line 798
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v2

    .line 799
    const/4 v3, 0x2

    if-nez p1, :cond_0

    if-eqz v2, :cond_1

    .line 800
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z

    .line 801
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 802
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 803
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v1}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 805
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_2

    .line 806
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {p1, v3}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 808
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/RunningState;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 809
    monitor-exit v0

    .line 810
    return-void

    .line 809
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method setWatchingBackgroundItems(Z)V
    .locals 1

    .line 1440
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1441
    :try_start_0
    iput-boolean p1, p0, Lcom/android/settings/applications/RunningState;->mWatchingBackgroundItems:Z

    .line 1442
    monitor-exit v0

    .line 1443
    return-void

    .line 1442
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method updateNow()V
    .locals 3

    .line 813
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->removeMessages(I)V

    .line 815
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mBackgroundHandler:Lcom/android/settings/applications/RunningState$BackgroundHandler;

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/RunningState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 816
    monitor-exit v0

    .line 817
    return-void

    .line 816
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method waitForData()V
    .locals 4

    .line 826
    iget-object v0, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 827
    :goto_0
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settings/applications/RunningState;->mHaveData:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v1, :cond_0

    .line 829
    :try_start_1
    iget-object v1, p0, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 830
    :catch_0
    move-exception v1

    .line 831
    :goto_1
    goto :goto_0

    .line 833
    :cond_0
    :try_start_2
    monitor-exit v0

    .line 834
    return-void

    .line 833
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1
.end method
