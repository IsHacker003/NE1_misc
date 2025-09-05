.class public Lcom/android/settings/accessibility/TouchVibrationPreferenceFragment;
.super Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.source "TouchVibrationPreferenceFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getDefaultVibrationIntensity()I
    .locals 2

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accessibility/TouchVibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 52
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 33
    const/16 v0, 0x50e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 38
    const v0, 0x7f150009    # @xml/accessibility_touch_vibration_settings 'res/xml/accessibility_touch_vibration_settings.xml'

    return v0
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 1

    .line 57
    const/16 v0, 0xd

    return v0
.end method

.method protected getVibrationIntensitySetting()Ljava/lang/String;
    .locals 1

    .line 46
    const-string v0, "haptic_feedback_intensity"

    return-object v0
.end method

.method public onVibrationIntensitySelected(I)V
    .locals 2

    .line 64
    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 65
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/TouchVibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "haptic_feedback_enabled"

    .line 66
    nop

    .line 65
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 67
    return-void
.end method
