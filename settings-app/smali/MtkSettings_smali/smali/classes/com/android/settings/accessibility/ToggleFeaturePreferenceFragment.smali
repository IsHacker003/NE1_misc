.class public abstract Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ToggleFeaturePreferenceFragment.java"


# instance fields
.field protected mPreferenceKey:Ljava/lang/String;

.field protected mSettingsIntent:Landroid/content/Intent;

.field protected mSettingsTitle:Ljava/lang/CharSequence;

.field protected mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field protected mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private installActionBarToggleSwitch()V
    .locals 1

    .line 105
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 107
    return-void
.end method

.method private removeActionBarToggleSwitch()V
    .locals 2

    .line 110
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onRemoveSwitchBarToggleSwitch()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 113
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 77
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->installActionBarToggleSwitch()V

    .line 79
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreenResId()I

    move-result p1

    .line 46
    if-gtz p1, :cond_0

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 47
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 49
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 51
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 0

    .line 83
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 85
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->removeActionBarToggleSwitch()V

    .line 86
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 0

    .line 98
    return-void
.end method

.method protected abstract onPreferenceToggled(Ljava/lang/String;Z)V
.end method

.method protected onProcessArguments(Landroid/os/Bundle;)V
    .locals 3

    .line 121
    const-string v0, "preference_key"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mPreferenceKey:Ljava/lang/String;

    .line 124
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "checked"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 126
    iget-object v1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 130
    :cond_0
    const-string v0, "resolve_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 131
    const-string v0, "resolve_info"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 133
    goto :goto_0

    :cond_1
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 134
    const-string v0, "title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->setTitle(Ljava/lang/String;)V

    .line 138
    :cond_2
    :goto_0
    const-string v0, "summary_res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 139
    const-string v0, "summary_res"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 140
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 141
    goto :goto_1

    :cond_3
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 142
    const-string v0, "summary"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 144
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 146
    :cond_4
    :goto_1
    return-void
.end method

.method protected onRemoveSwitchBarToggleSwitch()V
    .locals 0

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 58
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 59
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->updateSwitchBarText(Lcom/android/settings/widget/SwitchBar;)V

    .line 60
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onProcessArguments(Landroid/os/Bundle;)V

    .line 65
    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    if-eqz p1, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 67
    new-instance p2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 68
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsTitle:Ljava/lang/CharSequence;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 69
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setIconSpaceReserved(Z)V

    .line 70
    iget-object v0, p0, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->mSettingsIntent:Landroid/content/Intent;

    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 71
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 73
    :cond_0
    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 117
    return-void
.end method

.method protected updateSwitchBarText(Lcom/android/settings/widget/SwitchBar;)V
    .locals 1

    .line 90
    const v0, 0x7f120069    # @string/accessibility_service_master_switch_title 'Use service'

    invoke-virtual {p1, v0, v0}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 92
    return-void
.end method
