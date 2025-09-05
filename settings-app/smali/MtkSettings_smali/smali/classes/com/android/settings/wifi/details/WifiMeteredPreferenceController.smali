.class public Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "WifiMeteredPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# static fields
.field private static final KEY_WIFI_METERED:Ljava/lang/String; = "metered"


# instance fields
.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)V
    .locals 1

    .line 46
    const-string v0, "metered"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 47
    iput-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 48
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 49
    return-void
.end method

.method private updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V
    .locals 1

    .line 86
    invoke-virtual {p1}, Landroid/support/v7/preference/DropDownPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    aget-object p2, v0, p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/DropDownPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 61
    const/4 v0, 0x0

    return v0
.end method

.method getMeteredOverride()I
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    return v0

    .line 82
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    if-eqz v0, :cond_0

    .line 67
    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 69
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    invoke-virtual {p2, v0}, Landroid/net/wifi/WifiManager;->updateNetwork(Landroid/net/wifi/WifiConfiguration;)I

    .line 71
    const-string p2, "com.android.providers.settings"

    invoke-static {p2}, Landroid/app/backup/BackupManager;->dataChanged(Ljava/lang/String;)V

    .line 72
    check-cast p1, Landroid/support/v7/preference/DropDownPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result p2

    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    .line 73
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 53
    check-cast p1, Landroid/support/v7/preference/DropDownPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->getMeteredOverride()I

    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 56
    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/details/WifiMeteredPreferenceController;->updateSummary(Landroid/support/v7/preference/DropDownPreference;I)V

    .line 57
    return-void
.end method
