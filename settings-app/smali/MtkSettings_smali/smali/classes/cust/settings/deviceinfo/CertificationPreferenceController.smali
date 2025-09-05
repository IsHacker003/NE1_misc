.class public Lcust/settings/deviceinfo/CertificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CertificationPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 56
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 57
    const-string v0, "certification_with_version_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 58
    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 60
    const/high16 v0, 0x10000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 62
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "certification_with_version_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 45
    iget-object v0, p0, Lcust/settings/deviceinfo/CertificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcust/settings/CustCertificationWithVersionSettings;->showCertification(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
