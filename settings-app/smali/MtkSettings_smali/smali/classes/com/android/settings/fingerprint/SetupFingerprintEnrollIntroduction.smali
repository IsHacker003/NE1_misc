.class public Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.super Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;
.source "SetupFingerprintEnrollIntroduction.java"


# instance fields
.field private mAlreadyHadLockScreenSetup:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 37
    invoke-direct {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;-><init>()V

    .line 39
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    return-void
.end method

.method private getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 108
    if-nez p1, :cond_0

    .line 109
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 111
    :cond_0
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p0}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 112
    const-string v1, ":settings:password_quality"

    .line 114
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 112
    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 115
    return-object p1
.end method

.method private isKeyguardSecure()Z
    .locals 1

    .line 144
    const-class v0, Landroid/app/KeyguardManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/KeyguardManager;

    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardSecure()Z

    move-result v0

    return v0
.end method


# virtual methods
.method protected getChooseLockIntent()Landroid/content/Intent;
    .locals 3

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/password/SetupChooseLockGeneric;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 62
    invoke-static {}, Lcom/android/settings/password/StorageManagerWrapper;->isFileEncryptedNativeOrEmulated()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 63
    const-string v1, "lockscreen.password_type"

    const/high16 v2, 0x20000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 66
    const-string v1, "show_options_button"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 69
    return-object v0
.end method

.method protected getFindSensorIntent()Landroid/content/Intent;
    .locals 2

    .line 74
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/android/settings/fingerprint/SetupFingerprintEnrollFindSensor;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/SetupWizardUtils;->copySetupExtras(Landroid/content/Intent;Landroid/content/Intent;)V

    .line 76
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 149
    const/16 v0, 0xf9

    return v0
.end method

.method protected initViews()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->initViews()V

    .line 83
    const v0, 0x7f0a0109    # @id/description_text

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 84
    const v1, 0x7f120bf3    # @string/security_settings_fingerprint_enroll_introduction_message_setup 'Use your fingerprint to unlock your phone or approve purchases.\n\nNote: Your fingerprint may be less  ...'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    .line 88
    const v1, 0x7f120bf1    # @string/security_settings_fingerprint_enroll_introduction_continue_setup 'Next'

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 91
    const v0, 0x7f0a015a    # @id/fingerprint_cancel_button

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 92
    const v1, 0x7f120bef    # @string/security_settings_fingerprint_enroll_introduction_cancel_setup 'Skip'

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 94
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 100
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    .line 102
    invoke-direct {p0, p3}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object p3

    .line 104
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 138
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 140
    :cond_0
    invoke-super {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onBackPressed()V

    .line 141
    return-void
.end method

.method protected onCancelButtonClick()V
    .locals 3

    .line 120
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    const/4 v0, 0x2

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->getMetricIntent(Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v2

    :goto_0
    invoke-virtual {p0, v0, v2}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(ILandroid/content/Intent;)V

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    goto :goto_1

    .line 126
    :cond_1
    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->setResult(I)V

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 129
    :goto_1
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onCreate(Landroid/os/Bundle;)V

    .line 44
    if-nez p1, :cond_0

    .line 45
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->isKeyguardSecure()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    goto :goto_0

    .line 47
    :cond_0
    const-string v0, "wasLockScreenPresent"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    .line 50
    :goto_0
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 55
    const-string v0, "wasLockScreenPresent"

    iget-boolean v1, p0, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->mAlreadyHadLockScreenSetup:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 56
    return-void
.end method
