.class public Lcom/android/settings/datausage/AppDataUsage;
.super Lcom/android/settings/datausage/DataUsageBase;
.source "AppDataUsage.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# instance fields
.field private mAppItem:Lcom/android/settingslib/AppItem;

.field private mAppList:Landroid/support/v7/preference/PreferenceCategory;

.field private final mAppPrefCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Landroid/util/ArraySet<",
            "Landroid/support/v7/preference/Preference;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppSettings:Landroid/support/v7/preference/Preference;

.field private mAppSettingsIntent:Landroid/content/Intent;

.field private mBackgroundUsage:Landroid/support/v7/preference/Preference;

.field private mChartData:Lcom/android/settingslib/net/ChartData;

.field private final mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settingslib/net/ChartData;",
            ">;"
        }
    .end annotation
.end field

.field private mCycle:Lcom/android/settings/datausage/SpinnerPreference;

.field private mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

.field private mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mEnd:J

.field private mForegroundUsage:Landroid/support/v7/preference/Preference;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mLabel:Ljava/lang/CharSequence;

.field private mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mPackageName:Ljava/lang/String;

.field private final mPackages:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

.field private mStart:J

.field private mStatsSession:Landroid/net/INetworkStatsSession;

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTotalUsage:Landroid/support/v7/preference/Preference;

.field private mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 58
    invoke-direct {p0}, Lcom/android/settings/datausage/DataUsageBase;-><init>()V

    .line 79
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 365
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$1;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 382
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$2;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$2;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 401
    new-instance v0, Lcom/android/settings/datausage/AppDataUsage$3;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/AppDataUsage$3;-><init>(Lcom/android/settings/datausage/AppDataUsage;)V

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/SpinnerPreference;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/android/settings/datausage/AppDataUsage;)Landroid/support/v7/preference/PreferenceCategory;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    return-object p0
.end method

.method static synthetic access$202(Lcom/android/settings/datausage/AppDataUsage;J)J
    .locals 0

    .line 58
    iput-wide p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/android/settings/datausage/AppDataUsage;)V
    .locals 0

    .line 58
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->bindData()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/INetworkStatsSession;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/datausage/AppDataUsage;Lcom/android/settingslib/net/ChartData;)Lcom/android/settingslib/net/ChartData;
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/datausage/AppDataUsage;)Landroid/net/NetworkPolicy;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/datausage/AppDataUsage;)Lcom/android/settings/datausage/CycleAdapter;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/datausage/AppDataUsage;)Landroid/content/Context;
    .locals 0

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/datausage/AppDataUsage;)Landroid/util/ArraySet;
    .locals 0

    .line 58
    iget-object p0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    return-object p0
.end method

.method private addUid(I)V
    .locals 3

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object p1

    .line 286
    if-eqz p1, :cond_0

    .line 287
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 288
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 287
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 291
    :cond_0
    return-void
.end method

