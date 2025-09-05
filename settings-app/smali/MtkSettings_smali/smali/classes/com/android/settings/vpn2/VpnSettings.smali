.class public Lcom/android/settings/vpn2/VpnSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "VpnSettings.java"

# interfaces
.implements Landroid/os/Handler$Callback;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;
    }
.end annotation


# static fields
.field private static final VPN_REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private mAppPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            "Lcom/android/settings/vpn2/AppPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityService:Landroid/net/IConnectivityManager;

.field private mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mLegacyVpnPreferences:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/vpn2/LegacyVpnPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mUnavailable:Z

.field private mUpdater:Landroid/os/Handler;
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private mUpdaterThread:Landroid/os/HandlerThread;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 87
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 88
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 89
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 90
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 91
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    .line 87
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 111
    const-string v0, "no_config_vpn"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 93
    const-string v0, "connectivity"

    .line 94
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    .line 98
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    .line 100
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    .line 101
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    .line 408
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$1;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    .line 422
    new-instance v0, Lcom/android/settings/vpn2/VpnSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/vpn2/VpnSettings$2;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 112
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/VpnSettings;)Landroid/content/Context;
    .locals 0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/vpn2/VpnSettings;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    return-object p0
.end method

.method private getAlwaysOnAppVpnInfos()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .line 500
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 501
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 502
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 503
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3, v2}, Landroid/net/ConnectivityManager;->getAlwaysOnVpnPackageForUser(I)Ljava/lang/String;

    move-result-object v3

    .line 504
    if-eqz v3, :cond_0

    .line 505
    new-instance v4, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-direct {v4, v2, v3}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 507
    :cond_0
    goto :goto_0

    .line 508
    :cond_1
    return-object v0
.end method

.method private getConnectedAppVpns()Ljava/util/Set;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .line 484
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 486
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 487
    iget-object v3, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    .line 488
    if-eqz v3, :cond_0

    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-nez v4, :cond_0

    .line 489
    new-instance v4, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    iget-object v3, v3, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    invoke-direct {v4, v2, v3}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 491
    :cond_0
    goto :goto_0

    .line 494
    :cond_1
    goto :goto_1

    .line 492
    :catch_0
    move-exception v1

    .line 493
    const-string v2, "VpnSettings"

    const-string v3, "Failure updating VPN list with connected app VPNs"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 495
    :goto_1
    return-object v0
.end method

