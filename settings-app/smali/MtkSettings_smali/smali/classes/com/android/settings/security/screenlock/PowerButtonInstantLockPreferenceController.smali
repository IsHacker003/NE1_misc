.class public Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PowerButtonInstantLockPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput p2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mUserId:I

    .line 45
    iput-object p3, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 46
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 47
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 48
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 86
    const-string v0, "power_button_instantly_locks"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 52
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 53
    return v1

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mUserId:I

    invoke-virtual {v0, v2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    const/high16 v2, 0x10000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x20000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x30000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x40000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x50000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x60000

    if-eq v0, v2, :cond_1

    const/high16 v2, 0x80000

    if-eq v0, v2, :cond_1

    .line 65
    return v1

    .line 63
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 91
    iget-object p1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    iget v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mUserId:I

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/widget/LockPatternUtils;->setPowerButtonInstantlyLocks(ZI)V

    .line 92
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 71
    move-object v0, p1

    check-cast v0, Landroid/support/v7/preference/TwoStatePreference;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mUserId:I

    .line 72
    invoke-virtual {v1, v2}, Lcom/android/internal/widget/LockPatternUtils;->getPowerButtonInstantlyLocks(I)Z

    move-result v1

    .line 71
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/TwoStatePreference;->setChecked(Z)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 75
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 76
    iget-object v1, p0, Lcom/android/settings/security/screenlock/PowerButtonInstantLockPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120888    # @string/lockpattern_settings_power_button_instantly_locks_summary 'Except when kept unlocked by %1$s'

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 80
    :cond_0
    const v0, 0x7f120da7    # @string/summary_placeholder ' '

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 82
    :goto_0
    return-void
.end method
