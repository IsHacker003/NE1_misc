.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ChartData"
.end annotation


# instance fields
.field mColors:[I

.field mLastBin:I

.field mNumTicks:I

.field mPaints:[Landroid/graphics/Paint;

.field mTicks:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method addTick(II)V
    .locals 3

    .line 88
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    const v2, 0xffff

    and-int/2addr p1, v2

    shl-int/lit8 v2, p2, 0x10

    or-int/2addr p1, v2

    aput p1, v0, v1

    .line 90
    iget p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 91
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 93
    :cond_0
    return-void
.end method

.method draw(Landroid/graphics/Canvas;II)V
    .locals 11

    .line 102
    nop

    .line 103
    add-int/2addr p3, p2

    .line 104
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_0
    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    if-ge v0, v3, :cond_1

    .line 105
    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    aget v3, v3, v0

    .line 106
    const v4, 0xffff

    and-int/2addr v4, v3

    .line 107
    const/high16 v5, -0x10000

    and-int/2addr v3, v5

    shr-int/lit8 v3, v3, 0x10

    .line 108
    if-eqz v1, :cond_0

    .line 109
    int-to-float v6, v2

    int-to-float v7, p2

    int-to-float v8, v4

    int-to-float v9, p3

    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v10, v2, v1

    move-object v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 111
    :cond_0
    nop

    .line 112
    nop

    .line 104
    add-int/lit8 v0, v0, 0x1

    move v1, v3

    move v2, v4

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method finish(I)V
    .locals 1

    .line 96
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    if-eqz v0, :cond_0

    .line 97
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    .line 99
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 0

    .line 78
    if-lez p1, :cond_0

    .line 79
    mul-int/lit8 p1, p1, 0x2

    new-array p1, p1, [I

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    goto :goto_0

    .line 81
    :cond_0
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mTicks:[I

    .line 83
    :goto_0
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mNumTicks:I

    .line 84
    iput p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mLastBin:I

    .line 85
    return-void
.end method

.method setColors([I)V
    .locals 3

    .line 68
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 69
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    .line 70
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 71
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 73
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mPaints:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-void
.end method
