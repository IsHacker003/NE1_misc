.class public Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;
.super Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;
.source "WifiTetherResetPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;
    }
.end annotation


# instance fields
.field private final mFragmentManager:Landroid/app/FragmentManager;

.field private mResetNetworkPref:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Landroid/app/FragmentManager;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 42
    iput-object p3, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    .line 43
    return-void
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 64
    new-instance p1, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;

    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->mListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-direct {p1, v0}, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;-><init>(Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    .line 65
    iget-object v0, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->mFragmentManager:Landroid/app/FragmentManager;

    const-string v1, "wifi_tether_network_reset"

    invoke-virtual {p1, v0, v1}, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 66
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 59
    const-string v0, "wifi_tether_network_reset"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->mResetNetworkPref:Landroid/support/v7/preference/Preference;

    .line 60
    iget-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->mResetNetworkPref:Landroid/support/v7/preference/Preference;

    if-nez p1, :cond_0

    .line 61
    return-void

    .line 63
    :cond_0
    iget-object p1, p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;->mResetNetworkPref:Landroid/support/v7/preference/Preference;

    new-instance v0, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$mfWCzapxXAW8MEUEh6X4wIuj8EU;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$mfWCzapxXAW8MEUEh6X4wIuj8EU;-><init>(Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 69
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "wifi_tether_network_reset"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 77
    const/4 p1, 0x1

    return p1
.end method

.method public updateDisplay()V
    .locals 0

    .line 73
    return-void
.end method
