.class public Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;
.super Lcom/android/settings/gestures/GesturePreferenceController;
.source "SwipeToNotificationPreferenceController.java"


# static fields
.field private static final OFF:I = 0x0

.field private static final ON:I = 0x1

.field private static final PREF_KEY_VIDEO:Ljava/lang/String; = "gesture_swipe_down_fingerprint_video"

.field private static final SECURE_KEY:Ljava/lang/String; = "system_navigation_keys_enabled"


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/gestures/GesturePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    return-void
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 0

    .line 89
    invoke-static {p0}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static isGestureAvailable(Landroid/content/Context;)Z
    .locals 1

    .line 48
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 49
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x11200b9    # @android:bool/config_swipeDisambiguation

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 48
    :goto_0
    return p0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;Landroid/content/SharedPreferences;)Z
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->isGestureAvailable(Landroid/content/Context;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_1

    const-string p0, "pref_swipe_to_notification_suggestion_complete"

    .line 43
    invoke-interface {p1, p0, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 42
    :goto_1
    return v0
.end method

.method public static isSwipeToNotificationOn(Landroid/content/Context;)Z
    .locals 2

    .line 80
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "system_navigation_keys_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public static setSwipeToNotification(Landroid/content/Context;Z)Z
    .locals 1

    .line 84
    nop

    .line 85
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "system_navigation_keys_enabled"

    .line 84
    invoke-static {p0, v0, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getVideoPrefKey()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "gesture_swipe_down_fingerprint_video"

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 76
    iget-object v0, p0, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->isSwipeToNotificationOn(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gesture_swipe_down_fingerprint"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settings/gestures/SwipeToNotificationPreferenceController;->setSwipeToNotification(Landroid/content/Context;Z)Z

    .line 71
    const/4 p1, 0x1

    return p1
.end method