.method private bindData()V
    .locals 12

    .line 295
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_1

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 299
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    .line 300
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 301
    const/4 v9, 0x0

    .line 302
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v2, v2, Lcom/android/settingslib/net/ChartData;->detailDefault:Landroid/net/NetworkStatsHistory;

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    move-wide v7, v0

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v9

    .line 303
    iget-wide v2, v9, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v4, v9, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long v10, v2, v4

    .line 304
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartData:Lcom/android/settingslib/net/ChartData;

    iget-object v2, v2, Lcom/android/settingslib/net/ChartData;->detailForeground:Landroid/net/NetworkStatsHistory;

    iget-wide v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mStart:J

    iget-wide v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mEnd:J

    invoke-virtual/range {v2 .. v9}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 305
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v1, v3

    .line 307
    move-wide v3, v1

    move-wide v1, v10

    goto :goto_1

    .line 296
    :cond_1
    :goto_0
    nop

    .line 297
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings/datausage/SpinnerPreference;->setVisible(Z)V

    .line 307
    move-wide v3, v1

    :goto_1
    add-long v5, v1, v3

    .line 308
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 310
    iget-object v7, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v5, v6}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v3, v4}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v5, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    invoke-static {v0, v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 313
    return-void
.end method

.method private getAppRestrictBackground()Z
    .locals 2

    .line 316
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    .line 317
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    .line 318
    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private getUnrestrictData()Z
    .locals 2

    .line 322
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 323
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v1, v1, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/DataSaverBackend;->isWhitelisted(I)Z

    move-result v0

    return v0

    .line 325
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private updatePrefs(ZZ)V
    .locals 3

    .line 267
    nop

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 267
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 269
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_0

    .line 270
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v2, p1, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 271
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 273
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz v1, :cond_2

    .line 274
    if-eqz p1, :cond_1

    .line 275
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setVisible(Z)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setVisible(Z)V

    .line 278
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 279
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 282
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 362
    const/16 v0, 0x157

    return v0
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 2

    .line 437
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 438
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result p1

    invoke-direct {p0, p2, p1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 440
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 106
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 107
    new-instance p1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 111
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    invoke-interface {v0}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    nop

    .line 116
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    const-string v1, "app_item"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/AppItem;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 117
    if-eqz p1, :cond_1

    const-string v1, "network_template"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    goto :goto_1

    .line 118
    :cond_1
    move-object v1, v0

    :goto_1
    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 119
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    if-nez v1, :cond_2

    .line 120
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 121
    nop

    .line 122
    invoke-static {v1}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultSubscriptionId(Landroid/content/Context;)I

    move-result v2

    .line 121
    invoke-static {v1, v2}, Lcom/android/settings/datausage/DataUsageUtils;->getDefaultTemplate(Landroid/content/Context;I)Landroid/net/NetworkTemplate;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    .line 124
    :cond_2
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    const/4 v2, 0x0

    if-nez v1, :cond_5

    .line 125
    const/4 v1, -0x1

    if-eqz p1, :cond_3

    const-string v3, "uid"

    invoke-virtual {p1, v3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_2

    .line 126
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v3, "uid"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 127
    :goto_2
    if-ne p1, v1, :cond_4

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_3

    .line 131
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 132
    new-instance v1, Lcom/android/settingslib/AppItem;

    invoke-direct {v1, p1}, Lcom/android/settingslib/AppItem;-><init>(I)V

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 133
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/AppItem;->addUid(I)V

    .line 135
    :goto_3
    goto :goto_5

    .line 136
    :cond_5
    move p1, v2

    :goto_4
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v1, v1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1}, Landroid/util/SparseBooleanArray;->size()I

    move-result v1

    if-ge p1, v1, :cond_6

    .line 137
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v1, v1, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseBooleanArray;->keyAt(I)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/AppDataUsage;->addUid(I)V

    .line 136
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 140
    :cond_6
    :goto_5
    const p1, 0x7f150014    # @xml/app_data_usage 'res/xml/app_data_usage.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->addPreferencesFromResource(I)V

    .line 142
    const-string p1, "total_usage"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTotalUsage:Landroid/support/v7/preference/Preference;

    .line 143
    const-string p1, "foreground_usage"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mForegroundUsage:Landroid/support/v7/preference/Preference;

    .line 144
    const-string p1, "background_usage"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mBackgroundUsage:Landroid/support/v7/preference/Preference;

    .line 146
    const-string p1, "cycle"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/SpinnerPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    .line 147
    new-instance p1, Lcom/android/settings/datausage/CycleAdapter;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycle:Lcom/android/settings/datausage/SpinnerPreference;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-direct {p1, v1, v3, v4, v2}, Lcom/android/settings/datausage/CycleAdapter;-><init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mCycleAdapter:Lcom/android/settings/datausage/CycleAdapter;

    .line 149
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    const/4 v1, 0x1

    if-lez p1, :cond_d

    .line 150
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-eqz p1, :cond_7

    .line 152
    :try_start_1
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    .line 153
    invoke-virtual {v3, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v4, v4, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 152
    invoke-virtual {p1, v3, v2, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 155
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {p1, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 156
    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 158
    goto :goto_6

    .line 157
    :catch_0
    move-exception p1

    .line 160
    :cond_7
    :goto_6
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget p1, p1, Lcom/android/settingslib/AppItem;->key:I

    invoke-static {p1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result p1

    if-nez p1, :cond_8

    .line 161
    const-string p1, "unrestricted_data_saver"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 162
    const-string p1, "restrict_background"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    goto :goto_7

    .line 164
    :cond_8
    const-string p1, "restrict_background"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 166
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 167
    const-string p1, "unrestricted_data_saver"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 169
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 171
    :goto_7
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {p1, v3}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 172
    const-string p1, "app_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 174
    new-instance p1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {p1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    .line 175
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    const-string v3, "android.intent.category.DEFAULT"

    invoke-virtual {p1, v3}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 178
    nop

    .line 179
    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_8
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 180
    iget-object v5, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {v5, v4}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 181
    iget-object v4, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v4, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 182
    nop

    .line 183
    nop

    .line 186
    move v2, v1

    goto :goto_9

    .line 185
    :cond_9
    goto :goto_8

    .line 186
    :cond_a
    :goto_9
    if-nez v2, :cond_b

    .line 187
    const-string p1, "app_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 188
    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    .line 191
    :cond_b
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    if-le p1, v1, :cond_c

    .line 192
    const-string p1, "app_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppList:Landroid/support/v7/preference/PreferenceCategory;

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object p1

    const/4 v0, 0x3

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppPrefCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/LoaderManager;->initLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_a

    .line 195
    :cond_c
    const-string p1, "app_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 197
    :goto_a
    goto :goto_b

    .line 198
    :cond_d
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 199
    new-instance v0, Lcom/android/settingslib/net/UidDetailProvider;

    invoke-direct {v0, p1}, Lcom/android/settingslib/net/UidDetailProvider;-><init>(Landroid/content/Context;)V

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    invoke-virtual {v0, v2, v1}, Lcom/android/settingslib/net/UidDetailProvider;->getUidDetail(IZ)Lcom/android/settingslib/net/UidDetail;

    move-result-object v0

    .line 200
    iget-object v1, v0, Lcom/android/settingslib/net/UidDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 201
    iget-object v0, v0, Lcom/android/settingslib/net/UidDetail;->label:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 202
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    .line 204
    const-string p1, "unrestricted_data_saver"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 205
    const-string p1, "app_settings"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 206
    const-string p1, "restrict_background"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 207
    const-string p1, "app_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/AppDataUsage;->removePreference(Ljava/lang/String;)Z

    .line 209
    :goto_b
    return-void

    .line 112
    :catch_1
    move-exception p1

    .line 113
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 426
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mStatsSession:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 214
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onDestroy()V

    .line 215
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 231
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onPause()V

    .line 232
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 235
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 239
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mRestrictBackground:Lcom/android/settingslib/RestrictedSwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 240
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    xor-int/2addr p2, v1

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsBlacklisted(ILjava/lang/String;Z)V

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 242
    return v1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mUnrestrictedData:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-ne p1, v0, :cond_1

    .line 244
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v0, v0, Lcom/android/settingslib/AppItem;->key:I

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageName:Ljava/lang/String;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p1, v0, v2, p2}, Lcom/android/settings/datausage/DataSaverBackend;->setIsWhitelisted(ILjava/lang/String;Z)V

    .line 245
    return v1

    .line 247
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 252
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettings:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppSettingsIntent:Landroid/content/Intent;

    new-instance v1, Landroid/os/UserHandle;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    .line 255
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 254
    invoke-virtual {p1, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 256
    const/4 p1, 0x1

    return p1

    .line 258
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/datausage/DataUsageBase;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 219
    invoke-super {p0}, Lcom/android/settings/datausage/DataUsageBase;->onResume()V

    .line 220
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    if-eqz v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mPolicy:Landroid/net/NetworkPolicy;

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mTemplate:Landroid/net/NetworkTemplate;

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    .line 225
    invoke-static {v2, v3}, Lcom/android/settingslib/net/ChartDataLoader;->buildArgs(Landroid/net/NetworkTemplate;Lcom/android/settingslib/AppItem;)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/datausage/AppDataUsage;->mChartDataCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 224
    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs()V

    .line 227
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/settings/datausage/DataUsageBase;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 332
    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result p1

    const/4 p2, 0x0

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackages:Landroid/util/ArraySet;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    goto :goto_0

    .line 333
    :cond_0
    move-object p1, p2

    .line 334
    :goto_0
    if-eqz p1, :cond_1

    .line 336
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/AppDataUsage;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    .line 337
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    .line 336
    invoke-virtual {v1, p1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 340
    goto :goto_1

    .line 338
    :catch_0
    move-exception v1

    .line 339
    const-string v1, "AppDataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skipping UID because cannot find package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 343
    :cond_1
    move v1, v0

    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget v2, v2, Lcom/android/settingslib/AppItem;->key:I

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_2

    .line 345
    :cond_2
    move v2, v0

    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 346
    nop

    .line 347
    invoke-static {v3, p0, p2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 348
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v5

    invoke-virtual {p2, v4, v5}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 349
    invoke-virtual {p2, v1}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 350
    invoke-virtual {p2, v2}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 351
    invoke-virtual {p2, v0, v0}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 353
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mLabel:Ljava/lang/CharSequence;

    .line 354
    invoke-virtual {p2, v0}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p2

    .line 355
    invoke-virtual {p2, p1}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object p1

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPrefContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, v3, p2}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object p1

    .line 357
    invoke-virtual {p0}, Lcom/android/settings/datausage/AppDataUsage;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 358
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 2

    .line 430
    iget-object v0, p0, Lcom/android/settings/datausage/AppDataUsage;->mAppItem:Lcom/android/settingslib/AppItem;

    iget-object v0, v0, Lcom/android/settingslib/AppItem;->uids:Landroid/util/SparseBooleanArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseBooleanArray;->get(IZ)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 431
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result p1

    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 433
    :cond_0
    return-void
.end method

.method updatePrefs()V
    .locals 2

    .line 263
    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getAppRestrictBackground()Z

    move-result v0

    invoke-direct {p0}, Lcom/android/settings/datausage/AppDataUsage;->getUnrestrictData()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/datausage/AppDataUsage;->updatePrefs(ZZ)V

    .line 264
    return-void
.end method
