.class public Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "PowerUsageAnomalyDetails.java"

# interfaces
.implements Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;


# static fields
.field static final EXTRA_ANOMALY_LIST:Ljava/lang/String; = "anomaly_list"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# instance fields
.field mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mAnomalies:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mIconDrawableFactory:Landroid/util/IconDrawableFactory;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field mPackageManager:Landroid/content/pm/PackageManager;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    return-void
.end method

.method public static startBatteryAbnormalPage(Lcom/android/settings/SettingsActivity;Lcom/android/settings/core/InstrumentedPreferenceFragment;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/SettingsActivity;",
            "Lcom/android/settings/core/InstrumentedPreferenceFragment;",
            "Ljava/util/List<",
            "Lcom/android/settings/fuelgauge/anomaly/Anomaly;",
            ">;)V"
        }
    .end annotation

    .line 68
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 69
    const-string v1, "anomaly_list"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelableList(Ljava/lang/String;Ljava/util/List;)V

    .line 71
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;

    .line 72
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 73
    const p2, 0x7f1201ce    # @string/battery_abnormal_details_title 'Apps draining battery'

    invoke-virtual {p0, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 74
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 75
    invoke-virtual {p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->getMetricsCategory()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 77
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 127
    const/4 p1, 0x0

    return-object p1
.end method

.method getBadgedIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 158
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-static {v0, v1, p1, p2}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    return-object p1
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 117
    const-string v0, "PowerAbnormalUsageDetail"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 132
    const/16 v0, 0x3db

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 122
    const v0, 0x7f15007f    # @xml/power_abnormal_detail 'res/xml/power_abnormal_detail.xml'

    return v0
.end method

.method public onAnomalyHandled(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->refreshUi()V

    .line 154
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "anomaly_list"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    .line 85
    const-string v0, "app_abnormal_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;

    .line 86
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 87
    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 88
    invoke-static {p1}, Lcom/android/settings/fuelgauge/BatteryUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/BatteryUtils;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    .line 89
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 100
    instance-of v0, p1, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;

    if-eqz v0, :cond_0

    .line 101
    check-cast p1, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;

    .line 102
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;->getAnomaly()Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    move-result-object p1

    .line 104
    const/16 v0, 0x3db

    invoke-static {p1, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    move-result-object p1

    .line 106
    const/4 v0, 0x0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "PowerAbnormalUsageDetail"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 109
    const/4 p1, 0x1

    return p1

    .line 112
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 0

    .line 93
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->refreshUi()V

    .line 96
    return-void
.end method

.method refreshUi()V
    .locals 6

    .line 136
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 138
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAnomalies:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 139
    new-instance v3, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyPreference;-><init>(Landroid/content/Context;Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V

    .line 140
    iget-object v4, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mBatteryUtils:Lcom/android/settings/fuelgauge/BatteryUtils;

    iget v5, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/BatteryUtils;->getSummaryResIdFromAnomalyType(I)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 141
    iget-object v4, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->packageName:Ljava/lang/String;

    iget v2, v2, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    invoke-virtual {p0, v4, v2}, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->getBadgedIcon(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 142
    if-eqz v2, :cond_0

    .line 143
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 146
    :cond_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageAnomalyDetails;->mAbnormalListGroup:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 148
    :cond_1
    return-void
.end method
