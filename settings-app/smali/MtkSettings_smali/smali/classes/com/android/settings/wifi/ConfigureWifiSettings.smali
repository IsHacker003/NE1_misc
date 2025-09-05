.class public Lcom/android/settings/wifi/ConfigureWifiSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConfigureWifiSettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private iWifiExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

.field private mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 118
    new-instance v0, Lcom/android/settings/wifi/ConfigureWifiSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wifi/ConfigureWifiSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wifi/ConfigureWifiSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 4
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

    .line 81
    new-instance v0, Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-direct {v0, p1, p0}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/DashboardFragment;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    .line 82
    new-instance v0, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    .line 84
    const-string v0, "wifi"

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 85
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 86
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWifiExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->iWifiExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 87
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    new-instance v2, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3}, Lcom/android/settings/wifi/NotifyOpenNetworksPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 89
    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v2, Lcom/android/settings/wifi/WifiInfoPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/WifiInfoPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    new-instance v2, Lcom/android/settings/wifi/CellularFallbackPreferenceController;

    invoke-direct {v2, p1}, Lcom/android/settings/wifi/CellularFallbackPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    new-instance v2, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-direct {v2, p1, v3, v0}, Lcom/android/settings/wifi/p2p/WifiP2pPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/net/wifi/WifiManager;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->iWifiExt:Lcom/mediatek/settings/ext/IWifiExt;

    iget-object v2, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->iWifiExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConfigureWifiSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/mediatek/settings/ext/IWifiExt;->createWifiPreferenceController(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 94
    invoke-interface {v0, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->addPreferenceController(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    new-instance v0, Lcom/mediatek/settings/wifi/WapiCertPreferenceController;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/wifi/WapiCertPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    return-object v1
.end method

.method public getInitialExpandedChildCount()I
    .locals 1

    .line 67
    nop

    .line 68
    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    const/4 v0, 0x3

    goto :goto_0

    .line 71
    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 62
    const-string v0, "ConfigureWifiSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 57
    const/16 v0, 0x152

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 76
    const v0, 0x7f1500c0    # @xml/wifi_configure_settings 'res/xml/wifi_configure_settings.xml'

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 106
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    if-eqz v0, :cond_0

    .line 107
    iget-object p3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mWifiWakeupPreferenceController:Lcom/android/settings/wifi/WifiWakeupPreferenceController;

    invoke-virtual {p3, p1, p2}, Lcom/android/settings/wifi/WifiWakeupPreferenceController;->onActivityResult(II)V

    .line 108
    return-void

    .line 110
    :cond_0
    const/16 v0, 0x190

    if-ne p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    if-eqz v0, :cond_1

    .line 112
    iget-object p3, p0, Lcom/android/settings/wifi/ConfigureWifiSettings;->mUseOpenWifiPreferenceController:Lcom/android/settings/wifi/UseOpenWifiPreferenceController;

    invoke-virtual {p3, p1, p2}, Lcom/android/settings/wifi/UseOpenWifiPreferenceController;->onActivityResult(II)Z

    .line 113
    return-void

    .line 115
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 116
    return-void
.end method
