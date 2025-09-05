.class public Lcom/android/settings/network/TetherPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;,
        Lcom/android/settings/network/TetherPreferenceController$SettingObserver;
    }
.end annotation


# instance fields
.field private final mAdminDisallowedTetherConfig:Z

.field private mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private final mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field final mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;


# direct methods
.method constructor <init>()V
    .locals 2

    .line 81
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v1, Lcom/android/settings/network/TetherPreferenceController$1;

    invoke-direct {v1, p0}, Lcom/android/settings/network/TetherPreferenceController$1;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 82
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    .line 83
    new-instance v1, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 84
    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 85
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 86
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 62
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$1;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 90
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 91
    invoke-static {p1}, Lcom/android/settings/network/TetherPreferenceController;->isTetherConfigDisallowed(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    .line 92
    const-string v0, "connectivity"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/ConnectivityManager;

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 94
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 95
    if-eqz p2, :cond_0

    .line 96
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 98
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/network/TetherPreferenceController;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/network/TetherPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummaryToOff()V

    return-void
.end method

.method public static isTetherConfigDisallowed(Landroid/content/Context;)Z
    .locals 2

    .line 174
    const-string v0, "no_config_tethering"

    .line 175
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 174
    invoke-static {p0, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private updateSummaryToOff()V
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 237
    return-void

    .line 239
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 240
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 102
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 103
    const-string v0, "tether_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 104
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    if-nez p1, :cond_0

    .line 105
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 106
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getTetheringLabel(Landroid/net/ConnectivityManager;)I

    move-result v0

    .line 105
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/TetherSettings;->isProvisioningNeededButUnavailable(Landroid/content/Context;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 111
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 129
    const-string v0, "tether_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 116
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAdminDisallowedTetherConfig:Z

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "no_config_tethering"

    .line 118
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    .line 117
    invoke-static {v0, v2, v3}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    :cond_1
    move v0, v1

    goto :goto_0

    .line 117
    :cond_2
    const/4 v0, 0x0

    .line 119
    :goto_0
    xor-int/2addr v0, v1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 134
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 135
    invoke-virtual {p1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result p1

    const/16 v0, 0xc

    if-ne p1, v0, :cond_0

    .line 136
    iget-object p1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBtProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v2, 0x5

    invoke-virtual {p1, v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 139
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .line 167
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothProfile;

    .line 168
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_0

    .line 169
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v0}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 171
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 157
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    if-eqz v0, :cond_1

    .line 161
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 163
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 143
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    if-nez v0, :cond_0

    .line 144
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    .line 146
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    if-nez v0, :cond_1

    .line 147
    new-instance v0, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    invoke-direct {v0, p0}, Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;-><init>(Lcom/android/settings/network/TetherPreferenceController;)V

    iput-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    .line 149
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mTetherReceiver:Lcom/android/settings/network/TetherPreferenceController$TetherBroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 151
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    iget-object v1, v1, Lcom/android/settings/network/TetherPreferenceController$SettingObserver;->uri:Landroid/net/Uri;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/network/TetherPreferenceController;->mAirplaneModeObserver:Lcom/android/settings/network/TetherPreferenceController$SettingObserver;

    .line 152
    invoke-virtual {v0, v1, v2, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 153
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/network/TetherPreferenceController;->updateSummary()V

    .line 125
    return-void
.end method

.method updateSummary()V
    .locals 12

    .line 180
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-nez v0, :cond_0

    .line 182
    return-void

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 185
    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetherableWifiRegexs()[Ljava/lang/String;

    move-result-object v1

    .line 186
    iget-object v2, p0, Lcom/android/settings/network/TetherPreferenceController;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v2

    .line 188
    nop

    .line 189
    nop

    .line 190
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v0, :cond_7

    .line 191
    if-eqz v1, :cond_3

    .line 192
    array-length v5, v0

    move v6, v3

    move v7, v6

    :goto_0
    if-ge v6, v5, :cond_4

    aget-object v8, v0, v6

    .line 193
    array-length v9, v1

    move v10, v3

    :goto_1
    if-ge v10, v9, :cond_2

    aget-object v11, v1, v10

    .line 194
    invoke-virtual {v8, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 195
    nop

    .line 196
    nop

    .line 192
    move v7, v4

    goto :goto_2

    .line 193
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 192
    :cond_2
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 201
    :cond_3
    move v7, v3

    :cond_4
    array-length v1, v0

    if-le v1, v4, :cond_5

    .line 203
    nop

    .line 213
    move v0, v4

    goto :goto_3

    .line 204
    :cond_5
    array-length v0, v0

    if-ne v0, v4, :cond_6

    .line 207
    nop

    .line 213
    xor-int/lit8 v0, v7, 0x1

    goto :goto_3

    .line 210
    :cond_6
    nop

    .line 213
    move v0, v3

    goto :goto_3

    :cond_7
    move v0, v3

    move v7, v0

    :goto_3
    if-nez v0, :cond_9

    if-eqz v2, :cond_9

    array-length v1, v2

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    .line 216
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v1

    const/16 v2, 0xc

    if-ne v1, v2, :cond_9

    .line 218
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 219
    if-eqz v0, :cond_8

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 221
    move v0, v4

    goto :goto_4

    .line 219
    :cond_8
    nop

    .line 221
    move v0, v3

    :cond_9
    :goto_4
    if-nez v7, :cond_a

    if-nez v0, :cond_a

    .line 223
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 224
    :cond_a
    if-eqz v7, :cond_b

    if-eqz v0, :cond_b

    .line 226
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120de4    # @string/tether_settings_summary_hotspot_on_tether_on 'Hotspot on, tethering'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 227
    :cond_b
    if-eqz v7, :cond_c

    .line 228
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120de3    # @string/tether_settings_summary_hotspot_on_tether_off 'Hotspot on'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_5

    .line 230
    :cond_c
    iget-object v0, p0, Lcom/android/settings/network/TetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120de2    # @string/tether_settings_summary_hotspot_off_tether_on 'Tethering'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 232
    :goto_5
    return-void
.end method
