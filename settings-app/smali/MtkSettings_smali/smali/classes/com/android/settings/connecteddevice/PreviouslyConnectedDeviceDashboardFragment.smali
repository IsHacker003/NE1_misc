.class public Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PreviouslyConnectedDeviceDashboardFragment.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 66
    new-instance v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 39
    const v0, 0x7f12070f    # @string/help_url_previously_connected_devices ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "PreConnectedDeviceFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 54
    const/16 v0, 0x55a

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 44
    const v0, 0x7f150086    # @xml/previously_connected_devices 'res/xml/previously_connected_devices.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 60
    const-class p1, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;

    invoke-virtual {p0, p1}, Lcom/android/settings/connecteddevice/PreviouslyConnectedDeviceDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;

    invoke-virtual {p1, p0}, Lcom/android/settings/connecteddevice/SavedDeviceGroupController;->init(Lcom/android/settings/dashboard/DashboardFragment;)V

    .line 61
    return-void
.end method
