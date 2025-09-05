.class public Lcom/android/settings/fuelgauge/BatteryHistoryPreference;
.super Landroid/support/v7/preference/Preference;
.source "BatteryHistoryPreference.java"


# instance fields
.field hideSummary:Z

.field mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field private mSummary:Ljava/lang/CharSequence;

.field private mSummaryView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    const p1, 0x7f0d003d    # @layout/battery_usage_graph 'res/layout/battery_usage_graph.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setLayoutResource(I)V

    .line 48
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setSelectable(Z)V

    .line 49
    return-void
.end method

.method public static synthetic lambda$setStats$0(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 0

    .line 53
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->notifyChanged()V

    .line 55
    return-void
.end method


# virtual methods
.method public hideBottomSummary()V
    .locals 2

    .line 68
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideSummary:Z

    .line 72
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 76
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 77
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 78
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    if-nez v2, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    const v2, 0x7f0a00b3    # @id/charge

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    const v2, 0x7f0a007b    # @id/bottom_summary

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    .line 84
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    :cond_1
    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideSummary:Z

    if-eqz v2, :cond_2

    .line 88
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    :cond_2
    const v2, 0x7f0a006e    # @id/battery_usage

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/graph/UsageView;

    .line 91
    const v2, 0x7f0a01dc    # @id/label_group

    invoke-virtual {p1, v2}, Lcom/android/settings/graph/UsageView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const v3, 0x3f333333    # 0.7f

    invoke-virtual {v2, v3}, Landroid/view/View;->setAlpha(F)V

    .line 92
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mBatteryInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    const/4 v3, 0x0

    new-array v3, v3, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    invoke-virtual {v2, p1, v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 93
    const-string p1, "BatteryHistoryPreference"

    const-string v2, "onBindViewHolder"

    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 94
    return-void
.end method

.method public setBottomSummary(Ljava/lang/CharSequence;)V
    .locals 2

    .line 59
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    .line 60
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 62
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummaryView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_0
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->hideSummary:Z

    .line 65
    return-void
.end method

.method public setStats(Lcom/android/internal/os/BatteryStatsHelper;)V
    .locals 3

    .line 52
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryPreference$OfN0YWKsw9YRrCqoEdP8dybAPU0;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryPreference;)V

    .line 55
    invoke-virtual {p1}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p1

    .line 52
    const/4 v2, 0x0

    invoke-static {v0, v1, p1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    .line 56
    return-void
.end method
