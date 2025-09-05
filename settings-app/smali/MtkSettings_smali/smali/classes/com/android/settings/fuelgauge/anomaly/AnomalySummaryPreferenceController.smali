.class public Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;
.super Ljava/lang/Object;
.source "AnomalySummaryPreferenceController.java"


# instance fields
.field mAnomalies:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation
.end field

.field mAnomalyPreference:Landroid/support/v7/preference/Preference;

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

.field private mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

.field private mMetricsKey:I

.field private mSettingsActivity:Lcom/android/settings/SettingsActivity;


# direct methods
.method public constructor <init>(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;)V
    .locals 2

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    iput-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    .line 59
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    .line 60
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "high_usage"

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    .line 61
    invoke-virtual {p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p2

    iput p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mMetricsKey:I

    .line 62
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->hideHighUsagePreference()V

    .line 64
    return-void
.end method


# virtual methods
.method public hideHighUsagePreference()V
    .locals 2

    .line 111
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 112
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 67
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const-string v0, "high_usage"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 68
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 69
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 70
    iget v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mMetricsKey:I

    invoke-static {p1, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    move-result-object p1

    .line 72
    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {p1, v2, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "HighUsagePreferenceController"

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 74
    goto :goto_0

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mSettingsActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-static {p1, v1, v2}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->startBatteryAbnormalPage(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V

    .line 78
    :goto_0
    return v0

    .line 80
    :cond_1
    return v1
.end method

.method public updateAnomalySummaryPreference(Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mFragment:Lcom/android/settings/core/InstrumentedPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 91
    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    .line 93
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_1

    .line 94
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 95
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f10002d    # @plurals/power_high_usage_title

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    .line 97
    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v6, v6, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v6, v5, v1

    .line 96
    invoke-virtual {v3, v4, p1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 98
    if-le p1, v2, :cond_0

    .line 99
    const v4, 0x7f1201cd    # @string/battery_abnormal_apps_summary '%1$d apps misbehaving'

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v2, v1

    invoke-virtual {v0, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalies:Ljava/util/List;

    .line 101
    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v1, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getSummaryResIdFromAnomalyType(I)I

    move-result p1

    .line 100
    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 103
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 104
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 105
    goto :goto_1

    .line 106
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalySummaryPreferenceController;->mAnomalyPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 108
    :goto_1
    return-void
.end method
