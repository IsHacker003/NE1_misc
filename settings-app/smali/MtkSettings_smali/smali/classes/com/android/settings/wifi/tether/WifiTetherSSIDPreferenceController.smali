.class public Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSSIDPreferenceController.java"

# interfaces
.implements Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;


# static fields
.field static final DEFAULT_SSID:Ljava/lang/String; = "AndroidAP"


# instance fields
.field private mSSID:Ljava/lang/String;

.field private mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 43
    new-instance p1, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-direct {p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    .line 44
    return-void
.end method

.method private updateSsidDisplay(Landroid/support/v7/preference/EditTextPreference;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 84
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "wifi_tether_network_name"

    return-object v0
.end method

.method public getSSID()Ljava/lang/String;
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    return-object v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiDeviceNameTextValidator:Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/tether/WifiDeviceNameTextValidator;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    check-cast p2, Ljava/lang/String;

    iput-object p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    .line 68
    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 69
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 70
    const/4 p1, 0x1

    return p1
.end method

.method public setSSID(Ljava/lang/String;)V
    .locals 0

    .line 89
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    .line 90
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 91
    return-void
.end method

.method public updateDisplay()V
    .locals 3

    .line 53
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 54
    if-eqz v0, :cond_0

    .line 55
    iget-object v0, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    .line 56
    const-string v0, "WifiTetherSsidPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating SSID in Preference, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 58
    :cond_0
    const-string v0, "AndroidAP"

    iput-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    .line 59
    const-string v0, "WifiTetherSsidPref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Updating to default SSID in Preference, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mSSID:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->setValidator(Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;)V

    .line 62
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/EditTextPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateSsidDisplay(Landroid/support/v7/preference/EditTextPreference;)V

    .line 63
    return-void
.end method
