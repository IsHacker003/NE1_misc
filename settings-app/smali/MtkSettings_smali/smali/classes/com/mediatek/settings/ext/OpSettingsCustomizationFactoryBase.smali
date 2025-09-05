.class public Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;
.super Ljava/lang/Object;
.source "OpSettingsCustomizationFactoryBase.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->mContext:Landroid/content/Context;

    .line 10
    return-void
.end method


# virtual methods
.method public makeApnSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 0

    .line 26
    new-instance p1, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;

    invoke-direct {p1}, Lcom/mediatek/settings/ext/DefaultApnSettingsExt;-><init>()V

    return-object p1
.end method

.method public makeAppListExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppListExt;
    .locals 1

    .line 78
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAppListExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultAppListExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeAppsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAppsExt;
    .locals 1

    .line 82
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAppsExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultAppsExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeAudioProfileExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IAudioProfileExt;
    .locals 1

    .line 86
    new-instance v0, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultAudioProfileExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeDataUsageSummaryExt()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 2

    .line 13
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;

    iget-object v1, p0, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/settings/ext/DefaultDataUsageSummaryExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeDevExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDevExt;
    .locals 1

    .line 90
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDevExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultDevExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeDeviceInfoSettingsExt()Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    .locals 1

    .line 94
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultDeviceInfoSettingsExt;-><init>()V

    return-object v0
.end method

.method public makeDisplaySettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDisplaySettingsExt;
    .locals 1

    .line 17
    new-instance v0, Lcom/mediatek/settings/ext/DefaultDisplaySettingsExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultDisplaySettingsExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeRCSSettings(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;
    .locals 1

    .line 30
    new-instance v0, Lcom/mediatek/settings/ext/DefaultRCSSettings;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultRCSSettings;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeRcseOnlyApnExt()Lcom/mediatek/settings/ext/IRcseOnlyApnExt;
    .locals 1

    .line 102
    new-instance v0, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultRcseOnlyApnExt;-><init>()V

    return-object v0
.end method

.method public makeSettingsMiscExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 1

    .line 38
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSimManagementExt()Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 1

    .line 42
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSimManagementExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSimManagementExt;-><init>()V

    return-object v0
.end method

.method public makeSimRoamingExt()Lcom/mediatek/settings/ext/ISimRoamingExt;
    .locals 1

    .line 46
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSimRoamingExt;-><init>()V

    return-object v0
.end method

.method public makeSmsDialogExt()Lcom/mediatek/settings/ext/ISmsDialogExt;
    .locals 2

    .line 50
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSmsDialogExt;

    iget-object v1, p0, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/mediatek/settings/ext/DefaultSmsDialogExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeSmsPreferenceExt()Lcom/mediatek/settings/ext/ISmsPreferenceExt;
    .locals 1

    .line 54
    new-instance v0, Lcom/mediatek/settings/ext/DefaultSmsPreferenceExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultSmsPreferenceExt;-><init>()V

    return-object v0
.end method

.method public makeStatusBarPlmnDisplayExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IStatusBarPlmnDisplayExt;
    .locals 1

    .line 98
    new-instance v0, Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultStatusBarPlmnDisplayExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeStatusExt()Lcom/mediatek/settings/ext/IStatusExt;
    .locals 1

    .line 106
    new-instance v0, Lcom/mediatek/settings/ext/DefaultStatusExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultStatusExt;-><init>()V

    return-object v0
.end method

.method public makeWWOPJoynSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;
    .locals 1

    .line 34
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWWOPJoynSettingsExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultWWOPJoynSettingsExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeWfcSettingsExt()Lcom/mediatek/settings/ext/IWfcSettingsExt;
    .locals 1

    .line 58
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWfcSettingsExt;-><init>()V

    return-object v0
.end method

.method public makeWifiApDialogExt()Lcom/mediatek/settings/ext/IWifiApDialogExt;
    .locals 1

    .line 62
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWifiApDialogExt;-><init>()V

    return-object v0
.end method

.method public makeWifiExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;
    .locals 1

    .line 70
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultWifiExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public makeWifiSettingsExt()Lcom/mediatek/settings/ext/IWifiSettingsExt;
    .locals 1

    .line 74
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;

    invoke-direct {v0}, Lcom/mediatek/settings/ext/DefaultWifiSettingsExt;-><init>()V

    return-object v0
.end method

.method public makeWifiTetherSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;
    .locals 1

    .line 66
    new-instance v0, Lcom/mediatek/settings/ext/DefaultWifiTetherSettingsExt;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/ext/DefaultWifiTetherSettingsExt;-><init>(Landroid/content/Context;)V

    return-object v0
.end method
