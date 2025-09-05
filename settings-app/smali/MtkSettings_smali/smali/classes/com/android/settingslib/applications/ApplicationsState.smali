.class public Lcom/android/settingslib/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/applications/ApplicationsState$CompoundFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$VolumeFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppFilter;,
        Lcom/android/settingslib/applications/ApplicationsState$AppEntry;,
        Lcom/android/settingslib/applications/ApplicationsState$SizeInfo;,
        Lcom/android/settingslib/applications/ApplicationsState$Callbacks;,
        Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;,
        Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$MainHandler;,
        Lcom/android/settingslib/applications/ApplicationsState$Session;
    }
.end annotation


# static fields
.field public static final ALPHA_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field public static final FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

.field public static final INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static final REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

.field public static final SIZE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field static sInstance:Lcom/android/settingslib/applications/ApplicationsState;

.field static final sLock:Ljava/lang/Object;


# instance fields
.field final mActiveSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field final mAdminRetrieveFlags:I

.field final mAppEntries:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;"
        }
    .end annotation
.end field

.field mApplications:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

.field final mContext:Landroid/content/Context;

.field mCurComputingSizePkg:Ljava/lang/String;

.field mCurComputingSizeUserId:I

.field mCurComputingSizeUuid:Ljava/util/UUID;

.field mCurId:J

.field final mDrawableFactory:Landroid/util/IconDrawableFactory;

.field final mEntriesMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;>;"
        }
    .end annotation
.end field

.field mHaveDisabledApps:Z

.field mHaveInstantApps:Z

.field final mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

.field final mIpm:Landroid/content/pm/IPackageManager;

.field final mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

.field mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

.field final mPm:Landroid/content/pm/PackageManager;

.field final mRebuildingSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mResumed:Z

.field final mRetrieveFlags:I

.field final mSessions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$Session;",
            ">;"
        }
    .end annotation
.end field

.field mSessionsChanged:Z

.field final mStats:Landroid/app/usage/StorageStatsManager;

.field final mThread:Landroid/os/HandlerThread;

