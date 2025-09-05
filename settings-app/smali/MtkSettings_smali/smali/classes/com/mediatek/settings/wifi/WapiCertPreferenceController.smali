.class public Lcom/mediatek/settings/wifi/WapiCertPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WapiCertPreferenceController.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 37
    iput-object p1, p0, Lcom/mediatek/settings/wifi/WapiCertPreferenceController;->mContext:Landroid/content/Context;

    .line 38
    return-void
.end method

.method private isWapiCertPackageExist()Z
    .locals 3

    .line 51
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WapiCertPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.wapi.wapicertmanager"

    const-string v2, "com.wapi.wapicertmanager.WapiCertManagerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/wifi/WapiCertPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    goto :goto_0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    const-string v0, "WapiCertPreferenceController"

    const-string v2, "package exist: false"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    return v1

    .line 60
    :cond_0
    :goto_0
    const-string v0, "WapiCertPreferenceController"

    const-string v1, "package exist: true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 47
    const-string v0, "wapi_cert_manage"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WapiCertPreferenceController;->isWapiCertPackageExist()Z

    move-result v0

    return v0
.end method
