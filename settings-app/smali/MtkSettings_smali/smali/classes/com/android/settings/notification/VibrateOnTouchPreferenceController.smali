.class public Lcom/android/settings/notification/VibrateOnTouchPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "VibrateOnTouchPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 34
    new-instance p1, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;

    const-string v3, "vibrate_on_touch"

    const-string v4, "haptic_feedback_enabled"

    const/4 p2, 0x0

    new-array v6, p2, [I

    const/4 v2, 0x2

    const/4 v5, 0x0

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController$1;-><init>(Lcom/android/settings/notification/VibrateOnTouchPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    .line 42
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)Z
    .locals 0

    .line 27
    invoke-static {p0}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;->hasHaptic(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method private static hasHaptic(Landroid/content/Context;)Z
    .locals 1

    .line 45
    const-string v0, "vibrator"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/Vibrator;

    .line 46
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/os/Vibrator;->hasVibrator()Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
