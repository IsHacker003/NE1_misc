.class public Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ShowLayoutBoundsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 40
    const-string v0, "debug_layout"

    return-object v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 61
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 62
    const-string v0, "debug.layout"

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    iget-object v0, p0, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 64
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 45
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 46
    const-string p2, "debug.layout"

    .line 47
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    invoke-static {v0}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    invoke-static {p1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p1

    .line 46
    :goto_0
    invoke-static {p2, p1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    invoke-static {}, Lcom/android/settingslib/development/SystemPropPoker;->getInstance()Lcom/android/settingslib/development/SystemPropPoker;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/development/SystemPropPoker;->poke()V

    .line 49
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 54
    const-string p1, "debug.layout"

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/android/settings/development/ShowLayoutBoundsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 57
    return-void
.end method
