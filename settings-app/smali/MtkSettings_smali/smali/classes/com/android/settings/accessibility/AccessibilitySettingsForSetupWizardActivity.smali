.class public Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;
.super Lcom/android/settings/SettingsActivity;
.source "AccessibilitySettingsForSetupWizardActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/SettingsActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 37
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 41
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 0

    .line 58
    const/4 p1, 0x1

    return p1
.end method

.method public onNavigateUp()Z
    .locals 2

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->onBackPressed()V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 67
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 69
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 74
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    if-nez v0, :cond_0

    .line 76
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    :cond_0
    const-string v1, "help_uri_resource"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 79
    const-string v1, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 80
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 82
    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 83
    instance-of v0, p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_1

    .line 84
    check-cast p1, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {p1}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v2

    goto :goto_0

    .line 85
    :cond_1
    nop

    .line 83
    :goto_0
    invoke-virtual {p2, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 87
    const/4 p1, 0x1

    return p1
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 51
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 52
    const-string v0, "activity_title"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 53
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 45
    const-string v0, "activity_title"

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettingsForSetupWizardActivity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 46
    invoke-super {p0, p1}, Lcom/android/settings/SettingsActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 47
    return-void
.end method
