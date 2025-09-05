.class public Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;
.super Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;
.source "FingerprintSuggestionActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;-><init>()V

    return-void
.end method

.method static isFingerprintEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 56
    const-string v0, "device_policy"

    .line 57
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 58
    nop

    .line 59
    invoke-virtual {p0}, Landroid/content/Context;->getUserId()I

    move-result p0

    .line 58
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p0}, Landroid/app/admin/DevicePolicyManager;->getKeyguardDisabledFeatures(Landroid/content/ComponentName;I)I

    move-result p0

    .line 60
    and-int/lit8 p0, p0, 0x20

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private static isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z
    .locals 1

    .line 51
    invoke-static {p0}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p0

    .line 52
    const/4 v0, 0x1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints()Ljava/util/List;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eq p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    nop

    :cond_1
    :goto_0
    return v0
.end method

.method public static isSuggestionComplete(Landroid/content/Context;)Z
    .locals 1

    .line 45
    invoke-static {p0}, Lcom/android/settings/Utils;->hasFingerprintHardware(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 46
    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isFingerprintEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 47
    invoke-static {p0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->isNotSingleFingerprintEnrolled(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 45
    :goto_1
    return p0
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 40
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->setResult(I)V

    .line 41
    invoke-super {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->finish()V

    .line 42
    return-void
.end method

.method protected initViews()V
    .locals 2

    .line 31
    invoke-super {p0}, Lcom/android/settings/fingerprint/SetupFingerprintEnrollIntroduction;->initViews()V

    .line 33
    const v0, 0x7f0a015a    # @id/fingerprint_cancel_button

    invoke-virtual {p0, v0}, Lcom/android/settings/fingerprint/FingerprintSuggestionActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 34
    const v1, 0x7f120bee    # @string/security_settings_fingerprint_enroll_introduction_cancel 'Cancel'

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 35
    return-void
.end method
