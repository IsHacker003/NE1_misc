.class public Lcom/android/settings/wifi/WifiEnabler;
.super Ljava/lang/Object;
.source "WifiEnabler.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;


# instance fields
.field private mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private final mIntentFilter:Landroid/content/IntentFilter;

.field private mListeningToOnSwitchChange:Z

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mStateMachineEvent:Z

.field private final mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

.field private final mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 1

    .line 92
    const-string v0, "connectivity"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 92
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V

    .line 94
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/net/ConnectivityManager;)V
    .locals 2

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 62
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 67
    new-instance v0, Lcom/android/settings/wifi/WifiEnabler$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiEnabler$1;-><init>(Lcom/android/settings/wifi/WifiEnabler;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 100
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 101
    iput-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    .line 102
    iget-object p2, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p2, p0}, Lcom/android/settings/widget/SwitchWidgetController;->setListener(Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;)V

    .line 103
    iput-object p3, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 104
    const-string p2, "wifi"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 105
    iput-object p4, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 107
    new-instance p1, Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {p1, p2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    .line 109
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWifiSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiEnabler;->setupSwitchController()V

    .line 114
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/WifiEnabler;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/WifiEnabler;I)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/WifiEnabler;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 0

    .line 50
    iget-object p0, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/WifiEnabler;Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiEnabler;->handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V

    return-void
.end method

.method private handleStateChanged(Landroid/net/NetworkInfo$DetailedState;)V
    .locals 0

    .line 209
    return-void
.end method

.method private handleWifiStateChanged(I)V
    .locals 3

    .line 154
    const-string v0, "WifiEnabler"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleWifiStateChanged, state = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 158
    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_0

    .line 172
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 173
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_0

    .line 162
    :pswitch_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 164
    goto :goto_0

    .line 160
    :pswitch_1
    goto :goto_0

    .line 168
    :pswitch_2
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->setSwitchBarChecked(Z)V

    .line 169
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 170
    goto :goto_0

    .line 166
    :pswitch_3
    nop

    .line 176
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v1, "no_config_tethering"

    .line 177
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 176
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 178
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    goto :goto_1

    .line 180
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v0, "no_config_tethering"

    .line 181
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 180
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 182
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 184
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private setSwitchBarChecked(Z)V
    .locals 1

    .line 187
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 190
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->customRefreshButtonStatus(Z)V

    .line 192
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    .line 193
    return-void
.end method


# virtual methods
.method public onSwitchToggled(Z)Z
    .locals 6

    .line 214
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mStateMachineEvent:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 215
    return v1

    .line 218
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const-string v3, "wifi"

    invoke-static {v2, v3}, Lcom/android/settingslib/WirelessUtils;->isRadioAllowed(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 219
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v1, 0x7f12105c    # @string/wifi_in_airplane_mode 'In Airplane mode'

    invoke-static {p1, v1, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 221
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchWidgetController;->setChecked(Z)V

    .line 223
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->customRefreshButtonStatus(Z)V

    .line 225
    return v0

    .line 228
    :cond_1
    if-eqz p1, :cond_2

    .line 229
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8b

    new-array v5, v0, [Landroid/util/Pair;

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    goto :goto_0

    .line 232
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const/16 v4, 0x8a

    iget-object v5, p0, Lcom/android/settings/wifi/WifiEnabler;->mConnected:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 233
    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    .line 232
    invoke-virtual {v2, v3, v4, v5}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 236
    :goto_0
    const-string v2, "WifiEnabler"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onSwitchToggled11, isChecked = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    iget-object v2, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2, p1}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    move-result p1

    if-nez p1, :cond_3

    .line 239
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchWidgetController;->setEnabled(Z)V

    .line 240
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    const v2, 0x7f12103a    # @string/wifi_error 'Error'

    invoke-static {p1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 242
    :cond_3
    return v1
.end method

.method public pause()V
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 146
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 148
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 150
    :cond_0
    return-void
.end method

.method public resume(Landroid/content/Context;)V
    .locals 2

    .line 135
    iput-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    .line 137
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiEnabler;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 138
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez p1, :cond_0

    .line 139
    iget-object p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 140
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 142
    :cond_0
    return-void
.end method

.method public setupSwitchController()V
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    .line 118
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiEnabler;->handleWifiStateChanged(I)V

    .line 119
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->startListening()V

    .line 121
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->setupView()V

    .line 124
    return-void
.end method

.method public teardownSwitchController()V
    .locals 1

    .line 127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->stopListening()V

    .line 129
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mListeningToOnSwitchChange:Z

    .line 131
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiEnabler;->mSwitchWidget:Lcom/android/settings/widget/SwitchWidgetController;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchWidgetController;->teardownView()V

    .line 132
    return-void
.end method
