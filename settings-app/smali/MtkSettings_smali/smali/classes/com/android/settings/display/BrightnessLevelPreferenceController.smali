.class public Lcom/android/settings/display/BrightnessLevelPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BrightnessLevelPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# static fields
.field private static final BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

.field private static final BRIGHTNESS_URI:Landroid/net/Uri;


# instance fields
.field private mBrightnessObserver:Landroid/database/ContentObserver;

.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mMaxBrightness:I

.field private final mMaxVrBrightness:I

.field private final mMinBrightness:I

.field private final mMinVrBrightness:I

.field private mPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    const-string v0, "screen_brightness"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    .line 67
    const-string v0, "screen_brightness_for_vr"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    .line 68
    const-string v0, "screen_auto_brightness_adj"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 3

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 71
    new-instance v0, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;

    new-instance v1, Landroid/os/Handler;

    .line 72
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/display/BrightnessLevelPreferenceController$1;-><init>(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    .line 81
    if-eqz p2, :cond_0

    .line 82
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 84
    :cond_0
    const-string p2, "power"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    .line 85
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    .line 86
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    .line 87
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMinimumScreenBrightnessForVrSetting()I

    move-result p2

    iput p2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:I

    .line 88
    invoke-virtual {p1}, Landroid/os/PowerManager;->getMaximumScreenBrightnessForVrSetting()I

    move-result p1

    iput p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:I

    .line 89
    iget-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    .line 90
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/BrightnessLevelPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/BrightnessLevelPreferenceController;Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroid/support/v7/preference/Preference;)V

    return-void
.end method

.method private getCurrentBrightness()D
    .locals 4

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness_for_vr"

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinVrBrightness:I

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxVrBrightness:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    goto :goto_0

    .line 138
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    const-string v1, "screen_brightness"

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    .line 146
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->isInVrMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "screen_brightness_for_vr"

    goto :goto_1

    :cond_1
    const-string v0, "screen_brightness"

    .line 147
    :goto_1
    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120119

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 148
    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    invoke-static {v1, v0, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 149
    int-to-double v0, v0

    iget v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v0

    return-wide v0

    .line 150
    :cond_2
    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120118

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 151
    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/display/CustBrightnessUtils;->convertLinearToBezier(III)I

    move-result v0

    .line 154
    int-to-double v0, v0

    const/16 v3, 0x7f

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v0

    return-wide v0

    .line 156
    :cond_3
    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    invoke-static {v1, v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iget v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMinBrightness:I

    iget v3, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mMaxBrightness:I

    invoke-static {v0, v1, v3}, Lcom/android/settingslib/display/BrightnessUtils;->convertLinearToGamma(III)I

    move-result v0

    .line 159
    int-to-double v0, v0

    const/16 v3, 0x3ff

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getPercentage(DII)D

    move-result-wide v0

    return-wide v0
.end method

.method private getPercentage(DII)D
    .locals 3

    .line 165
    int-to-double v0, p4

    cmpl-double v0, p1, v0

    if-lez v0, :cond_0

    .line 166
    const-wide/high16 p1, 0x3ff0000000000000L    # 1.0

    return-wide p1

    .line 168
    :cond_0
    int-to-double v0, p3

    cmpg-double v2, p1, v0

    if-gez v2, :cond_1

    .line 169
    const-wide/16 p1, 0x0

    return-wide p1

    .line 171
    :cond_1
    sub-double/2addr p1, v0

    sub-int/2addr p4, p3

    int-to-double p3, p4

    div-double/2addr p1, p3

    return-wide p1
.end method

.method private updatedSummary(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 126
    if-eqz p1, :cond_0

    .line 127
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    invoke-direct {p0}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->getCurrentBrightness()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/text/NumberFormat;->format(D)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 129
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 105
    const-string v0, "brightness"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 106
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "brightness"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 94
    const/4 v0, 0x1

    return v0
.end method

.method isInVrMode()Z
    .locals 3

    .line 177
    :try_start_0
    const-string v0, "vrmanager"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/service/vr/IVrManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/vr/IVrManager;

    move-result-object v0

    .line 178
    invoke-interface {v0}, Landroid/service/vr/IVrManager;->getVrModeState()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    return v0

    .line 179
    :catch_0
    move-exception v0

    .line 180
    const-string v1, "BrightnessPrefCtrl"

    const-string v2, "Failed to check vr mode!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 182
    const/4 v0, 0x0

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_FOR_VR_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    sget-object v1, Lcom/android/settings/display/BrightnessLevelPreferenceController;->BRIGHTNESS_ADJ_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 118
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 122
    iget-object v0, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mContentResolver:Landroid/content/ContentResolver;

    iget-object v1, p0, Lcom/android/settings/display/BrightnessLevelPreferenceController;->mBrightnessObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 123
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/display/BrightnessLevelPreferenceController;->updatedSummary(Landroid/support/v7/preference/Preference;)V

    .line 111
    return-void
.end method
