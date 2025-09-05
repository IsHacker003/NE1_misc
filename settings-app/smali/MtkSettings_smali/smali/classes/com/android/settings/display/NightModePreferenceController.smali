.class public Lcom/android/settings/display/NightModePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "NightModePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 50
    invoke-virtual {p0}, Lcom/android/settings/display/NightModePreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 51
    const-string v0, "night_mode"

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/display/NightModePreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 52
    return-void

    .line 54
    :cond_0
    const-string v0, "night_mode"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v0, p0, Lcom/android/settings/display/NightModePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "uimode"

    .line 58
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/UiModeManager;

    .line 59
    invoke-virtual {v0}, Landroid/app/UiModeManager;->getNightMode()I

    move-result v0

    .line 60
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 63
    :cond_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 45
    const-string v0, "night_mode"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    const/4 v0, 0x0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 68
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 69
    iget-object p2, p0, Lcom/android/settings/display/NightModePreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "uimode"

    .line 70
    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/UiModeManager;

    .line 71
    invoke-virtual {p2, p1}, Landroid/app/UiModeManager;->setNightMode(I)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    nop

    .line 76
    const/4 p1, 0x1

    return p1

    .line 72
    :catch_0
    move-exception p1

    .line 73
    const-string p2, "NightModePrefContr"

    const-string v0, "could not persist night mode setting"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 74
    const/4 p1, 0x0

    return p1
.end method
