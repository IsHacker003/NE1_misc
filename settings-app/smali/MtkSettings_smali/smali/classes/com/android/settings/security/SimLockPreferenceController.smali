.class public Lcom/android/settings/security/SimLockPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SimLockPreferenceController.java"


# static fields
.field private static final KEY_SIM_LOCK:Ljava/lang/String; = "sim_lock_settings"


# instance fields
.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 43
    const-string v0, "sim_lock_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 44
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 45
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "carrier_config"

    .line 46
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    iput-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 47
    const-string v0, "telephony_subscription_service"

    .line 48
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionManager;

    iput-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 49
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/security/SimLockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 50
    return-void
.end method

.method private isSimIccReady()Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 97
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 99
    if-eqz v0, :cond_1

    .line 100
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 101
    iget-object v2, p0, Lcom/android/settings/security/SimLockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    const/4 v0, 0x1

    return v0

    .line 104
    :cond_0
    goto :goto_0

    .line 106
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isSimReady()Z
    .locals 3

    .line 78
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 79
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 82
    iget-object v2, p0, Lcom/android/settings/security/SimLockPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v1

    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 83
    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    if-eqz v1, :cond_0

    .line 85
    return v2

    .line 87
    :cond_0
    goto :goto_0

    .line 89
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/security/SimLockPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 67
    if-nez p1, :cond_0

    .line 68
    return-void

    .line 71
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/security/SimLockPreferenceController;->isSimReady()Z

    move-result v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 72
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/settings/security/SimLockPreferenceController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 55
    iget-object v1, p0, Lcom/android/settings/security/SimLockPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    .line 56
    if-eqz v1, :cond_1

    invoke-direct {p0}, Lcom/android/settings/security/SimLockPreferenceController;->isSimIccReady()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "hide_sim_lock_settings_bool"

    .line 57
    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 60
    :cond_0
    const/4 v0, 0x0

    return v0

    .line 58
    :cond_1
    :goto_0
    const/4 v0, 0x3

    return v0
.end method
