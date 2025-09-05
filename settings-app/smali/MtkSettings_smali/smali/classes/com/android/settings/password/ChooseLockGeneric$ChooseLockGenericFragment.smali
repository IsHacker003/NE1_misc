.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ChooseLockGenericFragment"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    }
.end annotation


# instance fields
.field private mChallenge:J

.field private mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;

.field private mDPM:Landroid/app/admin/DevicePolicyManager;

.field private mEncryptionRequestDisabled:Z

.field private mEncryptionRequestQuality:I

.field private mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private mForChangeCredRequiredForBoot:Z

.field protected mForFingerprint:Z

.field private mHasChallenge:Z

.field private mHideDrawer:Z

.field private mIsSetNewPassword:Z

.field private mKeyStore:Landroid/security/KeyStore;

.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

.field private mPasswordConfirmed:Z

.field private mUserId:I

.field private mUserManager:Landroid/os/UserManager;

.field private mUserPassword:Ljava/lang/String;

.field private mWaitingForConfirmation:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 97
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 142
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 143
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 146
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 151
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 153
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 157
    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z
    .locals 0

    .line 97
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private getIntentForUnlockMethod(I)Landroid/content/Intent;
    .locals 3

    .line 686
    nop

    .line 687
    const/4 v0, 0x0

    const/high16 v1, 0x80000

    if-lt p1, v1, :cond_0

    .line 688
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockManagedPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_0

    .line 689
    :cond_0
    const/high16 v1, 0x20000

    if-lt p1, v1, :cond_2

    .line 690
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v0, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordMinimumLength(Landroid/content/ComponentName;I)I

    move-result v0

    .line 691
    const/4 v1, 0x4

    if-ge v0, v1, :cond_1

    .line 692
    nop

    .line 694
    move v0, v1

    :cond_1
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v1, p1}, Landroid/app/admin/DevicePolicyManager;->getPasswordMaximumLength(I)I

    move-result v1

    .line 695
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPasswordIntent(III)Landroid/content/Intent;

    move-result-object v0

    .line 696
    goto :goto_0

    :cond_2
    const/high16 v1, 0x10000

    if-ne p1, v1, :cond_3

    .line 697
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getLockPatternIntent()Landroid/content/Intent;

    move-result-object v0

    .line 699
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 700
    const-string p1, ":settings:hide_drawer"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 702
    :cond_4
    return-object v0
.end method

