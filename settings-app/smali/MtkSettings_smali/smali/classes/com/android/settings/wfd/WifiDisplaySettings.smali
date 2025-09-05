.class public final Lcom/android/settings/wfd/WifiDisplaySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiDisplaySettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;,
        Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;,
        Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAutoGO:Z

.field private mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private mDisplayManager:Landroid/hardware/display/DisplayManager;

.field private mEmptyView:Landroid/widget/TextView;

.field private final mHandler:Landroid/os/Handler;

.field private mListen:Z

.field private mListenChannel:I

.field private mOperatingChannel:I

.field private mPendingChanges:I

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mRouter:Landroid/media/MediaRouter;

.field private final mRouterCallback:Landroid/media/MediaRouter$Callback;

.field private final mSettingsObserver:Landroid/database/ContentObserver;

.field private mStarted:Z

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mValidListener:Z

.field private mWfdAutoScanEnabled:Z

.field private mWfdChangeResolution:Lcom/mediatek/settings/wfd/WfdChangeResolution;

.field private mWifiDisplayCertificationOn:Z

.field private mWifiDisplayOnSetting:Z

.field private mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

.field private mWifiEnabled:Z

.field private mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

.field private mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

.field private mWpsConfig:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 967
    sget-object v0, Lcom/android/settings/wfd/-$$Lambda$WifiDisplaySettings$FSGRkDMrB620EgLXH7J2ShDkw60;->INSTANCE:Lcom/android/settings/wfd/-$$Lambda$WifiDisplaySettings$FSGRkDMrB620EgLXH7J2ShDkw60;

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 970
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$17;

    invoke-direct {v0}, Lcom/android/settings/wfd/WifiDisplaySettings$17;-><init>()V

    sput-object v0, Lcom/android/settings/wfd/WifiDisplaySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 139
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 125
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 734
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$13;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 743
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$14;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$14;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 767
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$15;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$15;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    .line 774
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$16;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$16;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    .line 140
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    .line 141
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/hardware/display/DisplayManager;
    .locals 0

    .line 88
    iget-object p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p0
.end method

