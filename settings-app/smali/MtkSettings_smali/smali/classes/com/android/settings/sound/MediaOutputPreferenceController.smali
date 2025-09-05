.class public Lcom/android/settings/sound/MediaOutputPreferenceController;
.super Lcom/android/settings/sound/AudioSwitchPreferenceController;
.source "MediaOutputPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 46
    return-void
.end method


# virtual methods
.method public setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 107
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    .line 111
    iget-object v1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    .line 112
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 113
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 114
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 115
    return-void

    .line 117
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 118
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 120
    :cond_2
    if-eqz v1, :cond_3

    .line 121
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 123
    :cond_3
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 50
    if-nez p1, :cond_0

    .line 52
    return-void

    .line 55
    :cond_0
    const v0, 0x8000

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 58
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1208c5    # @string/media_output_summary_unavailable 'Unavailable'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 59
    return-void

    .line 62
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 65
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1208c2    # @string/media_out_summary_ongoing_call_state 'Unavailable during calls'

    .line 66
    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    return-void

    .line 70
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 72
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v0

    if-nez v0, :cond_3

    .line 73
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getConnectedA2dpDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 74
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getConnectedHearingAidDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 77
    :cond_3
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 78
    const/4 v3, 0x1

    if-nez v0, :cond_4

    .line 80
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1208c3    # @string/media_output_default_summary 'This device'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 82
    new-array v1, v3, [Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mSelectedIndex:I

    .line 84
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 85
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/support/v7/preference/Preference;)V

    .line 86
    return-void

    .line 89
    :cond_4
    iget-object v2, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 90
    add-int/2addr v0, v3

    new-array v2, v0, [Ljava/lang/CharSequence;

    .line 91
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 94
    invoke-virtual {p0, v1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p0, v2, v0, v3}, Lcom/android/settings/sound/MediaOutputPreferenceController;->setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V

    .line 96
    const/high16 v3, 0x4000000

    invoke-virtual {p0, v1, v3}, Lcom/android/settings/sound/MediaOutputPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v1

    iput v1, p0, Lcom/android/settings/sound/MediaOutputPreferenceController;->mSelectedIndex:I

    .line 102
    :cond_5
    invoke-virtual {p0, v2, v0, p1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/support/v7/preference/Preference;)V

    .line 103
    return-void
.end method