.method private getConnectedLegacyVpns()Ljava/util/Map;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/internal/net/LegacyVpnInfo;",
            ">;"
        }
    .end annotation

    .line 471
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    .line 472
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    .line 473
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    invoke-static {v0, v1}, Ljava/util/Collections;->singletonMap(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 477
    :cond_0
    goto :goto_0

    .line 475
    :catch_0
    move-exception v0

    .line 476
    const-string v1, "VpnSettings"

    const-string v2, "Failure updating VPN list with connected legacy VPNs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 478
    :goto_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static getVpnApps(Landroid/content/Context;Z)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/vpn2/AppVpnInfo;",
            ">;"
        }
    .end annotation

    .line 512
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 515
    if-eqz p1, :cond_0

    .line 516
    new-instance p1, Landroid/util/ArraySet;

    invoke-direct {p1}, Landroid/util/ArraySet;-><init>()V

    .line 517
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserHandle;

    .line 518
    invoke-virtual {v2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 519
    goto :goto_0

    .line 521
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object p1

    .line 525
    :cond_1
    const-string v1, "appops"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AppOpsManager;

    .line 526
    const/4 v1, 0x1

    new-array v2, v1, [I

    const/16 v3, 0x2f

    const/4 v4, 0x0

    aput v3, v2, v4

    invoke-virtual {p0, v2}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object p0

    .line 527
    if-eqz p0, :cond_6

    .line 528
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/AppOpsManager$PackageOps;

    .line 529
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getUid()I

    move-result v5

    invoke-static {v5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    .line 530
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p1, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 532
    goto :goto_1

    .line 535
    :cond_2
    nop

    .line 536
    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move v7, v4

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 537
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    if-ne v9, v3, :cond_3

    .line 538
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getMode()I

    move-result v8

    if-nez v8, :cond_3

    .line 539
    nop

    .line 541
    move v7, v1

    :cond_3
    goto :goto_2

    .line 542
    :cond_4
    if-eqz v7, :cond_5

    .line 543
    new-instance v6, Lcom/android/settings/vpn2/AppVpnInfo;

    invoke-virtual {v2}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v6, v5, v2}, Lcom/android/settings/vpn2/AppVpnInfo;-><init>(ILjava/lang/String;)V

    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 545
    :cond_5
    goto :goto_1

    .line 548
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 549
    return-object v0
.end method

.method static varargs loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/security/KeyStore;",
            "[I)",
            "Ljava/util/List<",
            "Lcom/android/internal/net/VpnProfile;",
            ">;"
        }
    .end annotation

    .line 553
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    .line 555
    const-string v1, "VPN_"

    invoke-virtual {p0, v1}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 556
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN_"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Landroid/security/KeyStore;->get(Ljava/lang/String;)[B

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/net/VpnProfile;->decode(Ljava/lang/String;[B)Lcom/android/internal/net/VpnProfile;

    move-result-object v4

    .line 557
    if-eqz v4, :cond_0

    iget v5, v4, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-static {p1, v5}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 558
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 555
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 561
    :cond_1
    return-object v0
.end method


# virtual methods
.method public canAddPreferences()Z
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    return v0
.end method

.method public findOrCreatePreference(Lcom/android/settings/vpn2/AppVpnInfo;)Lcom/android/settings/vpn2/AppPreference;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 458
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/AppPreference;

    .line 459
    if-nez v0, :cond_0

    .line 460
    new-instance v0, Lcom/android/settings/vpn2/AppPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p1, Lcom/android/settings/vpn2/AppVpnInfo;->userId:I

    iget-object v3, p1, Lcom/android/settings/vpn2/AppVpnInfo;->packageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2, v3}, Lcom/android/settings/vpn2/AppPreference;-><init>(Landroid/content/Context;ILjava/lang/String;)V

    .line 461
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/AppPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 462
    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/AppPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_0
    return-object v0
.end method

.method public findOrCreatePreference(Lcom/android/internal/net/VpnProfile;Z)Lcom/android/settings/vpn2/LegacyVpnPreference;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 440
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 441
    nop

    .line 442
    if-nez v0, :cond_0

    .line 443
    new-instance v0, Lcom/android/settings/vpn2/LegacyVpnPreference;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;-><init>(Landroid/content/Context;)V

    .line 444
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mGearListener:Lcom/android/settings/widget/GearPreference$OnGearClickListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 445
    invoke-virtual {v0, p0}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 446
    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    const/4 v1, 0x1

    goto :goto_0

    .line 449
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    if-eqz p2, :cond_2

    .line 451
    :cond_1
    invoke-virtual {v0, p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->setProfile(Lcom/android/internal/net/VpnProfile;)V

    .line 453
    :cond_2
    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 405
    const v0, 0x7f12071e    # @string/help_url_vpn ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 116
    const/16 v0, 0x64

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 9

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 221
    const/4 v0, 0x1

    if-nez p1, :cond_0

    .line 222
    return v0

    .line 224
    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 227
    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mKeyStore:Landroid/security/KeyStore;

    const/4 v3, 0x0

    new-array v4, v3, [I

    invoke-static {v2, v4}, Lcom/android/settings/vpn2/VpnSettings;->loadVpnProfiles(Landroid/security/KeyStore;[I)Ljava/util/List;

    move-result-object v2

    .line 228
    invoke-static {v1, v0}, Lcom/android/settings/vpn2/VpnSettings;->getVpnApps(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 230
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getConnectedLegacyVpns()Ljava/util/Map;

    move-result-object v4

    .line 231
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getConnectedAppVpns()Ljava/util/Set;

    move-result-object v5

    .line 233
    invoke-direct {p0}, Lcom/android/settings/vpn2/VpnSettings;->getAlwaysOnAppVpnInfos()Ljava/util/Set;

    move-result-object v6

    .line 234
    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v7

    .line 237
    new-instance v8, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    invoke-direct {v8, p0}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;-><init>(Lcom/android/settings/vpn2/VpnSettings;)V

    .line 238
    invoke-virtual {v8, v2, v4, v7}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->legacyVpns(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    move-result-object v2

    .line 239
    invoke-virtual {v2, v1, v5, v6}, Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;->appVpns(Ljava/util/List;Ljava/util/Set;Ljava/util/Set;)Lcom/android/settings/vpn2/VpnSettings$UpdatePreferences;

    move-result-object v1

    .line 237
    invoke-virtual {p1, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 241
    monitor-enter p0

    .line 242
    :try_start_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    if-eqz p1, :cond_1

    .line 243
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    invoke-virtual {p1, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 244
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const-wide/16 v1, 0x3e8

    invoke-virtual {p1, v3, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 246
    :cond_1
    monitor-exit p0

    .line 247
    return v0

    .line 246
    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 123
    const-string p1, "user"

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    .line 124
    const-string p1, "connectivity"

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    .line 127
    iget-boolean p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->setHasOptionsMenu(Z)V

    .line 129
    const p1, 0x7f1500b7    # @xml/vpn_settings2 'res/xml/vpn_settings2.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/vpn2/VpnSettings;->addPreferencesFromResource(I)V

    .line 130
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .line 134
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 135
    const v0, 0x7f0e0007    # @menu/vpn 'res/menu/vpn.xml'

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 136
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .line 155
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const v1, 0x7f0a03d4    # @id/vpn_create

    if-eq v0, v1, :cond_0

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 158
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 159
    :goto_0
    iget-object p1, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 160
    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    goto :goto_0

    .line 162
    :cond_1
    new-instance p1, Lcom/android/internal/net/VpnProfile;

    invoke-static {v0, v1}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-static {p0, p1, v1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 164
    return v1
.end method

.method public onPause()V
    .locals 2

    .line 199
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 201
    return-void

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 207
    monitor-enter p0

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 209
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 210
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 211
    iput-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    .line 212
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 215
    return-void

    .line 212
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 7

    .line 361
    instance-of v0, p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    const/4 v1, 0x3

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_1

    .line 362
    check-cast p1, Lcom/android/settings/vpn2/LegacyVpnPreference;

    .line 363
    invoke-virtual {p1}, Lcom/android/settings/vpn2/LegacyVpnPreference;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object p1

    .line 364
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    if-ne v0, v1, :cond_0

    .line 367
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectedLegacyVpn:Lcom/android/internal/net/LegacyVpnInfo;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->intent:Landroid/app/PendingIntent;

    invoke-virtual {v0}, Landroid/app/PendingIntent;->send()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 368
    return v3

    .line 369
    :catch_0
    move-exception v0

    .line 370
    const-string v1, "VpnSettings"

    const-string v4, "Starting config intent failed"

    invoke-static {v1, v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 373
    :cond_0
    invoke-static {p0, p1, v2, v3}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 374
    return v3

    .line 375
    :cond_1
    instance-of v0, p1, Lcom/android/settings/vpn2/AppPreference;

    if-eqz v0, :cond_5

    .line 376
    check-cast p1, Lcom/android/settings/vpn2/AppPreference;

    .line 377
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getState()I

    move-result v0

    if-ne v0, v1, :cond_2

    .line 379
    move v0, v3

    goto :goto_0

    .line 377
    :cond_2
    nop

    .line 379
    move v0, v2

    :goto_0
    if-nez v0, :cond_4

    .line 381
    :try_start_1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 383
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 382
    invoke-virtual {v4, v5, v2, v1}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v4

    .line 384
    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    .line 385
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    .line 386
    if-eqz v5, :cond_3

    .line 387
    invoke-virtual {v4, v5, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 388
    return v3

    .line 392
    :cond_3
    goto :goto_1

    .line 390
    :catch_1
    move-exception v1

    .line 391
    const-string v4, "VpnSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "VPN provider does not exist: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 396
    :cond_4
    :goto_1
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 397
    invoke-virtual {p1}, Lcom/android/settings/vpn2/AppPreference;->getLabel()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, v1, p1, v2, v0}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 398
    return v3

    .line 400
    :cond_5
    return v2
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 4

    .line 140
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 143
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1}, Landroid/view/Menu;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    .line 146
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getRestrictionEnforcedAdmin()Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    .line 145
    invoke-static {v1, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->setMenuItemAsDisabledByAdmin(Landroid/content/Context;Landroid/view/MenuItem;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_1

    .line 148
    :cond_0
    invoke-interface {p1, v0}, Landroid/view/Menu;->getItem(I)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    xor-int/lit8 v2, v2, 0x1

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 143
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 151
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 172
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_vpn"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    .line 175
    iget-boolean v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 178
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120f82    # @string/vpn_settings_not_available 'VPN settings are not available for this user'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 181
    return-void

    .line 183
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/VpnSettings;->setEmptyView(Landroid/view/View;)V

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120f72    # @string/vpn_no_vpns_added 'No VPNs added'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 188
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings/vpn2/VpnSettings;->VPN_REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/vpn2/VpnSettings;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 191
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Refresh VPN list in background"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    .line 192
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 193
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdaterThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    .line 194
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mUpdater:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 195
    return-void
.end method

.method public setShownPreferences(Ljava/util/Collection;)V
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/support/v7/preference/Preference;",
            ">;)V"
        }
    .end annotation

    .line 338
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mLegacyVpnPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 339
    iget-object v0, p0, Lcom/android/settings/vpn2/VpnSettings;->mAppPreferences:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->retainAll(Ljava/util/Collection;)Z

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 345
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 346
    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 347
    invoke-interface {p1, v2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    goto :goto_1

    .line 349
    :cond_0
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 344
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 354
    :cond_1
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/Preference;

    .line 355
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 356
    goto :goto_2

    .line 357
    :cond_2
    return-void
.end method