.method static synthetic access$1002(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    return p1
.end method

.method static synthetic access$102(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/wfd/WifiDisplaySettings;I)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->scheduleUpdate(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiEnabled:Z

    return p0
.end method

.method static synthetic access$1302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiEnabled:Z

    return p1
.end method

.method static synthetic access$1400(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p0
.end method

.method static synthetic access$1402(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    return p1
.end method

.method static synthetic access$1500(Lcom/android/settings/wfd/WifiDisplaySettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdAutoScanEnabled:Z

    return p0
.end method

.method static synthetic access$1700(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleWfdSwitch(Z)V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/media/MediaRouter$RouteInfo;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setListenMode(Z)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V
    .locals 0

    .line 88
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/wfd/WifiDisplaySettings;)Z
    .locals 0

    .line 88
    iget-boolean p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p0
.end method

.method static synthetic access$302(Lcom/android/settings/wfd/WifiDisplaySettings;Z)Z
    .locals 0

    .line 88
    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->startAutoGO()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/wfd/WifiDisplaySettings;)V
    .locals 0

    .line 88
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->stopAutoGO()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p0
.end method

.method static synthetic access$602(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p0
.end method

.method static synthetic access$702(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    return p1
.end method

.method static synthetic access$800(Lcom/android/settings/wfd/WifiDisplaySettings;)I
    .locals 0

    .line 88
    iget p0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p0
.end method

.method static synthetic access$802(Lcom/android/settings/wfd/WifiDisplaySettings;I)I
    .locals 0

    .line 88
    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/wfd/WifiDisplaySettings;II)V
    .locals 0

    .line 88
    invoke-direct {p0, p1, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->setWifiP2pChannels(II)V

    return-void
.end method

.method private buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    .line 452
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    if-nez v0, :cond_0

    .line 453
    new-instance v0, Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 454
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v1, 0x7f121015    # @string/wifi_display_certification_heading 'Certification'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    .line 455
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceGroup;->setOrder(I)V

    goto :goto_0

    .line 457
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 459
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 462
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getGroupId()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_1

    .line 463
    new-instance p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 464
    const v0, 0x7f121023    # @string/wifi_display_session_info 'Session info'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 465
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplaySessionInfo;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 469
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplayStatus;->getSessionInfo()Landroid/hardware/display/WifiDisplaySessionInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplaySessionInfo;->getSessionId()I

    move-result p1

    if-eqz p1, :cond_1

    .line 470
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$1;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/wfd/WifiDisplaySettings$1;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 494
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v0, 0x7f0d01b7    # @layout/two_buttons_panel 'res/layout/two_buttons_panel.xml'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->setLayoutResource(I)V

    .line 499
    :cond_1
    new-instance p1, Lcom/android/settings/wfd/WifiDisplaySettings$2;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$2;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 507
    const v0, 0x7f12101a    # @string/wifi_display_listen_mode 'Enable listen mode'

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 508
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListen:Z

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 512
    new-instance p1, Lcom/android/settings/wfd/WifiDisplaySettings$3;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$3;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;)V

    .line 524
    const v0, 0x7f121013    # @string/wifi_display_autonomous_go 'Enable autonomous GO'

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 525
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mAutoGO:Z

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 529
    new-instance p1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 530
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$4;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 543
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_wps_config"

    const/4 v2, 0x4

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 545
    const-string v0, "Default"

    const-string v1, "PBC"

    const-string v2, "KEYPAD"

    const-string v3, "DISPLAY"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 546
    const-string v1, "4"

    const-string v2, "0"

    const-string v3, "2"

    const-string v4, "1"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 551
    const-string v2, "wps"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 552
    const v2, 0x7f121029    # @string/wifi_display_wps_config 'WPS configuration'

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 553
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 554
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 555
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 556
    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 557
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 560
    new-instance p1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 561
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$5;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 573
    const-string v0, "Auto"

    const-string v1, "1"

    const-string v2, "6"

    const-string v3, "11"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 574
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "6"

    const-string v4, "11"

    filled-new-array {v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v1

    .line 575
    const-string v2, "listening_channel"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 576
    const v2, 0x7f121019    # @string/wifi_display_listen_channel 'Listen channel'

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 577
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 578
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 579
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mListenChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 580
    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 581
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 584
    new-instance p1, Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 585
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$6;

    invoke-direct {v0, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$6;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 597
    const-string v0, "Auto"

    const-string v1, "1"

    const-string v2, "6"

    const-string v3, "11"

    const-string v4, "36"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    .line 598
    const-string v1, "0"

    const-string v2, "1"

    const-string v3, "6"

    const-string v4, "11"

    const-string v5, "36"

    filled-new-array {v1, v2, v3, v4, v5}, [Ljava/lang/String;

    move-result-object v1

    .line 599
    const-string v2, "operating_channel"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setKey(Ljava/lang/String;)V

    .line 600
    const v2, 0x7f12101c    # @string/wifi_display_operating_channel 'Operating channel'

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/ListPreference;->setTitle(I)V

    .line 601
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 602
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mOperatingChannel:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 604
    const-string v0, "%1$s"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 605
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mCertCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 606
    return-void
.end method

.method private createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;
    .locals 3

    .line 432
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->getDeviceAddress()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_0

    .line 434
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2, p1, v0}, Lcom/android/settings/wfd/WifiDisplaySettings$WifiDisplayRoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;Landroid/hardware/display/WifiDisplay;)V

    return-object v1

    .line 436
    :cond_0
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/media/MediaRouter$RouteInfo;)V

    return-object v0
.end method

.method private findWifiDisplay(Ljava/lang/String;)Landroid/hardware/display/WifiDisplay;
    .locals 5

    .line 441
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 442
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v0}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 443
    invoke-virtual {v3}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    return-object v3

    .line 442
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 448
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public static isAvailable(Landroid/content/Context;)Z
    .locals 2

    .line 335
    const-string v0, "display"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 336
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.wifi.direct"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "wifip2p"

    .line 337
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SUPPORT:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 335
    :goto_0
    return p0
.end method

.method static synthetic lambda$static$0(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    .line 968
    new-instance v0, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method private pairWifiDisplay(Landroid/hardware/display/WifiDisplay;)V
    .locals 1

    .line 697
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->canConnect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getDeviceAddress()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/hardware/display/DisplayManager;->connectWifiDisplay(Ljava/lang/String;)V

    .line 700
    :cond_0
    return-void
.end method

.method private scheduleUpdate(I)V
    .locals 2

    .line 342
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    if-eqz v0, :cond_1

    .line 343
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-nez v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 346
    :cond_0
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    or-int/2addr p1, v0

    iput p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 348
    :cond_1
    return-void
.end method

.method private setListenMode(Z)V
    .locals 3

    .line 650
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$9;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$9;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Z)V

    invoke-virtual {v0, v1, p1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->listen(Landroid/net/wifi/p2p/WifiP2pManager$Channel;ZLandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 665
    return-void
.end method

.method private setWifiP2pChannels(II)V
    .locals 3

    .line 671
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$10;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, p1, p2, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->setWifiP2pChannels(Landroid/net/wifi/p2p/WifiP2pManager$Channel;IILandroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 685
    return-void
.end method

.method private showWifiDisplayOptionsDialog(Landroid/hardware/display/WifiDisplay;)V
    .locals 4

    .line 703
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d6    # @layout/wifi_display_options 'res/layout/wifi_display_options.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 704
    const v1, 0x7f0a021f    # @id/name

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    .line 705
    invoke-virtual {p1}, Landroid/hardware/display/WifiDisplay;->getFriendlyDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 707
    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$11;

    invoke-direct {v2, p0, v1, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$11;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/widget/EditText;Landroid/hardware/display/WifiDisplay;)V

    .line 717
    new-instance v1, Lcom/android/settings/wfd/WifiDisplaySettings$12;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings$12;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/hardware/display/WifiDisplay;)V

    .line 724
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {p1, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 725
    const/4 v3, 0x1

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 726
    const v3, 0x7f121020    # @string/wifi_display_options_title 'Wireless display options'

    invoke-virtual {p1, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 727
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 728
    const v0, 0x7f12101d    # @string/wifi_display_options_done 'Done'

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 729
    const v0, 0x7f12101e    # @string/wifi_display_options_forget 'Forget'

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 730
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 731
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 732
    return-void
.end method

.method private startAutoGO()V
    .locals 3

    .line 612
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$7;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$7;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->createGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 625
    return-void
.end method

.method private stopAutoGO()V
    .locals 3

    .line 631
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    new-instance v2, Lcom/android/settings/wfd/WifiDisplaySettings$8;

    invoke-direct {v2, p0}, Lcom/android/settings/wfd/WifiDisplaySettings$8;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;)V

    invoke-virtual {v0, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->removeGroup(Landroid/net/wifi/p2p/WifiP2pManager$Channel;Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;)V

    .line 644
    return-void
.end method

.method private toggleRoute(Landroid/media/MediaRouter$RouteInfo;)V
    .locals 2

    .line 688
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 689
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/android/internal/app/MediaRouteDialogPresenter;->showDialogFragment(Landroid/app/Activity;ILandroid/view/View$OnClickListener;)Landroid/app/DialogFragment;

    goto :goto_0

    .line 692
    :cond_0
    invoke-virtual {p1}, Landroid/media/MediaRouter$RouteInfo;->select()V

    .line 694
    :goto_0
    return-void
.end method

.method private toggleWfdSwitch(Z)V
    .locals 2

    .line 280
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 281
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 282
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 285
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 286
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "wifi_display_on"

    .line 287
    nop

    .line 286
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 288
    iget-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mValidListener:Z

    if-eqz p1, :cond_1

    .line 289
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 291
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 292
    return-void
.end method

.method private unscheduleUpdate()V
    .locals 2

    .line 351
    iget v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    if-eqz v0, :cond_0

    .line 352
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mPendingChanges:I

    .line 353
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 355
    :cond_0
    return-void
.end method

.method private update(I)V
    .locals 7

    .line 358
    nop

    .line 361
    and-int/lit8 v0, p1, 0x1

    const/4 v1, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    move v0, v2

    goto :goto_0

    :cond_0
    move v0, v3

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 364
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_certification_on"

    invoke-static {v0, v4, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1

    move v0, v2

    goto :goto_1

    :cond_1
    move v0, v3

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v4, "wifi_display_wps_config"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWpsConfig:I

    .line 369
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiEnabled:Z

    .line 376
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdAutoScanEnabled:Z

    if-eqz v0, :cond_2

    .line 377
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleWfdSwitch(Z)V

    goto :goto_2

    .line 379
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleWfdSwitch(Z)V

    .line 383
    :goto_2
    nop

    .line 387
    move v0, v2

    goto :goto_3

    :cond_3
    move v0, v3

    :goto_3
    and-int/2addr p1, v1

    if-eqz p1, :cond_4

    .line 388
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    invoke-virtual {p1}, Landroid/hardware/display/DisplayManager;->getWifiDisplayStatus()Landroid/hardware/display/WifiDisplayStatus;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 391
    nop

    .line 395
    move v0, v2

    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 396
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 399
    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v2}, Landroid/media/MediaRouter;->getRouteCount()I

    move-result v2

    .line 400
    move v4, v3

    :goto_4
    if-ge v4, v2, :cond_6

    .line 401
    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    invoke-virtual {v5, v4}, Landroid/media/MediaRouter;->getRouteAt(I)Landroid/media/MediaRouter$RouteInfo;

    move-result-object v5

    .line 402
    invoke-virtual {v5, v1}, Landroid/media/MediaRouter$RouteInfo;->matchesTypes(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 403
    invoke-direct {p0, v5}, Lcom/android/settings/wfd/WifiDisplaySettings;->createRoutePreference(Landroid/media/MediaRouter$RouteInfo;)Lcom/android/settings/wfd/WifiDisplaySettings$RoutePreference;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 400
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 408
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 409
    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getFeatureState()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_9

    .line 411
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    invoke-virtual {v1}, Landroid/hardware/display/WifiDisplayStatus;->getDisplays()[Landroid/hardware/display/WifiDisplay;

    move-result-object v1

    array-length v2, v1

    :goto_5
    if-ge v3, v2, :cond_8

    aget-object v4, v1, v3

    .line 412
    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->isRemembered()Z

    move-result v5

    if-nez v5, :cond_7

    invoke-virtual {v4}, Landroid/hardware/display/WifiDisplay;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayStatus:Landroid/hardware/display/WifiDisplayStatus;

    .line 413
    invoke-virtual {v5}, Landroid/hardware/display/WifiDisplayStatus;->getActiveDisplay()Landroid/hardware/display/WifiDisplay;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/hardware/display/WifiDisplay;->equals(Landroid/hardware/display/WifiDisplay;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 414
    new-instance v5, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;

    .line 415
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, p0, v6, v4}, Lcom/android/settings/wfd/WifiDisplaySettings$UnpairedWifiDisplayPreference;-><init>(Lcom/android/settings/wfd/WifiDisplaySettings;Landroid/content/Context;Landroid/hardware/display/WifiDisplay;)V

    .line 414
    invoke-virtual {p1, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 411
    :cond_7
    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 420
    :cond_8
    iget-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayCertificationOn:Z

    if-eqz v1, :cond_9

    .line 421
    invoke-direct {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->buildCertificationMenu(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 426
    :cond_9
    if-eqz v0, :cond_a

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 429
    :cond_a
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 170
    const v0, 0x7f120710    # @string/help_url_remote_display ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 145
    const/16 v0, 0x66

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 175
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 178
    const v0, 0x112010c

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdAutoScanEnabled:Z

    .line 180
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 181
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 182
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz p1, :cond_1

    .line 183
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitch:Landroid/widget/Switch;

    .line 184
    iget-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdAutoScanEnabled:Z

    if-eqz p1, :cond_0

    .line 185
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->hide()V

    goto :goto_0

    .line 187
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 190
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004    # @android:id/empty

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    .line 191
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    const v0, 0x7f12101b    # @string/wifi_display_no_devices_found 'No nearby devices were found.'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 192
    iget-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setEmptyView(Landroid/view/View;)V

    .line 193
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 150
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 153
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_WFD_SUPPORT:Z

    if-eqz p1, :cond_0

    .line 154
    new-instance p1, Lcom/mediatek/settings/wfd/WfdChangeResolution;

    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/wfd/WfdChangeResolution;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdChangeResolution:Lcom/mediatek/settings/wfd/WfdChangeResolution;

    .line 158
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 159
    const-string v0, "media_router"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaRouter;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    .line 160
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/display/DisplayManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mDisplayManager:Landroid/hardware/display/DisplayManager;

    .line 161
    const-string v0, "wifip2p"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pManager;

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    .line 162
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pManager:Landroid/net/wifi/p2p/WifiP2pManager;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->initialize(Landroid/content/Context;Landroid/os/Looper;Landroid/net/wifi/p2p/WifiP2pManager$ChannelListener;)Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiP2pChannel:Landroid/net/wifi/p2p/WifiP2pManager$Channel;

    .line 163
    const-string v0, "wifi"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 164
    const p1, 0x7f1500c2    # @xml/wifi_display_settings 'res/xml/wifi_display_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->addPreferencesFromResource(I)V

    .line 165
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wfd/WifiDisplaySettings;->setHasOptionsMenu(Z)V

    .line 166
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .line 309
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 310
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .line 314
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 324
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdChangeResolution:Lcom/mediatek/settings/wfd/WfdChangeResolution;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdChangeResolution:Lcom/mediatek/settings/wfd/WfdChangeResolution;

    .line 325
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, p1, v2}, Lcom/mediatek/settings/wfd/WfdChangeResolution;->onOptionMenuSelected(Landroid/view/MenuItem;Landroid/app/FragmentManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 326
    return v1

    .line 328
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 316
    :cond_1
    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v0

    xor-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 317
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_display_on"

    .line 319
    iget-boolean v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 318
    invoke-static {p1, v0, v2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 320
    return v1
.end method

.method public onPause()V
    .locals 1

    .line 257
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 258
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mValidListener:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 260
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mValidListener:Z

    .line 262
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 236
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 237
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mValidListener:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 239
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mValidListener:Z

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiEnabled:Z

    .line 248
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWfdAutoScanEnabled:Z

    if-eqz v0, :cond_1

    .line 249
    iget-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiEnabled:Z

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleWfdSwitch(Z)V

    goto :goto_0

    .line 251
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleWfdSwitch(Z)V

    .line 253
    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 5

    .line 197
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 198
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 201
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 202
    const-string v3, "android.hardware.display.action.WIFI_DISPLAY_STATUS_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 203
    const-string v3, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 204
    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v3, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_certification_on"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 210
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_display_wps_config"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v1, v2, v4, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 213
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v2, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    const/4 v3, 0x4

    invoke-virtual {v1, v3, v2, v0}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;I)V

    .line 216
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/android/settings/wfd/WifiDisplaySettings;->update(I)V

    .line 217
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 221
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 222
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mStarted:Z

    .line 224
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 225
    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 227
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mSettingsObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 229
    iget-object v0, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mRouterCallback:Landroid/media/MediaRouter$Callback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 231
    invoke-direct {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->unscheduleUpdate()V

    .line 232
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 267
    invoke-virtual {p0}, Lcom/android/settings/wfd/WifiDisplaySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "wifi_display_on"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    iput-boolean v1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    .line 274
    iget-boolean p1, p0, Lcom/android/settings/wfd/WifiDisplaySettings;->mWifiDisplayOnSetting:Z

    if-eq p1, p2, :cond_1

    .line 275
    invoke-direct {p0, p2}, Lcom/android/settings/wfd/WifiDisplaySettings;->toggleWfdSwitch(Z)V

    .line 277
    :cond_1
    return-void
.end method
