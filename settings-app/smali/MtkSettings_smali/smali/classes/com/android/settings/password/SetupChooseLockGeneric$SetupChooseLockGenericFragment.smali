.class public Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;
.super Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.source "SetupChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/SetupChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SetupChooseLockGenericFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 1

    .line 105
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 106
    const v0, 0x7f0d0148    # @layout/setup_choose_lock_generic_fingerprint_header 'res/layout/setup_choose_lock_generic_fingerprint_header.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    goto :goto_0

    .line 108
    :cond_0
    const v0, 0x7f0d0149    # @layout/setup_choose_lock_generic_header 'res/layout/setup_choose_lock_generic_header.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setHeaderView(I)V

    .line 110
    :goto_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .line 158
    iget-boolean v0, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 159
    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    goto :goto_0

    .line 162
    :cond_0
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 163
    const v0, 0x7f150097    # @xml/setup_security_settings_picker_debug 'res/xml/setup_security_settings_picker_debug.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->addPreferencesFromResource(I)V

    goto :goto_0

    .line 165
    :cond_1
    const v0, 0x7f150096    # @xml/setup_security_settings_picker 'res/xml/setup_security_settings_picker.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 168
    :goto_0
    return-void
.end method

.method protected canRunBeforeDeviceProvisioned()Z
    .locals 1

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0

    .line 151
    const/high16 p2, 0x10000

    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 153
    const/4 p2, 0x1

    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 154
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 202
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/SetupEncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 204
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 205
    return-object p1
.end method

.method protected getFindSensorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 210
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 212
    return-object v0
.end method

.method protected getLockPasswordIntent(III)Landroid/content/Intent;
    .locals 1

    .line 185
    nop

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(III)Landroid/content/Intent;

    move-result-object p1

    .line 185
    invoke-static {v0, p1}, Lcom/android/settings/password/SetupChooseLockPassword;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-static {p2, p1}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 188
    return-object p1
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 2

    .line 193
    nop

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-super {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v1

    .line 193
    invoke-static {v0, v1}, Lcom/android/settings/password/SetupChooseLockPattern;->modifyIntentForSetup(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 196
    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .line 114
    if-nez p3, :cond_0

    .line 115
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 119
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 120
    const-string v1, ":settings:password_quality"

    .line 121
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 120
    invoke-virtual {p3, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 123
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 124
    return-void
.end method

.method public onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 129
    move-object v0, p2

    check-cast v0, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 130
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->onCreateRecyclerView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    return-object p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 172
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 173
    const-string v1, "unlock_set_do_later"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, ":settings:frp_supported"

    const/4 v1, 0x0

    .line 176
    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 175
    invoke-static {p1}, Lcom/android/settings/password/SetupSkipDialog;->newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;

    move-result-object p1

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;)V

    .line 178
    const/4 p1, 0x1

    return p1

    .line 180
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 84
    check-cast p1, Lcom/android/setupwizardlib/GlifPreferenceLayout;

    .line 85
    new-instance p2, Lcom/android/settings/utils/SettingsDividerItemDecoration;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/utils/SettingsDividerItemDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerItemDecoration(Lcom/android/setupwizardlib/DividerItemDecoration;)V

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f070190    # @dimen/suw_items_glif_text_divider_inset '24.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setDividerInset(I)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object p2

    const v0, 0x7f080128    # @drawable/ic_lock 'res/drawable/ic_lock.xml'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-boolean p2, p0, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz p2, :cond_0

    .line 92
    const p2, 0x7f120827    # @string/lock_settings_picker_title 'Choose screen lock'

    goto :goto_0

    :cond_0
    const p2, 0x7f120c3d    # @string/setup_lock_settings_picker_title 'Protect your phone'

    .line 93
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/app/Activity;->setTitle(I)V

    .line 97
    :cond_1
    invoke-virtual {p1, p2}, Lcom/android/setupwizardlib/GlifPreferenceLayout;->setHeaderText(I)V

    .line 100
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/password/SetupChooseLockGeneric$SetupChooseLockGenericFragment;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 101
    return-void
.end method
