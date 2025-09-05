.class public Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;
.super Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.source "ChangeProfileScreenLockPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V

    .line 40
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 65
    const-string v0, "unlock_set_or_change_profile"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 70
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 71
    return v0

    .line 73
    :cond_0
    iget-object p1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v1, v2}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 74
    return v0

    .line 76
    :cond_1
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 77
    const-string v0, "android.intent.extra.USER_ID"

    iget v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 78
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 79
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120828    # @string/lock_settings_picker_title_profile 'Choose work lock'

    .line 80
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 81
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 82
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 85
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 4

    .line 43
    iget v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/4 v1, 0x0

    const/16 v2, -0x2710

    if-eq v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    .line 44
    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    .line 48
    return v2

    .line 50
    :cond_1
    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v3, 0x10000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x20000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x30000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x40000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x50000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x60000

    if-eq v0, v3, :cond_2

    const/high16 v3, 0x80000

    if-eq v0, v3, :cond_2

    .line 60
    return v1

    .line 58
    :cond_2
    return v2

    .line 45
    :cond_3
    :goto_0
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 90
    iget v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;I)V

    .line 92
    iget-object p1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 93
    iget-object p1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120832    # @string/lock_settings_profile_unified_summary 'Same as device screen lock'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 95
    iget-object v0, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 97
    goto :goto_0

    .line 100
    :cond_0
    iget p1, p0, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/ChangeProfileScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 102
    :goto_0
    return-void
.end method
