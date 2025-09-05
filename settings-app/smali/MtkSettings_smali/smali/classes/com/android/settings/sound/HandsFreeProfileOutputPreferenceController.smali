.class public Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;
.super Lcom/android/settings/sound/AudioSwitchPreferenceController;
.source "HandsFreeProfileOutputPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 42
    return-void
.end method


# virtual methods
.method public setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 96
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    .line 100
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez p1, :cond_1

    .line 101
    const/4 p1, 0x0

    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 102
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 103
    return-void

    .line 105
    :cond_1
    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    .line 106
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 108
    :cond_2
    if-eqz v1, :cond_3

    .line 109
    invoke-virtual {v1, p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    .line 111
    :cond_3
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    .line 46
    if-nez p1, :cond_0

    .line 48
    return-void

    .line 51
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v0

    const v1, 0x7f1208c3    # @string/media_output_default_summary 'This device'

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 53
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 54
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 55
    return-void

    .line 61
    :cond_1
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getConnectedHfpDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 63
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getConnectedHearingAidDevices()Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 65
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 66
    const/4 v3, 0x1

    if-nez v0, :cond_2

    .line 68
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 69
    iget-object v0, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 70
    new-array v1, v3, [Ljava/lang/CharSequence;

    aput-object v0, v1, v2

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    .line 72
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 73
    invoke-virtual {p0, v1, v1, p1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/support/v7/preference/Preference;)V

    .line 74
    return-void

    .line 77
    :cond_2
    iget-object v1, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v3}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 78
    add-int/2addr v0, v3

    new-array v1, v0, [Ljava/lang/CharSequence;

    .line 79
    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 82
    invoke-virtual {p0, v2}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {p0, v1, v0, v3}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V

    .line 84
    const/high16 v3, 0x4000000

    invoke-virtual {p0, v2, v3}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getDefaultDeviceIndex()I

    move-result v2

    iput v2, p0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->mSelectedIndex:I

    .line 90
    :cond_3
    invoke-virtual {p0, v1, v0, p1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/support/v7/preference/Preference;)V

    .line 91
    return-void
.end method
