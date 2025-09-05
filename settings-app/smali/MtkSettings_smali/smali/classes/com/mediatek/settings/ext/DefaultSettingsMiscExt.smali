.class public Lcom/mediatek/settings/ext/DefaultSettingsMiscExt;
.super Landroid/content/ContextWrapper;
.source "DefaultSettingsMiscExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/ISettingsMiscExt;


# static fields
.field private static final KEY_GPS_SETTINGS_BUTTON:Ljava/lang/String; = "gps_settings_button"

.field static final TAG:Ljava/lang/String; = "DefaultSettingsMiscExt"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 19
    return-void
.end method


# virtual methods
.method public addCustomizedItem(Ljava/lang/Object;Ljava/lang/Boolean;)V
    .locals 0

    .line 40
    const-string p1, "DefaultSettingsMiscExt"

    const-string p2, "DefaultSettingsMisc addCustomizedItem method going"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    return-void
.end method

.method public addPreferenceController(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 80
    return-void
.end method

.method public createPreferenceController(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 90
    const/4 p1, 0x0

    return-object p1
.end method

.method public customizeAGPRS(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 99
    return-void
.end method

.method public customizeDashboardTile(Ljava/lang/Object;Landroid/widget/ImageView;)V
    .locals 0

    .line 45
    return-void
.end method

.method public customizeMacAddressString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 60
    return-object p1
.end method

.method public customizeSimDisplayString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 0

    .line 22
    return-object p1
.end method

.method public doUpdateTilesList(Landroid/app/Activity;ZZ)Z
    .locals 0

    .line 65
    const-string p1, "DefaultSettingsMiscExt"

    const-string p2, "default doUpdateTilesList"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return p3
.end method

.method public doWosFactoryReset()V
    .locals 0

    .line 71
    return-void
.end method

.method public getNetworktypeString(Ljava/lang/String;I)Ljava/lang/String;
    .locals 2

    .line 54
    const-string p2, "DefaultSettingsMiscExt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "@M_getNetworktypeString defaultmethod return defaultString = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    return-object p1
.end method

.method public initCustomizedLocationSettings(Landroid/support/v7/preference/PreferenceScreen;I)V
    .locals 0

    .line 26
    return-void
.end method

.method public isWifiOnlyModeSet()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public setFactoryResetTitle(Ljava/lang/Object;)V
    .locals 0

    .line 32
    return-void
.end method

.method public setTimeoutPrefTitle(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 36
    return-void
.end method

.method public updateCustomizedLocationSettings()V
    .locals 0

    .line 29
    return-void
.end method
