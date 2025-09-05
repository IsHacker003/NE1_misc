.class public Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioCodecPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 0

    .line 132
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecType()I

    move-result p1

    .line 133
    nop

    .line 134
    packed-switch p1, :pswitch_data_0

    .line 154
    const/4 p1, 0x0

    goto :goto_0

    .line 148
    :pswitch_0
    const/4 p1, 0x5

    .line 149
    goto :goto_0

    .line 145
    :pswitch_1
    const/4 p1, 0x4

    .line 146
    goto :goto_0

    .line 142
    :pswitch_2
    const/4 p1, 0x3

    .line 143
    goto :goto_0

    .line 139
    :pswitch_3
    const/4 p1, 0x2

    .line 140
    goto :goto_0

    .line 136
    :pswitch_4
    const/4 p1, 0x1

    .line 137
    nop

    .line 154
    :goto_0
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 1

    .line 55
    const/4 v0, 0x0

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    .line 49
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030027    # @array/bluetooth_a2dp_codec_summaries

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    .line 43
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030029    # @array/bluetooth_a2dp_codec_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 38
    const-string v0, "bluetooth_select_a2dp_codec"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 7

    .line 60
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 61
    nop

    .line 62
    nop

    .line 63
    const/4 v0, 0x1

    const/4 v1, 0x2

    const/4 v2, 0x3

    const/4 v3, 0x4

    const/4 v4, 0x0

    const/4 v5, 0x0

    const v6, 0xf4240

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_4

    .line 117
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 118
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->disableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 121
    :cond_0
    monitor-exit p1

    .line 122
    return-void

    .line 121
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 110
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    monitor-enter p1

    .line 111
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    if-eqz v0, :cond_1

    .line 112
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dp:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, v4}, Landroid/bluetooth/BluetoothA2dp;->enableOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)V

    .line 114
    :cond_1
    monitor-exit p1

    .line 115
    return-void

    .line 114
    :catchall_1
    move-exception v0

    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    .line 106
    :pswitch_2
    nop

    .line 107
    nop

    .line 108
    nop

    .line 126
    :goto_0
    move v5, v3

    goto :goto_5

    .line 102
    :pswitch_3
    nop

    .line 103
    nop

    .line 104
    nop

    .line 126
    :goto_1
    move v5, v2

    goto :goto_5

    .line 98
    :pswitch_4
    nop

    .line 99
    nop

    .line 100
    nop

    .line 126
    :goto_2
    move v5, v1

    goto :goto_5

    .line 94
    :pswitch_5
    nop

    .line 95
    nop

    .line 96
    nop

    .line 126
    :goto_3
    move v5, v0

    goto :goto_5

    .line 90
    :pswitch_6
    nop

    .line 91
    nop

    .line 92
    goto :goto_5

    .line 66
    :pswitch_7
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getValue()Ljava/lang/String;

    move-result-object p1

    .line 67
    iget-object v4, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v4, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    packed-switch p1, :pswitch_data_1

    .line 86
    goto :goto_4

    .line 83
    :pswitch_8
    nop

    .line 84
    nop

    .line 126
    move v6, v5

    goto :goto_0

    .line 80
    :pswitch_9
    nop

    .line 81
    nop

    .line 126
    move v6, v5

    goto :goto_1

    .line 77
    :pswitch_a
    nop

    .line 78
    nop

    .line 126
    move v6, v5

    goto :goto_2

    .line 74
    :pswitch_b
    nop

    .line 75
    nop

    .line 126
    move v6, v5

    goto :goto_3

    .line 71
    :pswitch_c
    nop

    .line 72
    goto :goto_4

    .line 69
    :pswitch_d
    nop

    .line 126
    :goto_4
    move v6, v5

    :goto_5
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v5}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecType(I)V

    .line 127
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioCodecPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v6}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecPriority(I)V

    .line 128
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method
