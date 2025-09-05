.class public Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "ToggleDaltonizerPreferenceFragment.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mType:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    return-void
.end method

.method private initPreferences()V
    .locals 5

    .line 103
    nop

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    const/16 v2, 0xc

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 103
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 107
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 108
    if-gez v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    const v1, 0x7f120457    # @string/daltonizer_type_overridden 'Overridden by %1$s'

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f120cae    # @string/simulate_color_space 'Simulate color space'

    .line 111
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 110
    invoke-virtual {p0, v1, v2}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 113
    :cond_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 45
    const v0, 0x7f1206fa    # @string/help_url_color_correction ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 40
    const/4 v0, 0x5

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 63
    const v0, 0x7f150002    # @xml/accessibility_daltonizer_settings 'res/xml/accessibility_daltonizer_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    const-string p1, "type"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f120046    # @string/accessibility_display_daltonizer_preference_subtitle 'This feature is experimental and may affect performance.'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 58
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->initPreferences()V

    .line 59
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 4

    .line 83
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "accessibility_display_daltonizer_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 85
    :cond_0
    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 87
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 88
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mType:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_0

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_daltonizer"

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 75
    const-string p2, "%s"

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 78
    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_display_daltonizer_enabled"

    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 69
    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 1

    .line 92
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 93
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 94
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 117
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/ToggleDaltonizerPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 118
    return-void
.end method

.method protected updateSwitchBarText(Lcom/android/settings/widget/SwitchBar;)V
    .locals 1

    .line 98
    const v0, 0x7f120043    # @string/accessibility_daltonizer_master_switch_title 'Use color correction'

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 100
    return-void
.end method
