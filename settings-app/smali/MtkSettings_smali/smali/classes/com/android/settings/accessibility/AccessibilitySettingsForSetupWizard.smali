.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettingsForSetupWizard.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

.field private mScreenReaderPreference:Landroid/support/v7/preference/Preference;

.field private mSelectToSpeakPreference:Landroid/support/v7/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 154
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 155
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 156
    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    .line 157
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 159
    nop

    .line 160
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 162
    :cond_0
    return-void
.end method

.method private findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 4

    .line 107
    nop

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 109
    nop

    .line 110
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 112
    invoke-virtual {v1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v2

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 113
    iget-object v3, v2, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 114
    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 115
    return-object v1

    .line 117
    :cond_0
    goto :goto_0

    .line 119
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private updateAccessibilityServicePreference(Landroid/support/v7/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V
    .locals 4

    .line 124
    if-nez p2, :cond_0

    .line 125
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 126
    return-void

    .line 129
    :cond_0
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 130
    invoke-virtual {p2}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 136
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 137
    const-string v3, "component_name"

    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 139
    const-string v2, "preference_key"

    .line 140
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 139
    invoke-virtual {v0, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 141
    const-string p1, "title"

    invoke-virtual {v0, p1, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object p1

    .line 144
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 145
    const p1, 0x7f120068    # @string/accessibility_service_default_description 'No description provided.'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 147
    :cond_1
    const-string p2, "summary"

    invoke-virtual {v0, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 148
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x16f

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 88
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->setHasOptionsMenu(Z)V

    .line 89
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 68
    const p1, 0x7f150006    # @xml/accessibility_settings_for_setup_wizard 'res/xml/accessibility_settings_for_setup_wizard.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->addPreferencesFromResource(I)V

    .line 70
    const-string p1, "screen_magnification_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    .line 71
    const-string p1, "screen_reader_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    .line 72
    const-string p1, "select_to_speak_preference"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mSelectToSpeakPreference:Landroid/support/v7/preference/Preference;

    .line 73
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 93
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 98
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    if-ne v0, p1, :cond_0

    .line 99
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 100
    const-string v1, "from_suw"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 103
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 77
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 78
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mScreenReaderPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.marvin.talkback.TalkBackService"

    .line 79
    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 78
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateAccessibilityServicePreference(Landroid/support/v7/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 80
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mSelectToSpeakPreference:Landroid/support/v7/preference/Preference;

    const-string v1, "com.google.android.marvin.talkback"

    const-string v2, "com.google.android.accessibility.selecttospeak.SelectToSpeakService"

    .line 81
    invoke-direct {p0, v1, v2}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->findService(Ljava/lang/String;Ljava/lang/String;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v1

    .line 80
    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->updateAccessibilityServicePreference(Landroid/support/v7/preference/Preference;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->mDisplayMagnificationPreference:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizard;->configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V

    .line 83
    return-void
.end method
