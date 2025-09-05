.class public Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;
.super Ljava/lang/Object;
.source "PowerUsageFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;


# static fields
.field private static final PACKAGES_SYSTEM:[Ljava/lang/String;


# instance fields
.field protected mContext:Landroid/content/Context;

.field protected mPackageManager:Landroid/content/pm/PackageManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 36
    const-string v0, "com.android.providers.media"

    const-string v1, "com.android.providers.calendar"

    const-string v2, "com.android.systemui"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 44
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    .line 45
    return-void
.end method

.method private turboApkExist(Landroid/content/Context;)Z
    .locals 2

    .line 159
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const-string v1, "com.android.settings"

    invoke-virtual {p1, v1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 160
    :catch_0
    move-exception p1

    .line 163
    return v0
.end method


# virtual methods
.method public getAdvancedUsageScreenInfoString()Ljava/lang/String;
    .locals 1

    .line 127
    const/4 v0, 0x0

    return-object v0
.end method

.method public getEarlyWarningSignal(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 132
    const/4 p1, 0x0

    return p1
.end method

.method public getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;
    .locals 0

    .line 97
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEnhancedBatteryPredictionCurve(Landroid/content/Context;J)Landroid/util/SparseIntArray;
    .locals 0

    .line 102
    const/4 p1, 0x0

    return-object p1
.end method

.method public getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 112
    const/4 p1, 0x0

    return-object p1
.end method

.method public getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 122
    const/4 p1, 0x0

    return-object p1
.end method

.method public isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 107
    const/4 p1, 0x0

    return p1
.end method

.method public isEstimateDebugEnabled()Z
    .locals 1

    .line 117
    const/4 v0, 0x0

    return v0
.end method

.method public isSmartBatterySupported()Z
    .locals 5

    .line 141
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->turboApkExist(Landroid/content/Context;)Z

    move-result v0

    .line 142
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11200a9    # @android:bool/config_stkNoAlphaUsrCnf

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 144
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->isCurrentThread()Z

    move-result v2

    .line 148
    const/4 v3, 0x1

    if-eqz v1, :cond_0

    if-nez v0, :cond_0

    if-eqz v2, :cond_0

    .line 149
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mContext:Landroid/content/Context;

    const-string v4, "Need to pack Turbo apk."

    invoke-static {v2, v4, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 152
    :cond_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    :goto_0
    return v3
.end method

.method public isTypeService(Lcom/android/internal/os/BatterySipper;)Z
    .locals 0

    .line 49
    const/4 p1, 0x0

    return p1
.end method

.method public isTypeSystem(Lcom/android/internal/os/BatterySipper;)Z
    .locals 6

    .line 54
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v0

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    .line 57
    const/4 v1, 0x1

    if-ltz v0, :cond_1

    const/16 v2, 0x2710

    if-ge v0, v2, :cond_1

    .line 58
    return v1

    .line 59
    :cond_1
    iget-object v0, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 60
    iget-object p1, p1, Lcom/android/internal/os/BatterySipper;->mPackages:[Ljava/lang/String;

    array-length v0, p1

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_3

    aget-object v4, p1, v3

    .line 61
    sget-object v5, Lcom/android/settings/fuelgauge/PowerUsageFeatureProviderImpl;->PACKAGES_SYSTEM:[Ljava/lang/String;

    invoke-static {v5, v4}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 62
    return v1

    .line 60
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 67
    :cond_3
    return v2
.end method
