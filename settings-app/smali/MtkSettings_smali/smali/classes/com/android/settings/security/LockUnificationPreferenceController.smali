.class public Lcom/android/settings/security/LockUnificationPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockUnificationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field private static final MY_USER_ID:I


# instance fields
.field private mCurrentDevicePassword:Ljava/lang/String;

.field private mCurrentProfilePassword:Ljava/lang/String;

.field private final mHost:Lcom/android/settings/security/SecuritySettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mProfileChallengeUserId:I

.field private final mUm:Landroid/os/UserManager;

.field private mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    sput v0, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 71
    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 72
    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    .line 73
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 74
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 75
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 76
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    sget p2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 77
    return-void
.end method

.method private launchConfirmProfileLockForUnification()V
    .locals 5

    .line 178
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e5f    # @string/unlock_set_unlock_launch_picker_title_profile 'Work profile lock'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 180
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 181
    invoke-virtual {v2}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 182
    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    const/16 v3, 0x81

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 184
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    .line 188
    :cond_0
    return-void
.end method

.method private unifyLocks()V
    .locals 5

    .line 191
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 192
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 193
    const/high16 v1, 0x10000

    if-ne v0, v1, :cond_0

    .line 194
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    .line 195
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->stringToPattern(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    sget v3, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    .line 194
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPattern(Ljava/util/List;Ljava/lang/String;I)V

    goto :goto_0

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    sget v4, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v2, v3, v0, v4}, Lcom/android/internal/widget/LockPatternUtils;->saveLockPassword(Ljava/lang/String;Ljava/lang/String;II)V

    .line 202
    :goto_0
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 204
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 205
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isVisiblePatternEnabled(I)Z

    move-result v0

    .line 206
    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v1, v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->setVisiblePatternEnabled(ZI)V

    .line 207
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    .line 208
    iput-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    .line 209
    return-void
.end method

.method private ununifyLocks()V
    .locals 3

    .line 156
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 157
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 159
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 160
    const v2, 0x7f120828    # @string/lock_settings_picker_title_profile 'Choose work lock'

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 161
    invoke-virtual {v2}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 162
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 164
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 66
    const-string v0, "unification"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedSwitchPreference;

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    .line 67
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 90
    const-string v0, "unification"

    return-object v0
.end method

.method public handleActivityResult(IILandroid/content/Intent;)Z
    .locals 3

    .line 135
    const/4 v0, 0x1

    const/4 v1, -0x1

    const/16 v2, 0x82

    if-ne p1, v2, :cond_0

    if-ne p2, v1, :cond_0

    .line 137
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    .line 138
    return v0

    .line 139
    :cond_0
    const/16 v2, 0x80

    if-ne p1, v2, :cond_1

    if-ne p2, v1, :cond_1

    .line 141
    const-string p1, "password"

    .line 142
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentDevicePassword:Ljava/lang/String;

    .line 143
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmProfileLockForUnification()V

    .line 144
    return v0

    .line 145
    :cond_1
    const/16 v2, 0x81

    if-ne p1, v2, :cond_2

    if-ne p2, v1, :cond_2

    .line 147
    const-string p1, "password"

    .line 148
    invoke-virtual {p3, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    .line 149
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->unifyLocks()V

    .line 150
    return v0

    .line 152
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 2

    .line 81
    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    const/16 v1, -0x2710

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 83
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 85
    :goto_0
    return v0
.end method

.method launchConfirmDeviceLockForUnification()V
    .locals 5

    .line 167
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 169
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 170
    invoke-virtual {v2}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v1, v2, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 171
    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    const/16 v3, 0x80

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v0, v4, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_0

    .line 173
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->launchConfirmProfileLockForUnification()V

    .line 175
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 95
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUm:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-static {p1, v0, v1}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 96
    return v0

    .line 98
    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    .line 99
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 100
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    const/high16 v1, 0x10000

    if-lt p1, v1, :cond_1

    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 102
    invoke-virtual {p1, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowedToUnify(I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 104
    move v0, p2

    goto :goto_0

    .line 102
    :cond_1
    nop

    .line 104
    :goto_0
    nop

    .line 105
    invoke-static {v0}, Lcom/android/settings/security/UnificationConfirmationDialog;->newInstance(Z)Lcom/android/settings/security/UnificationConfirmationDialog;

    move-result-object p1

    .line 106
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-virtual {p1, v0}, Lcom/android/settings/security/UnificationConfirmationDialog;->show(Lcom/android/settings/security/SecuritySettings;)V

    .line 107
    goto :goto_1

    .line 108
    :cond_2
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 109
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 110
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 111
    const/16 v1, 0x82

    sget v2, Lcom/android/settings/security/LockUnificationPreferenceController;->MY_USER_ID:I

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result p1

    if-nez p1, :cond_3

    .line 114
    invoke-direct {p0}, Lcom/android/settings/security/LockUnificationPreferenceController;->ununifyLocks()V

    .line 117
    :cond_3
    :goto_1
    return p2
.end method

.method unifyUncompliantLocks()V
    .locals 4

    .line 212
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    iget-object v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mCurrentProfilePassword:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/internal/widget/LockPatternUtils;->setSeparateProfileChallengeEnabled(IZLjava/lang/String;)V

    .line 214
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 215
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 216
    const v1, 0x7f120827    # @string/lock_settings_picker_title 'Choose screen lock'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 217
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 218
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 219
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 122
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    if-eqz p1, :cond_0

    .line 123
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    .line 124
    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result p1

    .line 125
    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    xor-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/RestrictedSwitchPreference;->setChecked(Z)V

    .line 126
    if-eqz p1, :cond_0

    .line 127
    iget-object p1, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mUnifyProfile:Lcom/android/settingslib/RestrictedSwitchPreference;

    iget-object v0, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_unified_password"

    iget v2, p0, Lcom/android/settings/security/LockUnificationPreferenceController;->mProfileChallengeUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 132
    :cond_0
    return-void
.end method
