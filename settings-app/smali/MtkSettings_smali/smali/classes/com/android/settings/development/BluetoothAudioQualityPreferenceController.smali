.class public Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;
.super Lcom/android/settings/development/AbstractBluetoothA2dpPreferenceController;
.source "BluetoothAudioQualityPreferenceController.java"


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

    .line 82
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothCodecConfig;->getCodecSpecific1()J

    move-result-wide v0

    long-to-int p1, v0

    .line 83
    const/4 v0, 0x3

    if-lez p1, :cond_0

    .line 84
    rem-int/lit8 p1, p1, 0xa

    goto :goto_0

    .line 86
    :cond_0
    nop

    .line 88
    move p1, v0

    :goto_0
    packed-switch p1, :pswitch_data_0

    .line 95
    nop

    .line 98
    move p1, v0

    goto :goto_1

    .line 93
    :pswitch_0
    nop

    .line 98
    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected getDefaultIndex()I
    .locals 1

    .line 56
    const/4 v0, 0x3

    return v0
.end method

.method protected getListSummaries()[Ljava/lang/String;
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030021    # @array/bluetooth_a2dp_codec_ldac_playback_quality_summaries

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getListValues()[Ljava/lang/String;
    .locals 2

    .line 44
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030023    # @array/bluetooth_a2dp_codec_ldac_playback_quality_values

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "bluetooth_select_a2dp_ldac_playback_quality"

    return-object v0
.end method

.method protected writeConfigurationValues(Ljava/lang/Object;)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result p1

    .line 62
    nop

    .line 63
    packed-switch p1, :pswitch_data_0

    .line 73
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :pswitch_0
    const/16 v0, 0x3e8

    add-int/2addr v0, p1

    .line 69
    nop

    .line 73
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/BluetoothAudioQualityPreferenceController;->mBluetoothA2dpConfigStore:Lcom/android/settings/development/BluetoothA2dpConfigStore;

    invoke-virtual {p1, v0}, Lcom/android/settings/development/BluetoothA2dpConfigStore;->setCodecSpecific1Value(I)V

    .line 74
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
