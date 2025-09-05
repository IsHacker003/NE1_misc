.class public Lcust/settings/security/PowerOffPasswordPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PowerOffPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# instance fields
.field private final mHost:Lcom/android/settings/security/SecuritySettings;

.field private final mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/security/SecuritySettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 53
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSecurityFeatureProvider()Lcom/android/settings/security/SecurityFeatureProvider;

    move-result-object v0

    .line 54
    iput-object p2, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 55
    invoke-interface {v0, p1}, Lcom/android/settings/security/SecurityFeatureProvider;->getLockPatternUtils(Landroid/content/Context;)Lcom/android/internal/widget/LockPatternUtils;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 56
    if-eqz p3, :cond_0

    .line 57
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 59
    :cond_0
    return-void
.end method

.method private static hadSystemFeature(Landroid/content/Context;)Z
    .locals 1

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v0, "com.nbb.system.poweroff_encrypt"

    .line 116
    invoke-virtual {p0, v0}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0

    .line 115
    return p0
.end method

.method private static showPowerOffPassword(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z
    .locals 0

    .line 120
    if-eqz p0, :cond_1

    invoke-static {p0}, Lcust/settings/security/PowerOffPasswordPreferenceController;->hadSystemFeature(Landroid/content/Context;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 121
    if-eqz p1, :cond_1

    .line 122
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 123
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p0

    const/high16 p1, 0x40000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x50000

    if-eq p0, p1, :cond_0

    const/high16 p1, 0x60000

    if-eq p0, p1, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    const/4 p0, 0x1

    return p0

    .line 132
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return p0
.end method

.method private updatePowerOffPasswordPreference(Landroid/support/v7/preference/PreferenceCategory;Lcom/android/internal/widget/LockPatternUtils;I)V
    .locals 2

    .line 137
    if-eqz p1, :cond_3

    .line 138
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 139
    invoke-static {v0, p2, p3}, Lcust/settings/security/PowerOffPasswordPreferenceController;->showPowerOffPassword(Landroid/content/Context;Lcom/android/internal/widget/LockPatternUtils;I)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 140
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string p3, "system_power_off_password"

    const/4 v1, 0x0

    invoke-static {p2, p3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 142
    invoke-virtual {p0}, Lcust/settings/security/PowerOffPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p3

    check-cast p3, Landroid/support/v14/preference/SwitchPreference;

    .line 143
    if-nez p3, :cond_0

    .line 144
    new-instance p3, Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p3, v0}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 145
    const v0, 0x7f121217    # @string/zzz_security_power_off_password_title 'Power off / Restart lock'

    invoke-virtual {p3, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 146
    const v0, 0x7f121216    # @string/zzz_security_power_off_password_summary 'Enter device password to power off / restart'

    invoke-virtual {p3, v0}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 147
    invoke-virtual {p0}, Lcust/settings/security/PowerOffPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 148
    const/16 v0, -0x19

    invoke-virtual {p3, v0}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    .line 149
    invoke-virtual {p1, p3}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 151
    :cond_0
    if-eqz p2, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    invoke-virtual {p3, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 152
    goto :goto_0

    .line 153
    :cond_2
    invoke-virtual {p0}, Lcust/settings/security/PowerOffPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceCategory;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    check-cast p2, Landroid/support/v14/preference/SwitchPreference;

    .line 154
    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 159
    :cond_3
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 73
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 74
    const-string v0, "security_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    iput-object p1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 76
    iget-object p1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mContext:Landroid/content/Context;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v0, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 78
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 77
    invoke-direct {p0, p1, v0, v1}, Lcust/settings/security/PowerOffPasswordPreferenceController;->updatePowerOffPasswordPreference(Landroid/support/v7/preference/PreferenceCategory;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 81
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 68
    const-string v0, "power_off_password"

    return-object v0
.end method

.method public handleActivityResult(II)Z
    .locals 2

    .line 105
    const/4 v0, 0x0

    const v1, 0xd986

    if-ne p1, v1, :cond_1

    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 106
    iget-object p1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "system_power_off_password"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 108
    iget-object p2, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "system_power_off_password"

    .line 109
    if-nez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    .line 108
    :cond_0
    move p1, v0

    :goto_0
    invoke-static {p2, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    :cond_1
    return v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 85
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcust/settings/security/PowerOffPasswordPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 89
    :cond_0
    new-instance v0, Lcom/android/settings/password/ChooseLockSettingsHelper;

    iget-object v1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    .line 90
    invoke-virtual {v1}, Lcom/android/settings/security/SecuritySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mHost:Lcom/android/settings/security/SecuritySettings;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 91
    const v1, 0xd986

    .line 93
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    .line 91
    invoke-virtual {v0, v1, p1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    .line 94
    const-string v0, "PowerOffPasswordPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "launchConfirmation="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 63
    iget-object v0, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcust/settings/security/PowerOffPasswordPreferenceController;->hadSystemFeature(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public onResume()V
    .locals 3

    .line 100
    iget-object v0, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mSecurityCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcust/settings/security/PowerOffPasswordPreferenceController;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 101
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 100
    invoke-direct {p0, v0, v1, v2}, Lcust/settings/security/PowerOffPasswordPreferenceController;->updatePowerOffPasswordPreference(Landroid/support/v7/preference/PreferenceCategory;Lcom/android/internal/widget/LockPatternUtils;I)V

    .line 102
    return-void
.end method
