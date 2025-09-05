.class public Lcom/android/settings/wifi/CellularFallbackPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CellularFallbackPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 40
    return-void
.end method

.method private avoidBadWifiConfig()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e006a    # @android:integer/config_networkDefaultDailyMultipathQuotaBytes

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private avoidBadWifiCurrentSettings()Z
    .locals 3

    .line 85
    const-string v0, "1"

    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "network_avoid_bad_wifi"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 50
    const-string v0, "wifi_cellular_data_fallback"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 55
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "wifi_cellular_data_fallback"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    return v1

    .line 58
    :cond_0
    instance-of v0, p1, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_1

    .line 59
    return v1

    .line 62
    :cond_1
    const-string v0, "network_avoid_bad_wifi"

    .line 63
    iget-object v1, p0, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 64
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_2

    const-string p1, "1"

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 63
    :goto_0
    invoke-static {v1, v0, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 65
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->avoidBadWifiConfig()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 70
    invoke-direct {p0}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;->avoidBadWifiCurrentSettings()Z

    move-result v0

    .line 73
    if-eqz p1, :cond_0

    .line 74
    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    .line 75
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 77
    :cond_0
    return-void
.end method
