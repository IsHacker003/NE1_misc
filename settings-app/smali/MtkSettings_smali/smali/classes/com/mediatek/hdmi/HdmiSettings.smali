.class public Lcom/mediatek/hdmi/HdmiSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HdmiSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;
    }
.end annotation


# instance fields
.field private isPlugIn:Z

.field private mActivity:Landroid/app/Activity;

.field private mAudioOutputPref:Landroid/support/v7/preference/ListPreference;

.field private final mHandler:Landroid/os/Handler;

.field private mHdmiManager:Ljava/lang/Object;

.field private mHdmiObserver:Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

.field private mHdmiSettingsObserver:Landroid/database/ContentObserver;

.field private mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

.field private mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

.field private mVideoScalePref:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 45
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->isPlugIn:Z

    .line 53
    new-instance v0, Lcom/mediatek/hdmi/HdmiSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/hdmi/HdmiSettings$1;-><init>(Lcom/mediatek/hdmi/HdmiSettings;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHandler:Landroid/os/Handler;

    .line 78
    new-instance v0, Lcom/mediatek/hdmi/HdmiSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/hdmi/HdmiSettings$2;-><init>(Lcom/mediatek/hdmi/HdmiSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/support/v7/preference/ListPreference;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/hdmi/HdmiSettings;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updatePref()V

    return-void
.end method

.method static synthetic access$202(Lcom/mediatek/hdmi/HdmiSettings;Z)Z
    .locals 0

    .line 30
    iput-boolean p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->isPlugIn:Z

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/hdmi/HdmiSettings;)Landroid/os/Handler;
    .locals 0

    .line 30
    iget-object p0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private updatePref()V
    .locals 2

    .line 194
    const-string v0, "@M_HDMISettings"

    const-string v1, "updatePref"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updatePrefStatus()V

    .line 196
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updateSelectedResolution()V

    .line 197
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updateSelectedScale()V

    .line 198
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updateSelectedAudioOutput()V

    .line 199
    return-void
.end method

.method private updatePrefStatus()V
    .locals 4

    .line 202
    const-string v0, "@M_HDMISettings"

    const-string v1, "updatePrefStatus"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    nop

    .line 204
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {v0}, Lcom/mediatek/hdmi/HdimReflectionHelper;->isSignalOutputting(Ljava/lang/Object;)Z

    move-result v0

    .line 205
    const-string v1, "@M_HDMISettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updatePrefStatus, shouldEnable = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-boolean v1, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz v1, :cond_0

    .line 207
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    iget-boolean v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->isPlugIn:Z

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    goto :goto_0

    .line 209
    :cond_0
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 211
    :goto_0
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 212
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x0

    if-ne v0, v2, :cond_1

    .line 214
    move v0, v2

    goto :goto_1

    .line 212
    :cond_1
    nop

    .line 214
    move v0, v1

    :goto_1
    sget-boolean v3, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz v3, :cond_3

    .line 215
    const-string v0, "vendor.sys.hdmi.enable"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 217
    move v0, v2

    goto :goto_2

    .line 215
    :cond_2
    nop

    .line 217
    move v0, v1

    :cond_3
    :goto_2
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 218
    return-void
.end method

.method private updateSelectedAudioOutput()V
    .locals 4

    .line 266
    const-string v0, "@M_HDMISettings"

    const-string v1, "updateSelectedAudioOutput"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {v1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->isSignalOutputting(Ljava/lang/Object;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 268
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_audio_output_mode"

    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 270
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 271
    const-string v1, "@M_HDMISettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSelectedAudioOutput audioOutputMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    return-void
.end method

.method private updateSelectedResolution()V
    .locals 9

    .line 221
    const-string v0, "@M_HDMISettings"

    const-string v1, "updateSelectedResolution"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    const-string v0, "AUTO"

    invoke-static {v0}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v0

    .line 223
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "hdmi_video_resolution"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 225
    nop

    .line 226
    sget-boolean v2, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 227
    const-string v1, "persist.vendor.sys.hdmi.resolution"

    const/16 v2, 0xd

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 228
    const-string v4, "persist.vendor.sys.hdmi.auto"

    invoke-static {v4, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    goto :goto_0

    .line 231
    :cond_0
    move v2, v3

    :goto_0
    const/4 v4, 0x1

    if-gt v1, v0, :cond_1

    if-ne v2, v4, :cond_2

    .line 232
    :cond_1
    nop

    .line 234
    move v1, v0

    :cond_2
    new-array v2, v4, [I

    aput v0, v2, v3

    .line 235
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {v2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getSupportedResolutions(Ljava/lang/Object;)[I

    move-result-object v2

    .line 236
    iget-object v4, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v4}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 237
    sget-boolean v5, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz v5, :cond_3

    const v5, 0x7f030060    # @array/hdmi_box_video_resolution_entries

    goto :goto_1

    .line 238
    :cond_3
    const v5, 0x7f030062    # @array/hdmi_video_resolution_entries

    .line 236
    :goto_1
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 239
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 240
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 241
    iget-object v7, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v7}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f1206c2    # @string/hdmi_auto 'AUTO'

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    array-length v0, v2

    :goto_2
    if-ge v3, v0, :cond_4

    aget v7, v2, v3

    .line 245
    :try_start_0
    aget-object v8, v4, v7

    invoke-interface {v5, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 246
    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 249
    goto :goto_3

    .line 247
    :catch_0
    move-exception v7

    .line 248
    const-string v8, "@M_HDMISettings"

    invoke-virtual {v7}, Ljava/lang/ArrayIndexOutOfBoundsException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-static {v8, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    .line 252
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v5, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 251
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 253
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    .line 254
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/CharSequence;

    invoke-interface {v6, v2}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/CharSequence;

    .line 253
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 255
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 256
    return-void
.end method

.method private updateSelectedScale()V
    .locals 3

    .line 259
    const-string v0, "@M_HDMISettings"

    const-string v1, "updateSelectedScale"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_video_scale"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 262
    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 263
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 75
    const/16 v0, 0x2e

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 130
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 131
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    if-nez p1, :cond_0

    .line 132
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->finish()V

    .line 133
    return-void

    .line 139
    :cond_0
    const p1, 0x7f1206c8    # @string/hdmi_settings 'HDMI settings'

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 140
    const v0, 0x7f1206c3    # @string/hdmi_replace_hdmi 'HDMI'

    invoke-virtual {p0, v0}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 141
    const-string v1, "DISPLAY_TYPE_MHL"

    invoke-static {v1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v1

    .line 142
    const-string v2, "DISPLAY_TYPE_SLIMPORT"

    invoke-static {v2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v2

    .line 143
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {v3}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayType(Ljava/lang/Object;)I

    move-result v3

    .line 144
    if-ne v3, v1, :cond_1

    .line 145
    const v1, 0x7f1206c4    # @string/hdmi_replace_mhl 'MHL'

    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 146
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 147
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 148
    goto :goto_0

    :cond_1
    if-ne v3, v2, :cond_2

    .line 149
    const v1, 0x7f120cb1    # @string/slimport_replace_hdmi 'SlimPort'

    invoke-virtual {p0, v1}, Lcom/mediatek/hdmi/HdmiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 150
    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 151
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    goto :goto_0

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 156
    :goto_0
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->hasCapability(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 157
    const-string p1, "@M_HDMISettings"

    const-string v0, "remove mVideoScalePref"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 161
    :cond_3
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {p1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getAudioParameter(Ljava/lang/Object;)I

    move-result p1

    const/4 v0, 0x2

    if-gt p1, v0, :cond_4

    .line 162
    const-string p1, "@M_HDMISettings"

    const-string v0, "remove mAudioOutputPref"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 165
    :cond_4
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 88
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 89
    const-string p1, "@M_HDMISettings"

    const-string v0, "HdmiSettings.onCreate()"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    sget-boolean p1, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz p1, :cond_0

    .line 91
    const p1, 0x7f15005f    # @xml/hdmi_box_settings 'res/xml/hdmi_box_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 93
    :cond_0
    const p1, 0x7f150060    # @xml/hdmi_settings 'res/xml/hdmi_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->addPreferencesFromResource(I)V

    .line 95
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/hdmi/HdmiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    .line 96
    const-string p1, "hdmi_toggler"

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    .line 97
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mToggleHdmiPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 98
    const-string p1, "video_resolution"

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    .line 99
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoResolutionPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 100
    const-string p1, "video_scale"

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    .line 101
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 102
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    .line 103
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1}, Landroid/support/v7/preference/ListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 105
    const/4 v1, 0x0

    move v2, v1

    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_2

    .line 106
    aget-object v3, p1, v2

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_1

    .line 107
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1206c7    # @string/hdmi_scale_scale_down 'Scale down %s%%'

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aget-object v6, p1, v2

    aput-object v6, v5, v1

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 110
    :cond_1
    iget-object v3, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f1206c6    # @string/hdmi_scale_no_scale 'No scaling'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 113
    :cond_2
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mVideoScalePref:Landroid/support/v7/preference/ListPreference;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/CharSequence;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 114
    const-string p1, "audio_output"

    invoke-virtual {p0, p1}, Lcom/mediatek/hdmi/HdmiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/support/v7/preference/ListPreference;

    .line 115
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mAudioOutputPref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 117
    const-class p1, Landroid/content/Context;

    .line 118
    invoke-static {}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiService()Ljava/lang/Object;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    .line 120
    sget-boolean p1, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz p1, :cond_4

    .line 121
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiObserver:Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

    if-nez p1, :cond_3

    .line 122
    new-instance p1, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;-><init>(Lcom/mediatek/hdmi/HdmiSettings;Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiObserver:Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

    .line 124
    :cond_3
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiObserver:Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

    invoke-virtual {p1}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->startObserve()V

    .line 126
    :cond_4
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 187
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiObserver:Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

    if-eqz v0, :cond_0

    .line 188
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiObserver:Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;

    invoke-virtual {v0}, Lcom/mediatek/hdmi/HdmiSettings$HdmiObserver;->stopObserve()V

    .line 190
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 191
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 182
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 183
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 275
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 276
    const-string v0, "@M_HDMISettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " preference changed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    const-string v0, "hdmi_toggler"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 278
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 279
    iget-object p2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->enableHdmi(Ljava/lang/Object;Z)V

    .line 280
    goto/16 :goto_2

    :cond_0
    const-string v0, "video_resolution"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 281
    sget-boolean p1, Lcom/mediatek/hdmi/HdimReflectionHelper;->HDMI_BOX_SUPPORT:Z

    if-eqz p1, :cond_2

    .line 282
    move-object p1, p2

    check-cast p1, Ljava/lang/String;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "AUTO"

    .line 283
    invoke-static {v0}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result v0

    if-ne p1, v0, :cond_1

    .line 284
    const-string p1, "persist.vendor.sys.hdmi.auto"

    const-string v0, "1"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 286
    :cond_1
    const-string p1, "persist.vendor.sys.hdmi.auto"

    const-string v0, "0"

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 289
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {p1, p2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->setVideoResolution(Ljava/lang/Object;I)V

    goto/16 :goto_2

    .line 290
    :cond_3
    const-string v0, "video_scale"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 291
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 292
    if-ltz p1, :cond_4

    const/16 p2, 0xa

    if-gt p1, p2, :cond_4

    .line 293
    iget-object p2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {p2, p1}, Lcom/mediatek/hdmi/HdimReflectionHelper;->setVideoScale(Ljava/lang/Object;I)V

    goto :goto_1

    .line 295
    :cond_4
    const-string p2, "@M_HDMISettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "scaleValue error: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    :goto_1
    goto :goto_2

    :cond_5
    const-string v0, "audio_output"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    .line 298
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 299
    const-string p2, "AUDIO_OUTPUT_STEREO"

    invoke-static {p2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getHdmiDisplayTypeConstant(Ljava/lang/String;)I

    move-result p2

    .line 300
    if-ne p1, v1, :cond_6

    .line 301
    iget-object p2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiManager:Ljava/lang/Object;

    invoke-static {p2}, Lcom/mediatek/hdmi/HdimReflectionHelper;->getAudioParameter(Ljava/lang/Object;)I

    move-result p2

    .line 303
    :cond_6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HDMI_channel="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 304
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "hdmi_audio_output_mode"

    const/4 v3, -0x2

    invoke-static {v0, v2, p1, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 306
    const-string v0, "@M_HDMISettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "AudioSystem.setParameters HDMI_channel = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ",which: "

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_7
    :goto_2
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 169
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 170
    invoke-direct {p0}, Lcom/mediatek/hdmi/HdmiSettings;->updatePref()V

    .line 171
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_enable_status"

    .line 172
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 171
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 174
    iget-object v0, p0, Lcom/mediatek/hdmi/HdmiSettings;->mActivity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "hdmi_cable_plugged"

    .line 175
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/hdmi/HdmiSettings;->mHdmiSettingsObserver:Landroid/database/ContentObserver;

    .line 174
    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 177
    return-void
.end method
