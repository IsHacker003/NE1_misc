.class public Lcom/android/settings/network/MobileNetworkPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobileNetworkPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# instance fields
.field private mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsSecondaryUser:Z

.field mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 68
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 215
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$3;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 69
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 70
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 71
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsSecondaryUser:Z

    .line 72
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 74
    new-instance p1, Lcom/android/settings/network/MobileNetworkPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$1;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method private getDisplayName()Ljava/lang/String;
    .locals 4

    .line 232
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-nez v0, :cond_0

    .line 233
    const/4 v0, 0x0

    return-object v0

    .line 236
    :cond_0
    nop

    .line 237
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_5

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 239
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 240
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SubscriptionInfo;

    .line 241
    if-nez v2, :cond_1

    .line 242
    const-string v2, "MobileNetworkPreferenceController"

    const-string v3, "subInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isSubscriptionInService(I)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 246
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 247
    const-string v3, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    :cond_2
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 251
    :cond_3
    goto :goto_0

    .line 252
    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 253
    goto :goto_1

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v0

    .line 256
    :goto_1
    const-string v1, "MobileNetworkPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDisplayName:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    return-object v0
.end method

.method private isSubscriptionInService(I)Z
    .locals 4

    .line 261
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    if-eqz v0, :cond_1

    .line 262
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v0

    .line 263
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, p1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result p1

    .line 264
    const-string v1, "MobileNetworkPreferenceController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSubscriptionInService : ServiceState: voiceRegState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", dataRegState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    if-eqz v0, :cond_0

    if-nez p1, :cond_1

    .line 266
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 269
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method private updateMobileNetworkEnabled(Landroid/support/v7/preference/Preference;)V
    .locals 7

    .line 273
    if-nez p1, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    instance-of v0, p1, Lcom/android/settingslib/RestrictedPreference;

    if-eqz v0, :cond_1

    .line 277
    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/RestrictedPreference;

    .line 278
    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 279
    const-string p1, "MobileNetworkPreferenceController"

    const-string v0, "updateMobileNetworkEnabled,Mobile Network disabled by Admin"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    return-void

    .line 283
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    .line 284
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_on"

    .line 283
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 285
    move v0, v1

    goto :goto_0

    .line 283
    :cond_2
    nop

    .line 285
    move v0, v2

    :goto_0
    const-string v3, "MobileNetworkPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateMobileNetworkEnabled,isAirplaneModeOff = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    if-nez v0, :cond_3

    .line 287
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 288
    return-void

    .line 291
    :cond_3
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v0

    .line 292
    iget-object v3, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    .line 293
    const-string v4, "MobileNetworkPreferenceController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "callstate = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " simNum = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    if-lez v0, :cond_4

    if-nez v3, :cond_4

    .line 295
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 298
    :cond_4
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 300
    :goto_1
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 97
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 99
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 103
    const-string v0, "mobile_network_settings"

    return-object v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 210
    invoke-direct {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isUserRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isUserRestricted()Z
    .locals 3

    .line 88
    iget-boolean v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mIsSecondaryUser:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_mobile_networks"

    .line 92
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 89
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 88
    :goto_1
    return v0
.end method

.method public onStart()V
    .locals 4

    .line 108
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 110
    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 112
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    if-nez v0, :cond_0

    .line 113
    const-string v0, "MobileNetworkPreferenceController"

    const-string v1, "onResume Looper is null."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    return-void

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_1

    .line 117
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController$2;

    invoke-direct {v0, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController$2;-><init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x21

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 142
    :cond_2
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_3

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 146
    :cond_3
    return-void
.end method

.method public onStop()V
    .locals 3

    .line 150
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 153
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 154
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mAirplanModeChangedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 156
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_2

    .line 157
    iget-object v0, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    :cond_2
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 163
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 166
    invoke-direct {p0, p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateMobileNetworkEnabled(Landroid/support/v7/preference/Preference;)V

    .line 205
    return-void
.end method
