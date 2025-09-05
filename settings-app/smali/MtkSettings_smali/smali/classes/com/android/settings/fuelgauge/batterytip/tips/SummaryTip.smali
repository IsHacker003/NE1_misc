.class public Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;
.super Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;
.source "SummaryTip.java"


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;


# instance fields
.field private mAverageTimeMs:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    new-instance v0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip$1;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip$1;-><init>()V

    sput-object v0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(IJ)V
    .locals 2

    .line 35
    const/4 v0, 0x6

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(IIZ)V

    .line 36
    iput-wide p2, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mAverageTimeMs:J

    .line 37
    return-void
.end method

.method constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;-><init>(Landroid/os/Parcel;)V

    .line 42
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mAverageTimeMs:J

    .line 43
    return-void
.end method


# virtual methods
.method public getIconId()I
    .locals 1

    .line 57
    const v0, 0x7f0800d8    # @drawable/ic_battery_status_good_24dp 'res/drawable/ic_battery_status_good_24dp.xml'

    return v0
.end method

.method public getSummary(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 52
    const v0, 0x7f120237    # @string/battery_tip_summary_summary 'Phone has typical background battery usage'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getTitle(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 1

    .line 47
    const v0, 0x7f120238    # @string/battery_tip_summary_title 'Apps are running normally'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public log(Landroid/content/Context;Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;)V
    .locals 2

    .line 73
    iget v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mState:I

    const/16 v1, 0x545

    invoke-virtual {p2, p1, v1, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 75
    return-void
.end method

.method public updateState(Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;)V
    .locals 0

    .line 62
    iget p1, p1, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->mState:I

    iput p1, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mState:I

    .line 63
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 67
    invoke-super {p0, p1, p2}, Lcom/android/settings/fuelgauge/batterytip/tips/BatteryTip;->writeToParcel(Landroid/os/Parcel;I)V

    .line 68
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/batterytip/tips/SummaryTip;->mAverageTimeMs:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 69
    return-void
.end method
