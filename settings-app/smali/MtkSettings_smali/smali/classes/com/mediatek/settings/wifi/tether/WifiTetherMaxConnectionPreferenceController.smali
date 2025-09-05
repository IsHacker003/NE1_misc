.class public Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherMaxConnectionPreferenceController.java"


# instance fields
.field private mMaxConnectionsValue:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 33
    const/4 p2, 0x6

    iput p2, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    .line 38
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_hotspot_max_client_num"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    .line 41
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "wifi_tether_network_connections"

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 58
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 59
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iput p2, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    .line 60
    iget-object p2, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "wifi_hotspot_max_client_num"

    iget v2, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    invoke-static {p2, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 62
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p2

    iget v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 63
    iget-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onSecurityChanged()V

    .line 64
    return v1
.end method

.method public updateDisplay()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v7/preference/ListPreference;

    .line 47
    invoke-virtual {v0}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 48
    iget v1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;->mMaxConnectionsValue:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 49
    return-void
.end method
