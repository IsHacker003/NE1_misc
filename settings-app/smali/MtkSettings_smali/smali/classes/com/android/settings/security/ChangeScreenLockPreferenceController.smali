.class public Lcom/android/settings/security/ChangeScreenLockPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ChangeScreenLockPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/widget/GearPreference$OnGearClickListener;


# instance fields
.field protected final mDPM:Landroid/app/admin/DevicePolicyManager;

.field protected final mHost:Lcom/android/settings/security/SecuritySettings;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected mPreference:Lcom/android/settingslib/RestrictedPreference;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    .line 58
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    .line 59
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 60
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 62
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 63
    iput-object p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 64
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget p2, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    .line 65
    return-void
.end method


# virtual methods
.method disableIfPasswordQualityManaged(I)V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    .line 174
    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 175
    iget-object v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "device_policy"

    .line 176
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 177
    if-eqz v0, :cond_0

    iget-object v2, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v1, v2, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result p1

    const/high16 v1, 0x80000

    if-ne p1, v1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 181
    :cond_0
    return-void
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 79
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    .line 81
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "unlock_set_or_change"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 115
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 116
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 122
    :cond_0
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    const/16 v0, -0x2710

    if-eq p1, v0, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    .line 123
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_1

    .line 124
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOnly()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 125
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 126
    const/4 p1, 0x0

    return p1

    .line 130
    :cond_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 131
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f120827    # @string/lock_settings_picker_title 'Choose screen lock'

    .line 132
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 133
    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 134
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 135
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 69
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003d    # @bool/config_show_unlock_set_or_change 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public onGearClick(Lcom/android/settings/widget/GearPreference;)V
    .locals 1

    .line 105
    invoke-virtual {p1}, Lcom/android/settings/widget/GearPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 106
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/security/screenlock/ScreenLockSettings;

    .line 107
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 108
    invoke-virtual {v0}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 109
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 111
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 85
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    instance-of v0, v0, Lcom/android/settings/widget/GearPreference;

    if-eqz v0, :cond_2

    .line 86
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    .line 87
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    goto :goto_1

    .line 88
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    check-cast v0, Lcom/android/settings/widget/GearPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/GearPreference;->setOnGearClickListener(Lcom/android/settings/widget/GearPreference$OnGearClickListener;)V

    .line 94
    :cond_2
    :goto_1
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->updateSummary(Landroid/support/v7/preference/Preference;I)V

    .line 95
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 96
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    if-nez p1, :cond_3

    .line 99
    iget p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {p0, p1}, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->disableIfPasswordQualityManaged(I)V

    .line 101
    :cond_3
    return-void
.end method

.method protected updateSummary(Landroid/support/v7/preference/Preference;I)V
    .locals 1

    .line 139
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 140
    iget v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mProfileChallengeUserId:I

    if-eq p2, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 141
    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 144
    :cond_0
    const p2, 0x7f120e60    # @string/unlock_set_unlock_mode_none 'Swipe'

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 142
    :cond_1
    :goto_0
    const p2, 0x7f120e61    # @string/unlock_set_unlock_mode_off 'None'

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 147
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    const/high16 v0, 0x10000

    if-eq p2, v0, :cond_5

    const/high16 v0, 0x20000

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x30000

    if-eq p2, v0, :cond_4

    const/high16 v0, 0x40000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x50000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x60000

    if-eq p2, v0, :cond_3

    const/high16 v0, 0x80000

    if-eq p2, v0, :cond_3

    goto :goto_1

    .line 159
    :cond_3
    const p2, 0x7f120e62    # @string/unlock_set_unlock_mode_password 'Password'

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 153
    :cond_4
    const p2, 0x7f120e64    # @string/unlock_set_unlock_mode_pin 'PIN'

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 154
    goto :goto_1

    .line 149
    :cond_5
    const p2, 0x7f120e63    # @string/unlock_set_unlock_mode_pattern 'Pattern'

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 150
    nop

    .line 163
    :goto_1
    iget-object p1, p0, Lcom/android/settings/security/ChangeScreenLockPreferenceController;->mPreference:Lcom/android/settingslib/RestrictedPreference;

    const/4 p2, 0x1

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 164
    return-void
.end method
