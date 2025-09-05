.class public Lcom/android/settings/network/NetworkDashboardFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 224
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 234
    new-instance v0, Lcom/android/settings/network/NetworkDashboardFragment$2;

    invoke-direct {v0}, Lcom/android/settings/network/NetworkDashboardFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/network/NetworkDashboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 0

    .line 52
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            "Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;",
            "Landroid/app/Fragment;",
            "Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 103
    new-instance p3, Lcom/android/settings/network/MobilePlanPreferenceController;

    invoke-direct {p3, p0, p4}, Lcom/android/settings/network/MobilePlanPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V

    .line 105
    new-instance p4, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;

    invoke-direct {p4, p0, p2}, Lcom/android/settings/wifi/WifiMasterSwitchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V

    .line 107
    new-instance p2, Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p2, p0}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    .line 109
    new-instance v0, Lcom/android/settings/network/VpnPreferenceController;

    invoke-direct {v0, p0}, Lcom/android/settings/network/VpnPreferenceController;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance v1, Lcom/android/settings/network/PrivateDnsPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/network/PrivateDnsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 114
    new-instance v2, Lcom/mediatek/settings/network/RcsePreferenceController;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/network/RcsePreferenceController;-><init>(Landroid/content/Context;)V

    .line 118
    if-eqz p1, :cond_0

    .line 119
    invoke-virtual {p1, p3}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 120
    invoke-virtual {p1, p4}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 121
    invoke-virtual {p1, p2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 122
    invoke-virtual {p1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 123
    invoke-virtual {p1, v1}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 125
    invoke-virtual {p1, v2}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 129
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    new-instance p2, Lcom/android/settings/network/TetherPreferenceController;

    invoke-direct {p2, p0, p1}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v3, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance p1, Lcom/android/settings/network/ProxyPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/network/ProxyPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v3, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 134
    invoke-interface {v3, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    invoke-interface {v3, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 140
    return-object v3
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/network/MobilePlanPreferenceController;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 159
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/network/MobilePlanPreferenceController;->setMobilePlanDialogMessage(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/network/NetworkDashboardFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-static {p1, v0, v1, p0, p0}, Lcom/android/settings/network/NetworkDashboardFragment;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Landroid/app/Fragment;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getDialogMetricsCategory(I)I
    .locals 1

    .line 167
    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    .line 168
    const/16 p1, 0x261

    return p1

    .line 170
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 90
    const v0, 0x7f12070b    # @string/help_url_network_dashboard ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "NetworkDashboardFrag"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 59
    const/16 v0, 0x2ea

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 69
    const v0, 0x7f15006f    # @xml/network_and_internet 'res/xml/network_and_internet.xml'

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 264
    const-class v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    .line 265
    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/network/AirplaneModePreferenceController;

    .line 266
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/network/AirplaneModePreferenceController;->onActivityResult(IILandroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 267
    return-void

    .line 269
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 270
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 74
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 76
    const-class p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/AirplaneModePreferenceController;

    invoke-virtual {p1, p0}, Lcom/android/settings/network/AirplaneModePreferenceController;->setFragment(Landroid/app/Fragment;)V

    .line 77
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getRCSSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Lcom/mediatek/settings/ext/IRCSSettings;->addRCSPreference(Landroid/app/Activity;Landroid/support/v7/preference/PreferenceScreen;)V

    .line 85
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 3

    .line 150
    const-string v0, "NetworkDashboardFrag"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreateDialog: dialogId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 162
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1

    .line 153
    :cond_0
    const-class p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkDashboardFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/MobilePlanPreferenceController;

    .line 155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 156
    invoke-virtual {p1}, Lcom/android/settings/network/MobilePlanPreferenceController;->getMobilePlanDialogMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/4 v1, 0x0

    .line 157
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a    # @android:string/ok

    new-instance v2, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;

    invoke-direct {v2, p1}, Lcom/android/settings/network/-$$Lambda$NetworkDashboardFragment$ezC2Ol_SOf4CDiS8HjkkdWzGu_s;-><init>(Lcom/android/settings/network/MobilePlanPreferenceController;)V

    .line 158
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 160
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 155
    return-object p1
.end method

.method public showMobilePlanMessageDialog()V
    .locals 1

    .line 145
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/network/NetworkDashboardFragment;->showDialog(I)V

    .line 146
    return-void
.end method
