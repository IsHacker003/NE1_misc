.class public Lcom/android/settings/wifi/tether/WifiTetherSettings;
.super Lcom/android/settings/dashboard/RestrictedDashboardFragment;
.source "WifiTetherSettings.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;
    }
.end annotation


# static fields
.field private static final TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

.field private mMaxConnectionPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;

.field private mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

.field private mResetPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;

.field private mRestartWifiApAfterConfigChange:Z

.field private mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

.field private mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

.field private mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

.field mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

.field private mUserPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 78
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    .line 79
    sget-object v0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 83
    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;-><init>(Ljava/lang/String;)V

    .line 84
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->updateDisplayWithNewConfig()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Landroid/net/wifi/WifiManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/tether/WifiTetherSettings;)Z
    .locals 0

    .line 51
    iget-boolean p0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->startTether()V

    return-void
.end method

.method private buildNewConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 3

    .line 195
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 197
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->getSecurityType()I

    move-result v1

    .line 199
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->getSSID()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 200
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v2, v1}, Ljava/util/BitSet;->set(I)V

    .line 201
    iget-object v2, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v2, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->getPasswordValidated(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 202
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 203
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->getBandIndex()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->apBand:I

    .line 204
    return-object v0
.end method

.method private startTether()V
    .locals 1

    .line 208
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 209
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->startTether()V

    .line 210
    return-void
.end method

.method private updateDisplayWithNewConfig()V
    .locals 1

    .line 213
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 214
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->updateDisplay()V

    .line 215
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 216
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->updateDisplay()V

    .line 217
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 218
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateDisplay()V

    .line 219
    const-class v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 220
    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;->updateDisplay()V

    .line 221
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 146
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 147
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWifiTetherSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    .line 148
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    .line 149
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    .line 150
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    .line 151
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    .line 153
    new-instance v1, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;

    invoke-direct {v1, p1, p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMaxConnectionPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;

    .line 155
    new-instance v1, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, p1, p0, v2}, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;Landroid/app/FragmentManager;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mResetPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;

    .line 156
    new-instance v1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUserPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;

    .line 158
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 160
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 161
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mApBandPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherApBandPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;

    const-string v2, "wifi_tether_auto_turn_off"

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherAutoOffPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 165
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mMaxConnectionPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherMaxConnectionPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 166
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mResetPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 167
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mUserPreferenceController:Lcom/mediatek/settings/wifi/tether/WifiTetherUserPreferenceController;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    invoke-interface {v1, p1, v0, p0}, Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;->addPreferenceController(Landroid/content/Context;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 172
    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 93
    const-string v0, "WifiTetherSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 88
    const/16 v0, 0x3f6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 141
    const v0, 0x7f1500c6    # @xml/wifi_tether_settings 'res/xml/wifi_tether_settings.xml'

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 109
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 113
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 114
    new-instance v1, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-direct {v2, v0}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    invoke-direct {v1, p1, v2}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;)V

    iput-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 117
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 118
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 98
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 99
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 100
    new-instance p1, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/wifi/tether/WifiTetherSettings;)V

    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    .line 105
    return-void
.end method

.method public onNetworkReset()V
    .locals 4

    .line 250
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    .line 251
    const/16 v1, 0x2328

    invoke-virtual {v0, v1}, Ljava/util/Random;->nextInt(I)I

    move-result v0

    add-int/lit16 v0, v0, 0x3e8

    .line 252
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AndroidAP_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1120116

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 255
    if-eqz v1, :cond_1

    .line 256
    const-string v1, "ro.product.nickname"

    const-string v2, "Unknown"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 257
    const-string v2, "ro.product.model"

    const-string v3, "Unknown"

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 258
    const-string v3, "Unknown"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 259
    nop

    .line 264
    move-object v0, v1

    goto :goto_0

    .line 260
    :cond_0
    const-string v1, "Unknown"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    nop

    .line 264
    move-object v0, v2

    :cond_1
    :goto_0
    const-string v1, "WifiTetherSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[Reset OOB] SSID = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSSIDPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/tether/WifiTetherSSIDPreferenceController;->setSSID(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSecurityPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/tether/WifiTetherSecurityPreferenceController;->setSecurityType()V

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->setEnabled(Z)V

    .line 270
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    const/16 v3, 0x8

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v2, 0x9

    const/16 v3, 0xd

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 272
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->setPassword(Ljava/lang/String;)V

    .line 274
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onTetherConfigUpdated()V

    .line 275
    return-void
.end method

.method public onSecurityChanged()V
    .locals 0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->onTetherConfigUpdated()V

    .line 285
    return-void
.end method

.method public onStart()V
    .locals 3

    .line 122
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStart()V

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 124
    if-eqz v0, :cond_0

    .line 125
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    sget-object v2, Lcom/android/settings/wifi/tether/WifiTetherSettings;->TETHER_STATE_CHANGE_FILTER:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 127
    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 131
    invoke-super {p0}, Lcom/android/settings/dashboard/RestrictedDashboardFragment;->onStop()V

    .line 132
    invoke-virtual {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_0

    .line 134
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mTetherChangeReceiver:Lcom/android/settings/wifi/tether/WifiTetherSettings$TetherChangeReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 136
    :cond_0
    return-void
.end method

.method public onTetherConfigUpdated()V
    .locals 3

    .line 177
    invoke-direct {p0}, Lcom/android/settings/wifi/tether/WifiTetherSettings;->buildNewConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 178
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mPasswordPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getAuthType()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/settings/wifi/tether/WifiTetherPasswordPreferenceController;->updateVisibility(I)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 186
    const-string v1, "TetheringSettings"

    const-string v2, "Wifi AP config changed while enabled, stop and restart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mRestartWifiApAfterConfigChange:Z

    .line 189
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mSwitchBarController:Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/tether/WifiTetherSwitchBarController;->stopTether()V

    .line 191
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v1, v0}, Landroid/net/wifi/WifiManager;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)Z

    .line 192
    return-void
.end method
