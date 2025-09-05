.class public abstract Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ConfirmDeviceCredentialBaseFragment.java"

# interfaces
.implements Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;
    }
.end annotation


# instance fields
.field protected mCancelButton:Landroid/widget/Button;

.field protected mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field protected mEffectiveUserId:I

.field protected mErrorTextView:Landroid/widget/TextView;

.field private mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

.field protected mFingerprintIcon:Landroid/widget/ImageView;

.field protected mFrp:Z

.field private mFrpAlternateButtonText:Ljava/lang/CharSequence;

.field protected final mHandler:Landroid/os/Handler;

.field protected mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mResetErrorRunnable:Ljava/lang/Runnable;

.field protected mReturnCredentials:Z

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    .line 93
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    .line 371
    new-instance v0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$2;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;)V

    iput-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method private getUserTypeForWipe()I
    .locals 3

    .line 345
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 346
    invoke-virtual {v1, v2}, Landroid/app/admin/DevicePolicyManager;->getProfileWithMinimumFailedPasswordsForWipe(I)I

    move-result v1

    .line 345
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 347
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 349
    :cond_0
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 350
    const/4 v0, 0x2

    return v0

    .line 352
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 348
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0
.end method

.method private getWipeMessage(I)I
    .locals 3

    .line 359
    packed-switch p1, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unrecognized user type:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 365
    :pswitch_0
    const p1, 0x7f12080c    # @string/lock_failed_attempts_now_wiping_user 'Too many incorrect attempts. This user will be deleted.'

    return p1

    .line 363
    :pswitch_1
    const p1, 0x7f12080b    # @string/lock_failed_attempts_now_wiping_profile 'Too many incorrect attempts. This work profile and its data will be deleted.'

    return p1

    .line 361
    :pswitch_2
    const p1, 0x7f120809    # @string/lock_failed_attempts_now_wiping_device 'Too many incorrect attempts. This device's data will be deleted.'

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isFingerprintAllowed()Z
    .locals 3

    .line 173
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 174
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v2, "com.android.settings.ConfirmCredentials.allowFpAuthentication"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 175
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isStrongAuthRequired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isFingerprintDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 173
    :cond_0
    return v1
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 3

    .line 157
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 158
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 159
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private isInternalActivity()Z
    .locals 1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPassword$InternalActivity;

    if-nez v0, :cond_1

    .line 99
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/password/ConfirmLockPattern$InternalActivity;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 98
    :goto_1
    return v0
.end method

