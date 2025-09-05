.class public Lcom/android/settings/wifi/WifiSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "WifiSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
.implements Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;
.implements Lcom/android/settingslib/wifi/WifiTracker$WifiListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAccessPointSavedState:Landroid/os/Bundle;

.field private mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mAddPreference:Landroid/support/v7/preference/Preference;

.field private mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

.field private mClickedConnect:Z

.field private mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

.field private mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

.field private mDialog:Lcom/android/settings/wifi/WifiDialog;

.field private mDialogMode:I

.field private mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mEnableHideForgetButton:Z

.field private mEnableNextOnConnection:Z

.field private mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private final mHideProgressBarRunnable:Ljava/lang/Runnable;

.field private mIsRestricted:Z

.field private mOpenSsid:Ljava/lang/String;

.field private mProgressHeader:Landroid/view/View;

.field private mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

.field private mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

.field private mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

.field private final mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

.field private mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

.field private mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

.field protected mWifiManager:Landroid/net/wifi/WifiManager;

.field private mWifiNfcDialogSavedState:Landroid/os/Bundle;

.field private mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

.field private mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

.field private mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1242
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$5;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 1290
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$6;

    invoke-direct {v0}, Lcom/android/settings/wifi/WifiSettings$6;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/WifiSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 199
    const-string v0, "no_config_wifi"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 122
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$Dc8tARLt9797q5fiCWMG56ysJZ4;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    .line 125
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$ojra5gZ2Zt1OL2cVDalsbhFOQY0;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    .line 195
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    .line 200
    return-void
.end method

