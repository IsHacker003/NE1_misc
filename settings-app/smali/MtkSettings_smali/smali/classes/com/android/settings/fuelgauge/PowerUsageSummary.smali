.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/fuelgauge/PowerUsageBase;
.source "PowerUsageSummary.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/PowerUsageSummary$SummaryProvider;
    }
.end annotation


# static fields
.field static final BATTERY_INFO_LOADER:I = 0x1

.field static final BATTERY_TIP_LOADER:I = 0x2

.field static final MENU_ADVANCED_BATTERY:I = 0x2

.field static final MENU_STATS_TYPE:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field mAnomalySparseArray:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mBatteryInfoDebugLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

.field mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

.field private mBatteryTipsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/app/LoaderManager$LoaderCallbacks<",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;",
            ">;>;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

.field mNeedUpdateBatteryTip:Z

.field mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

.field mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

.field private mStatsType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 476
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$4;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    .line 501
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$5;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 73
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageBase;-><init>()V

    .line 124
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 126
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 148
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 193
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$3;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    return-void
.end method

.method static synthetic access$200(Landroid/content/Context;)Z
    .locals 0

    .line 73
    invoke-static {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->hasPoweroffAnimationFeature(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method static getDashboardLabel(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo;)Ljava/lang/CharSequence;
    .locals 5

    .line 465
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 466
    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v1, :cond_0

    .line 467
    iget-object p0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    .line 469
    :cond_0
    const v1, 0x7f120a4e    # @string/power_remaining_settings_home_page '%1$s - %2$s'

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 470
    invoke-virtual {v0, v4}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 471
    invoke-virtual {v0, p1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    aput-object p1, v2, v3

    .line 469
    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 473
    :goto_0
    return-object p0
.end method

.method private static hasPoweroffAnimationFeature(Landroid/content/Context;)Z
    .locals 3

    .line 512
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 513
    const-string p0, "PowerUsageSummary"

    const-string v1, "hasPoweroffAnimationFeature context == null"

    invoke-static {p0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    return v0

    .line 516
    :cond_0
    nop

    .line 518
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v1, "com.nbb.system.poweroff_animation"

    invoke-virtual {p0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 521
    goto :goto_0

    .line 519
    :catch_0
    move-exception p0

    .line 520
    const-string v1, "PowerUsageSummary"

    const-string v2, "hasPoweroffAnimationFeature get system feature exception"

    invoke-static {v1, v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 522
    move p0, v0

    :goto_0
    return p0
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 9
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

    .line 250
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Lcom/android/settings/SettingsActivity;

    .line 252
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    new-instance v3, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-direct {v3, p1, v1, p0, v0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Activity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    .line 255
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 256
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    const-string v5, "battery_tip"

    .line 257
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/settings/SettingsActivity;

    move-object v3, v0

    move-object v4, p1

    move-object v7, p0

    move-object v8, p0

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController$BatteryTipListener;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    .line 259
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 260
    new-instance v0, Lcom/android/settings/display/BatteryPercentagePreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/BatteryPercentagePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    new-instance v0, Lcom/mediatek/settings/fuelguage/BackgroundPowerSavingPreferenceController;

    invoke-direct {v0, p1}, Lcom/mediatek/settings/fuelguage/BackgroundPowerSavingPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 264
    new-instance v0, Lcom/android/settings/display/PoweroffAnimationPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/display/PoweroffAnimationPreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    return-object v2
.end method

.method getAnomalyDetectionPolicy()Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
    .locals 2

    .line 343
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public getHelpResource()I
    .locals 1

    .line 284
    const v0, 0x7f1206f6    # @string/help_url_battery ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 240
    const-string v0, "PowerUsageSummary"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 235
    const/16 v0, 0x4ef

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 245
    const v0, 0x7f150083    # @xml/power_usage_summary 'res/xml/power_usage_summary.xml'

    return v0
.end method

.method initFeatureProvider()V
    .locals 2

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    .line 379
    invoke-virtual {v1, v0}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 380
    return-void
.end method

.method public onBatteryTipHandled(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 430
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    .line 431
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 215
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreate(Landroid/os/Bundle;)V

    .line 216
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setAnimationAllowed(Z)V

    .line 218
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->initFeatureProvider()V

    .line 219
    const-string v0, "battery_header"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/LayoutPreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 221
    const-string v0, "screen_usage"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 222
    const-string v0, "last_full_charge"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 224
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {v0}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object v0

    const v1, 0x7f1201ee    # @string/battery_footer_summary 'Battery usage data is approximate and can change based on usage'

    invoke-virtual {v0, v1}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 226
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 229
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->restoreInstanceState(Landroid/os/Bundle;)V

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateBatteryTipFlag(Landroid/os/Bundle;)V

    .line 231
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 277
    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f1200c4    # @string/advanced_battery_title 'Battery usage'

    invoke-interface {p1, v0, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    .line 279
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 280
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 1

    .line 411
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->showBothEstimates()V

    .line 412
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 413
    const/4 p1, 0x1

    return p1
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 289
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    const/4 v1, 0x1

    packed-switch v0, :pswitch_data_0

    .line 306
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1

    .line 299
    :pswitch_0
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/fuelgauge/PowerUsageAdvanced;

    .line 300
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f1200c4    # @string/advanced_battery_title 'Battery usage'

    .line 302
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 303
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 304
    return v1

    .line 291
    :pswitch_1
    iget p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 292
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    goto :goto_0

    .line 294
    :cond_0
    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsType:I

    .line 296
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->refreshUi(I)V

    .line 297
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 424
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 425
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->saveInstanceState(Landroid/os/Bundle;)V

    .line 426
    return-void
.end method

.method protected refreshUi(I)V
    .locals 4

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 312
    if-nez v0, :cond_0

    .line 313
    return-void

    .line 317
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    if-eq p1, v1, :cond_1

    .line 319
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryTipLoader()V

    goto :goto_0

    .line 321
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 325
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->restartBatteryInfoLoader()V

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->updateLastFullChargePreference()V

    .line 327
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mScreenUsagePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 328
    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateScreenUsageTime(Lcom/android/internal/os/BatteryStatsHelper;)J

    move-result-wide v1

    long-to-double v1, v1

    const/4 v3, 0x0

    .line 327
    invoke-static {v0, v1, v2, v3}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 329
    return-void
.end method

.method restartBatteryInfoLoader()V
    .locals 4

    .line 395
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 397
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    invoke-interface {v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEstimateDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v1, 0x7f0a034b    # @id/summary1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 400
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 402
    :cond_0
    return-void
.end method

.method protected restartBatteryStatsLoader(I)V
    .locals 0

    .line 418
    invoke-super {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageBase;->restartBatteryStatsLoader(I)V

    .line 419
    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryHeaderPreferenceController:Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    .line 420
    return-void
.end method

.method restartBatteryTipLoader()V
    .locals 4

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    sget-object v1, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipsCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    const/4 v3, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 334
    return-void
.end method

.method setBatteryLayoutPreference(Lcom/android/settings/applications/LayoutPreference;)V
    .locals 0

    .line 338
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 339
    return-void
.end method

.method showBothEstimates()V
    .locals 4

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 368
    invoke-interface {v1, v0}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 371
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    sget-object v2, Landroid/os/Bundle;->EMPTY:Landroid/os/Bundle;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfoDebugLoaderCallbacks:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 373
    return-void

    .line 369
    :cond_1
    :goto_0
    return-void
.end method

.method updateAnomalySparseArray(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 384
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 385
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 386
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_0

    .line 387
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, v2, v3}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    .line 389
    :cond_0
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mAnomalySparseArray:Landroid/util/SparseArray;

    iget v2, v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    goto :goto_0

    .line 391
    :cond_1
    return-void
.end method

.method updateBatteryTipFlag(Landroid/os/Bundle;)V
    .locals 0

    .line 406
    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryTipPreferenceController:Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;

    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/BatteryTipPreferenceController;->needUpdate()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mNeedUpdateBatteryTip:Z

    .line 407
    return-void
.end method

.method updateLastFullChargePreference()V
    .locals 6

    .line 348
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    if-eqz v0, :cond_0

    .line 350
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const v2, 0x7f1201ef    # @string/battery_full_charge_last 'Full charge lasts about'

    invoke-virtual {v0, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 351
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-wide v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    long-to-double v3, v3

    invoke-static {v2, v3, v4, v1}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 351
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 355
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mStatsHelper:Lcom/android/internal/os/BatteryStatsHelper;

    .line 356
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 355
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryUtils;->calculateLastFullChargeTime(Lcom/android/internal/os/BatteryStatsHelper;J)J

    move-result-wide v2

    .line 357
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    const v4, 0x7f1201f6    # @string/battery_last_full_charge 'Last full charge'

    invoke-virtual {v0, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(I)V

    .line 358
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mLastFullChargePref:Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 359
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v4

    long-to-double v2, v2

    invoke-static {v4, v2, v3, v1}, Lcom/android/settingslib/utils/StringUtil;->formatRelativeTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object v1

    .line 358
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 362
    :goto_0
    return-void
.end method

.method protected updateViews(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/BatteryInfo;",
            ">;)V"
        }
    .end annotation

    .line 167
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 168
    const v1, 0x7f0a006b    # @id/battery_header_icon

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 169
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 170
    const v2, 0x7f0a006d    # @id/battery_percent

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 171
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v3, 0x7f0a034b    # @id/summary1

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 172
    iget-object v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v4, 0x7f0a034c    # @id/summary2

    invoke-virtual {v3, v4}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 173
    const/4 v4, 0x0

    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 174
    const/4 v5, 0x1

    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 175
    iget v6, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v6}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 180
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 181
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-wide v7, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 182
    invoke-static {v7, v8}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v7

    .line 181
    invoke-static {v6, v7, v8}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 180
    invoke-interface {v1, v6}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getOldEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 185
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mPowerFeatureProvider:Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-wide v6, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 187
    invoke-static {v6, v7}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v6

    .line 186
    invoke-static {v2, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 185
    invoke-interface {v1, p1}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedEstimateDebugString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    iget p1, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 190
    iget-boolean p1, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    xor-int/2addr p1, v5

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    .line 191
    return-void
.end method
