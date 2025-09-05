.class public Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "DoubleTapPowerPreferenceController.java"


# static fields
.field static final OFF:I = 0x1

.field static final ON:I = 0x0

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_double_tap_power_video"


# instance fields
.field private final SECURE_KEY:Ljava/lang/String;

.field private final mDoubleTapPowerKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    const-string p1, "camera_double_tap_power_gesture_disabled"

    iput-object p1, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->SECURE_KEY:Ljava/lang/String;

    .line 47
    iput-object p2, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mDoubleTapPowerKey:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private static isGestureAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 56
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 57
    const v0, 0x1120033    # @android:bool/config_carrier_wfc_ims_available

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 56
    return p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string p0, "pref_double_tap_power_suggestion_complete"

    .line 52
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 51
    :goto_1
    return v0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getResultPayload()Lcom/android/settings/search/ResultPayload;
    .locals 11

    .line 91
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    const-class v1, Lcom/android/settings/gestures/DoubleTapPowerSettings;

    .line 92
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mDoubleTapPowerKey:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    .line 93
    const v4, 0x7f12056c    # @string/display_settings 'Display'

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 91
    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v8

    .line 95
    new-instance v0, Lcom/android/settings/search/InlineSwitchPayload;

    const-string v5, "camera_double_tap_power_gesture_disabled"

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->isAvailable()Z

    move-result v9

    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v10, 0x0

    move-object v4, v0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/search/InlineSwitchPayload;-><init>(Ljava/lang/String;IILandroid/content/Intent;ZI)V

    .line 95
    return-object v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 72
    const-string v0, "gesture_double_tap_power_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 3

    .line 77
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 79
    if-nez v0, :cond_0

    const/4 v2, 0x1

    nop

    :cond_0
    return v2
.end method

.method public isSliceable()Z
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_double_tap_power"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 2

    .line 84
    iget-object v0, p0, Lcom/android/settings/gestures/DoubleTapPowerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "camera_double_tap_power_gesture_disabled"

    .line 85
    nop

    .line 84
    xor-int/lit8 p1, p1, 0x1

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