.method private setWorkChallengeBackground(Landroid/view/View;I)V
    .locals 2

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a0201    # @id/main_content

    invoke-virtual {v0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 271
    if-eqz v0, :cond_0

    .line 273
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1, v1, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 276
    :cond_0
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 277
    invoke-virtual {v1, p2}, Landroid/app/admin/DevicePolicyManager;->getOrganizationColorForUser(I)I

    move-result p2

    invoke-direct {v0, p2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 276
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 278
    const p2, 0x7f0a0061    # @id/background_image

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 279
    if-eqz p1, :cond_1

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f080218    # @drawable/work_challenge_background 'res/drawable-nodpi/work_challenge_background.png'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    .line 281
    nop

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f060037    # @color/confirm_device_credential_transparent_black '#60000000'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->DARKEN:Landroid/graphics/PorterDuff$Mode;

    .line 281
    invoke-virtual {p2, v0, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 284
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 285
    new-instance p2, Landroid/graphics/Point;

    invoke-direct {p2}, Landroid/graphics/Point;-><init>()V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    .line 287
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v1, -0x1

    iget p2, p2, Landroid/graphics/Point;->y:I

    invoke-direct {v0, v1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 291
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract authenticationSucceeded()V
.end method

.method protected checkForPendingIntent()V
    .locals 8

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.TASK_ID"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 248
    if-eq v0, v2, :cond_0

    .line 250
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v1

    .line 251
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 252
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Landroid/app/IActivityManager;->startActivityFromRecents(ILandroid/os/Bundle;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    return-void

    .line 254
    :catch_0
    move-exception v0

    .line 258
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.extra.INTENT"

    .line 259
    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Landroid/content/IntentSender;

    .line 260
    if-eqz v2, :cond_1

    .line 262
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Landroid/app/Activity;->startIntentSenderForResult(Landroid/content/IntentSender;ILandroid/content/Intent;III)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 265
    goto :goto_0

    .line 263
    :catch_1
    move-exception v0

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method protected abstract getLastTryErrorMessage(I)I
.end method

.method protected isStrongAuthRequired()Z
    .locals 2

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 168
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isFingerprintAllowedForUser(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 169
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isUserUnlocked(I)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 167
    :goto_1
    return v0
.end method

.method public onAuthenticated()V
    .locals 3

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isResumed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    nop

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "trust"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/trust/TrustManager;

    .line 228
    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/trust/TrustManager;->setDeviceLockedForUser(IZ)V

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->authenticationSucceeded()V

    .line 230
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->checkForPendingIntent()V

    .line 232
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.app.extra.ALTERNATE_BUTTON_LABEL"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "return_credentials"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mReturnCredentials:Z

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 112
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isInternalActivity()Z

    move-result v2

    .line 111
    invoke-static {v0, p1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    .line 113
    iget p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    const/16 v0, -0x270f

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    .line 115
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserId:I

    invoke-virtual {p1, v0}, Landroid/os/UserManager;->getCredentialOwnerProfile(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 116
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 119
    return-void
.end method

.method public onFingerprintIconVisibilityChanged(Z)V
    .locals 0

    .line 238
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 216
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onPause()V

    .line 217
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 218
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 220
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .line 181
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onResume()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->refreshLockScreen()V

    .line 183
    return-void
.end method

.method protected abstract onShowError()V
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    const p2, 0x7f0a009c    # @id/cancelButton

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Button;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    .line 125
    const p2, 0x7f0a0157    # @id/fingerprintIcon

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ImageView;

    iput-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 126
    new-instance p2, Lcom/android/settings/fingerprint/FingerprintUiHelper;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintIcon:Landroid/widget/ImageView;

    .line 128
    const v1, 0x7f0a0144    # @id/errorText

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-direct {p2, v0, v1, p0, v2}, Lcom/android/settings/fingerprint/FingerprintUiHelper;-><init>(Landroid/widget/ImageView;Landroid/widget/TextView;Lcom/android/settings/fingerprint/FingerprintUiHelper$Callback;I)V

    iput-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-virtual {p2}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string v0, "com.android.settings.ConfirmCredentials.showCancelButton"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 131
    iget-boolean v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrp:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    .line 132
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    if-nez p2, :cond_2

    if-eqz v0, :cond_1

    goto :goto_1

    .line 133
    :cond_1
    const/16 v1, 0x8

    nop

    .line 132
    :cond_2
    :goto_1
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 134
    if-eqz v0, :cond_3

    .line 135
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFrpAlternateButtonText:Ljava/lang/CharSequence;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 137
    :cond_3
    iget-object p2, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mCancelButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$1;-><init>(Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;Z)V

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 146
    nop

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object p2

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isInternalActivity()Z

    move-result v2

    .line 148
    invoke-static {v0, v1, v2}, Lcom/android/settings/Utils;->getUserIdFromBundle(Landroid/content/Context;Landroid/os/Bundle;Z)I

    move-result v0

    .line 146
    invoke-static {p2, v0}, Lcom/android/settings/Utils;->getCredentialOwnerUserId(Landroid/content/Context;I)I

    move-result p2

    .line 151
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p2}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 152
    invoke-direct {p0, p1, p2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->setWorkChallengeBackground(Landroid/view/View;I)V

    .line 154
    :cond_4
    return-void
.end method

.method public prepareEnterAnimation()V
    .locals 0

    .line 241
    return-void
.end method

.method protected refreshLockScreen()V
    .locals 2

    .line 186
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->isFingerprintAllowed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->startListening()V

    goto :goto_0

    .line 189
    :cond_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->isListening()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mFingerprintHelper:Lcom/android/settings/fingerprint/FingerprintUiHelper;

    invoke-virtual {v0}, Lcom/android/settings/fingerprint/FingerprintUiHelper;->stopListening()V

    .line 193
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 194
    return-void
.end method

.method protected reportFailedAttempt()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 304
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getCurrentFailedPasswordAttempts(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 303
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->updateErrorMessage(I)V

    .line 305
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportFailedPasswordAttempt(I)V

    .line 306
    return-void
.end method

.method protected reportSuccessfulAttempt()V
    .locals 2

    .line 294
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->reportSuccessfulPasswordAttempt(I)V

    .line 295
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 298
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->userPresent(I)V

    .line 300
    :cond_0
    return-void
.end method

.method protected setAccessibilityTitle(Ljava/lang/CharSequence;)V
    .locals 3

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 198
    if-eqz v0, :cond_2

    .line 199
    const-string v1, "com.android.settings.ConfirmCredentials.title"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 201
    if-nez p1, :cond_0

    .line 202
    return-void

    .line 204
    :cond_0
    if-nez v0, :cond_1

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 207
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v2, ","

    .line 208
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object p1

    invoke-virtual {v1, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 212
    :cond_2
    :goto_0
    return-void
.end method

.method protected showError(IJ)V
    .locals 0

    .line 390
    invoke-virtual {p0, p1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 391
    return-void
.end method

.method protected showError(Ljava/lang/CharSequence;J)V
    .locals 2

    .line 379
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 380
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->onShowError()V

    .line 381
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 382
    const-wide/16 v0, 0x0

    cmp-long p1, p2, v0

    if-eqz p1, :cond_0

    .line 383
    iget-object p1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mHandler:Landroid/os/Handler;

    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mResetErrorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, p2, p3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 385
    :cond_0
    return-void
.end method

.method public startEnterAnimation()V
    .locals 0

    .line 244
    return-void
.end method

.method protected updateErrorMessage(I)V
    .locals 7

    .line 309
    iget-object v0, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mEffectiveUserId:I

    .line 310
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getMaximumFailedPasswordsForWipe(I)I

    move-result v0

    .line 311
    if-lez v0, :cond_4

    if-gtz p1, :cond_0

    goto :goto_1

    .line 316
    :cond_0
    iget-object v1, p0, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->mErrorTextView:Landroid/widget/TextView;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 317
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v4, 0x7f120808    # @string/lock_failed_attempts_before_wipe 'Try again. Attempt %1$d of %2$d.'

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    .line 318
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    .line 317
    invoke-virtual {v1, v4, v5}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 319
    const-wide/16 v4, 0x0

    invoke-virtual {p0, v1, v4, v5}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->showError(Ljava/lang/CharSequence;J)V

    .line 323
    :cond_1
    sub-int/2addr v0, p1

    .line 324
    if-le v0, v3, :cond_2

    .line 325
    return-void

    .line 327
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    .line 328
    invoke-direct {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getUserTypeForWipe()I

    move-result v1

    .line 329
    if-ne v0, v3, :cond_3

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v3, 0x7f12080e    # @string/lock_last_attempt_before_wipe_warning_title 'Your data will be deleted'

    invoke-virtual {v0, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getLastTryErrorMessage(I)I

    move-result v1

    .line 334
    const v3, 0x104000a    # @android:string/ok

    invoke-static {p1, v0, v1, v3, v2}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;IIZ)Z

    .line 336
    goto :goto_0

    .line 338
    :cond_3
    invoke-direct {p0, v1}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment;->getWipeMessage(I)I

    move-result v0

    .line 339
    const/4 v1, 0x0

    const v2, 0x7f12080a    # @string/lock_failed_attempts_now_wiping_dialog_dismiss 'Dismiss'

    invoke-static {p1, v1, v0, v2, v3}, Lcom/android/settings/password/ConfirmDeviceCredentialBaseFragment$LastTryDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;IIZ)Z

    .line 342
    :goto_0
    return-void

    .line 312
    :cond_4
    :goto_1
    return-void
.end method
