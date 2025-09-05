.class public Lcom/android/settings/slices/SettingsSliceProvider;
.super Landroidx/slice/SliceProvider;
.source "SettingsSliceProvider.java"


# instance fields
.field private final mParser:Landroid/util/KeyValueListParser;

.field final mRegisteredUris:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation
.end field

.field mSliceDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field

.field mSliceWeakDataCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/net/Uri;",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field

.field mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 127
    const-string v0, "android.permission.READ_SEARCH_INDEXABLES"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroidx/slice/SliceProvider;-><init>([Ljava/lang/String;)V

    .line 124
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mRegisteredUris:Ljava/util/Set;

    .line 128
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mParser:Landroid/util/KeyValueListParser;

    .line 129
    return-void
.end method

.method private buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 292
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 294
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    .line 295
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 296
    invoke-virtual {v1, p2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    const-string v1, "action"

    .line 297
    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p2

    .line 300
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 301
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/Uri$Builder;->path(Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 302
    invoke-virtual {p2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 303
    goto :goto_0

    .line 305
    :cond_0
    return-object v0
.end method

.method private getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 1

    .line 353
    new-instance v0, Landroidx/slice/Slice$Builder;

    invoke-direct {v0, p1}, Landroidx/slice/Slice$Builder;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v0}, Landroidx/slice/Slice$Builder;->build()Landroidx/slice/Slice;

    move-result-object p1

    return-object p1
.end method

.method private getSpecialCaseOemUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 372
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSpecialCasePlatformUris()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 364
    const/4 v0, 0x3

    new-array v0, v0, [Landroid/net/Uri;

    sget-object v1, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getSpecialCaseUris(Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 357
    if-eqz p1, :cond_0

    .line 358
    invoke-direct {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCasePlatformUris()Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 360
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseOemUris()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public static synthetic lambda$loadSliceInBackground$0(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V
    .locals 0

    .line 343
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSlice(Landroid/net/Uri;)V

    .line 344
    return-void
.end method

.method private parseStringArray(Ljava/lang/String;)[Ljava/lang/String;
    .locals 1

    .line 408
    if-eqz p1, :cond_0

    .line 409
    const-string v0, ":"

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 410
    array-length v0, p1

    if-lez v0, :cond_0

    .line 411
    return-object p1

    .line 414
    :cond_0
    const/4 p1, 0x0

    new-array p1, p1, [Ljava/lang/String;

    return-object p1
.end method


# virtual methods
.method getBlockedKeys()Ljava/util/Set;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "blocked_slices"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 393
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    .line 396
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v2, v0}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 400
    nop

    .line 402
    invoke-direct {p0, v0}, Lcom/android/settings/slices/SettingsSliceProvider;->parseStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 403
    invoke-static {v1, v0}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 404
    return-object v1

    .line 397
    :catch_0
    move-exception v0

    .line 398
    const-string v2, "SettingsSliceProvider"

    const-string v3, "Bad Settings Slices Whitelist flags"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 399
    return-object v1
.end method

.method loadSlice(Landroid/net/Uri;)V
    .locals 6

    .line 310
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 314
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {v2, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceDataFromUri(Landroid/net/Uri;)Lcom/android/settings/slices/SliceData;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    nop

    .line 320
    nop

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 320
    invoke-static {v3, v2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v3

    .line 323
    invoke-virtual {v3}, Lcom/android/settings/core/BasePreferenceController;->getIntentFilter()Landroid/content/IntentFilter;

    move-result-object v3

    .line 324
    if-eqz v3, :cond_0

    .line 325
    invoke-virtual {p0, v3, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 328
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    const-class v4, Landroid/app/slice/SliceManager;

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/slice/SliceManager;

    .line 329
    invoke-virtual {v3}, Landroid/app/slice/SliceManager;->getPinnedSlices()Ljava/util/List;

    move-result-object v3

    .line 330
    invoke-interface {v3, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 331
    iget-object v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceDataCache:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 333
    :cond_1
    iget-object v3, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v3, p1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    .line 336
    const-string v2, "SettingsSliceProvider"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Built slice ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ") in: "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 336
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 338
    return-void

    .line 315
    :catch_0
    move-exception v0

    .line 316
    const-string v1, "SettingsSliceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not get slice data for uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 317
    return-void
.end method

.method loadSliceInBackground(Landroid/net/Uri;)V
    .locals 1

    .line 342
    new-instance v0, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$3mq4GNawZ0Wc-zLrSLnj1f92or0;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/slices/-$$Lambda$SettingsSliceProvider$3mq4GNawZ0Wc-zLrSLnj1f92or0;-><init>(Lcom/android/settings/slices/SettingsSliceProvider;Landroid/net/Uri;)V

    invoke-static {v0}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)V

    .line 345
    return-void
.end method

.method public onBindSlice(Landroid/net/Uri;)Landroidx/slice/Slice;
    .locals 4

    .line 179
    invoke-static {}, Landroid/os/StrictMode;->getThreadPolicy()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0

    .line 181
    :try_start_0
    invoke-static {}, Lcom/android/settingslib/utils/ThreadUtils;->isMainThread()Z

    move-result v1

    if-nez v1, :cond_0

    .line 182
    new-instance v1, Landroid/os/StrictMode$ThreadPolicy$Builder;

    invoke-direct {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    .line 183
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v1

    .line 184
    invoke-virtual {v1}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v1

    .line 182
    invoke-static {v1}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getBlockedKeys()Ljava/util/Set;

    move-result-object v1

    .line 187
    invoke-virtual {p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    .line 188
    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 189
    const-string v1, "SettingsSliceProvider"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Requested blocked slice with Uri: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 190
    const/4 p1, 0x0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 190
    return-object p1

    .line 195
    :cond_1
    :try_start_1
    sget-object v1, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->WIFI_CALLING_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 197
    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v1

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/settings/slices/SlicesFeatureProvider;->getNewWifiCallingSliceHelper(Landroid/content/Context;)Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;

    move-result-object v1

    .line 199
    invoke-virtual {v1, p1}, Lcom/android/settings/wifi/calling/WifiCallingSliceHelper;->createWifiCallingSlice(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 196
    return-object p1

    .line 200
    :cond_2
    :try_start_2
    sget-object v1, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/wifi/WifiSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 201
    return-object p1

    .line 202
    :cond_3
    :try_start_3
    sget-object v1, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/notification/ZenModeSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 203
    return-object p1

    .line 204
    :cond_4
    :try_start_4
    sget-object v1, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 205
    return-object p1

    .line 206
    :cond_5
    :try_start_5
    sget-object v1, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/location/LocationSliceBuilder;->getSlice(Landroid/content/Context;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 207
    return-object p1

    .line 210
    :cond_6
    :try_start_6
    iget-object v1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/slices/SliceData;

    .line 211
    if-nez v1, :cond_7

    .line 212
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    .line 213
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSliceStub(Landroid/net/Uri;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 213
    return-object p1

    .line 217
    :cond_7
    :try_start_7
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceDataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_8

    .line 218
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 222
    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 220
    return-object p1

    .line 222
    :catchall_0
    move-exception p1

    invoke-static {v0}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    throw p1
.end method

.method public onCreateSliceProvider()Z
    .locals 2

    .line 133
    new-instance v0, Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    .line 134
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceDataCache:Ljava/util/Map;

    .line 135
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceWeakDataCache:Ljava/util/Map;

    .line 136
    const/4 v0, 0x1

    return v0
.end method

.method public onGetSliceDescendants(Landroid/net/Uri;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Ljava/util/Collection<",
            "Landroid/net/Uri;",
            ">;"
        }
    .end annotation

    .line 247
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 248
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPathData(Landroid/net/Uri;)Landroid/util/Pair;

    move-result-object v1

    .line 250
    if-eqz v1, :cond_0

    .line 252
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 253
    return-object v0

    .line 256
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 257
    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    .line 261
    if-eqz v2, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 262
    iget-object p1, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceKeys(Z)Ljava/util/List;

    move-result-object p1

    .line 264
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceKeys(Z)Ljava/util/List;

    move-result-object v2

    .line 266
    const-string v4, "android.settings.slices"

    invoke-direct {p0, p1, v4}, Lcom/android/settings/slices/SettingsSliceProvider;->buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 267
    const-string p1, "com.android.settings.slices"

    invoke-direct {p0, v2, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 268
    invoke-direct {p0, v1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseUris(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 269
    invoke-direct {p0, v3}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseUris(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 271
    return-object v0

    .line 275
    :cond_1
    if-nez v2, :cond_2

    const-string v2, "/action"

    .line 276
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    const-string v2, "/intent"

    .line 277
    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 280
    return-object v0

    .line 284
    :cond_2
    const-string p1, "android.settings.slices"

    invoke-static {v1, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    .line 285
    iget-object v2, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSlicesDatabaseAccessor:Lcom/android/settings/slices/SlicesDatabaseAccessor;

    invoke-virtual {v2, p1}, Lcom/android/settings/slices/SlicesDatabaseAccessor;->getSliceKeys(Z)Ljava/util/List;

    move-result-object v2

    .line 286
    invoke-direct {p0, v2, v1}, Lcom/android/settings/slices/SettingsSliceProvider;->buildUrisFromKeys(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 287
    invoke-direct {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->getSpecialCaseUris(Z)Ljava/util/List;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 288
    return-object v0
.end method

.method public onMapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 2

    .line 142
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/app/slice/SliceManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/slice/SliceManager;

    .line 144
    invoke-virtual {p1}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 143
    invoke-static {p1, v1}, Lcom/android/settings/slices/SliceDeepLinkSpringBoard;->parse(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 142
    invoke-virtual {v0, p1}, Landroid/app/slice/SliceManager;->mapIntentToUri(Landroid/content/Intent;)Landroid/net/Uri;

    move-result-object p1
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 145
    :catch_0
    move-exception p1

    .line 146
    const/4 p1, 0x0

    return-object p1
.end method

.method public onSlicePinned(Landroid/net/Uri;)V
    .locals 1

    .line 152
    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->WIFI_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Lcom/android/settings/wifi/WifiSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 154
    return-void

    .line 155
    :cond_0
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->ZEN_MODE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 156
    sget-object v0, Lcom/android/settings/notification/ZenModeSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 157
    return-void

    .line 158
    :cond_1
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->BLUETOOTH_URI:Landroid/net/Uri;

    invoke-virtual {v0, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 159
    sget-object v0, Lcom/android/settings/bluetooth/BluetoothSliceBuilder;->INTENT_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V

    .line 160
    return-void

    .line 164
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/slices/SettingsSliceProvider;->loadSliceInBackground(Landroid/net/Uri;)V

    .line 165
    return-void
.end method

.method public onSliceUnpinned(Landroid/net/Uri;)V
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mRegisteredUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    const-string v0, "SettingsSliceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unregistering uri broadcast relay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->unregisterReceivers(Landroid/content/Context;Landroid/net/Uri;)V

    .line 172
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mRegisteredUris:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mSliceDataCache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 175
    return-void
.end method

.method registerIntentToUri(Landroid/content/IntentFilter;Landroid/net/Uri;)V
    .locals 3

    .line 383
    const-string v0, "SettingsSliceProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Registering Uri for broadcast relay: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    iget-object v0, p0, Lcom/android/settings/slices/SettingsSliceProvider;->mRegisteredUris:Ljava/util/Set;

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/slices/SettingsSliceProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Lcom/android/settings/slices/SliceRelayReceiver;

    invoke-static {v0, p2, v1, p1}, Lcom/android/settingslib/SliceBroadcastRelay;->registerReceiver(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/Class;Landroid/content/IntentFilter;)V

    .line 387
    return-void
.end method
