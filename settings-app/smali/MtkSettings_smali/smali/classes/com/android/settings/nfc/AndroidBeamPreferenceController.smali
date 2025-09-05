.class public Lcom/android/settings/nfc/AndroidBeamPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AndroidBeamPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field public static final KEY_ANDROID_BEAM_SETTINGS:Ljava/lang/String; = "android_beam_settings"

.field private static final KEY_MTK_TOGGLE_NFC:Ljava/lang/String; = "toggle_mtk_nfc"

.field private static final TAG:Ljava/lang/String; = "NfcPreferenceController"


# instance fields
.field private mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

.field private mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 49
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 56
    const-string v0, "toggle_mtk_nfc"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 57
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    .line 58
    return-void

    .line 61
    :cond_0
    nop

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 63
    new-instance v2, Lcom/android/settings/nfc/AndroidBeamEnabler;

    iget-object v3, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;-><init>(Landroid/content/Context;Lcom/android/settingslib/RestrictedPreference;)V

    iput-object v2, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    .line 64
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 65
    const-string v2, "NfcPreferenceController"

    const-string v3, "MTK NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const-string v2, "android_beam_settings"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    goto :goto_0

    .line 68
    :cond_1
    const-string v2, "NfcPreferenceController"

    const-string v3, "MTK NFC not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const-string v2, "toggle_mtk_nfc"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 72
    :goto_0
    iget-object p1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 73
    new-instance p1, Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    iget-object v1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p1, v1, v2, v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/support/v7/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    .line 76
    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_0
    const/4 v0, 0x2

    .line 81
    :goto_0
    return v0
.end method

.method public onPause()V
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->unregister()V

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->pause()V

    .line 104
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->register()V

    .line 91
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    if-eqz v0, :cond_1

    .line 92
    iget-object v0, p0, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->mAndroidBeamEnabler:Lcom/android/settings/nfc/AndroidBeamEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/AndroidBeamEnabler;->resume()V

    .line 94
    :cond_1
    return-void
.end method

.method public updateNonIndexableKeys(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 109
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/nfc/AndroidBeamPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 112
    :cond_0
    const-string v0, "toggle_mtk_nfc"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    :cond_1
    :goto_0
    return-void
.end method
