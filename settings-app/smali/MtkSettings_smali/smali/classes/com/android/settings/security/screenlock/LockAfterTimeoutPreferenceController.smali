.class public Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "LockAfterTimeoutPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mDPM:Landroid/app/admin/DevicePolicyManager;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private final mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

.field private final mUserId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;ILcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 51
    iput p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    .line 52
    iput-object p3, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 53
    const-string p2, "device_policy"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/app/admin/DevicePolicyManager;

    iput-object p2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    .line 54
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 55
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getTrustAgentManager()Lcom/android/settings/security/trustagent/TrustAgentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    .line 56
    return-void
.end method

.method private setupLockAfterPreference(Lcom/android/settings/TimeoutListPreference;)V
    .locals 7

    .line 103
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 105
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 106
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    if-eqz v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 108
    invoke-static {v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMaximumTimeToLockIsSet(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mDPM:Landroid/app/admin/DevicePolicyManager;

    const/4 v2, 0x0

    .line 110
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v1, v2, v3}, Landroid/app/admin/DevicePolicyManager;->getMaximumTimeToLock(Landroid/content/ComponentName;I)J

    move-result-wide v1

    .line 111
    iget-object v3, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    .line 112
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "screen_off_timeout"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 111
    invoke-static {v5, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-long v3, v3

    .line 116
    const-wide/16 v5, 0x0

    sub-long/2addr v1, v3

    invoke-static {v5, v6, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 117
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settings/TimeoutListPreference;->removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 119
    :cond_0
    return-void
.end method

.method private updateLockAfterPreferenceSummary(Lcom/android/settings/TimeoutListPreference;)V
    .locals 11

    .line 123
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120552    # @string/disabled_by_policy_title 'Action not allowed'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto/16 :goto_1

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    const-wide/16 v2, 0x1388

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$Secure;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 129
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v2

    .line 130
    invoke-virtual {p1}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v3

    .line 131
    nop

    .line 132
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_0
    array-length v7, v3

    if-ge v5, v7, :cond_2

    .line 133
    aget-object v7, v3, v5

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    .line 134
    cmp-long v7, v0, v7

    if-ltz v7, :cond_1

    .line 135
    nop

    .line 132
    move v6, v5

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 139
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mTrustAgentManager:Lcom/android/settings/security/trustagent/TrustAgentManager;

    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    iget-object v5, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 140
    invoke-virtual {v0, v1, v5}, Lcom/android/settings/security/trustagent/TrustAgentManager;->getActiveTrustAgentLabel(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 141
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v5, 0x1

    if-nez v1, :cond_4

    .line 142
    aget-object v1, v3, v6

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmp-long v1, v7, v9

    if-nez v1, :cond_3

    .line 143
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f12080d    # @string/lock_immediately_summary_with_exception 'Immediately after sleep, except when kept unlocked by %1$s'

    new-array v3, v5, [Ljava/lang/Object;

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 146
    :cond_3
    iget-object v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v3, 0x7f120807    # @string/lock_after_timeout_summary_with_exception '%1$s after sleep, except when kept unlocked by %2$s'

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object v2, v7, v4

    aput-object v0, v7, v5

    invoke-virtual {v1, v3, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 150
    :cond_4
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120806    # @string/lock_after_timeout_summary '%1$s after sleep'

    new-array v3, v5, [Ljava/lang/Object;

    aget-object v2, v2, v6

    aput-object v2, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 153
    :goto_1
    invoke-virtual {p1, v0}, Lcom/android/settings/TimeoutListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "lock_after_timeout"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v1, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 61
    return v1

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    iget v2, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mUserId:I

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

    .line 73
    return v1

    .line 71
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 91
    :try_start_0
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 92
    iget-object v0, p0, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_screen_lock_after_timeout"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 97
    goto :goto_0

    .line 95
    :catch_0
    move-exception p1

    .line 96
    const-string p2, "PrefControllerMixin"

    const-string v0, "could not persist lockAfter timeout setting"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 98
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 84
    check-cast p1, Lcom/android/settings/TimeoutListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->setupLockAfterPreference(Lcom/android/settings/TimeoutListPreference;)V

    .line 85
    invoke-direct {p0, p1}, Lcom/android/settings/security/screenlock/LockAfterTimeoutPreferenceController;->updateLockAfterPreferenceSummary(Lcom/android/settings/TimeoutListPreference;)V

    .line 86
    return-void
.end method
