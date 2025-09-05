.class public Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryAppListPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;


# static fields
.field static final USE_FAKE_DATA:Z


# instance fields
.field private mActivity:Lcom/android/settings/SettingsActivity;

.field mAnomalySparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;"
        }
    .end annotation
.end field

.field mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

.field private mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mHandler:Landroid/os/Handler;

.field private mPrefContext:Landroid/content/Context;

.field private mPreferenceCache:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    .line 118
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 85
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController$1;-><init>(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    .line 120
    if-eqz p3, :cond_0

    .line 121
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 124
    :cond_0
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    .line 125
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 126
    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 127
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 128
    iput-object p5, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 129
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Landroid/os/UserManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;)Lcom/android/settings/SettingsActivity;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    return-object p0
.end method

.method private addNotAvailableMessage()V
    .locals 2

    .line 473
    const-string v0, "not_available"

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 474
    if-nez v0, :cond_0

    .line 475
    new-instance v0, Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 476
    const-string v1, "not_available"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 477
    const v1, 0x7f120a57    # @string/power_usage_not_available 'Battery usage data isn’t available.'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 478
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 479
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 481
    :cond_0
    return-void
.end method

.method private cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 5

    .line 401
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 402
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v0

    .line 403
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 404
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 405
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 406
    goto :goto_1

    .line 408
    :cond_0
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 403
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 410
    :cond_1
    return-void
.end method

