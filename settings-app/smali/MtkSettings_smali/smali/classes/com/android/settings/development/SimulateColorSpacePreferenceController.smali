.class public Lcom/android/settings/development/SimulateColorSpacePreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SimulateColorSpacePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final SETTING_VALUE_OFF:I = 0x0

.field static final SETTING_VALUE_ON:I = 0x1


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method private updateSimulateColorSpace()V
    .locals 6

    .line 71
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 72
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 75
    move v1, v3

    goto :goto_0

    .line 72
    :cond_0
    nop

    .line 75
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v4, Landroid/support/v7/preference/ListPreference;

    .line 76
    const/4 v5, -0x1

    if-eqz v1, :cond_2

    .line 77
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v0, v1, v5}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 81
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 82
    if-gez v0, :cond_1

    .line 83
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 85
    const v1, 0x7f120457    # @string/daltonizer_type_overridden 'Overridden by %1$s'

    new-array v3, v3, [Ljava/lang/Object;

    const v5, 0x7f120047    # @string/accessibility_display_daltonizer_preference_title 'Color correction'

    .line 86
    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v2

    .line 85
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    const-string v0, "%s"

    invoke-virtual {v4, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    :goto_1
    goto :goto_2

    .line 91
    :cond_2
    nop

    .line 92
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 91
    invoke-virtual {v4, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 94
    :goto_2
    return-void
.end method

.method private usingDevelopmentColorSpace()Z
    .locals 5

    .line 114
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 115
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 118
    move v1, v3

    goto :goto_0

    .line 115
    :cond_0
    nop

    .line 118
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 119
    const-string v1, "accessibility_display_daltonizer"

    const/4 v4, -0x1

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 123
    if-ltz v0, :cond_1

    .line 125
    return v3

    .line 128
    :cond_1
    return v2
.end method

.method private writeSimulateColorSpace(Ljava/lang/Object;)V
    .locals 3

    .line 97
    iget-object v0, p0, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 98
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 99
    if-gez p1, :cond_0

    .line 100
    const-string p1, "accessibility_display_daltonizer_enabled"

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0

    .line 103
    :cond_0
    const-string v1, "accessibility_display_daltonizer_enabled"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 105
    const-string v1, "accessibility_display_daltonizer"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 107
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "simulate_color_space"

    return-object v0
.end method

.method public onDeveloperOptionsDisabled()V
    .locals 1

    .line 64
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsDisabled()V

    .line 65
    invoke-direct {p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->usingDevelopmentColorSpace()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, -0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 68
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 53
    invoke-direct {p0, p2}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->writeSimulateColorSpace(Ljava/lang/Object;)V

    .line 54
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/development/SimulateColorSpacePreferenceController;->updateSimulateColorSpace()V

    .line 60
    return-void
.end method