.field final mUm:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    .line 90
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->REMOVE_DIACRITICALS_PATTERN:Ljava/util/regex/Pattern;

    .line 92
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    .line 1440
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->ALPHA_COMPARATOR:Ljava/util/Comparator;

    .line 1459
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1469
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->INTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1479
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->EXTERNAL_SIZE_COMPARATOR:Ljava/util/Comparator;

    .line 1497
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PERSONAL:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1511
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITHOUT_DISABLED_UNTIL_USED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1524
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WORK:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1541
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1566
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$9;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$9;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DOWNLOADED_AND_LAUNCHER_AND_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1580
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$10;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$10;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_THIRD_PARTY:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1596
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$11;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$11;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_DISABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1607
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$12;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$12;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_INSTANT:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1618
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$13;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$13;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_ALL_ENABLED:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1629
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$14;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$14;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_EVERYTHING:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1640
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$15;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$15;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_WITH_DOMAIN_URLS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1652
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$16;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$16;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_NOT_HIDE:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1680
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$17;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$17;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_GAMES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1741
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$18;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$18;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_AUDIO:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1756
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$19;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$19;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_MOVIES:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1771
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$20;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$20;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_PHOTOS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    .line 1786
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$21;

    invoke-direct {v0}, Lcom/android/settingslib/applications/ApplicationsState$21;-><init>()V

    sput-object v0, Lcom/android/settingslib/applications/ApplicationsState;->FILTER_OTHER_APPS:Lcom/android/settingslib/applications/ApplicationsState$AppFilter;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 7

    .line 173
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRebuildingSessions:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Lcom/android/settingslib/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settingslib/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    .line 124
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 128
    const-wide/16 v0, 0x1

    iput-wide v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    .line 135
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    .line 139
    new-instance v2, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    .line 174
    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 175
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPm:Landroid/content/pm/PackageManager;

    .line 176
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 177
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 178
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-class v2, Landroid/os/UserManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    .line 179
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    const-class v2, Landroid/app/usage/StorageStatsManager;

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/usage/StorageStatsManager;

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    .line 180
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object p1

    array-length v2, p1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget v4, p1, v3

    .line 181
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v5, v4, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 180
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 183
    :cond_0
    new-instance p1, Landroid/os/HandlerThread;

    const-string v2, "ApplicationsState.Loader"

    const/16 v3, 0xa

    invoke-direct {p1, v2, v3}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    .line 185
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 186
    new-instance p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v2}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    .line 189
    const p1, 0x408200

    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    .line 192
    const p1, 0x8200

    iput p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 209
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 211
    :try_start_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 213
    goto :goto_1

    .line 214
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 212
    :catch_0
    move-exception v0

    .line 214
    :goto_1
    :try_start_1
    monitor-exit p1

    .line 215
    return-void

    .line 214
    :goto_2
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(II)Z
    .locals 0

    .line 81
    invoke-static {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalInternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$500(Lcom/android/settingslib/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 0

    .line 81
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getSizeStr(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settingslib/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->getTotalExternalSize(Landroid/content/pm/PackageStats;)J

    move-result-wide p0

    return-wide p0
.end method

.method static synthetic access$700(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->addUser(I)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settingslib/applications/ApplicationsState;I)V
    .locals 0

    .line 81
    invoke-direct {p0, p1}, Lcom/android/settingslib/applications/ApplicationsState;->removeUser(I)V

    return-void
.end method

.method private addUser(I)V
    .locals 3

    .line 536
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getProfileIdsWithDisabled(I)[I

    move-result-object v0

    .line 537
    invoke-static {v0, p1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 538
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 539
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v1, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 540
    iget-boolean p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz p1, :cond_0

    .line 544
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 545
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doResumeIfNeededLocked()V

    .line 547
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 548
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 550
    :cond_1
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 552
    :cond_2
    :goto_0
    return-void
.end method

.method private getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    .locals 3

    .line 362
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 363
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 364
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v2, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 365
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 366
    return-object v1

    .line 362
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 369
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 7

    .line 571
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    .line 572
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 574
    if-nez v1, :cond_0

    .line 576
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    const-wide/16 v5, 0x1

    add-long/2addr v5, v3

    iput-wide v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurId:J

    invoke-direct {v1, v2, p1, v3, v4}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 577
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 578
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 579
    :cond_0
    iget-object v0, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    if-eq v0, p1, :cond_1

    .line 580
    iput-object p1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 582
    :cond_1
    :goto_0
    return-object v1
.end method

.method public static getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 2

    .line 96
    sget-object v0, Lcom/android/settingslib/applications/ApplicationsState;->sLock:Ljava/lang/Object;

    monitor-enter v0

    .line 97
    :try_start_0
    sget-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    if-nez v1, :cond_0

    .line 98
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState;

    invoke-direct {v1, p0}, Lcom/android/settingslib/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v1, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    .line 100
    :cond_0
    sget-object p0, Lcom/android/settingslib/applications/ApplicationsState;->sInstance:Lcom/android/settingslib/applications/ApplicationsState;

    monitor-exit v0

    return-object p0

    .line 101
    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getSizeStr(J)Ljava/lang/String;
    .locals 2

    .line 606
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 607
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 609
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private getTotalExternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    .line 595
    if-eqz p1, :cond_0

    .line 598
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    return-wide v0

    .line 602
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method private getTotalInternalSize(Landroid/content/pm/PackageStats;)J
    .locals 4

    .line 588
    if-eqz p1, :cond_0

    .line 589
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    return-wide v0

    .line 591
    :cond_0
    const-wide/16 v0, -0x2

    return-wide v0
.end method

.method private static hasFlag(II)Z
    .locals 0

    .line 1434
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static synthetic lambda$requestSize$0(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V
    .locals 3

    .line 389
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 393
    invoke-static {p3}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 390
    invoke-virtual {v0, v1, p2, v2}, Landroid/app/usage/StorageStatsManager;->queryStatsForPackage(Ljava/util/UUID;Ljava/lang/String;Landroid/os/UserHandle;)Landroid/app/usage/StorageStats;

    move-result-object v0

    .line 394
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mStats:Landroid/app/usage/StorageStatsManager;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->storageUuid:Ljava/util/UUID;

    .line 396
    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 395
    invoke-virtual {v1, v2, p1}, Landroid/app/usage/StorageStatsManager;->getCacheQuotaBytes(Ljava/lang/String;I)J

    move-result-wide v1

    .line 397
    new-instance p1, Landroid/content/pm/PackageStats;

    invoke-direct {p1, p2, p3}, Landroid/content/pm/PackageStats;-><init>(Ljava/lang/String;I)V

    .line 398
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCodeBytes()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->codeSize:J

    .line 399
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getDataBytes()J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    .line 400
    invoke-virtual {v0}, Landroid/app/usage/StorageStats;->getCacheBytes()J

    move-result-wide p2

    invoke-static {p2, p3, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p2

    iput-wide p2, p1, Landroid/content/pm/PackageStats;->cacheSize:J
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 402
    :try_start_1
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p2, p2, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p3, 0x1

    invoke-virtual {p2, p1, p3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 405
    goto :goto_0

    .line 404
    :catch_0
    move-exception p1

    .line 413
    :goto_0
    goto :goto_1

    .line 406
    :catch_1
    move-exception p1

    .line 407
    const-string p2, "ApplicationsState"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Failed to query stats: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :try_start_2
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->mStatsObserver:Landroid/content/pm/IPackageStatsObserver$Stub;

    const/4 p2, 0x0

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/pm/IPackageStatsObserver$Stub;->onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 412
    goto :goto_1

    .line 411
    :catch_2
    move-exception p1

    .line 414
    :goto_1
    return-void
.end method

.method private removeUser(I)V
    .locals 4

    .line 555
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 556
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    .line 557
    if-eqz v1, :cond_1

    .line 558
    invoke-virtual {v1}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 559
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 560
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 561
    goto :goto_0

    .line 562
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->remove(I)V

    .line 563
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 564
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 567
    :cond_1
    monitor-exit v0

    .line 568
    return-void

    .line 567
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method addPackage(Ljava/lang/String;I)V
    .locals 3

    .line 446
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 449
    :try_start_1
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v1, :cond_0

    .line 454
    monitor-exit v0

    return-void

    .line 456
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    if-ltz v1, :cond_1

    .line 459
    monitor-exit v0

    return-void

    .line 461
    :cond_1
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 462
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-virtual {v2, p2}, Landroid/os/UserManager;->isUserAdmin(I)Z

    move-result v2

    if-eqz v2, :cond_2

    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    goto :goto_0

    :cond_2
    iget v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    .line 461
    :goto_0
    invoke-interface {v1, p1, v2, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 464
    if-nez p1, :cond_3

    .line 465
    monitor-exit v0

    return-void

    .line 467
    :cond_3
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    if-nez p2, :cond_5

    .line 468
    iget p2, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v2, 0x3

    if-eq p2, v2, :cond_4

    .line 470
    monitor-exit v0

    return-void

    .line 472
    :cond_4
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 474
    :cond_5
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 475
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 477
    :cond_6
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 478
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_7

    .line 479
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 481
    :cond_7
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 482
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 485
    :cond_8
    monitor-exit v0

    .line 487
    goto :goto_1

    .line 485
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p1
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 486
    :catch_0
    move-exception p1

    .line 488
    :goto_1
    return-void
.end method

.method clearEntries()V
    .locals 2

    .line 305
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 306
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 305
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 308
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 309
    return-void
.end method

.method doPauseIfNeededLocked()V
    .locals 2

    .line 319
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    .line 320
    return-void

    .line 322
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 323
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$Session;

    iget-boolean v1, v1, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v1, :cond_1

    .line 324
    return-void

    .line 322
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->doPauseLocked()V

    .line 328
    return-void
.end method

.method doPauseLocked()V
    .locals 1

    .line 331
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 332
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 333
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 334
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 336
    :cond_0
    return-void
.end method

.method doResumeIfNeededLocked()V
    .locals 7

    .line 234
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mResumed:Z

    .line 238
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 239
    new-instance v1, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v1, p0, v2}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$1;)V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    .line 240
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mPackageIntentReceiver:Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v1}, Lcom/android/settingslib/applications/ApplicationsState$PackageIntentReceiver;->registerReceiver()V

    .line 242
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    .line 243
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mUm:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 246
    :try_start_0
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v4

    if-gez v4, :cond_2

    .line 247
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v4, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 250
    :cond_2
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    .line 252
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v5

    if-eqz v5, :cond_3

    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAdminRetrieveFlags:I

    goto :goto_1

    :cond_3
    iget v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mRetrieveFlags:I

    :goto_1
    iget v3, v3, Landroid/content/pm/UserInfo;->id:I

    .line 251
    invoke-interface {v4, v5, v3}, Landroid/content/pm/IPackageManager;->getInstalledApplications(II)Landroid/content/pm/ParceledListSlice;

    move-result-object v3

    .line 254
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-virtual {v3}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    goto :goto_2

    .line 255
    :catch_0
    move-exception v3

    .line 257
    :goto_2
    goto :goto_0

    .line 259
    :cond_4
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mInterestingConfigChanges:Lcom/android/settingslib/applications/InterestingConfigChanges;

    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/settingslib/applications/InterestingConfigChanges;->applyNewConfig(Landroid/content/res/Resources;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 262
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    goto :goto_4

    .line 264
    :cond_5
    move v1, v3

    :goto_3
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_6

    .line 265
    iget-object v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iput-boolean v0, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStale:Z

    .line 264
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 269
    :cond_6
    :goto_4
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 270
    iput-boolean v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 271
    :goto_5
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    .line 272
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 275
    iget-boolean v4, v1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_8

    .line 276
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_7

    .line 277
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 278
    add-int/lit8 v3, v3, -0x1

    .line 279
    goto :goto_6

    .line 281
    :cond_7
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 283
    :cond_8
    iget-boolean v4, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    if-nez v4, :cond_9

    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 284
    iput-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 287
    :cond_9
    iget v4, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 288
    iget-object v5, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v5, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/HashMap;

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 289
    if-eqz v4, :cond_a

    .line 290
    iput-object v1, v4, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    .line 271
    :cond_a
    :goto_6
    add-int/2addr v3, v0

    goto :goto_5

    .line 293
    :cond_b
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v0, v1, :cond_c

    .line 295
    invoke-virtual {p0}, Lcom/android/settingslib/applications/ApplicationsState;->clearEntries()V

    .line 297
    :cond_c
    iput-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mCurComputingSizePkg:Ljava/lang/String;

    .line 298
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_d

    .line 299
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 301
    :cond_d
    return-void
.end method

.method public ensureIcon(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 2

    .line 373
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 374
    return-void

    .line 376
    :cond_0
    monitor-enter p1

    .line 377
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {p1, v0, v1}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureIconLocked(Landroid/content/Context;Landroid/util/IconDrawableFactory;)Z

    .line 378
    monitor-exit p1

    .line 379
    return-void

    .line 378
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getBackgroundLooper()Landroid/os/Looper;
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method public getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 4

    .line 340
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 341
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 342
    if-nez v1, :cond_1

    .line 343
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->getAppInfoLocked(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 344
    if-nez v2, :cond_0

    .line 346
    :try_start_1
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mIpm:Landroid/content/pm/IPackageManager;

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3, p2}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 350
    goto :goto_0

    .line 347
    :catch_0
    move-exception p1

    .line 348
    :try_start_2
    const-string p2, "ApplicationsState"

    const-string v1, "getEntry couldn\'t reach PackageManager"

    invoke-static {p2, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 349
    const/4 p1, 0x0

    monitor-exit v0

    return-object p1

    .line 352
    :cond_0
    :goto_0
    if-eqz v2, :cond_1

    .line 353
    invoke-direct {p0, v2}, Lcom/android/settingslib/applications/ApplicationsState;->getEntryLocked(Landroid/content/pm/ApplicationInfo;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 357
    :cond_1
    monitor-exit v0

    return-object v1

    .line 358
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public haveDisabledApps()Z
    .locals 1

    .line 312
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    return v0
.end method

.method public haveInstantApps()Z
    .locals 1

    .line 315
    iget-boolean v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    return v0
.end method

.method indexOfApplicationInfoLocked(Ljava/lang/String;I)I
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 435
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 436
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 437
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    if-ne v1, p2, :cond_0

    .line 438
    return v0

    .line 434
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 441
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public invalidatePackage(Ljava/lang/String;I)V
    .locals 0

    .line 531
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->removePackage(Ljava/lang/String;I)V

    .line 532
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->addPackage(Ljava/lang/String;I)V

    .line 533
    return-void
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    .line 222
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object p1

    return-object p1
.end method

.method public newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;
    .locals 1

    .line 226
    new-instance v0, Lcom/android/settingslib/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$Session;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)V

    .line 227
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter p1

    .line 228
    :try_start_0
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    monitor-exit p1

    .line 230
    return-object v0

    .line 229
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method rebuildActiveSessions()V
    .locals 4

    .line 613
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 614
    :try_start_0
    iget-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessionsChanged:Z

    if-nez v1, :cond_0

    .line 615
    monitor-exit v0

    return-void

    .line 617
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 618
    const/4 v1, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 619
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mSessions:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 620
    iget-boolean v3, v2, Lcom/android/settingslib/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_1

    .line 621
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mActiveSessions:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 618
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 624
    :cond_2
    monitor-exit v0

    .line 625
    return-void

    .line 624
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public removePackage(Ljava/lang/String;I)V
    .locals 4

    .line 491
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 493
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/applications/ApplicationsState;->indexOfApplicationInfoLocked(Ljava/lang/String;I)I

    move-result v1

    .line 495
    if-ltz v1, :cond_5

    .line 496
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 498
    if-eqz v2, :cond_0

    .line 499
    iget-object v3, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v3, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/HashMap;

    invoke-virtual {p2, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 500
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mAppEntries:Ljava/util/ArrayList;

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 502
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ApplicationInfo;

    .line 503
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 504
    iget-boolean p2, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez p2, :cond_2

    .line 505
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 506
    iget-object p2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ApplicationInfo;

    .line 507
    iget-boolean v3, v3, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v3, :cond_1

    .line 508
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveDisabledApps:Z

    .line 509
    goto :goto_1

    .line 511
    :cond_1
    goto :goto_0

    .line 513
    :cond_2
    :goto_1
    invoke-static {p1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 514
    iput-boolean v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 515
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mApplications:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/content/pm/ApplicationInfo;

    .line 516
    invoke-static {p2}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 517
    iput-boolean v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mHaveInstantApps:Z

    .line 518
    goto :goto_3

    .line 520
    :cond_3
    goto :goto_2

    .line 522
    :cond_4
    :goto_3
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result p1

    if-nez p1, :cond_5

    .line 523
    iget-object p1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mMainHandler:Lcom/android/settingslib/applications/ApplicationsState$MainHandler;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 527
    :cond_5
    monitor-exit v0

    .line 528
    return-void

    .line 527
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public requestSize(Ljava/lang/String;I)V
    .locals 4

    .line 383
    iget-object v0, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    monitor-enter v0

    .line 384
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/applications/ApplicationsState;->mEntriesMap:Landroid/util/SparseArray;

    invoke-virtual {v1, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 385
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v3, 0x800000

    invoke-static {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->hasFlag(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/android/settingslib/applications/ApplicationsState;->mBackgroundHandler:Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;

    new-instance v3, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;

    invoke-direct {v3, p0, v1, p1, p2}, Lcom/android/settingslib/applications/-$$Lambda$ApplicationsState$LuXUFbWTiS5lu-nO9WUp0g2nHmU;-><init>(Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/String;I)V

    invoke-virtual {v2, v3}, Lcom/android/settingslib/applications/ApplicationsState$BackgroundHandler;->post(Ljava/lang/Runnable;)Z

    .line 417
    :cond_0
    monitor-exit v0

    .line 418
    return-void

    .line 417
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