.method private addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 1

    .line 952
    nop

    .line 953
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    move-result-object p1

    .line 954
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 957
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$xBxQqI4PVRSANGJ1NAFPK4yzyyw;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 970
    new-instance v0, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$gxNoP_iqTz6xulv3o7cQv7agDKI;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    invoke-virtual {p1, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V

    .line 976
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 978
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 979
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 980
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    if-eqz p1, :cond_0

    .line 981
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 982
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->scrollToPreference(Landroid/support/v7/preference/Preference;)V

    .line 984
    :cond_0
    return-void
.end method

.method private addMessagePreference(I)V
    .locals 4

    .line 1102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/wifi/LinkablePreference;->setTitle(I)V

    .line 1103
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1104
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1107
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    const/4 v3, 0x0

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V

    .line 1112
    return-void
.end method

.method private addPreferences()V
    .locals 3

    .line 251
    const v0, 0x7f1500c5    # @xml/wifi_settings 'res/xml/wifi_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->addPreferencesFromResource(I)V

    .line 253
    const-string v0, "connected_access_point"

    .line 254
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 255
    const-string v0, "access_points"

    .line 256
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 257
    const-string v0, "additional_settings"

    .line 258
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 259
    const-string v0, "configure_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 260
    const-string v0, "saved_networks"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    .line 263
    new-instance v1, Landroid/support/v7/preference/Preference;

    invoke-direct {v1, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    .line 264
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f080130    # @drawable/ic_menu_add_inset 'res/drawable/ic_menu_add_inset.xml'

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 265
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    const v2, 0x7f120fb5    # @string/wifi_add_network 'Add network'

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 266
    new-instance v1, Lcom/android/settings/wifi/LinkablePreference;

    invoke-direct {v1, v0}, Lcom/android/settings/wifi/LinkablePreference;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    .line 268
    new-instance v0, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    .line 269
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->init(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 270
    return-void
.end method

.method private changeNextButtonState(Z)V
    .locals 1

    .line 1127
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1128
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getNextButton()Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1130
    :cond_0
    return-void
.end method

.method private configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settingslib/wifi/AccessPoint;",
            ">;)Z"
        }
    .end annotation

    .line 905
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->removeConnectedAccessPointPreference()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 906
    return v1

    .line 909
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 910
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 911
    return v1

    .line 914
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPoint;

    .line 915
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-nez v0, :cond_2

    .line 916
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 917
    return v1

    .line 921
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_3

    .line 922
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 923
    return v2

    .line 927
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 929
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    .line 932
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eq v1, p1, :cond_4

    .line 933
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 934
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)V

    .line 935
    return v2

    .line 940
    :cond_4
    invoke-virtual {v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 943
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->getCurrentWifiNetwork()Landroid/net/Network;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 944
    return v2
.end method

.method private createConnectedAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/ConnectedAccessPointPreference;
    .locals 7

    .line 894
    new-instance v6, Lcom/android/settings/wifi/ConnectedAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const v4, 0x7f0801b3    # @drawable/ic_wifi_signal_0 'res/drawable/ic_wifi_signal_0.xml'

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    return-object v6
.end method

.method private createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;
    .locals 8

    .line 887
    new-instance v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mUserBadgeCache:Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;

    const/4 v4, 0x0

    const v5, 0x7f0801b3    # @drawable/ic_wifi_signal_0 'res/drawable/ic_wifi_signal_0.xml'

    move-object v0, v7

    move-object v1, p1

    move-object v6, p0

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/LongPressAccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;ZILandroid/app/Fragment;)V

    return-object v7
.end method

.method private createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;
    .locals 4

    .line 403
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 404
    new-instance v1, Lcom/android/settings/wifi/WifiEnabler;

    new-instance v2, Lcom/android/settings/widget/SwitchBarController;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settings/widget/SwitchBarController;-><init>(Lcom/android/settings/widget/SwitchBar;)V

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-direct {v1, v0, v2, v3}, Lcom/android/settings/wifi/WifiEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchWidgetController;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    return-object v1
.end method

.method private getCurrentWifiNetwork()Landroid/net/Network;
    .locals 1

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getCurrentNetwork()Landroid/net/Network;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method private static isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z
    .locals 2

    .line 792
    invoke-virtual {p0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p0

    .line 793
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 794
    return v0

    .line 796
    :cond_0
    nop

    .line 797
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object p0

    .line 798
    if-eqz p0, :cond_3

    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->isNetworkEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 801
    :cond_1
    invoke-virtual {p0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getNetworkSelectionDisableReason()I

    move-result p0

    .line 802
    const/16 v1, 0xd

    if-ne v1, p0, :cond_2

    const/4 v0, 0x1

    nop

    :cond_2
    return v0

    .line 799
    :cond_3
    :goto_0
    return v0
.end method

.method private static isVerboseLoggingEnabled()Z
    .locals 2

    .line 119
    sget-boolean v0, Lcom/android/settingslib/wifi/WifiTracker;->sVerboseLogging:Z

    if-nez v0, :cond_1

    const-string v0, "WifiSettings"

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private isWifiWakeupEnabled()Z
    .locals 5

    .line 1063
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 1064
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 1065
    const-string v2, "wifi_wakeup_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    const-string v2, "wifi_scan_always_enabled"

    .line 1067
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v4, :cond_0

    const-string v2, "airplane_mode_on"

    .line 1069
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_0

    .line 1071
    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1065
    move v3, v4

    goto :goto_0

    .line 1071
    :cond_0
    nop

    .line 1065
    :goto_0
    return v3
.end method

.method public static synthetic lambda$addConnectedAccessPointPreference$2(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 959
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 960
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 961
    invoke-virtual {p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isCaptivePortal()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 962
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 963
    invoke-virtual {p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->getNetwork()Landroid/net/Network;

    move-result-object p2

    .line 962
    invoke-virtual {p1, p2}, Landroid/net/ConnectivityManager;->startCaptivePortalApp(Landroid/net/Network;)V

    goto :goto_0

    .line 965
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 967
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$addConnectedAccessPointPreference$3(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settings/wifi/ConnectedAccessPointPreference;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 1

    .line 972
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 973
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 974
    return-void
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 0

    .line 123
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    .line 124
    return-void
.end method

.method public static synthetic lambda$new$1(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 1

    .line 126
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 127
    return-void
.end method

.method public static synthetic lambda$setOffMessage$4(Lcom/android/settings/wifi/WifiSettings;)V
    .locals 2

    .line 1084
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/location/ScanningSettings;

    .line 1085
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1086
    const v1, 0x7f1207fd    # @string/location_scanning_screen_title 'Scanning'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1087
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1088
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 1084
    return-void
.end method

.method private launchNetworkDetailsFragment(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 2

    .line 1022
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 1023
    const v1, 0x7f120a5f    # @string/pref_title_network_details 'Network details'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/wifi/details/WifiNetworkDetailsFragment;

    .line 1024
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 1025
    invoke-virtual {p1}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1026
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 1027
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 1028
    return-void
.end method

.method private registerCaptivePortalNetworkCallback(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V
    .locals 3

    .line 988
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 993
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 994
    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;->isSameNetworkAndPreference(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 995
    return-void

    .line 998
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 1000
    new-instance v0, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/wifi/CaptivePortalNetworkCallback;-><init>(Landroid/net/Network;Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1001
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    new-instance p2, Landroid/net/NetworkRequest$Builder;

    invoke-direct {p2}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 1003
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->clearCapabilities()Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    const/4 v0, 0x1

    .line 1004
    invoke-virtual {p2, v0}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object p2

    .line 1005
    invoke-virtual {p2}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object p2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    new-instance v1, Landroid/os/Handler;

    .line 1007
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 1001
    invoke-virtual {p1, p2, v0, v1}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 1008
    return-void

    .line 989
    :cond_2
    :goto_0
    const-string p1, "WifiSettings"

    const-string p2, "Network or Preference were null when registering callback."

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 990
    return-void
.end method

.method private removeConnectedAccessPointPreference()V
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1037
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectedAccessPointPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->setVisible(Z)V

    .line 1038
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 1039
    return-void
.end method

.method private restrictUi()V
    .locals 2

    .line 393
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 394
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f121037    # @string/wifi_empty_list_user_restricted 'You don’t have permission to change the Wi‑Fi network.'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 396
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 397
    return-void
.end method

.method private setAdditionalSettingsSummaries()V
    .locals 7

    .line 1043
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    iget-boolean v3, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addRefreshPreference(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/Object;Z)V

    .line 1046
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1047
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConfigureWifiSettingsPreference:Landroid/support/v7/preference/Preference;

    .line 1048
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->isWifiWakeupEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1049
    const v1, 0x7f121002    # @string/wifi_configure_settings_preference_summary_wakeup_on 'Wi‑Fi turns back on automatically'

    goto :goto_0

    .line 1050
    :cond_0
    const v1, 0x7f121001    # @string/wifi_configure_settings_preference_summary_wakeup_off 'Wi‑Fi doesn't turn back on automatically'

    .line 1047
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 1051
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getNumSavedNetworks()I

    move-result v0

    .line 1052
    if-lez v0, :cond_1

    .line 1053
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 1054
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    .line 1055
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f100040    # @plurals/wifi_saved_access_points_summary

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 1056
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 1055
    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1054
    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1058
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAdditionalSettingsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSavedNetworksPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 1060
    :goto_1
    return-void
.end method

.method private setOffMessage()V
    .locals 5

    .line 1075
    const v0, 0x7f121038    # @string/wifi_empty_list_wifi_off 'To see available networks, turn Wi‑Fi on.'

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 1079
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 1081
    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const v1, 0x7f12109f    # @string/wifi_scan_notify_text 'To improve location accuracy, apps and services can still scan for Wi‑Fi networks at any time, even  ...'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_1

    .line 1082
    :cond_1
    const v1, 0x7f1210a0    # @string/wifi_scan_notify_text_scanning_off 'To improve location accuracy, turn on Wi-Fi scanning in LINK_BEGINscanning settingsLINK_END.'

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1083
    :goto_1
    new-instance v2, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;

    invoke-direct {v2, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiSettings$G0-vWzmi3g45SjhkhuPVMzYpO5w;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    .line 1089
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v4, v0, v1, v2}, Lcom/android/settings/wifi/LinkablePreference;->setText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Lcom/android/settings/LinkifyUtils$OnClickListener;)V

    .line 1090
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 1091
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 1094
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-interface {v0, v1, v2, v4, v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V

    .line 1099
    return-void
.end method

.method private showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 2

    .line 641
    if-eqz p1, :cond_0

    .line 642
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 643
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 644
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 645
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 644
    invoke-static {p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 646
    return-void

    .line 650
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 651
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->removeDialog(I)V

    .line 652
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 656
    :cond_1
    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 657
    iput p2, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 659
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 660
    return-void
.end method

.method private unregisterCaptivePortalNetworkCallback()V
    .locals 3

    .line 1011
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    if-eqz v0, :cond_0

    .line 1013
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1016
    goto :goto_0

    .line 1014
    :catch_0
    move-exception v0

    .line 1015
    const-string v1, "WifiSettings"

    const-string v2, "Unregistering CaptivePortalNetworkCallback failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1017
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCaptivePortalNetworkCallback:Lcom/android/settings/wifi/CaptivePortalNetworkCallback;

    .line 1019
    :cond_0
    return-void
.end method

.method private updateAccessPointPreferences()V
    .locals 11

    .line 807
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 808
    return-void

    .line 810
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 812
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getAccessPoints()Ljava/util/List;

    move-result-object v0

    .line 813
    invoke-static {}, Lcom/android/settings/wifi/WifiSettings;->isVerboseLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 814
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateAccessPoints called for: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    :cond_1
    nop

    .line 818
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mStatusMessagePreference:Lcom/android/settings/wifi/LinkablePreference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 819
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->cacheRemoveAllPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 822
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->configureConnectedAccessPointPreferenceCategory(Ljava/util/List;)Z

    move-result v1

    .line 823
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 824
    const/4 v3, 0x0

    move v4, v3

    :goto_0
    const/4 v5, 0x1

    if-ge v1, v2, :cond_7

    .line 825
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settingslib/wifi/AccessPoint;

    .line 827
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v7

    if-eqz v7, :cond_6

    .line 828
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getKey()Ljava/lang/String;

    move-result-object v4

    .line 829
    nop

    .line 830
    nop

    .line 831
    invoke-virtual {p0, v4}, Lcom/android/settings/wifi/WifiSettings;->getCachedPreference(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v7

    check-cast v7, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 832
    if-eqz v7, :cond_2

    .line 833
    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 834
    goto :goto_2

    .line 836
    :cond_2
    nop

    .line 837
    invoke-direct {p0, v6}, Lcom/android/settings/wifi/WifiSettings;->createLongPressAccessPointPreference(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/android/settings/wifi/LongPressAccessPointPreference;

    move-result-object v7

    .line 838
    invoke-virtual {v7, v4}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setKey(Ljava/lang/String;)V

    .line 839
    invoke-virtual {v7, v1}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->setOrder(I)V

    .line 840
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 841
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v4

    if-eqz v4, :cond_4

    .line 842
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-static {v6}, Lcom/android/settings/wifi/WifiSettings;->isDisabledByWrongPassword(Lcom/android/settingslib/wifi/AccessPoint;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 843
    :cond_3
    invoke-virtual {p0, v7}, Lcom/android/settings/wifi/WifiSettings;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    .line 844
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 849
    :cond_4
    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    iget-object v9, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    .line 851
    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v10

    if-eqz v10, :cond_5

    .line 849
    move v10, v5

    goto :goto_1

    .line 851
    :cond_5
    nop

    .line 849
    move v10, v3

    :goto_1
    invoke-interface {v4, v8, v9, v7, v10}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V

    .line 853
    invoke-virtual {v6, p0}, Lcom/android/settingslib/wifi/AccessPoint;->setListener(Lcom/android/settingslib/wifi/AccessPoint$AccessPointListener;)V

    .line 854
    invoke-virtual {v7}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->refresh()V

    .line 824
    :goto_2
    move v4, v5

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 857
    :cond_7
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->removeCachedPrefs(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 858
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 861
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v6, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    invoke-interface {v0, v2, v6, v7, v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V

    .line 864
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    .line 866
    if-nez v4, :cond_8

    .line 867
    invoke-virtual {p0, v5}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 868
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 869
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setSelectable(Z)V

    .line 870
    const v2, 0x7f121039    # @string/wifi_empty_list_wifi_on 'Searching for Wi‑Fi networks…'

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 871
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 872
    const-string v1, "wifi_empty_list"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 875
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-interface {v1, v2, v4, v0, v3}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->addPreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/PreferenceCategory;Landroid/support/v7/preference/Preference;Z)V

    .line 878
    goto :goto_3

    .line 880
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x6a4

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 882
    :goto_3
    return-void
.end method

.method private updateAccessPointsDelayed()V
    .locals 4

    .line 730
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 732
    invoke-virtual {v0}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 733
    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasCallbacks(Ljava/lang/Runnable;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 734
    return-void

    .line 736
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 737
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 739
    :cond_1
    return-void
.end method


# virtual methods
.method protected connect(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 3

    .line 1192
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getVisibilityLogger()Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;

    move-result-object v1

    const/16 v2, 0x87

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Lcom/android/settingslib/core/instrumentation/VisibilityLoggerMixin;IZ)V

    .line 1194
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p2, p1, v0}, Landroid/net/wifi/WifiManager;->connect(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1195
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mClickedConnect:Z

    .line 1196
    return-void
.end method

.method forget()V
    .locals 5

    .line 1166
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Landroid/util/Pair;

    const/16 v4, 0x89

    invoke-virtual {v0, v1, v4, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1167
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1169
    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    sget-object v1, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v0, v1, :cond_0

    .line 1171
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1172
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1171
    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->disableEphemeralNetwork(Ljava/lang/String;)V

    goto :goto_0

    .line 1175
    :cond_0
    const-string v0, "WifiSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to forget invalid network "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    return-void

    .line 1178
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget-object v1, v1, Landroid/net/wifi/WifiConfiguration;->FQDN:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->removePasspointConfiguration(Ljava/lang/String;)V

    goto :goto_0

    .line 1181
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    iget v1, v1, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {v0, v1, v3}, Landroid/net/wifi/WifiManager;->forget(ILandroid/net/wifi/WifiManager$ActionListener;)V

    .line 1184
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1187
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 1188
    return-void
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    .line 704
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 710
    const/4 p1, 0x0

    return p1

    .line 708
    :cond_0
    const/16 p1, 0x25e

    return p1

    .line 706
    :cond_1
    const/16 p1, 0x25b

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 1217
    const v0, 0x7f12071f    # @string/help_url_wifi ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 458
    const/16 v0, 0x67

    return v0
.end method

.method public onAccessPointChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 2

    .line 1222
    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointChanged (singular) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1223
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    .line 1224
    if-eqz v0, :cond_0

    .line 1225
    new-instance v1, Lcom/android/settings/wifi/WifiSettings$4;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/wifi/WifiSettings$4;-><init>(Lcom/android/settings/wifi/WifiSettings;Lcom/android/settingslib/wifi/AccessPoint;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 1235
    :cond_0
    return-void
.end method

.method public onAccessPointsChanged()V
    .locals 2

    .line 720
    const-string v0, "WifiSettings"

    const-string v1, "onAccessPointsChanged (WifiTracker) callback initiated"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointsDelayed()V

    .line 722
    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 274
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 276
    nop

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    .line 276
    const/4 v2, 0x1

    invoke-static {v0, p0, v1, v2, v2}, Lcom/android/settingslib/wifi/WifiTrackerFactory;->create(Landroid/content/Context;Lcom/android/settingslib/wifi/WifiTracker$WifiListener;Lcom/android/settingslib/core/lifecycle/Lifecycle;ZZ)Lcom/android/settingslib/wifi/WifiTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    .line 278
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->getManager()Landroid/net/wifi/WifiManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 280
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 281
    if-eqz v0, :cond_0

    .line 282
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 285
    :cond_0
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$1;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mConnectListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 300
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$2;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 315
    new-instance v0, Lcom/android/settings/wifi/WifiSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiSettings$3;-><init>(Lcom/android/settings/wifi/WifiSettings;)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mForgetListener:Landroid/net/wifi/WifiManager$ActionListener;

    .line 330
    if-eqz p1, :cond_2

    .line 331
    const-string v0, "dialog_mode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    .line 332
    const-string v0, "wifi_ap_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 333
    const-string v0, "wifi_ap_state"

    .line 334
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 337
    :cond_1
    const-string v0, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 338
    const-string v0, "wifi_nfc_dlg_state"

    .line 339
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBundle(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    .line 345
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 346
    const-string v0, "wifi_enable_next_on_connect"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    .line 348
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableNextOnConnection:Z

    if-eqz v0, :cond_3

    .line 349
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->hasNextButton()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 350
    nop

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 352
    if-eqz v0, :cond_3

    .line 353
    invoke-virtual {v0, v2}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 355
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 360
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->registerForContextMenu(Landroid/view/View;)V

    .line 361
    invoke-virtual {p0, v2}, Lcom/android/settings/wifi/WifiSettings;->setHasOptionsMenu(Z)V

    .line 363
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 364
    const-string v0, "wifi_start_connect_ssid"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mOpenSsid:Ljava/lang/String;

    .line 366
    :cond_4
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 445
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/RestrictedSettingsFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 447
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 448
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 449
    if-eqz p1, :cond_0

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-nez p1, :cond_0

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result p1

    if-nez p1, :cond_0

    .line 452
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 454
    :cond_0
    return-void
.end method

.method onAddNetworkPressed()V
    .locals 4

    .line 1209
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    const/16 v3, 0x86

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 1211
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1212
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 1213
    return-void
.end method

.method public onConnectedChanged()V
    .locals 1

    .line 784
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    .line 787
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/WifiTracker;->isConnected()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->changeNextButtonState(Z)V

    .line 788
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 545
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_0

    .line 546
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 548
    :cond_0
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 576
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_3

    .line 577
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->disconnect(Landroid/view/MenuItem;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    return p1

    .line 571
    :pswitch_0
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(I)V

    .line 572
    return v1

    .line 567
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v0, 0x2

    invoke-direct {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 568
    return v1

    .line 563
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 564
    return v1

    .line 550
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    .line 551
    if-eqz p1, :cond_1

    .line 552
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 553
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_2

    .line 555
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 556
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 558
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 560
    :goto_0
    return v1

    .line 579
    :cond_3
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 230
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWifiSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    .line 234
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setAnimationAllowed(Z)V

    .line 236
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->addPreferences()V

    .line 238
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050055    # @bool/zzz_creq_pkg_enable_preload_carrier_wifi_config 'false'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    .line 243
    const-string p1, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[WIFI_DEBUG] Hide forget button feature: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    if-eqz p1, :cond_0

    .line 245
    new-instance p1, Lcust/settings/wifi/CustCarrierFeature;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcust/settings/wifi/CustCarrierFeature;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    .line 248
    :cond_0
    return-void
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 6

    .line 484
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/support/v7/preference/Preference;

    .line 486
    instance-of p3, p2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz p3, :cond_8

    .line 487
    check-cast p2, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    .line 488
    invoke-virtual {p2}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 489
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p1, p2}, Landroid/view/ContextMenu;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/ContextMenu;

    .line 490
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->isConnectable()Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 491
    const/4 p2, 0x7

    const v0, 0x7f12106a    # @string/wifi_menu_connect 'Connect to network'

    invoke-interface {p1, p3, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 494
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    .line 496
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 497
    return-void

    .line 500
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 506
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    const v1, 0x7f12106b    # @string/wifi_menu_forget 'Forget network'

    const/16 v2, 0x8

    if-eqz v0, :cond_4

    .line 507
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    invoke-virtual {v0, p2}, Lcust/settings/wifi/CustCarrierFeature;->hideForgetButton(Landroid/net/wifi/WifiConfiguration;)Z

    move-result v0

    .line 508
    const-string v3, "WifiSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "[WIFI_DEBUG] hideForgetButton = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    if-nez v0, :cond_3

    .line 510
    invoke-interface {p1, p3, v2, p3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 512
    :cond_3
    goto :goto_0

    .line 513
    :cond_4
    invoke-interface {p1, p3, v2, p3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 518
    :cond_5
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 519
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v2

    .line 518
    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->updateContextMenu(Landroid/view/ContextMenu;ILandroid/net/NetworkInfo$DetailedState;)V

    .line 520
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 523
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    const v1, 0x7f12106c    # @string/wifi_menu_modify 'Modify network'

    const/16 v2, 0x9

    if-eqz v0, :cond_7

    .line 524
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    invoke-virtual {v0, p2}, Lcust/settings/wifi/CustCarrierFeature;->hideForgetButton(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p2

    .line 525
    const-string v0, "WifiSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "[WIFI_DEBUG] hideModifyButton = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    if-nez p2, :cond_6

    .line 527
    invoke-interface {p1, p3, v2, p3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 529
    :cond_6
    goto :goto_1

    .line 530
    :cond_7
    invoke-interface {p1, p3, v2, p3, v1}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 533
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p2

    .line 534
    if-eqz p2, :cond_8

    invoke-virtual {p2}, Landroid/nfc/NfcAdapter;->isEnabled()Z

    move-result p2

    if-eqz p2, :cond_8

    iget-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 535
    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    if-eqz p2, :cond_8

    .line 537
    const/16 p2, 0xa

    const v0, 0x7f121071    # @string/wifi_menu_write_to_nfc 'Write to NFC tag'

    invoke-interface {p1, p3, p2, p3, v0}, Landroid/view/ContextMenu;->add(IIII)Landroid/view/MenuItem;

    .line 541
    :cond_8
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 2

    .line 664
    const/4 v0, 0x1

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_0

    .line 699
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 688
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_1

    .line 689
    new-instance p1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 690
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 691
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v1

    invoke-direct {p1, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    goto :goto_0

    .line 692
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    if-eqz p1, :cond_2

    .line 693
    new-instance p1, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiNfcDialogSavedState:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    .line 697
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    return-object p1

    .line 666
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    if-nez p1, :cond_4

    .line 668
    nop

    .line 669
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->createFullscreen(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    goto :goto_1

    .line 672
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez p1, :cond_5

    .line 674
    new-instance p1, Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-direct {p1, v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 676
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 679
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 681
    nop

    .line 682
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-static {p1, p0, v0, v1}, Lcom/android/settings/wifi/WifiDialog;->createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    .line 685
    :goto_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 686
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 1302
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    if-eqz v0, :cond_0

    .line 1303
    const-string v0, "WifiSettings"

    const-string v1, "[WIFI_DEBUG] Unregister CustCarrierFeature BroadcastReceicer!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1304
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    invoke-virtual {v0}, Lcust/settings/wifi/CustCarrierFeature;->unregisterBroadcastReceiver()V

    .line 1306
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 1307
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 370
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroyView()V

    .line 372
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->teardownSwitchController()V

    .line 375
    :cond_0
    return-void
.end method

.method public onForget(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .line 1134
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->forget()V

    .line 1135
    return-void
.end method

.method public onLevelChanged(Lcom/android/settingslib/wifi/AccessPoint;)V
    .locals 0

    .line 1239
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/wifi/AccessPointPreference;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->onLevelChanged()V

    .line 1240
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 429
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 430
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiEnabler;->pause()V

    .line 433
    :cond_0
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 585
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 586
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 587
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 590
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->customRefreshButtonClick(Landroid/support/v7/preference/Preference;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 591
    return v1

    .line 594
    :cond_1
    instance-of v0, p1, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    if-eqz v0, :cond_9

    .line 595
    move-object v0, p1

    check-cast v0, Lcom/android/settings/wifi/LongPressAccessPointPreference;

    invoke-virtual {v0}, Lcom/android/settings/wifi/LongPressAccessPointPreference;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 596
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-nez v0, :cond_2

    .line 597
    const/4 p1, 0x0

    return p1

    .line 599
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 600
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 606
    :cond_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 607
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    if-nez v0, :cond_4

    .line 608
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->generateOpenNetworkConfig()V

    .line 609
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 610
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_5

    if-eqz p1, :cond_5

    .line 611
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 612
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->getNetworkSelectionStatus()Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration$NetworkSelectionStatus;->getHasEverConnected()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 613
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 614
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspoint()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 617
    invoke-virtual {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 621
    :cond_6
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mEnableHideForgetButton:Z

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 622
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    invoke-virtual {v0, p1}, Lcust/settings/wifi/CustCarrierFeature;->hideForgetButton(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    .line 623
    const-string v0, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[WIFI_DEBUG] skipShowWifiDialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-nez p1, :cond_7

    .line 625
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 627
    :cond_7
    goto :goto_0

    .line 628
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-direct {p0, p1, v1}, Lcom/android/settings/wifi/WifiSettings;->showDialog(Lcom/android/settingslib/wifi/AccessPoint;I)V

    .line 632
    :goto_0
    goto :goto_1

    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAddPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_a

    .line 633
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->onAddNetworkPressed()V

    .line 637
    :goto_1
    return v1

    .line 635
    :cond_a
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 3

    .line 410
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 411
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 415
    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 416
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->isUiRestricted()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    .line 417
    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v1, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 421
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WifiEnabler;->resume(Landroid/content/Context;)V

    .line 425
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 463
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 466
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const-string v0, "dialog_mode"

    iget v1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialogMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 468
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    .line 469
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    .line 470
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mDlgAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wifi/AccessPoint;->saveWifiState(Landroid/os/Bundle;)V

    .line 471
    const-string v0, "wifi_ap_state"

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointSavedState:Landroid/os/Bundle;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 475
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 476
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 477
    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiToNfcDialog:Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;

    invoke-virtual {v1, v0}, Lcom/android/settings/wifi/WriteWifiConfigToNfcDialog;->saveState(Landroid/os/Bundle;)V

    .line 478
    const-string v1, "wifi_nfc_dlg_state"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 480
    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 379
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 382
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->createWifiEnabler()Lcom/android/settings/wifi/WifiEnabler;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiEnabler:Lcom/android/settings/wifi/WifiEnabler;

    .line 384
    iget-boolean v0, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz v0, :cond_0

    .line 385
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->restrictUi()V

    .line 386
    return-void

    .line 389
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiSettings;->onWifiStateChanged(I)V

    .line 390
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 437
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mUpdateAccessPointsRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 438
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getView()Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mHideProgressBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 439
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->unregisterCaptivePortalNetworkCallback()V

    .line 440
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 441
    return-void
.end method

.method public onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
    .locals 0

    .line 1139
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    if-eqz p1, :cond_0

    .line 1140
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mDialog:Lcom/android/settings/wifi/WifiDialog;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiDialog;->getController()Lcom/android/settings/wifi/WifiConfigController;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->submit(Lcom/android/settings/wifi/WifiConfigController;)V

    .line 1142
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 204
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedSettingsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 206
    if-eqz p1, :cond_2

    .line 207
    const p2, 0x7f0d01da    # @layout/wifi_progress_header 'res/layout/wifi_progress_header.xml'

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->setPinnedHeaderView(I)Landroid/view/View;

    move-result-object p2

    const v0, 0x7f0a0285    # @id/progress_bar_animation

    .line 208
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    .line 209
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 211
    const-string p2, "WifiSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onViewCreated isActivityFinishing: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 212
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->isFinishing()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "isActivity Destroyed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 213
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->isDestroyed()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "Monkey user :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 214
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->isFinishing()Z

    move-result p2

    if-nez p2, :cond_1

    .line 217
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->isDestroyed()Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 222
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    const p2, 0x7f1210b8    # @string/wifi_settings_master_switch_title 'Use Wi‑Fi'

    invoke-virtual {p1, p2, p2}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    goto :goto_1

    .line 219
    :cond_1
    :goto_0
    const-string p1, "WifiSettings"

    const-string p2, "SettingsActivity is finishing or destroyed, returning"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    return-void

    .line 226
    :cond_2
    :goto_1
    return-void
.end method

.method public onWifiStateChanged(I)V
    .locals 1

    .line 744
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiSettings;->mIsRestricted:Z

    if-eqz p1, :cond_0

    .line 745
    return-void

    .line 748
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {p1}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result p1

    .line 749
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 751
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->updateAccessPointPreferences()V

    .line 752
    goto :goto_0

    .line 755
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 756
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 757
    const p1, 0x7f1210e7    # @string/wifi_starting 'Turning Wi‑Fi on…'

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 758
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 759
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    .line 760
    goto :goto_0

    .line 770
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 771
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setOffMessage()V

    .line 772
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->setAdditionalSettingsSummaries()V

    .line 773
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->setProgressBarVisible(Z)V

    goto :goto_0

    .line 763
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiSettings;->removeConnectedAccessPointPreference()V

    .line 764
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mAccessPointsPreferenceCategory:Landroid/support/v7/preference/PreferenceCategory;

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 765
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiSettingsExt:Lcom/mediatek/settings/ext/IWifiSettingsExt;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/IWifiSettingsExt;->emptyCategory(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 766
    const p1, 0x7f1210f3    # @string/wifi_stopping 'Turning off Wi‑Fi…'

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/WifiSettings;->addMessagePreference(I)V

    .line 767
    nop

    .line 776
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected setProgressBarVisible(Z)V
    .locals 1

    .line 1115
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 1116
    iget-object v0, p0, Lcom/android/settings/wifi/WifiSettings;->mProgressHeader:Landroid/view/View;

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 1118
    :cond_1
    return-void
.end method

.method submit(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 4

    .line 1146
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 1147
    const-string v1, "WifiSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "submit, config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1148
    if-nez v0, :cond_0

    .line 1149
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 1150
    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1151
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_0

    .line 1153
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getMode()I

    move-result p1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 1154
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    goto :goto_0

    .line 1156
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiManager:Landroid/net/wifi/WifiManager;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiSettings;->mSaveListener:Landroid/net/wifi/WifiManager$ActionListener;

    invoke-virtual {p1, v0, v1}, Landroid/net/wifi/WifiManager;->save(Landroid/net/wifi/WifiConfiguration;Landroid/net/wifi/WifiManager$ActionListener;)V

    .line 1157
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mSelectedAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_2

    .line 1158
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/wifi/WifiSettings;->connect(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 1162
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiSettings;->mWifiTracker:Lcom/android/settingslib/wifi/WifiTracker;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/WifiTracker;->resumeScanning()V

    .line 1163
    return-void
.end method
