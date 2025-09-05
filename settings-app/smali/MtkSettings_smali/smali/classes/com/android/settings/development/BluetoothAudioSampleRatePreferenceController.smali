.class public Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioSampleRatePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settings/development/BluetoothA2dpConfigStore;)V

    .line 35
    return-void
.end method


# virtual methods
.method protected getCurrentA2dpSettingIndex(Landroid/bluetooth/BluetoothCodecConfig;)I
    .locals 2

    .line 87
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getSampleRate()I

    move-result p1

    .line 88
    nop

    .line 89
    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/16 v1, 0x8

    if-eq p1, v1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 108
    const/4 v0, 0x0

    goto :goto_0

    .line 94
    :pswitch_0
    const/4 v0, 0x2

    .line 95
    goto :goto_0

    .line 91
    :pswitch_1
    const/4 v0, 0x1

    .line 92
    goto :goto_0

    .line 100
    :cond_0
    nop

    .line 101
    goto :goto_0

    .line 97
    :cond_1
    const/4 v0, 0x3

    .line 98
    nop

    .line 108
    :goto_0
    return v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 1

    .line 56
    const/4 v0, 0x0

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030024    # @array/bluetooth_a2dp_codec_sample_rate_summaries

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030026    # @array/bluetooth_a2dp_codec_sample_rate_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "bluetooth_select_a2dp_sample_rate"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 62
    nop

    .line 63
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 77
    :pswitch_0
    const/16 v0, 0x8

    .line 78
    goto :goto_0

    .line 74
    :pswitch_1
    const/4 v0, 0x4

    .line 75
    goto :goto_0

    .line 71
    :pswitch_2
    const/4 v0, 0x2

    .line 72
    goto :goto_0

    .line 68
    :pswitch_3
    const/4 v0, 0x1

    .line 69
    goto :goto_0

    .line 65
    :pswitch_4
    nop

    .line 66
    nop

    .line 82
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioSampleRatePreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setSampleRate(I)V

    .line 83
    return-void

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
