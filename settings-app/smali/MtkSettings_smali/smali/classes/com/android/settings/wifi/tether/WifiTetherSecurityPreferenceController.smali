.class public Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherSecurityPreferenceController.java"


# instance fields
.field private final mSecurityEntries:[Ljava/lang/String;

.field private mSecurityValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 21
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0300bf    # @array/wifi_tether_security

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    .line 22
    return-void
.end method

.method private getSummaryForSecurityType(I)Ljava/lang/String;
    .locals 1

    .line 57
    if-nez p1, :cond_0

    .line 58
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    const/4 v0, 0x1

    aget-object p1, p1, v0

    return-object p1

    .line 61
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    const/4 v0, 0x0

    aget-object p1, p1, v0

    return-object p1
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 26
    const-string v0, "wifi_tether_security"

    return-object v0
.end method

.method public getSecurityType()I
    .locals 1

    .line 53
    iget v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 46
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 47
    iget p2, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onTetherConfigUpdated()V

    .line 49
    const/4 p1, 0x1

    return p1
.end method

.method public setSecurityType()V
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 67
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 68
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityEntries:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 69
    return-void
.end method

.method public updateDisplay()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 32
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    goto :goto_0

    .line 36
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    .line 39
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 40
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-direct {p0, v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSummaryForSecurityType(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 41
    iget v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->mSecurityValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 42
    return-void
.end method
