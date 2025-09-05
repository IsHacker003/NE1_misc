.class public Lcom/android/settings/location/LocationSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "LocationSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/LocationSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;


# instance fields
.field private mSwitchBarController:Lcom/android/settings/location/LocationSwitchBarController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 165
    new-instance v0, Lcom/android/settings/location/LocationSettings$2;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 177
    new-instance v0, Lcom/android/settings/location/LocationSettings$3;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/location/LocationSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 66
    invoke-static {p0, p1, p2}, Lcom/android/settings/location/LocationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static addPreferencesSorted(Ljava/util/List;Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Landroid/support/v7/preference/PreferenceGroup;",
            ")V"
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/android/settings/location/LocationSettings$1;

    invoke-direct {v0}, Lcom/android/settings/location/LocationSettings$1;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 115
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 116
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 117
    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/location/LocationSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    new-instance v1, Lcom/android/settings/location/AppLocationPermissionPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/location/AppLocationPermissionPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 129
    new-instance v1, Lcom/android/settings/location/LocationForWorkPreferenceController;

    invoke-direct {v1, p0, p2}, Lcom/android/settings/location/LocationForWorkPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    new-instance v1, Lcom/android/settings/location/RecentLocationRequestPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/RecentLocationRequestPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 132
    new-instance v1, Lcom/android/settings/location/LocationScanningPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/location/LocationScanningPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 133
    new-instance v1, Lcom/android/settings/location/LocationServicePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/location/LocationServicePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    new-instance p1, Lcom/android/settings/location/LocationFooterPreferenceController;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/location/LocationFooterPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 136
    const-string p1, "LocationSettings"

    const-string v1, "add addPreferenceControllerdd"

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object p1

    sput-object p1, Lcom/android/settings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 139
    sget-object p1, Lcom/android/settings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    sget-object v1, Lcom/android/settings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 140
    invoke-interface {v1, p0, p2}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->createPreferenceController(Landroid/content/Context;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 139
    invoke-interface {p1, v0, p0}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->addPreferenceController(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 143
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

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/location/LocationSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/location/LocationSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 122
    const v0, 0x7f120706    # @string/help_url_location_access ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 99
    const-string v0, "LocationSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 76
    const/16 v0, 0x3f

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 94
    const v0, 0x7f15006a    # @xml/location_settings 'res/xml/location_settings.xml'

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 81
    const-string v0, "LocationSettings"

    const-string v1, "onActivityCreatedd"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 84
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    .line 85
    const v1, 0x7f120800    # @string/location_settings_master_switch_title 'Use location'

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 87
    new-instance v1, Lcom/android/settings/location/LocationSwitchBarController;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-direct {v1, p1, v0, v2}, Lcom/android/settings/location/LocationSwitchBarController;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v1, p0, Lcom/android/settings/location/LocationSettings;->mSwitchBarController:Lcom/android/settings/location/LocationSwitchBarController;

    .line 88
    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 89
    sget-object p1, Lcom/android/settings/location/LocationSettings;->mExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-virtual {p0}, Lcom/android/settings/location/LocationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->customizeAGPRS(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 90
    return-void
.end method
