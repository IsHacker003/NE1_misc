.class public Lcom/android/settings/network/VpnPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "VpnPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field private static final REQUEST:Landroid/net/NetworkRequest;


# instance fields
.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private final mConnectivityManagerService:Landroid/net/IConnectivityManager;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mToggleable:Ljava/lang/String;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 56
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 57
    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 58
    const/16 v1, 0xd

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 59
    const/16 v1, 0xe

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->removeCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 60
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    sput-object v0, Lcom/android/settings/network/VpnPreferenceController;->REQUEST:Landroid/net/NetworkRequest;

    .line 56
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 70
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 183
    new-instance v0, Lcom/android/settings/network/VpnPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/VpnPreferenceController$1;-><init>(Lcom/android/settings/network/VpnPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 71
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "airplane_mode_toggleable_radios"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mToggleable:Ljava/lang/String;

    .line 73
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 74
    const-string v0, "connectivity"

    .line 75
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 76
    const-string p1, "connectivity"

    .line 77
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 76
    invoke-static {p1}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    .line 78
    return-void
.end method

.method public static synthetic lambda$updateSummary$0(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 83
    const-string v0, "vpn_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 85
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mToggleable:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mToggleable:Ljava/lang/String;

    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 86
    :cond_0
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_1

    .line 87
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const-string v0, "airplane_mode"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setDependency(Ljava/lang/String;)V

    .line 91
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/network/VpnPreferenceController;->updateSummary()V

    .line 92
    return-void
.end method

.method getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;
    .locals 3

    .line 167
    iget-boolean v0, p1, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v0, :cond_0

    .line 168
    iget-object p1, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    const p2, 0x7f121025    # @string/wifi_display_status_connected 'Connected'

    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 171
    :cond_0
    iget-object p1, p1, Lcom/android/internal/net/VpnConfig;->user:Ljava/lang/String;

    .line 173
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p2}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object p2

    .line 175
    invoke-static {p2, p1}, Lcom/android/internal/net/VpnConfig;->getVpnLabel(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p2

    .line 176
    :catch_0
    move-exception p2

    .line 177
    const-string v0, "VpnPreferenceController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is not present"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    const/4 p1, 0x0

    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 102
    const-string v0, "vpn_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 96
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_config_vpn"

    .line 97
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 96
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public onPause()V
    .locals 2

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/network/VpnPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 110
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/network/VpnPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    sget-object v1, Lcom/android/settings/network/VpnPreferenceController;->REQUEST:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/network/VpnPreferenceController;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1, v2}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 117
    :cond_0
    return-void
.end method

.method updateSummary()V
    .locals 6

    .line 121
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 122
    return-void

    .line 125
    :cond_0
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    .line 127
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 128
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 129
    iget-object v3, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v4, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-interface {v3, v4}, Landroid/net/IConnectivityManager;->getVpnConfig(I)Lcom/android/internal/net/VpnConfig;

    move-result-object v3

    .line 130
    if-nez v3, :cond_2

    .line 131
    goto :goto_0

    .line 132
    :cond_2
    iget-boolean v4, v3, Lcom/android/internal/net/VpnConfig;->legacy:Z

    if-eqz v4, :cond_3

    .line 135
    iget-object v4, p0, Lcom/android/settings/network/VpnPreferenceController;->mConnectivityManagerService:Landroid/net/IConnectivityManager;

    iget v5, v2, Landroid/content/pm/UserInfo;->id:I

    .line 136
    invoke-interface {v4, v5}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v4

    .line 137
    if-eqz v4, :cond_1

    iget v4, v4, Lcom/android/internal/net/LegacyVpnInfo;->state:I

    const/4 v5, 0x3

    if-eq v4, v5, :cond_3

    .line 138
    goto :goto_0

    .line 141
    :cond_3
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, v2, v3}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 142
    goto :goto_0

    .line 147
    :cond_4
    nop

    .line 148
    iget-object v1, p0, Lcom/android/settings/network/VpnPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 150
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 151
    iget v1, v1, Landroid/content/pm/UserInfo;->restrictedProfileParentId:I

    goto :goto_1

    .line 153
    :cond_5
    iget v1, v1, Landroid/content/pm/UserInfo;->id:I

    .line 155
    :goto_1
    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/net/VpnConfig;

    .line 157
    if-nez v0, :cond_6

    .line 158
    iget-object v0, p0, Lcom/android/settings/network/VpnPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120f59    # @string/vpn_disconnected_summary 'None'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 160
    :cond_6
    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/network/VpnPreferenceController;->getNameForVpnConfig(Lcom/android/internal/net/VpnConfig;Landroid/os/UserHandle;)Ljava/lang/String;

    move-result-object v0

    .line 162
    :goto_2
    new-instance v1, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/network/-$$Lambda$VpnPreferenceController$iDQ0RgxaDkCLoaHHZ6-UO2xSI_c;-><init>(Lcom/android/settings/network/VpnPreferenceController;Ljava/lang/String;)V

    invoke-static {v1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 163
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 145
    const-string v1, "VpnPreferenceController"

    const-string v2, "Unable to list active VPNs"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 146
    return-void
.end method
