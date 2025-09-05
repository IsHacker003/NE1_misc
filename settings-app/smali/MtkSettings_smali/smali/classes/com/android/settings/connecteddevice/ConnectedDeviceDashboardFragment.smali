.class public Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "ConnectedDeviceDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$SummaryProvider;
    }
.end annotation


# static fields
.field static final KEY_AVAILABLE_DEVICES:Ljava/lang/String; = "available_device_list"

.field static final KEY_CONNECTED_DEVICES:Ljava/lang/String; = "connected_device_list"

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 116
    new-instance v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 128
    new-instance v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 75
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 76
    new-instance v1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;-><init>(Landroid/content/Context;)V

    .line 78
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    if-eqz p1, :cond_0

    .line 81
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 84
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
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

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 60
    const v0, 0x7f1206fb    # @string/help_url_connected_devices ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "ConnectedDeviceFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 50
    const/16 v0, 0x2eb

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 65
    const v0, 0x7f150032    # @xml/connected_devices 'res/xml/connected_devices.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 90
    const-class p1, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/AvailableMediaDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 91
    const-class p1, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/ConnectedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 92
    const-class p1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDevicePreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 93
    const-class p1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/ConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/DiscoverableFooterPreferenceController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 94
    return-void
.end method
