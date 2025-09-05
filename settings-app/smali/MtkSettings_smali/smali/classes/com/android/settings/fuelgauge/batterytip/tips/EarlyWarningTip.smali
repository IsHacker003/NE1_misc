.class public Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "EarlyWarningTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mPowerSaveModeOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 96
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IZ)V
    .locals 2

    .line 33
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 34
    iput-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readBoolean()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    .line 40
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 2

    .line 60
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 61
    const v0, 0x7f0800d9    # @drawable/ic_battery_status_maybe_24dp 'res/drawable/ic_battery_status_maybe_24dp.xml'

    goto :goto_0

    .line 62
    :cond_0
    const v0, 0x7f0800d7    # @drawable/ic_battery_status_bad_24dp 'res/drawable/ic_battery_status_bad_24dp.xml'

    .line 60
    :goto_0
    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 52
    nop

    .line 53
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 54
    const v0, 0x7f120229    # @string/battery_tip_early_heads_up_done_summary 'Some features may be limited'

    goto :goto_0

    .line 55
    :cond_0
    const v0, 0x7f12022b    # @string/battery_tip_early_heads_up_summary 'Battery may run out earlier than usual'

    .line 52
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 44
    nop

    .line 45
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 46
    const v0, 0x7f12022a    # @string/battery_tip_early_heads_up_done_title 'Battery Saver is on'

    goto :goto_0

    .line 47
    :cond_0
    const v0, 0x7f12022c    # @string/battery_tip_early_heads_up_title 'Turn on Battery Saver'

    .line 44
    :goto_0
    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2

    .line 82
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/16 v1, 0x547

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 84
    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 2

    .line 67
    check-cast p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;

    .line 68
    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    goto :goto_0

    .line 71
    :cond_0
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    if-nez v0, :cond_2

    iget v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 73
    iget-boolean v0, p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    iput v1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    goto :goto_0

    .line 75
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->getState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mState:I

    .line 77
    :goto_0
    iget-boolean p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    .line 78
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 88
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 89
    iget-boolean p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/EarlyWarningTip;->mPowerSaveModeOn:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBoolean(Z)V

    .line 90
    return-void
.end method
