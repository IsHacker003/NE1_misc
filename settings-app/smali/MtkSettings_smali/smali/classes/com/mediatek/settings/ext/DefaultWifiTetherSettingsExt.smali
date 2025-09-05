.class public Lcom/mediatek/settings/ext/DefaultWifiTetherSettingsExt;
.super Ljava/lang/Object;
.source "DefaultWifiTetherSettingsExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;


# static fields
.field private static final TAG:Ljava/lang/String; = "DefaultWifiTetherSettingsExt"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput-object p1, p0, Lcom/mediatek/settings/ext/DefaultWifiTetherSettingsExt;->mContext:Landroid/content/Context;

    .line 14
    return-void
.end method


# virtual methods
.method public addAllowedDeviceListPreference(Ljava/lang/Object;)V
    .locals 0

    .line 77
    return-void
.end method

.method public addPreferenceController(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 33
    return-void
.end method

.method public customizePreference(Ljava/lang/Object;)V
    .locals 0

    .line 21
    return-void
.end method

.method public customizeView(Landroid/content/Context;Landroid/view/View;Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 53
    return-void
.end method

.method public launchAllowedDeviceActivity(Ljava/lang/Object;)V
    .locals 0

    .line 84
    return-void
.end method

.method public onPrefChangeNotify(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .line 43
    return-void
.end method

.method public setApChannel(IZ)V
    .locals 0

    .line 70
    return-void
.end method

.method public updateConfig(Landroid/net/wifi/WifiConfiguration;)V
    .locals 0

    .line 61
    return-void
.end method
