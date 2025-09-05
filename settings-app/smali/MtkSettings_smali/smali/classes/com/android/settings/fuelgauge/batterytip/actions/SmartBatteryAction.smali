.class public Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;
.super Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;
.source "SmartBatteryAction.java"


# instance fields
.field private mFragment:Landroid/app/Fragment;

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Landroid/app/Fragment;)V
    .locals 1

    .line 33
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/batterytip/actions/BatteryTipAction;-><init>(Landroid/content/Context;)V

    .line 34
    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 35
    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroid/app/Fragment;

    .line 36
    return-void
.end method


# virtual methods
.method public handlePositiveAction(I)V
    .locals 3

    .line 43
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mContext:Landroid/content/Context;

    const/16 v2, 0x554

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 45
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 46
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    if-eqz v0, :cond_0

    .line 47
    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/SmartBatteryAction;->mFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settingslib/core/instrumentation/Instrumentable;

    invoke-interface {v0}, Lcom/android/settingslib/core/instrumentation/Instrumentable;->getMetricsCategory()I

    move-result v0

    goto :goto_0

    .line 48
    :cond_0
    const/4 v0, 0x0

    .line 46
    :goto_0
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const-class v0, Lcom/android/settings/fuelgauge/SmartBatterySettings;

    .line 49
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v0, 0x7f120cb5    # @string/smart_battery_manager_title 'Adaptive Battery'

    .line 50
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 51
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 53
    return-void
.end method