.method private getCachedCount()I
    .locals 1

    .line 468
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/Preference;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method private getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/android/internal/os/BatterySipper;",
            ">;"
        }
    .end annotation

    .line 279
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 281
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 282
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    .line 283
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_a

    .line 284
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/os/BatterySipper;

    .line 285
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    if-lez v6, :cond_9

    .line 286
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    .line 290
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    invoke-static {v7}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSharedGid(I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 291
    nop

    .line 292
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result v6

    .line 291
    invoke-static {v3, v6}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 296
    :cond_0
    invoke-static {v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isSystemUid(I)Z

    move-result v7

    if-eqz v7, :cond_1

    const-string v7, "mediaserver"

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 297
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 301
    const/16 v6, 0x3e8

    .line 304
    :cond_1
    invoke-virtual {v5}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v7

    if-eq v6, v7, :cond_2

    .line 306
    new-instance v7, Lcom/android/internal/os/BatterySipper;

    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    new-instance v9, Lcom/android/settings/fuelgauge/FakeUid;

    invoke-direct {v9, v6}, Lcom/android/settings/fuelgauge/FakeUid;-><init>(I)V

    const-wide/16 v10, 0x0

    invoke-direct {v7, v8, v9, v10, v11}, Lcom/android/internal/os/BatterySipper;-><init>(Lcom/android/internal/os/BatterySipper$DrainType;Landroid/os/BatteryStats$Uid;D)V

    .line 308
    invoke-virtual {v7, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 309
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v8, v7, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 310
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    iput-object v5, v7, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 311
    nop

    .line 314
    move-object v5, v7

    :cond_2
    invoke-virtual {v0, v6}, Landroid/util/SparseArray;->indexOfKey(I)I

    move-result v7

    .line 315
    if-gez v7, :cond_3

    .line 317
    invoke-virtual {v0, v6, v5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_3

    .line 320
    :cond_3
    invoke-virtual {v0, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/os/BatterySipper;

    .line 321
    invoke-virtual {v6, v5}, Lcom/android/internal/os/BatterySipper;->add(Lcom/android/internal/os/BatterySipper;)V

    .line 322
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-nez v7, :cond_4

    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    if-eqz v7, :cond_4

    .line 324
    iget-object v7, v5, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    iput-object v7, v6, Lcom/android/internal/os/BatterySipper;->packageWithHighestDrain:Ljava/lang/String;

    .line 327
    :cond_4
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v7, :cond_5

    .line 328
    iget-object v7, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v7, v7

    goto :goto_1

    .line 329
    :cond_5
    move v7, v3

    :goto_1
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    if-eqz v8, :cond_6

    .line 330
    iget-object v8, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v8, v8

    goto :goto_2

    .line 331
    :cond_6
    move v8, v3

    :goto_2
    if-lez v8, :cond_8

    .line 332
    add-int v9, v7, v8

    new-array v9, v9, [Ljava/lang/String;

    .line 333
    if-lez v7, :cond_7

    .line 334
    iget-object v10, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v10, v3, v9, v3, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 337
    :cond_7
    iget-object v5, v5, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    invoke-static {v5, v3, v9, v7, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 339
    iput-object v9, v6, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 342
    :cond_8
    :goto_3
    goto :goto_4

    .line 343
    :cond_9
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 283
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_0

    .line 347
    :cond_a
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result p1

    .line 348
    :goto_5
    if-ge v3, p1, :cond_b

    .line 349
    invoke-virtual {v0, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 353
    :cond_b
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 354
    return-object v1
.end method

.method private static isSharedGid(I)Z
    .locals 0

    .line 413
    invoke-static {p0}, Landroid/os/UserHandle;->getAppIdFromSharedAppGid(I)I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isSystemUid(I)Z
    .locals 1

    .line 417
    invoke-static {p0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result p0

    .line 418
    const/16 v0, 0x3e8

    if-lt p0, v0, :cond_0

    const/16 v0, 0x2710

    if-ge p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 462
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 463
    goto :goto_0

    .line 464
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceCache:Landroid/util/ArrayMap;

    .line 465
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 146
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 147
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    .line 148
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 149
    return-void
.end method

.method extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;
    .locals 3

    .line 381
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v0, :cond_0

    .line 382
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromUid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 383
    :cond_0
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->USER:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v0, v1, :cond_1

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {v1}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/android/internal/os/BatterySipper;->userId:I

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 385
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_2

    .line 386
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper$DrainType;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 387
    :cond_2
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 388
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getPackages()[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 390
    :cond_3
    const-string v0, "PrefControllerMixin"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Inappropriate BatterySipper without uid and package names: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const-string p1, "-1"

    return-object p1
.end method

.method extractKeyFromUid(I)Ljava/lang/String;
    .locals 0

    .line 397
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPreferenceKey:Ljava/lang/String;

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    .line 163
    instance-of v0, p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_1

    .line 164
    check-cast p1, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 165
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getInfo()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v4

    .line 166
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v3, 0x0

    .line 167
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->getPercent()Ljava/lang/String;

    move-result-object v5

    .line 168
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget-object v6, v4, Lcom/android/settings/fuelgauge/BatteryEntry;->sipper:Lcom/android/internal/os/BatterySipper;

    invoke-virtual {v6}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v6

    invoke-virtual {p1, v6}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 166
    :goto_0
    move-object v6, p1

    goto :goto_1

    .line 169
    :cond_0
    const/4 p1, 0x0

    goto :goto_0

    .line 166
    :goto_1
    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/AdvancedPowerUsageDetail;->startBatteryDetailPage(Landroid/app/Activity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Ljava/lang/String;Ljava/util/List;)V

    .line 170
    const/4 p1, 0x1

    return p1

    .line 172
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 153
    const/4 v0, 0x1

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 140
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->clearUidCache()V

    .line 142
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 133
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->stopRequestQueue()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 135
    return-void
.end method

.method public refreshAppListGroup(Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 19

    move-object/from16 v0, p0

    .line 191
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    return-void

    .line 195
    :cond_0
    move-object/from16 v1, p1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 196
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    const v3, 0x7f120a56    # @string/power_usage_list_summary 'Battery usage since full charge'

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 198
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    .line 200
    const-string v4, "screen.full"

    invoke-virtual {v2, v4}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v4

    .line 201
    nop

    .line 203
    const/4 v2, 0x0

    if-eqz v3, :cond_1

    invoke-virtual {v3, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v3

    goto :goto_0

    .line 205
    :cond_1
    move v3, v2

    :goto_0
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {v0, v6}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 206
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v6, v2}, Landroid/support/v7/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 208
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpl-double v4, v4, v6

    const/4 v5, 0x1

    if-gez v4, :cond_2

    .line 263
    move/from16 v16, v2

    goto/16 :goto_7

    .line 209
    :cond_2
    nop

    .line 210
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v4

    .line 209
    invoke-direct {v0, v4}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCoalescedUsageList(Ljava/util/List;)Ljava/util/List;

    move-result-object v4

    .line 211
    if-eqz p2, :cond_3

    const-wide/16 v6, 0x0

    .line 213
    :goto_1
    move-wide v14, v6

    goto :goto_2

    .line 212
    :cond_3
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v6, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->removeHiddenBatterySippers(Ljava/util/List;)D

    move-result-wide v6

    goto :goto_1

    .line 213
    :goto_2
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v6, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->sortUsageList(Ljava/util/List;)V

    .line 215
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v13

    .line 216
    move v11, v2

    move/from16 v16, v11

    :goto_3
    if-ge v11, v13, :cond_9

    .line 217
    invoke-interface {v4, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    move-object v12, v6

    check-cast v12, Lcom/android/internal/os/BatterySipper;

    .line 218
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v9

    .line 220
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-wide v7, v12, Lcom/android/internal/os/BatterySipper;->totalPowerMah:D

    move/from16 v17, v11

    move-object v2, v12

    move-wide v11, v14

    move/from16 v18, v13

    move v13, v3

    invoke-virtual/range {v6 .. v13}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateBatteryPercent(DDDI)D

    move-result-wide v6

    .line 223
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v8, v6

    double-to-int v8, v8

    if-ge v8, v5, :cond_4

    .line 224
    goto :goto_4

    .line 226
    :cond_4
    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 227
    nop

    .line 216
    :goto_4
    const/4 v8, 0x0

    goto/16 :goto_6

    .line 229
    :cond_5
    new-instance v8, Landroid/os/UserHandle;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v9

    invoke-static {v9}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    invoke-direct {v8, v9}, Landroid/os/UserHandle;-><init>(I)V

    .line 230
    new-instance v9, Lcom/android/settings/fuelgauge/BatteryEntry;

    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v11, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mHandler:Landroid/os/Handler;

    iget-object v12, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-direct {v9, v10, v11, v12, v2}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 232
    iget-object v10, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v11

    invoke-virtual {v10, v11, v8}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    .line 234
    iget-object v11, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 235
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v12

    .line 234
    invoke-virtual {v11, v12, v8}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 238
    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->extractKeyFromSipper(Lcom/android/internal/os/BatterySipper;)Ljava/lang/String;

    move-result-object v11

    .line 239
    invoke-direct {v0, v11}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v12

    check-cast v12, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 240
    if-nez v12, :cond_6

    .line 241
    new-instance v12, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iget-object v13, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mPrefContext:Landroid/content/Context;

    invoke-direct {v12, v13, v10, v8, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 243
    invoke-virtual {v12, v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 245
    :cond_6
    iput-wide v6, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 246
    invoke-virtual {v9}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 247
    add-int/lit8 v11, v17, 0x1

    invoke-virtual {v12, v11}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 248
    invoke-virtual {v12, v6, v7}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setPercent(D)V

    .line 249
    const/4 v6, 0x0

    invoke-virtual {v12, v6}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->shouldShowAnomalyIcon(Z)V

    .line 250
    iget-wide v6, v2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7

    iget-object v6, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v7, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v6, v7, :cond_7

    .line 251
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v7, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    const/4 v8, 0x0

    invoke-virtual {v6, v5, v7, v8}, Lcom/android/settings/fuelgauge/BatteryUtils;->getProcessTimeMs(ILandroid/os/BatteryStats$Uid;I)J

    move-result-wide v6

    iput-wide v6, v2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    goto :goto_5

    .line 254
    :cond_7
    const/4 v8, 0x0

    :goto_5
    invoke-virtual {v0, v12, v2}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->setUsageSummary(Landroid/support/v7/preference/Preference;Lcom/android/internal/os/BatterySipper;)V

    .line 255
    nop

    .line 256
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v12}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 257
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->getCachedCount()I

    move-result v6

    sub-int/2addr v2, v6

    const/16 v6, 0xb

    if-le v2, v6, :cond_8

    .line 259
    nop

    .line 263
    move/from16 v16, v5

    goto :goto_7

    .line 216
    :cond_8
    move/from16 v16, v5

    :goto_6
    add-int/lit8 v11, v17, 0x1

    move v2, v8

    move/from16 v13, v18

    goto/16 :goto_3

    .line 263
    :cond_9
    :goto_7
    if-nez v16, :cond_a

    .line 264
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->addNotAvailableMessage()V

    .line 266
    :cond_a
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mAppListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 268
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->startRequestQueue()V

    .line 269
    return-void
.end method

.method setUsageSummary(Landroid/support/v7/preference/Preference;Lcom/android/internal/os/BatterySipper;)V
    .locals 4

    .line 360
    iget-wide v0, p2, Lcom/android/internal/os/BatterySipper;->usageTimeMs:J

    .line 361
    const-wide/32 v2, 0xea60

    cmp-long v2, v0, v2

    if-ltz v2, :cond_2

    .line 362
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    long-to-double v0, v0

    .line 363
    const/4 v3, 0x0

    invoke-static {v2, v0, v1, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    .line 364
    nop

    .line 365
    iget-object v1, p2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v2, Lcom/android/internal/os/BatterySipper$DrainType;->APP:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v1, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    invoke-virtual {v1, p2}, Lcom/android/settings/fuelgauge/BatteryUtils;->shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 367
    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryAppListPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12023e    # @string/battery_used_for 'Used for ^1'

    invoke-virtual {p2, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v0, v1, v3

    invoke-static {p2, v1}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    .line 366
    :cond_1
    :goto_0
    nop

    .line 364
    :goto_1
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 370
    :cond_2
    return-void
.end method

.method shouldHideSipper(Lcom/android/internal/os/BatterySipper;)Z
    .locals 2

    .line 375
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v1, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-eq v0, v1, :cond_1

    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v0, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
