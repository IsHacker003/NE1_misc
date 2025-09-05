.class public Lcom/android/settings/TestingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "TestingSettings.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 25
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 43
    const/16 v0, 0x59

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 29
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 31
    const p1, 0x7f1500a6    # @xml/testing_settings 'res/xml/testing_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/TestingSettings;->addPreferencesFromResource(I)V

    .line 33
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    .line 34
    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_0

    .line 35
    const-string p1, "radio_info_settings"

    .line 36
    invoke-virtual {p0, p1}, Lcom/android/settings/TestingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    .line 37
    invoke-virtual {p0}, Lcom/android/settings/TestingSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 39
    :cond_0
    return-void
.end method
