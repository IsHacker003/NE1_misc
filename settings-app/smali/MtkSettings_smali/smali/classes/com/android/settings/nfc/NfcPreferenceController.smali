.class public Lcom/android/settings/nfc/NfcPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NfcPreferenceController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field public static final KEY_MTK_TOGGLE_NFC:Ljava/lang/String; = "toggle_mtk_nfc"

.field public static final KEY_TOGGLE_NFC:Ljava/lang/String; = "toggle_nfc"

.field private static final TAG:Ljava/lang/String; = "NfcPreferenceController"


# instance fields
.field private mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

.field private final mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 55
    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 56
    return-void
.end method

.method public static isToggleableInAirplaneMode(Landroid/content/Context;)Z
    .locals 1

    .line 151
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_toggleable_radios"

    invoke-static {p0, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 153
    if-eqz p0, :cond_0

    const-string v0, "nfc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 4

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 63
    const-string v0, "toggle_mtk_nfc"

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/nfc/NfcPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 64
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 65
    return-void

    .line 68
    :cond_0
    nop

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    .line 71
    new-instance v2, Lcom/android/settings/nfc/NfcEnabler;

    iget-object v3, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v0}, Lcom/android/settings/nfc/NfcEnabler;-><init>(Landroid/content/Context;Landroid/support/v14/preference/SwitchPreference;)V

    iput-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    .line 73
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    if-eqz v2, :cond_1

    .line 74
    const-string v2, "NfcPreferenceController"

    const-string v3, "MTK NFC support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v2, "toggle_nfc"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/settings/nfc/NfcPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    goto :goto_0

    .line 77
    :cond_1
    const-string v2, "NfcPreferenceController"

    const-string v3, "MTK NFC not support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    const-string v2, "toggle_mtk_nfc"

    invoke-virtual {p0, p1, v2, v1}, Lcom/android/settings/nfc/NfcPreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 83
    :goto_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/nfc/NfcPreferenceController;->isToggleableInAirplaneMode(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 84
    new-instance p1, Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    iget-object v1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p1, v1, v2, v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;-><init>(Landroid/content/Context;Landroid/nfc/NfcAdapter;Landroid/support/v7/preference/Preference;)V

    iput-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    .line 87
    :cond_2
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-eqz v0, :cond_0

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 109
    :cond_0
    const/4 v0, 0x2

    .line 107
    :goto_0
    return v0
.end method

.method public getIntentFilter()Landroid/content/IntentFilter;
    .locals 2

    .line 114
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 115
    const-string v1, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 116
    const-string v1, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    return-object v0
.end method

.method public hasAsyncUpdate()Z
    .locals 1

    .line 122
    const/4 v0, 0x1

    return v0
.end method

.method public isChecked()Z
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toggle_nfc"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public onPause()V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->unregister()V

    .line 145
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 146
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->pause()V

    .line 148
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 132
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    if-eqz v0, :cond_0

    .line 133
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/nfc/NfcAirplaneModeObserver;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcAirplaneModeObserver;->register()V

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    if-eqz v0, :cond_1

    .line 136
    iget-object v0, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcEnabler:Lcom/android/settings/nfc/NfcEnabler;

    invoke-virtual {v0}, Lcom/android/settings/nfc/NfcEnabler;->resume()V

    .line 138
    :cond_1
    return-void
.end method

.method public setChecked(Z)Z
    .locals 0

    .line 96
    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->enable()Z

    goto :goto_0

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/nfc/NfcPreferenceController;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-virtual {p1}, Landroid/nfc/NfcAdapter;->disable()Z

    .line 101
    :goto_0
    const/4 p1, 0x1

    return p1
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

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/nfc/NfcPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "toggle_mtk_nfc"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    :cond_1
    :goto_0
    return-void
.end method