.method private getKeyForCurrent()Ljava/lang/String;
    .locals 2

    .line 516
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 517
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result v0

    .line 518
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->isLockScreenDisabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    return-object v0

    .line 521
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 523
    invoke-virtual {v1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 522
    invoke-static {v0}, Lcom/android/settings/password/ScreenLockType;->fromQuality(I)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    .line 524
    if-eqz v0, :cond_1

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private getResIdForFactoryResetProtectionWarningMessage()I
    .locals 4

    .line 787
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    goto :goto_0

    .line 790
    :cond_0
    const/4 v0, 0x0

    .line 792
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    .line 793
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/high16 v3, 0x10000

    if-eq v2, v3, :cond_c

    const/high16 v3, 0x20000

    if-eq v2, v3, :cond_8

    const/high16 v3, 0x30000

    if-eq v2, v3, :cond_8

    const/high16 v3, 0x40000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x50000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x60000

    if-eq v2, v3, :cond_4

    const/high16 v3, 0x80000

    if-eq v2, v3, :cond_4

    .line 831
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    .line 832
    const v0, 0x7f120e51    # @string/unlock_disable_frp_warning_content_unknown_fingerprint_profile 'Profile protection features will not work without your screen lock.\n\nYour saved fingerprints will al ...'

    return v0

    .line 834
    :cond_1
    if-eqz v0, :cond_2

    if-nez v1, :cond_2

    .line 835
    const v0, 0x7f120e50    # @string/unlock_disable_frp_warning_content_unknown_fingerprint 'Device protection features will not work without your screen lock.\n\nYour saved fingerprints will als ...'

    return v0

    .line 836
    :cond_2
    if-eqz v1, :cond_3

    .line 837
    const v0, 0x7f120e52    # @string/unlock_disable_frp_warning_content_unknown_profile 'Profile protection features will not work without your screen lock.'

    return v0

    .line 839
    :cond_3
    const v0, 0x7f120e4f    # @string/unlock_disable_frp_warning_content_unknown 'Device protection features will not work without your screen lock.'

    return v0

    .line 820
    :cond_4
    if-eqz v0, :cond_5

    if-eqz v1, :cond_5

    .line 821
    const v0, 0x7f120e45    # @string/unlock_disable_frp_warning_content_password_fingerprint_profile 'Profile protection features will not work without your password.\n\nYour saved fingerprints will also  ...'

    return v0

    .line 823
    :cond_5
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 824
    const v0, 0x7f120e44    # @string/unlock_disable_frp_warning_content_password_fingerprint 'Device protection features will not work without your password.\n\nYour saved fingerprints will also b ...'

    return v0

    .line 825
    :cond_6
    if-eqz v1, :cond_7

    .line 826
    const v0, 0x7f120e46    # @string/unlock_disable_frp_warning_content_password_profile 'Profile protection features will not work without your password.'

    return v0

    .line 828
    :cond_7
    const v0, 0x7f120e43    # @string/unlock_disable_frp_warning_content_password 'Device protection features will not work without your password.'

    return v0

    .line 807
    :cond_8
    if-eqz v0, :cond_9

    if-eqz v1, :cond_9

    .line 808
    const v0, 0x7f120e4d    # @string/unlock_disable_frp_warning_content_pin_fingerprint_profile 'Profile protection features will not work without your PIN.\n\nYour saved fingerprints will also be re ...'

    return v0

    .line 809
    :cond_9
    if-eqz v0, :cond_a

    if-nez v1, :cond_a

    .line 810
    const v0, 0x7f120e4c    # @string/unlock_disable_frp_warning_content_pin_fingerprint 'Device protection features will not work without your PIN.\n\nYour saved fingerprints will also be rem ...'

    return v0

    .line 811
    :cond_a
    if-eqz v1, :cond_b

    .line 812
    const v0, 0x7f120e4e    # @string/unlock_disable_frp_warning_content_pin_profile 'Profile protection features will not work without your PIN.'

    return v0

    .line 814
    :cond_b
    const v0, 0x7f120e4b    # @string/unlock_disable_frp_warning_content_pin 'Device protection features will not work without your PIN.'

    return v0

    .line 795
    :cond_c
    if-eqz v0, :cond_d

    if-eqz v1, :cond_d

    .line 796
    const v0, 0x7f120e49    # @string/unlock_disable_frp_warning_content_pattern_fingerprint_profile 'Profile protection features will not work without your pattern.\n\nYour saved fingerprints will also b ...'

    return v0

    .line 798
    :cond_d
    if-eqz v0, :cond_e

    if-nez v1, :cond_e

    .line 799
    const v0, 0x7f120e48    # @string/unlock_disable_frp_warning_content_pattern_fingerprint 'Device protection features will not work without your pattern.\n\nYour saved fingerprints will also be ...'

    return v0

    .line 800
    :cond_e
    if-eqz v1, :cond_f

    .line 801
    const v0, 0x7f120e4a    # @string/unlock_disable_frp_warning_content_pattern_profile 'Profile protection features will not work without your pattern.'

    return v0

    .line 803
    :cond_f
    const v0, 0x7f120e47    # @string/unlock_disable_frp_warning_content_pattern 'Device protection features will not work without your pattern.'

    return v0
.end method

.method private getResIdForFactoryResetProtectionWarningTitle()I
    .locals 2

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    .line 781
    if-eqz v0, :cond_0

    const v0, 0x7f120e55    # @string/unlock_disable_frp_warning_title_profile 'Remove profile protection?'

    goto :goto_0

    .line 782
    :cond_0
    const v0, 0x7f120e54    # @string/unlock_disable_frp_warning_title 'Remove device protection?'

    .line 781
    :goto_0
    return v0
.end method

.method private isUnlockMethodSecure(Ljava/lang/String;)Z
    .locals 1

    .line 845
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->SWIPE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 846
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 845
    :goto_0
    return p1
.end method

.method private maybeEnableEncryption(IZ)V
    .locals 3

    .line 308
    const-string v0, "device_policy"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 309
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 310
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-ne v1, v2, :cond_1

    .line 311
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isDeviceEncryptionEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 312
    invoke-static {}, Lcom/android/internal/widget/LockPatternUtils;->isFileEncryptionEnabled()Z

    move-result v1

    if-nez v1, :cond_1

    .line 313
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    if-nez v0, :cond_1

    .line 314
    iput p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 315
    iput-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 318
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object p2

    .line 319
    const-string v0, "for_cred_req_boot"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 322
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 326
    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v1

    .line 327
    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    xor-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/LockPatternUtils;->isCredentialRequiredToDecrypt(Z)Z

    move-result v1

    .line 328
    invoke-virtual {p0, v0, p1, v1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    .line 330
    const-string p2, "for_fingerprint"

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 332
    const-string p2, ":settings:hide_drawer"

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 333
    nop

    .line 335
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz p2, :cond_0

    .line 336
    const/16 p2, 0x67

    goto :goto_0

    .line 337
    :cond_0
    const/16 p2, 0x65

    .line 333
    :goto_0
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 338
    goto :goto_1

    .line 339
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v0, :cond_2

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 342
    return-void

    .line 344
    :cond_2
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 346
    :goto_1
    return-void
.end method

.method private removeAllFingerprintForUserAndFinish(I)V
    .locals 7

    .line 706
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 707
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 708
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0, p1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 710
    nop

    .line 711
    new-instance v0, Landroid/hardware/fingerprint/Fingerprint;

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    move-object v1, v0

    move v3, p1

    invoke-direct/range {v1 .. v6}, Landroid/hardware/fingerprint/Fingerprint;-><init>(Ljava/lang/CharSequence;IIJ)V

    .line 712
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    new-instance v2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$1;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;I)V

    invoke-virtual {v1, v0, p1, v2}, Landroid/hardware/fingerprint/FingerprintManager;->remove(Landroid/hardware/fingerprint/Fingerprint;ILandroid/hardware/fingerprint/FingerprintManager$RemovalCallback;)V

    .line 731
    goto :goto_0

    .line 734
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeManagedProfileFingerprintsAndFinishIfNecessary(I)V

    goto :goto_0

    .line 741
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 743
    :goto_0
    return-void
.end method

.method private removeManagedProfileFingerprintsAndFinishIfNecessary(I)V
    .locals 6

    .line 746
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 747
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->setActiveUser(I)V

    .line 749
    :cond_0
    nop

    .line 750
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 752
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    .line 753
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 754
    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 755
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 756
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v4

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v5, v3, Landroid/content/pm/UserInfo;->id:I

    .line 757
    invoke-virtual {v4, v5}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 758
    iget p1, v3, Landroid/content/pm/UserInfo;->id:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 759
    nop

    .line 760
    nop

    .line 764
    const/4 v1, 0x1

    goto :goto_1

    .line 754
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 764
    :cond_2
    :goto_1
    if-nez v1, :cond_3

    .line 765
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 767
    :cond_3
    return-void
.end method

.method private setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V
    .locals 0

    .line 501
    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 502
    if-eqz p1, :cond_0

    .line 503
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 505
    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V
    .locals 0

    .line 487
    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 488
    if-eqz p1, :cond_0

    .line 489
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 491
    :cond_0
    return-void
.end method

.method private setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V
    .locals 0

    .line 494
    iget-object p1, p1, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 495
    if-eqz p1, :cond_0

    .line 496
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 498
    :cond_0
    return-void
.end method

.method private setUnlockMethod(Ljava/lang/String;)Z
    .locals 4

    .line 850
    const v0, 0x16058

    invoke-static {v0, p1}, Landroid/util/EventLog;->writeEvent(ILjava/lang/String;)I

    .line 852
    invoke-static {p1}, Lcom/android/settings/password/ScreenLockType;->fromKey(Ljava/lang/String;)Lcom/android/settings/password/ScreenLockType;

    move-result-object v0

    .line 853
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 854
    sget-object v2, Lcom/android/settings/password/ChooseLockGeneric$1;->$SwitchMap$com$android$settings$password$ScreenLockType:[I

    invoke-virtual {v0}, Lcom/android/settings/password/ScreenLockType;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 866
    :pswitch_0
    iget p1, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    invoke-direct {p0, p1, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    .line 867
    return v3

    .line 857
    :pswitch_1
    iget p1, v0, Lcom/android/settings/password/ScreenLockType;->defaultQuality:I

    sget-object v2, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    if-ne v0, v2, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 861
    return v3

    .line 870
    :cond_1
    :goto_1
    const-string v0, "ChooseLockGenericFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Encountered unknown unlock method to set: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 871
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V
    .locals 2

    .line 875
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningTitle()I

    move-result v0

    .line 876
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getResIdForFactoryResetProtectionWarningMessage()I

    move-result v1

    .line 877
    nop

    .line 878
    invoke-static {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->newInstance(IILjava/lang/String;)Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    move-result-object p1

    .line 880
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "frp_warning_dialog"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 881
    return-void
.end method

.method private updateCurrentPreference()V
    .locals 2

    .line 508
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getKeyForCurrent()Ljava/lang/String;

    move-result-object v0

    .line 509
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 510
    if-eqz v0, :cond_0

    .line 511
    const v1, 0x7f12044f    # @string/current_screen_lock 'Current screen lock'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 513
    :cond_0
    return-void
.end method

.method private updatePreferenceSummaryIfNeeded()V
    .locals 2

    .line 584
    invoke-static {}, Landroid/os/storage/StorageManager;->isBlockEncrypted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 585
    return-void

    .line 588
    :cond_0
    invoke-static {}, Landroid/os/storage/StorageManager;->isNonDefaultBlockEncrypted()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 589
    return-void

    .line 592
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v0

    .line 593
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 594
    return-void

    .line 597
    :cond_2
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f120bd4    # @string/secure_lock_encryption_warning 'Because you’ve turned on an accessibility service, your device won’t use your screen lock to enhance ...'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 598
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 599
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 600
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceSummary(Lcom/android/settings/password/ScreenLockType;I)V

    .line 601
    return-void
.end method

.method private updatePreferenceText()V
    .locals 3

    .line 466
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 467
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PATTERN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f120671    # @string/fingerprint_unlock_set_unlock_pattern 'Fingerprint + Pattern'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    .line 469
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f120672    # @string/fingerprint_unlock_set_unlock_pin 'Fingerprint + PIN'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    .line 470
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    const v1, 0x7f120670    # @string/fingerprint_unlock_set_unlock_password 'Fingerprint + Password'

    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;I)V

    .line 474
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    invoke-virtual {v0}, Lcom/android/settings/password/ManagedLockPasswordProvider;->isSettingManagedPasswordSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 475
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 476
    invoke-virtual {v1, v2}, Lcom/android/settings/password/ManagedLockPasswordProvider;->getPickerOptionTitle(Z)Ljava/lang/CharSequence;

    move-result-object v1

    .line 475
    invoke-direct {p0, v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setPreferenceTitle(Lcom/android/settings/password/ScreenLockType;Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 478
    :cond_1
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->MANAGED:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)Z

    .line 481
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v0, :cond_3

    .line 482
    :cond_2
    const-string v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removePreference(Ljava/lang/String;)Z

    .line 484
    :cond_3
    return-void
.end method

.method private updatePreferencesOrFinish(Z)V
    .locals 4

    .line 432
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 433
    const-string v1, "lockscreen.password_type"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 434
    const/4 v3, 0x0

    if-ne v1, v2, :cond_1

    .line 436
    const-string p1, "minimum_quality"

    invoke-virtual {v0, p1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 437
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v1, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    .line 438
    const-string v1, "hide_disabled_prefs"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 441
    if-eqz v1, :cond_0

    .line 442
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 444
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferences()V

    .line 445
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferences(IZ)V

    .line 446
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceText()V

    .line 447
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateCurrentPreference()V

    .line 448
    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferenceSummaryIfNeeded()V

    .line 449
    goto :goto_0

    :cond_1
    if-nez p1, :cond_2

    .line 451
    const/4 p1, 0x1

    invoke-virtual {p0, v1, v3, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updateUnlockMethodAndFinish(IZZ)V

    .line 453
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method protected addHeaderView()V
    .locals 2

    .line 262
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    if-eqz v0, :cond_0

    .line 263
    const v0, 0x7f0d0049    # @layout/choose_lock_generic_fingerprint_header 'res/layout/choose_lock_generic_fingerprint_header.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setHeaderView(I)V

    .line 264
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz v0, :cond_0

    .line 265
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getHeaderView()Lcom/android/settings/applications/LayoutPreference;

    move-result-object v0

    const v1, 0x7f0a015b    # @id/fingerprint_header_description

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const v1, 0x7f120674    # @string/fingerprint_unlock_title 'You can unlock your phone using your fingerprint. For security, this option requires a backup screen ...'

    .line 266
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 269
    :cond_0
    return-void
.end method

.method protected addPreferences()V
    .locals 2

    .line 456
    const v0, 0x7f150094    # @xml/security_settings_picker 'res/xml/security_settings_picker.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addPreferencesFromResource(I)V

    .line 459
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->NONE:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a01f8    # @id/lock_none

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 460
    const-string v0, "unlock_skip_fingerprint"

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 461
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PIN:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a01fa    # @id/lock_pin

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 462
    sget-object v0, Lcom/android/settings/password/ScreenLockType;->PASSWORD:Lcom/android/settings/password/ScreenLockType;

    iget-object v0, v0, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    const v1, 0x7f0a01f9    # @id/lock_password

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setViewId(I)V

    .line 463
    return-void
.end method

.method protected canRunBeforeDeviceProvisioned()Z
    .locals 1

    .line 258
    const/4 v0, 0x0

    return v0
.end method

.method protected disableUnusablePreferences(IZ)V
    .locals 0

    .line 536
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->disableUnusablePreferencesImpl(IZ)V

    .line 537
    return-void
.end method

.method protected disableUnusablePreferencesImpl(IZ)V
    .locals 13

    .line 547
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 549
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2}, Landroid/app/admin/DevicePolicyManager;->getPasswordQuality(Landroid/content/ComponentName;I)I

    move-result v1

    .line 550
    nop

    .line 551
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 550
    invoke-static {v2, v4}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfPasswordQualityIsSet(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v2

    .line 553
    invoke-static {}, Lcom/android/settings/password/ScreenLockType;->values()[Lcom/android/settings/password/ScreenLockType;

    move-result-object v4

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_6

    aget-object v8, v4, v7

    .line 554
    iget-object v9, v8, Lcom/android/settings/password/ScreenLockType;->preferenceKey:Ljava/lang/String;

    .line 555
    invoke-virtual {p0, v9}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v9

    .line 556
    instance-of v10, v9, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v10, :cond_5

    .line 557
    iget-object v10, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v10, v8}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockVisible(Lcom/android/settings/password/ScreenLockType;)Z

    move-result v10

    .line 558
    iget-object v11, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v11, v8, p1}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockEnabled(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v11

    .line 559
    iget-object v12, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 560
    invoke-virtual {v12, v8, v1}, Lcom/android/settings/password/ChooseLockGenericController;->isScreenLockDisabledByAdmin(Lcom/android/settings/password/ScreenLockType;I)Z

    move-result v8

    .line 561
    if-eqz p2, :cond_1

    .line 562
    if-eqz v10, :cond_0

    if-eqz v11, :cond_0

    .line 564
    const/4 v10, 0x1

    goto :goto_1

    .line 562
    :cond_0
    nop

    .line 564
    move v10, v6

    :cond_1
    :goto_1
    if-nez v10, :cond_2

    .line 565
    invoke-virtual {v0, v9}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 566
    :cond_2
    if-eqz v8, :cond_3

    if-eqz v2, :cond_3

    .line 567
    check-cast v9, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v9, v2}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_2

    .line 568
    :cond_3
    if-nez v11, :cond_4

    .line 571
    move-object v8, v9

    check-cast v8, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v8, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 572
    const v8, 0x7f120e58    # @string/unlock_set_unlock_disabled_summary 'Disabled by admin, encryption policy, or credential storage'

    invoke-virtual {v9, v8}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 573
    invoke-virtual {v9, v6}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_2

    .line 575
    :cond_4
    check-cast v9, Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v9, v3}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 553
    :cond_5
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 579
    :cond_6
    return-void
.end method

.method protected getEncryptionInterstitialIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;
    .locals 0

    .line 639
    invoke-static {p1, p2, p3, p4}, Lcom/android/settings/EncryptionInterstitial;->createStartIntent(Landroid/content/Context;IZLandroid/content/Intent;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected getFindSensorIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2

    .line 415
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/FingerprintEnrollFindSensor;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 776
    const v0, 0x7f1206f9    # @string/help_url_choose_lockscreen ''

    return v0
.end method

.method protected getLockManagedPasswordIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2

    .line 604
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->createIntent(ZLjava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected getLockPasswordIntent(III)Landroid/content/Intent;
    .locals 2

    .line 608
    new-instance v0, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 609
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;-><init>(Landroid/content/Context;)V

    .line 610
    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordQuality(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    .line 611
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPasswordLengthRange(II)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 612
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    iget p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 613
    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    move-result-object p1

    .line 614
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz p2, :cond_0

    .line 615
    iget-wide p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {p1, p2, p3}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setChallenge(J)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 617
    :cond_0
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 618
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p1, p2}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->setPassword(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;

    .line 620
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockPassword$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object p1

    return-object p1
.end method

.method protected getLockPatternIntent()Landroid/content/Intent;
    .locals 3

    .line 624
    new-instance v0, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;-><init>(Landroid/content/Context;)V

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 626
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setForFingerprint(Z)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 627
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setUserId(I)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    move-result-object v0

    .line 628
    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz v1, :cond_0

    .line 629
    iget-wide v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setChallenge(J)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 631
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 632
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->setPattern(Ljava/lang/String;)Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;

    .line 634
    :cond_1
    invoke-virtual {v0}, Lcom/android/settings/password/ChooseLockPattern$IntentBuilder;->build()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 161
    const/16 v0, 0x1b

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .line 350
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 352
    const/4 v1, 0x1

    const/4 v2, -0x1

    const/16 v3, 0x64

    if-ne p1, v3, :cond_2

    if-ne p2, v2, :cond_2

    .line 353
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 360
    if-eqz p3, :cond_0

    .line 361
    const-string p2, "password"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 362
    :cond_0
    const/4 p2, 0x0

    :goto_0
    iput-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 365
    invoke-direct {p0, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 366
    iget-boolean p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p2, :cond_c

    .line 367
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 368
    iget-object p2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 369
    invoke-virtual {p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p2

    .line 368
    invoke-direct {p0, p2, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto/16 :goto_3

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto/16 :goto_3

    .line 374
    :cond_2
    const/16 v3, 0x66

    if-eq p1, v3, :cond_8

    const/16 v3, 0x65

    if-ne p1, v3, :cond_3

    goto :goto_1

    .line 389
    :cond_3
    const/16 v3, 0x67

    if-ne p1, v3, :cond_5

    if-ne p2, v1, :cond_5

    .line 391
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getFindSensorIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object p2

    .line 392
    if-eqz p3, :cond_4

    .line 393
    invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 396
    :cond_4
    const-string p3, "android.intent.extra.USER_ID"

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p2, p3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    invoke-virtual {p0, p2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivity(Landroid/content/Intent;)V

    .line 398
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 399
    goto :goto_3

    :cond_5
    const/16 v3, 0x68

    if-ne p1, v3, :cond_7

    .line 400
    if-eqz p2, :cond_c

    .line 401
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 402
    if-ne p2, v1, :cond_6

    .line 401
    move p2, v2

    :cond_6
    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 406
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v0}, Landroid/app/Activity;->setResult(I)V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    goto :goto_3

    .line 376
    :cond_8
    :goto_1
    if-nez p2, :cond_b

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz v1, :cond_9

    goto :goto_2

    .line 383
    :cond_9
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v1, "lockscreen.password_type"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    .line 384
    if-eq p2, v2, :cond_a

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2, v0, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 386
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 388
    :cond_a
    goto :goto_3

    .line 377
    :cond_b
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 378
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 409
    :cond_c
    :goto_3
    if-nez p1, :cond_d

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p1, :cond_d

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->finish()V

    .line 412
    :cond_d
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 168
    invoke-static {v0}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->canRunBeforeDeviceProvisioned()Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 170
    return-void

    .line 173
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 175
    const-string v1, "device_policy"

    invoke-virtual {p0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 176
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mKeyStore:Landroid/security/KeyStore;

    .line 177
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 178
    new-instance v1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 179
    const-string v1, "android.app.action.SET_NEW_PARENT_PROFILE_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_2

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    .line 180
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    goto :goto_1

    :cond_2
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "confirm_credentials"

    .line 184
    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    instance-of v4, v4, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    if-eqz v4, :cond_3

    .line 186
    xor-int/2addr v1, v3

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "password"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 190
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, ":settings:hide_drawer"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHideDrawer:Z

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "has_challenge"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "challenge"

    const-wide/16 v5, 0x0

    invoke-virtual {v1, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChallenge:J

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v4, "for_fingerprint"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForFingerprint:Z

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v4, "for_cred_req_boot"

    invoke-virtual {v1, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    move v1, v3

    goto :goto_2

    :cond_4
    move v1, v2

    :goto_2
    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserManager:Landroid/os/UserManager;

    .line 202
    if-eqz p1, :cond_5

    .line 203
    const-string v1, "password_confirmed"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 204
    const-string v1, "waiting_for_confirmation"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    .line 205
    const-string v1, "encrypt_requested_quality"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    .line 206
    const-string v1, "encrypt_requested_disabled"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    .line 208
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 209
    const-string v1, "password"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    .line 218
    :cond_5
    nop

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActivityToken()Landroid/os/IBinder;

    move-result-object v1

    .line 220
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v4

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v5

    .line 222
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v6

    .line 218
    invoke-static {v1, v4, v5, v6}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object v1

    .line 222
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    iput v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 223
    new-instance v1, Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {v1, v4, v5}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 224
    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 226
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120828    # @string/lock_settings_picker_title_profile 'Choose work lock'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 230
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-static {v0, v1}, Lcom/android/settings/password/ManagedLockPasswordProvider;->get(Landroid/content/Context;I)Lcom/android/settings/password/ManagedLockPasswordProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mManagedPasswordProvider:Lcom/android/settings/password/ManagedLockPasswordProvider;

    .line 232
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_8

    .line 233
    if-eqz p1, :cond_7

    goto :goto_3

    :cond_7
    move v3, v2

    :goto_3
    invoke-direct {p0, v3}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 234
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mForChangeCredRequiredForBoot:Z

    if-eqz p1, :cond_e

    .line 235
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    invoke-direct {p0, p1, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->maybeEnableEncryption(IZ)V

    goto :goto_7

    .line 238
    :cond_8
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    if-nez v0, :cond_e

    .line 239
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    .line 240
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 241
    nop

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v4, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 243
    invoke-virtual {v1, v4}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeEnabled(I)Z

    move-result v1

    if-nez v1, :cond_9

    .line 244
    move v1, v3

    goto :goto_4

    .line 243
    :cond_9
    nop

    .line 244
    move v1, v2

    :goto_4
    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-nez v1, :cond_a

    .line 245
    move v1, v3

    goto :goto_5

    .line 244
    :cond_a
    nop

    .line 245
    move v1, v2

    :goto_5
    if-nez v1, :cond_c

    const/16 v1, 0x64

    const v4, 0x7f120e5e    # @string/unlock_set_unlock_launch_picker_title 'Screen lock'

    .line 247
    invoke-virtual {p0, v4}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    .line 246
    invoke-virtual {v0, v1, v4, v3, v5}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;ZI)Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_6

    .line 251
    :cond_b
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    goto :goto_7

    .line 248
    :cond_c
    :goto_6
    iput-boolean v3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    .line 249
    if-eqz p1, :cond_d

    move v2, v3

    nop

    :cond_d
    invoke-direct {p0, v2}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->updatePreferencesOrFinish(Z)V

    .line 254
    :cond_e
    :goto_7
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->addHeaderView()V

    .line 255
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 771
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 772
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 273
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 275
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->isUnlockMethodSecure(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 278
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->showFactoryResetProtectionWarningDialog(Ljava/lang/String;)V

    .line 279
    return v1

    .line 280
    :cond_0
    const-string v0, "unlock_skip_fingerprint"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 281
    new-instance p1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v2, Lcom/android/settings/password/ChooseLockGeneric$InternalActivity;

    invoke-direct {p1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    const-string v0, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 286
    const-string v0, "confirm_credentials"

    iget-boolean v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    xor-int/2addr v2, v1

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 287
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 288
    const-string v0, "password"

    iget-object v2, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 291
    :cond_1
    const/16 v0, 0x68

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 292
    return v1

    .line 294
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->setUnlockMethod(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 420
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 422
    const-string v0, "password_confirmed"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 423
    const-string v0, "waiting_for_confirmation"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mWaitingForConfirmation:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 424
    const-string v0, "encrypt_requested_quality"

    iget v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestQuality:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 425
    const-string v0, "encrypt_requested_disabled"

    iget-boolean v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mEncryptionRequestDisabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 426
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 427
    const-string v0, "password"

    iget-object v1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    :cond_0
    return-void
.end method

.method updateUnlockMethodAndFinish(IZZ)V
    .locals 2

    .line 657
    iget-boolean v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mPasswordConfirmed:Z

    if-eqz v0, :cond_4

    .line 661
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {v0, p1}, Lcom/android/settings/password/ChooseLockGenericController;->upgradeQuality(I)I

    move-result p1

    .line 662
    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntentForUnlockMethod(I)Landroid/content/Intent;

    move-result-object v0

    .line 663
    if-eqz v0, :cond_2

    .line 664
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string p2, "show_options_button"

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 665
    const-string p1, "show_options_button"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 667
    :cond_0
    const-string p1, "choose_lock_generic_extras"

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getIntent()Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 668
    nop

    .line 669
    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mIsSetNewPassword:Z

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mHasChallenge:Z

    if-eqz p1, :cond_1

    .line 670
    const/16 p1, 0x67

    goto :goto_0

    .line 671
    :cond_1
    const/16 p1, 0x66

    .line 668
    :goto_0
    invoke-virtual {p0, v0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 672
    return-void

    .line 675
    :cond_2
    if-nez p1, :cond_3

    .line 676
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget-object p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserPassword:Ljava/lang/String;

    iget v0, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p3, v0}, Lcom/android/internal/widget/LockPatternUtils;->clearLock(Ljava/lang/String;I)V

    .line 677
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mChooseLockSettingsHelper:Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iget p3, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-virtual {p1, p2, p3}, Lcom/android/internal/widget/LockPatternUtils;->setLockScreenDisabled(ZI)V

    .line 678
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 679
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    goto :goto_1

    .line 681
    :cond_3
    iget p1, p0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->mUserId:I

    invoke-direct {p0, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->removeAllFingerprintForUserAndFinish(I)V

    .line 683
    :goto_1
    return-void

    .line 658
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Tried to update password without confirming it"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
