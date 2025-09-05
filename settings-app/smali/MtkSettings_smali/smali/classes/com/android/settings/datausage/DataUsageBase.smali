.class public abstract Lcom/android/settings/datausage/DataUsageBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "DataUsageBase.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field protected final services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 49
    new-instance v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-direct {v0}, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    return-void
.end method

.method private isDataEnabled(I)Z
    .locals 1

    .line 106
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 107
    const-string p1, "DataUsageBase"

    const-string v0, "isDataEnabled INVALID_SUBSCRIPTION_ID"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 p1, 0x0

    return p1

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected isBandwidthControlEnabled()Z
    .locals 3

    .line 115
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    const-string v1, "DataUsageBase"

    const-string v2, "problem talking with INetworkManagementService: "

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 118
    const/4 v0, 0x0

    return v0
.end method

.method protected isMobileDataAvailable(I)Z
    .locals 2

    .line 93
    const/4 v0, 0x0

    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 94
    const-string p1, "DataUsageBase"

    const-string v1, "isMobileDataAvailable INVALID_SUBSCRIPTION_ID"

    invoke-static {p1, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return v0

    .line 97
    :cond_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    if-eqz p1, :cond_1

    const/4 v0, 0x1

    nop

    :cond_1
    return v0
.end method

.method protected isNetworkPolicyModifiable(Landroid/net/NetworkPolicy;I)Z
    .locals 0

    .line 101
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBase;->isBandwidthControlEnabled()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object p1, p1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    invoke-direct {p0, p2}, Lcom/android/settings/datausage/DataUsageBase;->isDataEnabled(I)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 101
    :goto_0
    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "network_management"

    .line 58
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 57
    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    .line 59
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    const-string v1, "netstats"

    .line 60
    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 59
    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mStatsService:Landroid/net/INetworkStatsService;

    .line 61
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 63
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    new-instance v1, Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v2, v2, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 65
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 67
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 69
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsageBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageBase;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 70
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageBase;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/android/settings/datausage/DataUsageBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataUsageBase$1;-><init>(Lcom/android/settings/datausage/DataUsageBase;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 80
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 159
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 161
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 162
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 84
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 85
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageBase;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    invoke-virtual {v0}, Lcom/android/settingslib/NetworkPolicyEditor;->read()V

    .line 86
    return-void
.end method
