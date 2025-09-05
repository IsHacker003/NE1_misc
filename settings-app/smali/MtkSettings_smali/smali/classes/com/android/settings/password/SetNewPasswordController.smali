.class final Lcom/android/settings/password/SetNewPasswordController;
.super Ljava/lang/Object;
.source "SetNewPasswordController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/SetNewPasswordController$Ui;
    }
.end annotation


# instance fields
.field private final mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

.field private final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private final mTargetUserId:I

.field private final mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;


# direct methods
.method constructor <init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V
    .locals 0
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 94
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 95
    iput-object p3, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 96
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    .line 97
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/password/SetNewPasswordController$Ui;

    iput-object p1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    .line 98
    return-void
.end method

.method public static create(Landroid/content/Context;Lcom/android/settings/password/SetNewPasswordController$Ui;Landroid/content/Intent;Landroid/os/IBinder;)Lcom/android/settings/password/SetNewPasswordController;
    .locals 7

    .line 69
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 70
    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 71
    nop

    .line 72
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 71
    invoke-static {p3, v1, v2, p2}, Lcom/android/settings/Utils;->getSecureTargetUser(Landroid/os/IBinder;Landroid/os/UserManager;Landroid/os/Bundle;Landroid/os/Bundle;)Landroid/os/UserHandle;

    move-result-object p2

    .line 72
    invoke-virtual {p2}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p2

    .line 73
    new-instance p3, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p3, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p3, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSeparateProfileChallengeAllowed(I)Z

    move-result p3

    if-eqz p3, :cond_0

    .line 75
    nop

    .line 79
    move v2, p2

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object v4

    .line 80
    new-instance p2, Lcom/android/settings/password/SetNewPasswordController;

    .line 81
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const-string p3, "device_policy"

    .line 83
    invoke-virtual {p0, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    move-object v5, p0

    check-cast v5, Landroid/app/admin/DevicePolicyManager;

    move-object v1, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/password/SetNewPasswordController;-><init>(ILandroid/content/pm/PackageManager;Landroid/hardware/fingerprint/FingerprintManager;Landroid/app/admin/DevicePolicyManager;Lcom/android/settings/password/SetNewPasswordController$Ui;)V

    .line 80
    return-object p2
.end method

.method private getFingerprintChooseLockExtras()Landroid/os/Bundle;
    .locals 5

    .line 121
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 122
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v1}, Landroid/hardware/fingerprint/FingerprintManager;->preEnroll()J

    move-result-wide v1

    .line 123
    const-string v3, "minimum_quality"

    const/high16 v4, 0x10000

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 125
    const-string v3, "hide_disabled_prefs"

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 127
    const-string v3, "has_challenge"

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 128
    const-string v3, "challenge"

    invoke-virtual {v0, v3, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 129
    const-string v1, "for_fingerprint"

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-object v0
.end method

.method private isFingerprintDisabledByAdmin()Z
    .locals 3

    .line 134
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mDevicePolicyManager:Landroid/app/admin/DevicePolicyManager;

    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 135
    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result v0

    .line 136
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method public dispatchSetNewPasswordIntent()V
    .locals 3

    .line 105
    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string v1, "android.hardware.fingerprint"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 107
    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/password/SetNewPasswordController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    iget v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    .line 108
    invoke-virtual {v0, v1}, Landroid/hardware/fingerprint/FingerprintManager;->hasEnrolledFingerprints(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->isFingerprintDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-direct {p0}, Lcom/android/settings/password/SetNewPasswordController;->getFingerprintChooseLockExtras()Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0

    .line 112
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 116
    :goto_0
    const-string v1, "android.intent.extra.USER_ID"

    iget v2, p0, Lcom/android/settings/password/SetNewPasswordController;->mTargetUserId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 117
    iget-object v1, p0, Lcom/android/settings/password/SetNewPasswordController;->mUi:Lcom/android/settings/password/SetNewPasswordController$Ui;

    invoke-interface {v1, v0}, Lcom/android/settings/password/SetNewPasswordController$Ui;->launchChooseLock(Landroid/os/Bundle;)V

    .line 118
    return-void
.end method
