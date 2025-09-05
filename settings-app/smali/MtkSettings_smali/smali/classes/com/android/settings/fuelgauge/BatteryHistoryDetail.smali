.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "BatteryHistoryDetail.java"


# instance fields
.field private mBatteryBroadcast:Landroid/content/Intent;

.field private mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

.field private mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

.field private mStats:Landroid/os/BatteryStats;

.field private mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V
    .locals 1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    .line 116
    invoke-interface {p1}, Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;->hasData()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    :goto_0
    invoke-virtual {p3, v0}, Landroid/view/View;->setVisibility(I)V

    .line 117
    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(I)V

    .line 118
    const p2, 0x7f0a0069    # @id/battery_active

    invoke-virtual {p3, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/android/settings/fuelgauge/BatteryActiveView;

    invoke-virtual {p2, p1}, Lcom/android/settings/fuelgauge/BatteryActiveView;->setProvider(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;)V

    .line 119
    return-void
.end method

.method public static synthetic lambda$updateEverything$0(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 5

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getView()Landroid/view/View;

    move-result-object v0

    .line 95
    const v1, 0x7f0a006e    # @id/battery_usage

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/graph/UsageView;

    const/16 v2, 0x8

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x1

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x2

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x3

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const/4 v4, 0x5

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v4, 0x6

    aput-object v3, v2, v4

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const/4 v4, 0x7

    aput-object v3, v2, v4

    invoke-virtual {p1, v1, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 98
    const v1, 0x7f0a00b3    # @id/charge

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 99
    const v1, 0x7f0a0148    # @id/estimation

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 101
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v0, 0x7f120211    # @string/battery_stats_charging_label 'Charging'

    const v1, 0x7f0a00b4    # @id/charging_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 102
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v0, 0x7f120218    # @string/battery_stats_screen_on_label 'Screen on'

    const v1, 0x7f0a02c9    # @id/screen_on_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 103
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v0, 0x7f120214    # @string/battery_stats_gps_on_label 'GPS on'

    const v1, 0x7f0a0176    # @id/gps_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 104
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v0, 0x7f120213    # @string/battery_stats_flashlight_on_label 'Flashlight on'

    const v1, 0x7f0a0168    # @id/flashlight_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 106
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v0, 0x7f120210    # @string/battery_stats_camera_on_label 'Camera on'

    const v1, 0x7f0a009a    # @id/camera_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 107
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    const v0, 0x7f12021a    # @string/battery_stats_wifi_running_label 'Wi‑Fi'

    const v1, 0x7f0a03e4    # @id/wifi_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 108
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const v0, 0x7f120219    # @string/battery_stats_wake_lock_label 'Awake'

    const v1, 0x7f0a00df    # @id/cpu_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 109
    iget-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    const v0, 0x7f120217    # @string/battery_stats_phone_signal_label 'Mobile network signal'

    const v1, 0x7f0a00a8    # @id/cell_network_group

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->bindData(Lcom/android/settings/fuelgauge/BatteryActiveView$BatteryActiveProvider;II)V

    .line 111
    return-void
.end method

.method private updateEverything()V
    .locals 4

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;

    invoke-direct {v1, p0}, Lcom/android/settings/fuelgauge/-$$Lambda$BatteryHistoryDetail$ZIvw_m8MPrnAuz9tJSzFmSFxa_8;-><init>(Lcom/android/settings/fuelgauge/BatteryHistoryDetail;)V

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    .line 112
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 123
    const/16 v0, 0x33

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "stats"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->statsFromFile(Landroid/content/Context;Ljava/lang/String;)Landroid/os/BatteryStats;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mStats:Landroid/os/BatteryStats;

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "broadcast"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mBatteryBroadcast:Landroid/content/Intent;

    .line 59
    new-instance p1, Landroid/util/TypedValue;

    invoke-direct {p1}, Landroid/util/TypedValue;-><init>()V

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    const/4 v1, 0x1

    const v2, 0x1010435    # @android:attr/colorAccent

    invoke-virtual {v0, v2, p1, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getContext()Landroid/content/Context;

    move-result-object v0

    iget p1, p1, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v0, p1}, Landroid/content/Context;->getColor(I)I

    move-result p1

    .line 63
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/4 v2, 0x0

    const/high16 v3, 0x80000

    invoke-direct {v0, p1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mChargingParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 65
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v3, 0x100000

    invoke-direct {v0, p1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mScreenOn:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 67
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v3, 0x20000000

    invoke-direct {v0, p1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mGpsParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 69
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v3, 0x8000000

    invoke-direct {v0, p1, v1, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mFlashlightParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 71
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v3, 0x200000

    invoke-direct {v0, p1, v1, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCameraParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 73
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryWifiParser;

    invoke-direct {v0, p1}, Lcom/android/settings/fuelgauge/BatteryWifiParser;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mWifiParser:Lcom/android/settings/fuelgauge/BatteryWifiParser;

    .line 74
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryFlagParser;

    const/high16 v3, -0x80000000

    invoke-direct {v0, p1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryFlagParser;-><init>(IZI)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mCpuParser:Lcom/android/settings/fuelgauge/BatteryFlagParser;

    .line 76
    new-instance p1, Lcom/android/settings/fuelgauge/BatteryCellParser;

    invoke-direct {p1}, Lcom/android/settings/fuelgauge/BatteryCellParser;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->mPhoneParser:Lcom/android/settings/fuelgauge/BatteryCellParser;

    .line 77
    invoke-virtual {p0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setHasOptionsMenu(Z)V

    .line 78
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 83
    const p3, 0x7f0d003c    # @layout/battery_history_detail 'res/layout/battery_history_detail.xml'

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->updateEverything()V

    .line 90
    return-void
.end method
