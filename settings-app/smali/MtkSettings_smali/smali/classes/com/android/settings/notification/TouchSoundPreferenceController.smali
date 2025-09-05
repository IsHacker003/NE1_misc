.class public Lcom/android/settings/notification/TouchSoundPreferenceController;
.super Lcom/android/settings/notification/SettingPrefController;
.source "TouchSoundPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 7

    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/notification/SettingPrefController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 37
    new-instance p1, Lcom/android/settings/notification/TouchSoundPreferenceController$1;

    const-string v3, "touch_sounds"

    const-string v4, "sound_effects_enabled"

    const/4 p2, 0x0

    new-array v6, p2, [I

    const/4 v2, 0x2

    const/4 v5, 0x1

    move-object v0, p1

    move-object v1, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/notification/TouchSoundPreferenceController$1;-><init>(Lcom/android/settings/notification/TouchSoundPreferenceController;ILjava/lang/String;Ljava/lang/String;I[I)V

    iput-object p1, p0, Lcom/android/settings/notification/TouchSoundPreferenceController;->mPreference:Lcom/android/settings/notification/SettingPref;

    .line 56
    return-void
.end method


# virtual methods
.method public isAvailable()Z
    .locals 2

    .line 60
    iget-object v0, p0, Lcom/android/settings/notification/TouchSoundPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003a    # @bool/config_show_touch_sounds 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
