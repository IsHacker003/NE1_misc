.class public Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "FingerprintStatusPreferenceController.java"


# static fields
.field private static final KEY_FINGERPRINT_SETTINGS:Ljava/lang/String; = "fingerprint_settings"


# instance fields
.field protected final mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

.field protected final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field protected final mProfileChallengeUserId:I

.field protected final mUm:Landroid/os/UserManager;

.field protected final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    const-string v0, "fingerprint_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    iput p2, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUserId:I

    .line 52
    invoke-static {p1}, Lcom/android/settings/Utils;->getFingerprintManagerOrNull(Landroid/content/Context;)Landroid/hardware/fingerprint/FingerprintManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    .line 53
    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/os/UserManager;

    iput-object p2, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUm:Landroid/os/UserManager;

    .line 54
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p2

    .line 55
    invoke-virtual {p2}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p2

    .line 56
    invoke-interface {p2, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 57
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUm:Landroid/os/UserManager;

    iget p2, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUserId:I

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getManagedProfileId(Landroid/os/UserManager;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mProfileChallengeUserId:I

    .line 58
    return-void
.end method

.method static synthetic lambda$updateState$0(ILjava/lang/String;Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 97
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object p2

    .line 98
    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    .line 99
    invoke-static {p2, v0, p0}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    const/4 p0, 0x0

    return p0

    .line 103
    :cond_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 104
    const-string v1, "com.android.settings"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 105
    const-string p1, "android.intent.extra.USER_ID"

    invoke-virtual {v0, p1, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 106
    invoke-virtual {p2, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 107
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v0}, Landroid/hardware/fingerprint/FingerprintManager;->isHardwareDetected()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->isUserSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 66
    const/4 v0, 0x0

    return v0

    .line 68
    :cond_1
    const/4 v0, 0x3

    return v0

    .line 63
    :cond_2
    :goto_0
    const/4 v0, 0x2

    return v0
.end method

.method protected getUserId()I
    .locals 1

    .line 112
    iget v0, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mUserId:I

    return v0
.end method

.method protected isUserSupported()Z
    .locals 1

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 7

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 75
    if-eqz p1, :cond_0

    .line 76
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 78
    :cond_0
    return-void

    .line 80
    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->getUserId()I

    move-result v2

    .line 83
    iget-object v3, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mFingerprintManager:Landroid/hardware/fingerprint/FingerprintManager;

    invoke-virtual {v3, v2}, Landroid/hardware/fingerprint/FingerprintManager;->getEnrolledFingerprints(I)Ljava/util/List;

    move-result-object v3

    .line 84
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    goto :goto_0

    .line 86
    :cond_2
    move v3, v1

    :goto_0
    if-lez v3, :cond_3

    .line 87
    iget-object v4, p0, Lcom/android/settings/fingerprint/FingerprintStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f100034    # @plurals/security_settings_fingerprint_preference_summary

    new-array v0, v0, [Ljava/lang/Object;

    .line 89
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v1

    .line 87
    invoke-virtual {v4, v5, v3, v0}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 90
    const-class v0, Lcom/android/settings/fingerprint/FingerprintSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 92
    :cond_3
    const v0, 0x7f120bff    # @string/security_settings_fingerprint_preference_summary_none ''

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 94
    const-class v0, Lcom/android/settings/fingerprint/FingerprintEnrollIntroduction;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 96
    :goto_1
    new-instance v1, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintStatusPreferenceController$KyR_IBe4qHxX_KvME9NBxSJFxFQ;

    invoke-direct {v1, v2, v0}, Lcom/android/settings/fingerprint/-$$Lambda$FingerprintStatusPreferenceController$KyR_IBe4qHxX_KvME9NBxSJFxFQ;-><init>(ILjava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 109
    return-void
.end method
