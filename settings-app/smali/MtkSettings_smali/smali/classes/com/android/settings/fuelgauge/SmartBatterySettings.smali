.class public Lcom/android/settings/fuelgauge/SmartBatterySettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SmartBatterySettings.java"


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/settings/fuelgauge/SmartBatterySettings$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/SmartBatterySettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/SmartBatterySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;
    .locals 0

    .line 38
    invoke-static {p0, p1, p2}, Lcom/android/settings/fuelgauge/SmartBatterySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/SettingsActivity;",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
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
    new-instance v1, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/SmartBatteryPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 78
    new-instance p0, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;

    invoke-direct {p0, p2}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;-><init>(Lcom/android/settings/core/InstrumentedPreferenceFragment;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    new-instance p1, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;

    invoke-direct {p1, p0}, Lcom/android/settings/fuelgauge/RestrictAppPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :goto_0
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

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/SmartBatterySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-static {p1, v0, p0}, Lcom/android/settings/fuelgauge/SmartBatterySettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getHelpResource()I
    .locals 1

    .line 64
    const v0, 0x7f1206e9    # @string/help_uri_smart_battery_settings ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 54
    const-string v0, "SmartBatterySettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 49
    const/16 v0, 0x501

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 59
    const v0, 0x7f15009b    # @xml/smart_battery_detail 'res/xml/smart_battery_detail.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 43
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    iget-object p1, p0, Lcom/android/settings/fuelgauge/SmartBatterySettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    const v0, 0x7f120cb4    # @string/smart_battery_footer 'To extend battery life, Adaptive Battery limits battery for infrequently used apps. Your phone will  ...'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 45
    return-void
.end method
