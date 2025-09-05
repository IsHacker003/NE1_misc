.class public Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "BatteryHeaderPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;


# static fields
.field static final KEY_BATTERY_HEADER:Ljava/lang/String; = "battery_header"


# instance fields
.field private final mActivity:Landroid/app/Activity;

.field private mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

.field mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

.field mBatteryPercentText:Landroid/widget/TextView;

.field private final mHost:Landroid/support/v14/preference/PreferenceFragment;

.field private final mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

.field mSummary1:Landroid/widget/TextView;

.field mSummary2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Activity;Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 0

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 66
    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 67
    iput-object p3, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroid/support/v14/preference/PreferenceFragment;

    .line 68
    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    .line 69
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    if-eqz p1, :cond_0

    .line 70
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 72
    :cond_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 76
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 77
    const-string v0, "battery_header"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 78
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 79
    const v0, 0x7f0a006b    # @id/battery_header_icon

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/BatteryMeterView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    .line 80
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v0, 0x7f0a006d    # @id/battery_percent

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryPercentText:Landroid/widget/TextView;

    .line 81
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v0, 0x7f0a034b    # @id/summary1

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    .line 82
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    const v0, 0x7f0a034c    # @id/summary2

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary2:Landroid/widget/TextView;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->quickUpdateHeaderPreference()V

    .line 85
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 94
    const-string v0, "battery_header"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public onStart()V
    .locals 4

    .line 99
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroid/support/v14/preference/PreferenceFragment;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryLayoutPref:Lcom/android/settings/applications/LayoutPreference;

    .line 100
    const v3, 0x7f0a006a    # @id/battery_entity_header

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 99
    invoke-static {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mHost:Landroid/support/v14/preference/PreferenceFragment;

    .line 101
    invoke-virtual {v1}, Landroid/support/v14/preference/PreferenceFragment;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->styleActionBar(Landroid/app/Activity;)Lcom/android/settings/widget/EntityHeaderController;

    .line 103
    return-void
.end method

.method public quickUpdateHeaderPreference()V
    .locals 4

    .line 121
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    .line 123
    invoke-static {v0}, Lcom/android/settingslib/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v1

    .line 127
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 132
    move v0, v3

    goto :goto_0

    .line 127
    :cond_0
    const/4 v0, 0x0

    .line 132
    :goto_0
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    invoke-virtual {v2, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 133
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    xor-int/2addr v0, v3

    invoke-virtual {v2, v0}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryPercentText:Landroid/widget/TextView;

    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 139
    return-void
.end method

.method public updateHeaderPreference(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 2

    .line 106
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryPercentText:Landroid/widget/TextView;

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v1}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 107
    iget-object v0, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    if-nez v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary1:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 114
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mSummary2:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 116
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    iget v1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setBatteryLevel(I)V

    .line 117
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHeaderPreferenceController;->mBatteryMeterView:Lcom/android/settings/fuelgauge/BatteryMeterView;

    iget-boolean p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {v0, p1}, Lcom/android/settings/fuelgauge/BatteryMeterView;->setCharging(Z)V

    .line 118
    return-void
.end method
