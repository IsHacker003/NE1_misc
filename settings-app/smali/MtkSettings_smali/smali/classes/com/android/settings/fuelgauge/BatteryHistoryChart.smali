.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;,
        Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
    }
.end annotation


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field final mBatLevelPath:Landroid/graphics/Path;

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field mBatteryCriticalLevel:I

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field mBatteryWarnLevel:I

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mBitmap:Landroid/graphics/Bitmap;

.field mCameraOnLabel:Ljava/lang/String;

.field mCameraOnOffset:I

.field final mCameraOnPaint:Landroid/graphics/Paint;

.field final mCameraOnPath:Landroid/graphics/Path;

.field mCanvas:Landroid/graphics/Canvas;

.field mChargeDurationString:Ljava/lang/String;

.field mChargeDurationStringWidth:I

.field mChargeLabelStringWidth:I

.field mChargingLabel:Ljava/lang/String;

.field mChargingOffset:I

.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field mChartMinHeight:I

.field mCpuRunningLabel:Ljava/lang/String;

.field mCpuRunningOffset:I

.field final mCpuRunningPaint:Landroid/graphics/Paint;

.field final mCpuRunningPath:Landroid/graphics/Path;

.field final mDateLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mDateLinePaint:Landroid/graphics/Paint;

.field final mDateLinePath:Landroid/graphics/Path;

.field final mDebugRectPaint:Landroid/graphics/Paint;

.field mDrainString:Ljava/lang/String;

.field mDrainStringWidth:I

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mEndDataWallTime:J

.field mEndWallTime:J

.field mFlashlightOnLabel:Ljava/lang/String;

.field mFlashlightOnOffset:I

.field final mFlashlightOnPaint:Landroid/graphics/Paint;

.field final mFlashlightOnPath:Landroid/graphics/Path;

.field mGpsOnLabel:Ljava/lang/String;

.field mGpsOnOffset:I

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveCamera:Z

.field mHaveFlashlight:Z

.field mHaveGps:Z

.field mHavePhoneSignal:Z

.field mHaveWifi:Z

.field mHeaderHeight:I

.field mHeaderTextAscent:I

.field mHeaderTextDescent:I

.field final mHeaderTextPaint:Landroid/text/TextPaint;

.field mHistStart:J

.field mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

.field mLargeMode:Z

.field mLastHeight:I

.field mLastWidth:I

.field mLevelBottom:I

.field mLevelLeft:I

.field mLevelOffset:I

.field mLevelRight:I

.field mLevelTop:I

.field mLineWidth:I

.field mMaxPercentLabelString:Ljava/lang/String;

.field mMaxPercentLabelStringWidth:I

.field mMinPercentLabelString:Ljava/lang/String;

.field mMinPercentLabelStringWidth:I

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field mScreenOnLabel:Ljava/lang/String;

.field mScreenOnOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field mStartWallTime:J

.field mStats:Landroid/os/BatteryStats;

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field mThinLineWidth:I

.field final mTimeLabels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;",
            ">;"
        }
    .end annotation
.end field

.field final mTimeRemainPaint:Landroid/graphics/Paint;

.field final mTimeRemainPath:Landroid/graphics/Path;

.field mWifiRunningLabel:Ljava/lang/String;

.field mWifiRunningOffset:I

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 354
    invoke-direct/range {p0 .. p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 126
    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    .line 127
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    .line 128
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    .line 129
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    .line 130
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    .line 131
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    .line 132
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    .line 133
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    .line 134
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    .line 135
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    .line 136
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    .line 137
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    .line 138
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    .line 139
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    .line 140
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 141
    new-instance v2, Landroid/text/TextPaint;

    invoke-direct {v2, v3}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    .line 142
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    .line 144
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 145
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    .line 146
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    .line 147
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    .line 148
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    .line 149
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    .line 150
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    .line 151
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    .line 152
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    .line 153
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    .line 154
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    .line 155
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    .line 156
    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    .line 196
    const/4 v2, -0x1

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 197
    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 230
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    .line 358
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0056    # @android:integer/config_lowMemoryKillerMinFreeKbytesAbsolute

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    .line 360
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v4, 0x10e0025    # @android:integer/config_criticalBatteryWarningLevel

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    .line 363
    nop

    .line 364
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    .line 363
    const/high16 v4, 0x40000000    # 2.0f

    invoke-static {v3, v4, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v2

    float-to-int v2, v2

    iput v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    .line 366
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 367
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 368
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 369
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    const/16 v5, 0x80

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 370
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 371
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v5, v5, v5, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 372
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v7, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v7}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 373
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v7, 0xc0

    invoke-virtual {v4, v7, v5, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 374
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 375
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    const v5, -0x312845

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 376
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 377
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 384
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v5, Lcom/android/settings/Utils;->BADNESS_COLORS:[I

    invoke-virtual {v4, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 385
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/16 v5, 0xff

    invoke-virtual {v4, v5, v5, v6, v6}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 386
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 387
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 391
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 393
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v4, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 395
    sget-object v2, Lcom/android/settings/R$styleable;->BatteryHistoryChart:[I

    .line 396
    move-object/from16 v4, p2

    invoke-virtual {v1, v4, v2, v6, v6}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 399
    new-instance v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 400
    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 401
    invoke-virtual {v4, v1, v2, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 402
    const/16 v7, 0xc

    invoke-virtual {v5, v1, v2, v7}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->retrieve(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 404
    nop

    .line 405
    nop

    .line 407
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v7

    .line 408
    const/4 v8, 0x0

    move v9, v6

    move v10, v9

    move v11, v8

    move v12, v11

    move v13, v12

    :goto_0
    if-ge v9, v7, :cond_0

    .line 409
    invoke-virtual {v2, v9}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v14

    .line 411
    packed-switch v14, :pswitch_data_0

    goto/16 :goto_1

    .line 464
    :pswitch_0
    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    iput v14, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    goto/16 :goto_1

    .line 449
    :pswitch_1
    iget-object v15, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    invoke-virtual {v15, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 452
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 453
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 454
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 455
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v15

    invoke-virtual {v3, v15}, Landroid/graphics/Paint;->setColor(I)V

    .line 456
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 457
    goto/16 :goto_1

    .line 460
    :pswitch_2
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v14

    invoke-virtual {v3, v14}, Landroid/graphics/Paint;->setColor(I)V

    .line 461
    goto :goto_1

    .line 425
    :pswitch_3
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 426
    nop

    .line 408
    move v11, v3

    goto :goto_1

    .line 421
    :pswitch_4
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 422
    nop

    .line 408
    move v13, v3

    goto :goto_1

    .line 417
    :pswitch_5
    invoke-virtual {v2, v14, v8}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v3

    .line 418
    nop

    .line 408
    move v12, v3

    goto :goto_1

    .line 413
    :pswitch_6
    invoke-virtual {v2, v14, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    .line 414
    nop

    .line 408
    move v10, v3

    goto :goto_1

    .line 429
    :pswitch_7
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 430
    invoke-virtual {v2, v14}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textColor:Landroid/content/res/ColorStateList;

    .line 431
    goto :goto_1

    .line 444
    :pswitch_8
    iget v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 445
    iget v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->styleIndex:I

    .line 446
    goto :goto_1

    .line 439
    :pswitch_9
    iget v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 440
    iget v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    iput v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->typefaceIndex:I

    .line 441
    goto :goto_1

    .line 434
    :pswitch_a
    iget v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v4, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 435
    iget v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v2, v14, v3}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v3

    iput v3, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 436
    nop

    .line 408
    :goto_1
    add-int/lit8 v9, v9, 0x1

    const/4 v3, 0x1

    goto/16 :goto_0

    .line 469
    :cond_0
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    .line 471
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 472
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v5, v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TextAttrs;->apply(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 474
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 475
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 476
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    const/4 v2, 0x2

    div-int/lit8 v3, v1, 0x2

    .line 477
    const/4 v1, 0x1

    if-ge v3, v1, :cond_1

    .line 478
    nop

    .line 480
    const/4 v3, 0x1

    :cond_1
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    int-to-float v3, v3

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 481
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    new-instance v3, Landroid/graphics/DashPathEffect;

    new-array v4, v2, [F

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/2addr v5, v2

    int-to-float v5, v5

    aput v5, v4, v6

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/2addr v5, v2

    int-to-float v2, v5

    const/4 v5, 0x1

    aput v2, v4, v5

    invoke-direct {v3, v4, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 484
    if-eqz v10, :cond_2

    .line 485
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1, v11, v12, v13, v10}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 486
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v11, v12, v13, v10}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 488
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private is24Hour()Z
    .locals 1

    .line 651
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private isDayFirst()Z
    .locals 3

    .line 655
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 656
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Llibcore/icu/LocaleData;->getDateFormat(I)Ljava/lang/String;

    move-result-object v0

    .line 657
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v1, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method addDateLabel(Ljava/util/Calendar;IIZ)V
    .locals 9

    .line 1117
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1118
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v2, v0

    .line 1119
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1120
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sub-int/2addr p3, p2

    int-to-long v0, p3

    mul-long/2addr v7, v0

    div-long/2addr v7, v2

    long-to-int p3, v7

    add-int/2addr p2, p3

    invoke-direct {v5, v6, p2, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    .line 1119
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1123
    return-void
.end method

.method addTimeLabel(Ljava/util/Calendar;IIZ)V
    .locals 9

    .line 1108
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 1109
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v2, v0

    .line 1110
    iget-object v4, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    .line 1111
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v0

    sub-int/2addr p3, p2

    int-to-long v0, p3

    mul-long/2addr v7, v0

    div-long/2addr v7, v2

    long-to-int p3, v7

    add-int/2addr p2, p3

    invoke-direct {v5, v6, p2, p1, p4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    .line 1110
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1114
    return-void
.end method

.method drawChart(Landroid/graphics/Canvas;II)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move/from16 v8, p2

    .line 1153
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v10

    .line 1154
    if-eqz v10, :cond_0

    .line 1155
    move v12, v8

    goto :goto_0

    .line 1154
    :cond_0
    nop

    .line 1155
    const/4 v12, 0x0

    :goto_0
    if-eqz v10, :cond_1

    .line 1156
    const/4 v13, 0x0

    goto :goto_1

    :cond_1
    move v13, v8

    :goto_1
    if-eqz v10, :cond_2

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    .line 1157
    :goto_2
    move-object v14, v1

    goto :goto_3

    .line 1156
    :cond_2
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    goto :goto_2

    .line 1157
    :goto_3
    if-eqz v10, :cond_3

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    .line 1164
    :goto_4
    move-object v15, v1

    goto :goto_5

    .line 1157
    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    goto :goto_4

    .line 1164
    :goto_5
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1165
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 1167
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1169
    :cond_4
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v6, 0x1

    if-le v1, v6, :cond_c

    .line 1170
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int v5, v1, v2

    .line 1171
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    add-int v4, v1, v2

    .line 1172
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1173
    nop

    .line 1174
    const/4 v3, 0x0

    const/16 v16, 0x0

    :goto_6
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v3, v1, :cond_b

    .line 1175
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1176
    if-nez v3, :cond_6

    .line 1177
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v6, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v6, v6, 0x2

    sub-int/2addr v1, v6

    .line 1178
    if-gez v1, :cond_5

    .line 1179
    nop

    .line 1182
    const/4 v6, 0x0

    goto :goto_7

    :cond_5
    move v6, v1

    :goto_7
    iget-object v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v11, v6

    move/from16 v18, v3

    int-to-float v3, v5

    move/from16 v19, v5

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v11, v3, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1183
    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v3, v1

    int-to-float v5, v4

    iget v1, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v11, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v4

    int-to-float v1, v1

    move/from16 v20, v6

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move/from16 v16, v1

    move-object v1, v7

    move-object v9, v2

    move v2, v3

    move/from16 v21, v13

    move/from16 v13, v18

    move v3, v5

    move v5, v4

    move v4, v11

    move-object/from16 v22, v15

    move/from16 v11, v19

    move v15, v5

    move/from16 v5, v16

    move/from16 v16, v20

    const/16 v17, 0x1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1184
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v6, v16, v1

    .line 1185
    nop

    .line 1174
    :goto_8
    move/from16 v16, v6

    goto/16 :goto_9

    .line 1185
    :cond_6
    move-object v9, v2

    move v11, v5

    move/from16 v17, v6

    move/from16 v21, v13

    move-object/from16 v22, v15

    move v13, v3

    move v15, v4

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v13, v1, :cond_9

    .line 1186
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v6, v1, v2

    .line 1187
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int v1, v16, v1

    if-ge v6, v1, :cond_7

    .line 1188
    goto :goto_9

    .line 1190
    :cond_7
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1191
    iget v1, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, v8, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    if-le v6, v1, :cond_8

    .line 1192
    goto :goto_9

    .line 1195
    :cond_8
    iget-object v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v6

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1196
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    int-to-float v3, v15

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v16, v1

    move-object v1, v7

    move/from16 v18, v6

    move-object/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1197
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v6, v18, v1

    .line 1198
    goto :goto_8

    .line 1199
    :cond_9
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1200
    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v2, v1

    if-lt v2, v8, :cond_a

    .line 1201
    add-int/lit8 v1, v8, -0x1

    iget v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int/2addr v1, v2

    .line 1204
    :cond_a
    iget-object v2, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v3, v11

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1205
    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    int-to-float v3, v15

    iget v1, v9, Lcom/android/settings/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v15

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1174
    :goto_9
    add-int/lit8 v3, v13, 0x1

    move v5, v11

    move v4, v15

    move/from16 v6, v17

    move/from16 v13, v21

    move-object/from16 v15, v22

    goto/16 :goto_6

    .line 1208
    :cond_b
    move/from16 v17, v6

    move/from16 v21, v13

    move-object/from16 v22, v15

    goto :goto_a

    :cond_c
    move/from16 v17, v6

    move/from16 v21, v13

    move-object/from16 v22, v15

    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    if-eqz v1, :cond_d

    .line 1209
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1210
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1211
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1216
    :cond_d
    :goto_a
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    neg-int v1, v1

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int/2addr v1, v2

    .line 1217
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1219
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    int-to-float v3, v12

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1221
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    div-int/lit8 v2, v2, 0x2

    .line 1222
    if-eqz v10, :cond_e

    neg-int v2, v2

    .line 1223
    :cond_e
    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    sub-int v4, v8, v4

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    .line 1224
    if-eqz v10, :cond_f

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    goto :goto_b

    :cond_f
    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    :goto_b
    add-int/2addr v4, v5

    .line 1226
    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    sub-int/2addr v4, v2

    int-to-float v2, v4

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v2, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1228
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    move-object/from16 v4, v22

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1230
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    move/from16 v11, v21

    int-to-float v4, v11

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v2, v4, v1, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1232
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_10

    .line 1234
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1236
    :cond_10
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1238
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1240
    :cond_11
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1242
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1244
    :cond_12
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_13

    .line 1246
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v1, p3, v1

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v1, v4

    .line 1247
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    invoke-virtual {v4, v7, v1, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    .line 1249
    :cond_13
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1251
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1253
    :cond_14
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1255
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1257
    :cond_15
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v1, :cond_16

    .line 1258
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_16

    .line 1260
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1263
    :cond_16
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v1, :cond_17

    .line 1264
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_17

    .line 1266
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1269
    :cond_17
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v1, :cond_18

    .line 1270
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_18

    .line 1272
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1275
    :cond_18
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v1, :cond_19

    .line 1276
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_19

    .line 1278
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1281
    :cond_19
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1a

    .line 1283
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v4}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1286
    :cond_1a
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_20

    .line 1288
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    .line 1289
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v4, v14}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1290
    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v4, :cond_1b

    .line 1291
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1294
    :cond_1b
    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v4, :cond_1c

    .line 1295
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1298
    :cond_1c
    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v4, :cond_1d

    .line 1299
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1302
    :cond_1d
    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v4, :cond_1e

    .line 1303
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1306
    :cond_1e
    iget-boolean v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v4, :cond_1f

    .line 1307
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1310
    :cond_1f
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1312
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v5, p3, v5

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v5, v6

    int-to-float v5, v5

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v5, v6}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1314
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnLabel:Ljava/lang/String;

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v2, p3, v5

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    sub-int/2addr v2, v5

    int-to-float v2, v2

    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v4, v3, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1316
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1319
    :cond_20
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1321
    iget-boolean v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_21

    .line 1322
    const/4 v9, 0x0

    :goto_c
    const/16 v1, 0xa

    if-ge v9, v1, :cond_21

    .line 1323
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v3, v4

    mul-int/2addr v3, v9

    div-int/2addr v3, v1

    add-int/2addr v2, v3

    .line 1324
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v5, v2

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v1, v2

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    int-to-float v4, v1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, v7

    move v2, v3

    move v3, v5

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1322
    add-int/lit8 v9, v9, 0x1

    goto :goto_c

    .line 1330
    :cond_21
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    const/4 v2, 0x0

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1331
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1334
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    int-to-float v4, v8

    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v1, v7

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1337
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_24

    .line 1338
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    add-int/2addr v1, v2

    .line 1339
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 1340
    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 1341
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1342
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    :goto_d
    if-ltz v4, :cond_24

    .line 1343
    iget-object v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1344
    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int/2addr v6, v8

    .line 1345
    iget v8, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    .line 1346
    iget v9, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int/2addr v9, v8

    if-lt v9, v3, :cond_22

    .line 1347
    iget v6, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v8, v8, 0x2

    sub-int/2addr v6, v8

    iget v8, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int v8, v6, v8

    .line 1348
    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    sub-int v6, v8, v6

    .line 1349
    if-lt v6, v3, :cond_22

    .line 1351
    goto :goto_e

    .line 1354
    :cond_22
    iget v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    if-ge v6, v9, :cond_23

    .line 1356
    goto :goto_e

    .line 1358
    :cond_23
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    invoke-virtual {v6}, Landroid/graphics/Path;->reset()V

    .line 1359
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v9, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v9, v9

    int-to-float v10, v1

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1360
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget v9, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v9, v9

    int-to-float v10, v2

    invoke-virtual {v6, v9, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1361
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePath:Landroid/graphics/Path;

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v7, v6, v9}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1362
    iget-object v5, v5, Lcom/android/settings/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    int-to-float v6, v8

    iget v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int v8, v1, v8

    int-to-float v8, v8

    iget-object v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v6, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1342
    :goto_e
    add-int/lit8 v4, v4, -0x1

    goto :goto_d

    .line 1365
    :cond_24
    return-void
.end method

.method finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V
    .locals 9

    move-object v0, p0

    move v1, p1

    move v4, p5

    move-object v5, p6

    move/from16 v6, p7

    .line 612
    move-object/from16 v7, p15

    if-eqz v5, :cond_2

    .line 613
    if-ltz v6, :cond_1

    if-ge v6, v1, :cond_1

    .line 614
    if-eqz v7, :cond_0

    .line 615
    int-to-float v6, v1

    int-to-float v8, v4

    invoke-virtual {v7, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 617
    :cond_0
    int-to-float v6, v1

    int-to-float v4, v4

    invoke-virtual {v5, v6, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 619
    :cond_1
    int-to-float v4, v1

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v6, p3

    int-to-float v6, v6

    invoke-virtual {v5, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 620
    move v4, p4

    int-to-float v4, v4

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int/2addr v6, p3

    int-to-float v3, v6

    invoke-virtual {v5, v4, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 621
    invoke-virtual {v5}, Landroid/graphics/Path;->close()V

    .line 624
    :cond_2
    if-eqz p8, :cond_3

    .line 625
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 627
    :cond_3
    if-eqz p9, :cond_4

    .line 628
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 630
    :cond_4
    if-eqz p10, :cond_5

    .line 631
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 633
    :cond_5
    if-eqz p11, :cond_6

    .line 634
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 636
    :cond_6
    if-eqz p12, :cond_7

    .line 637
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 639
    :cond_7
    if-eqz p13, :cond_8

    .line 640
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v5, p2, v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 642
    :cond_8
    if-eqz p14, :cond_9

    .line 643
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v4, v1

    iget v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v2, p2, v5

    int-to-float v2, v2

    invoke-virtual {v3, v4, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 645
    :cond_9
    iget-boolean v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_a

    .line 646
    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->finish(I)V

    .line 648
    :cond_a
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .line 1127
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v0

    .line 1130
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v1

    .line 1136
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->drawChart(Landroid/graphics/Canvas;II)V

    .line 1137
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 592
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    .line 593
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMinPercentLabelStringWidth:I

    .line 594
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDrainStringWidth:I

    .line 595
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 596
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 595
    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeLabelStringWidth:I

    .line 597
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargeDurationStringWidth:I

    .line 598
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    .line 599
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    .line 600
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    .line 601
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    .line 602
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextDescent:I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderTextAscent:I

    sub-int/2addr v0, v1

    .line 603
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    .line 604
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result p1

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    add-int/2addr v0, v1

    .line 605
    invoke-static {v0, p2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result p2

    .line 604
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 606
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 65

    move-object/from16 v15, p0

    move/from16 v14, p1

    move/from16 v13, p2

    .line 662
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 666
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-ne v0, v14, :cond_0

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-ne v0, v13, :cond_0

    .line 667
    return-void

    .line 670
    :cond_0
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    if-eqz v0, :cond_48

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    if-nez v0, :cond_1

    goto/16 :goto_32

    .line 676
    :cond_1
    iput v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastWidth:I

    .line 677
    iput v13, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLastHeight:I

    .line 678
    const/4 v12, 0x0

    iput-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 679
    iput-object v12, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 681
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    sub-int/2addr v0, v1

    .line 682
    mul-int/lit8 v1, v0, 0xa

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChartMinHeight:I

    add-int/2addr v1, v2

    const/4 v11, 0x1

    const/4 v10, 0x0

    if-le v13, v1, :cond_3

    .line 683
    iput-boolean v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 684
    mul-int/lit8 v1, v0, 0xf

    if-le v13, v1, :cond_2

    .line 686
    div-int/lit8 v1, v0, 0x2

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto :goto_0

    .line 689
    :cond_2
    div-int/lit8 v1, v0, 0x3

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    goto :goto_0

    .line 692
    :cond_3
    iput-boolean v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    .line 693
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 695
    :goto_0
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    if-gtz v1, :cond_4

    iput v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    .line 697
    :cond_4
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHeaderHeight:I

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .line 698
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mMaxPercentLabelStringWidth:I

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    const/4 v9, 0x3

    mul-int/2addr v2, v9

    add-int/2addr v1, v2

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 699
    iput v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    .line 700
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-int v8, v1, v2

    .line 702
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 703
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 704
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 705
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 706
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 707
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 708
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 709
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 710
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 711
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 712
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPaint:Landroid/graphics/Paint;

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 713
    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDebugRectPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 715
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    add-int/2addr v0, v1

    .line 717
    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    const/4 v7, 0x2

    if-eqz v1, :cond_a

    .line 718
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    .line 719
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    add-int/2addr v1, v0

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 720
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    add-int/2addr v1, v0

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    .line 721
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    add-int/2addr v1, v0

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    .line 722
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveWifi:Z

    if-eqz v2, :cond_5

    move v2, v0

    goto :goto_1

    :cond_5
    move v2, v10

    :goto_1
    add-int/2addr v1, v2

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    .line 723
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveGps:Z

    if-eqz v2, :cond_6

    move v2, v0

    goto :goto_2

    :cond_6
    move v2, v10

    :goto_2
    add-int/2addr v1, v2

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    .line 724
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveFlashlight:Z

    if-eqz v2, :cond_7

    move v2, v0

    goto :goto_3

    :cond_7
    move v2, v10

    :goto_3
    add-int/2addr v1, v2

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    .line 725
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHaveCamera:Z

    if-eqz v2, :cond_8

    move v2, v0

    goto :goto_4

    :cond_8
    move v2, v10

    :goto_4
    add-int/2addr v1, v2

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    .line 726
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iget-boolean v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v2, :cond_9

    goto :goto_5

    :cond_9
    move v0, v10

    :goto_5
    add-int/2addr v1, v0

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    mul-int/2addr v0, v7

    add-int/2addr v1, v0

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/2addr v0, v7

    add-int/2addr v1, v0

    iput v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 728
    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_b

    .line 729
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v14}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto :goto_6

    .line 732
    :cond_a
    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    iput v10, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    .line 735
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    mul-int/lit8 v1, v1, 0x4

    add-int/2addr v0, v1

    iput v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    .line 736
    iget-boolean v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v0, :cond_b

    .line 737
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 741
    :cond_b
    :goto_6
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 742
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 743
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 744
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 745
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 746
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 747
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 748
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 749
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 750
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 751
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 752
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 754
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 755
    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDateLabels:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 757
    iget-wide v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 758
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    cmp-long v0, v0, v5

    if-lez v0, :cond_c

    .line 759
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    sub-long/2addr v0, v5

    .line 760
    :goto_7
    move-wide/from16 v16, v0

    goto :goto_8

    .line 759
    :cond_c
    const-wide/16 v0, 0x1

    goto :goto_7

    .line 760
    :goto_8
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    .line 761
    nop

    .line 763
    iget v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    .line 764
    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    sub-int v18, v2, v3

    .line 766
    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelOffset:I

    sub-int v2, v13, v2

    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int v19, v2, v3

    .line 767
    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v2, v2, v19

    iput v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .line 769
    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 770
    nop

    .line 771
    nop

    .line 772
    nop

    .line 773
    nop

    .line 774
    nop

    .line 775
    nop

    .line 776
    nop

    .line 777
    iget v7, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    .line 778
    iget-wide v11, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    iget-wide v9, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v9, v11, v9

    const-wide/16 v25, 0x0

    const/16 v27, -0x1

    if-lez v9, :cond_37

    iget-object v9, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v9}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v9

    if-eqz v9, :cond_37

    .line 779
    new-instance v11, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v11}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 780
    move-wide/from16 v34, v0

    move/from16 v38, v2

    move/from16 v28, v3

    move-wide/from16 v36, v25

    move/from16 v3, v27

    move v9, v3

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v10, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    const/16 v39, 0x0

    const/16 v40, 0x0

    :goto_9
    move/from16 v41, v0

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0, v11}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    if-eqz v0, :cond_36

    if-ge v10, v7, :cond_36

    .line 781
    invoke-virtual {v11}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v0

    if-eqz v0, :cond_30

    .line 782
    move/from16 v42, v1

    iget-wide v0, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v0, v0, v36

    add-long v34, v34, v0

    .line 783
    iget-wide v0, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 784
    move-wide/from16 v43, v0

    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    sub-long v36, v34, v5

    move-wide/from16 v45, v5

    int-to-long v5, v8

    mul-long v36, v36, v5

    div-long v5, v36, v16

    long-to-int v1, v5

    add-int/2addr v0, v1

    .line 785
    if-gez v0, :cond_d

    .line 786
    nop

    .line 798
    const/4 v0, 0x0

    :cond_d
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v1, v1, v19

    iget-byte v5, v11, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int/2addr v5, v4

    add-int/lit8 v6, v19, -0x1

    mul-int/2addr v5, v6

    div-int v5, v5, v18

    sub-int/2addr v1, v5

    .line 800
    if-eq v9, v0, :cond_15

    .line 802
    if-eq v3, v1, :cond_15

    .line 805
    iget-byte v3, v11, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 806
    iget v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    if-gt v3, v5, :cond_e

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    goto :goto_a

    .line 807
    :cond_e
    iget v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    if-gt v3, v5, :cond_f

    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    goto :goto_a

    .line 808
    :cond_f
    nop

    .line 810
    const/4 v3, 0x0

    :goto_a
    if-eq v3, v12, :cond_12

    .line 811
    if-eqz v12, :cond_10

    .line 812
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v12, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 814
    :cond_10
    if-eqz v3, :cond_11

    .line 815
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 817
    :cond_11
    nop

    .line 822
    move-object v12, v3

    goto :goto_b

    .line 818
    :cond_12
    if-eqz v3, :cond_13

    .line 819
    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 822
    :cond_13
    :goto_b
    if-nez v14, :cond_14

    .line 823
    iget-object v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 824
    int-to-float v3, v0

    int-to-float v5, v1

    invoke-virtual {v14, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 825
    nop

    .line 829
    move/from16 v28, v0

    goto :goto_c

    .line 827
    :cond_14
    int-to-float v3, v0

    int-to-float v5, v1

    invoke-virtual {v14, v3, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 829
    :goto_c
    nop

    .line 830
    nop

    .line 834
    move v9, v0

    goto :goto_d

    :cond_15
    move v1, v3

    :goto_d
    move-object v3, v12

    move-object v12, v14

    iget-boolean v5, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v5, :cond_2f

    .line 835
    iget v5, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x80000

    and-int/2addr v5, v6

    if-eqz v5, :cond_16

    .line 837
    const/4 v5, 0x1

    goto :goto_e

    .line 835
    :cond_16
    nop

    .line 837
    const/4 v5, 0x0

    :goto_e
    if-eq v5, v2, :cond_18

    .line 838
    if-eqz v5, :cond_17

    .line 839
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v0

    iget v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v14, v13, v14

    int-to-float v14, v14

    invoke-virtual {v2, v6, v14}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_f

    .line 841
    :cond_17
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingPath:Landroid/graphics/Path;

    int-to-float v6, v0

    iget v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mChargingOffset:I

    sub-int v14, v13, v14

    int-to-float v14, v14

    invoke-virtual {v2, v6, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 843
    :goto_f
    nop

    .line 846
    move v2, v5

    :cond_18
    iget v5, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x100000

    and-int/2addr v5, v6

    if-eqz v5, :cond_19

    .line 848
    const/4 v5, 0x1

    goto :goto_10

    .line 846
    :cond_19
    nop

    .line 848
    const/4 v5, 0x0

    :goto_10
    move/from16 v6, v42

    if-eq v5, v6, :cond_1b

    .line 849
    if-eqz v5, :cond_1a

    .line 850
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v14, v0

    move/from16 v47, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    invoke-virtual {v6, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_11

    .line 852
    :cond_1a
    move/from16 v47, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnPath:Landroid/graphics/Path;

    int-to-float v6, v0

    iget v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mScreenOnOffset:I

    sub-int v14, v13, v14

    int-to-float v14, v14

    invoke-virtual {v1, v6, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 854
    :goto_11
    goto :goto_12

    .line 857
    :cond_1b
    move/from16 v47, v1

    move v5, v6

    :goto_12
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x20000000

    and-int/2addr v1, v6

    if-eqz v1, :cond_1c

    .line 859
    const/4 v1, 0x1

    goto :goto_13

    .line 857
    :cond_1c
    nop

    .line 859
    const/4 v1, 0x0

    :goto_13
    move/from16 v14, v41

    if-eq v1, v14, :cond_1e

    .line 860
    if-eqz v1, :cond_1d

    .line 861
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v14, v0

    move/from16 v48, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    invoke-virtual {v6, v14, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_14

    .line 863
    :cond_1d
    move/from16 v48, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnPath:Landroid/graphics/Path;

    int-to-float v6, v0

    iget v14, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mGpsOnOffset:I

    sub-int v14, v13, v14

    int-to-float v14, v14

    invoke-virtual {v1, v6, v14}, Landroid/graphics/Path;->lineTo(FF)V

    .line 865
    :goto_14
    nop

    .line 868
    move/from16 v14, v48

    :cond_1e
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v6, 0x8000000

    and-int/2addr v1, v6

    if-eqz v1, :cond_1f

    .line 870
    const/4 v1, 0x1

    goto :goto_15

    .line 868
    :cond_1f
    nop

    .line 870
    const/4 v1, 0x0

    :goto_15
    move/from16 v6, v33

    if-eq v1, v6, :cond_21

    .line 871
    if-eqz v1, :cond_20

    .line 872
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    move/from16 v49, v1

    int-to-float v1, v0

    move/from16 v50, v2

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_16

    .line 874
    :cond_20
    move/from16 v49, v1

    move/from16 v50, v2

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnPath:Landroid/graphics/Path;

    int-to-float v2, v0

    iget v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mFlashlightOnOffset:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 876
    :goto_16
    goto :goto_17

    .line 879
    :cond_21
    move/from16 v50, v2

    move/from16 v49, v6

    :goto_17
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states2:I

    const/high16 v2, 0x200000

    and-int/2addr v1, v2

    if-eqz v1, :cond_22

    .line 881
    const/4 v1, 0x1

    goto :goto_18

    .line 879
    :cond_22
    nop

    .line 881
    const/4 v1, 0x0

    :goto_18
    move/from16 v6, v32

    if-eq v1, v6, :cond_24

    .line 882
    if-eqz v1, :cond_23

    .line 883
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v2, v0

    move/from16 v51, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    invoke-virtual {v6, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_19

    .line 885
    :cond_23
    move/from16 v51, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnPath:Landroid/graphics/Path;

    int-to-float v2, v0

    iget v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCameraOnOffset:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 887
    :goto_19
    goto :goto_1a

    .line 890
    :cond_24
    move/from16 v51, v6

    :goto_1a
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v1, v1, 0xf

    const/16 v23, 0x0

    shr-int/lit8 v1, v1, 0x0

    .line 894
    move/from16 v2, v40

    if-eq v2, v1, :cond_25

    .line 895
    nop

    .line 896
    packed-switch v1, :pswitch_data_0

    packed-switch v1, :pswitch_data_1

    .line 906
    nop

    .line 907
    nop

    .line 912
    const/16 v39, 0x1

    goto :goto_1b

    .line 903
    :pswitch_0
    nop

    .line 904
    nop

    .line 912
    move/from16 v39, v23

    goto :goto_1b

    .line 910
    :cond_25
    nop

    .line 912
    move v1, v2

    :goto_1b
    iget v2, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x18010000

    and-int/2addr v2, v6

    if-eqz v2, :cond_26

    .line 915
    nop

    .line 917
    const/4 v2, 0x1

    goto :goto_1c

    :cond_26
    move/from16 v2, v39

    :goto_1c
    move/from16 v6, v30

    if-eq v2, v6, :cond_28

    .line 918
    if-eqz v2, :cond_27

    .line 919
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    move/from16 v52, v1

    int-to-float v1, v0

    move/from16 v53, v2

    iget v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v2, v13, v2

    int-to-float v2, v2

    invoke-virtual {v6, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1d

    .line 921
    :cond_27
    move/from16 v52, v1

    move/from16 v53, v2

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningPath:Landroid/graphics/Path;

    int-to-float v2, v0

    iget v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mWifiRunningOffset:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 923
    :goto_1d
    nop

    .line 926
    move/from16 v30, v53

    goto :goto_1e

    :cond_28
    move/from16 v52, v1

    move/from16 v30, v6

    :goto_1e
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v2, -0x80000000

    and-int/2addr v1, v2

    if-eqz v1, :cond_29

    .line 928
    const/4 v1, 0x1

    goto :goto_1f

    .line 926
    :cond_29
    nop

    .line 928
    move/from16 v1, v23

    :goto_1f
    move/from16 v2, v31

    if-eq v1, v2, :cond_2b

    .line 929
    if-eqz v1, :cond_2a

    .line 930
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v6, v0

    move/from16 v54, v1

    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v1, v13, v1

    int-to-float v1, v1

    invoke-virtual {v2, v6, v1}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_20

    .line 932
    :cond_2a
    move/from16 v54, v1

    iget-object v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningPath:Landroid/graphics/Path;

    int-to-float v2, v0

    iget v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mCpuRunningOffset:I

    sub-int v6, v13, v6

    int-to-float v6, v6

    invoke-virtual {v1, v2, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 934
    :goto_20
    nop

    .line 937
    move/from16 v2, v54

    :cond_2b
    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLargeMode:Z

    if-eqz v1, :cond_2e

    iget-boolean v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHavePhoneSignal:Z

    if-eqz v1, :cond_2e

    .line 939
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v1, v1, 0x1c0

    const/4 v6, 0x6

    shr-int/2addr v1, v6

    const/4 v6, 0x3

    if-ne v1, v6, :cond_2c

    .line 942
    nop

    .line 950
    move/from16 v1, v23

    :goto_21
    const/16 v20, 0x2

    const/16 v24, 0x3

    goto :goto_22

    .line 943
    :cond_2c
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v6, 0x200000

    and-int/2addr v1, v6

    if-eqz v1, :cond_2d

    .line 944
    nop

    .line 950
    const/4 v1, 0x1

    goto :goto_21

    .line 946
    :cond_2d
    iget v1, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v1, v1, 0x38

    const/16 v24, 0x3

    shr-int/lit8 v1, v1, 0x3

    .line 948
    const/16 v20, 0x2

    add-int/lit8 v1, v1, 0x2

    .line 950
    :goto_22
    iget-object v6, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v6, v0, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->addTick(II)V

    goto :goto_23

    .line 952
    :cond_2e
    const/16 v20, 0x2

    const/16 v24, 0x3

    .line 982
    :goto_23
    move/from16 v38, v0

    move/from16 v31, v2

    move v1, v5

    move/from16 v20, v7

    move/from16 v59, v8

    move/from16 v23, v10

    move-object/from16 v22, v11

    move v0, v14

    move-wide/from16 v36, v43

    move-wide/from16 v44, v45

    move/from16 v33, v49

    move/from16 v2, v50

    move/from16 v32, v51

    move/from16 v40, v52

    move/from16 v43, v4

    move-object v14, v12

    move-object v12, v3

    move/from16 v3, v47

    goto/16 :goto_28

    :cond_2f
    move/from16 v47, v1

    move/from16 v14, v41

    move/from16 v6, v42

    const/16 v20, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x3

    move/from16 v64, v32

    move/from16 v32, v30

    move/from16 v30, v33

    move/from16 v33, v31

    move/from16 v31, v64

    move/from16 v38, v0

    move v1, v6

    move/from16 v20, v7

    move/from16 v59, v8

    move/from16 v23, v10

    move-object/from16 v22, v11

    move v0, v14

    move-wide/from16 v36, v43

    move-wide/from16 v44, v45

    move/from16 v43, v4

    move-object v14, v12

    move-object v12, v3

    move/from16 v3, v47

    :goto_24
    move/from16 v64, v33

    move/from16 v33, v30

    move/from16 v30, v32

    move/from16 v32, v31

    move/from16 v31, v64

    goto/16 :goto_28

    .line 955
    :cond_30
    move-wide/from16 v45, v5

    move/from16 v0, v41

    const/16 v20, 0x2

    const/16 v23, 0x0

    const/16 v24, 0x3

    move v6, v1

    move/from16 v64, v32

    move/from16 v32, v30

    move/from16 v30, v33

    move/from16 v33, v31

    move/from16 v31, v64

    .line 956
    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x5

    if-eq v1, v5, :cond_32

    iget-byte v1, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v1, v5, :cond_31

    goto :goto_25

    .line 966
    :cond_31
    move/from16 v55, v0

    move/from16 v56, v2

    move/from16 v57, v3

    move/from16 v58, v4

    move-wide/from16 v41, v36

    move-wide/from16 v36, v34

    goto :goto_27

    .line 958
    :cond_32
    :goto_25
    move/from16 v55, v0

    iget-wide v0, v11, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move/from16 v56, v2

    move/from16 v57, v3

    iget-wide v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_33

    .line 959
    iget-wide v0, v11, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 963
    move/from16 v58, v4

    goto :goto_26

    .line 961
    :cond_33
    iget-wide v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    iget-wide v2, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    move/from16 v58, v4

    iget-wide v4, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    .line 963
    :goto_26
    iget-wide v2, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 966
    move-wide/from16 v36, v0

    move-wide/from16 v41, v2

    :goto_27
    iget-byte v0, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x6

    if-eq v0, v5, :cond_35

    iget-byte v0, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v1, 0x5

    if-ne v0, v1, :cond_34

    sub-long v0, v34, v36

    .line 968
    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_35

    .line 969
    :cond_34
    if-eqz v14, :cond_35

    .line 970
    add-int/lit8 v1, v38, 0x1

    move/from16 v29, v55

    move-object v0, v15

    move/from16 v34, v6

    move/from16 v35, v56

    move v2, v13

    move/from16 v6, v57

    move/from16 v3, v19

    move/from16 v43, v58

    move/from16 v4, v28

    move-wide/from16 v44, v45

    move/from16 v46, v5

    move v5, v6

    move-object v6, v14

    move/from16 v14, v20

    move/from16 v20, v7

    move v7, v9

    move v9, v8

    move/from16 v8, v35

    move/from16 v59, v9

    move/from16 v9, v34

    move/from16 v23, v10

    move/from16 v10, v29

    move-object/from16 v22, v11

    move/from16 v11, v30

    move-object/from16 v21, v12

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v14, v33

    move-object/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 973
    nop

    .line 974
    nop

    .line 975
    nop

    .line 976
    nop

    .line 982
    move/from16 v3, v27

    move v9, v3

    move/from16 v30, v32

    move-wide/from16 v34, v36

    move-wide/from16 v36, v41

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v12, 0x0

    const/4 v14, 0x0

    const/16 v31, 0x0

    const/16 v32, 0x0

    const/16 v33, 0x0

    goto :goto_28

    :cond_35
    move/from16 v34, v6

    move/from16 v20, v7

    move/from16 v59, v8

    move/from16 v23, v10

    move-object/from16 v22, v11

    move-object/from16 v21, v12

    move-wide/from16 v44, v45

    move/from16 v29, v55

    move/from16 v35, v56

    move/from16 v6, v57

    move/from16 v43, v58

    move v3, v6

    move-object/from16 v12, v21

    move/from16 v0, v29

    move/from16 v1, v34

    move/from16 v2, v35

    move-wide/from16 v34, v36

    move-wide/from16 v36, v41

    goto/16 :goto_24

    :goto_28
    add-int/lit8 v10, v23, 0x1

    .line 780
    move/from16 v13, p2

    move/from16 v7, v20

    move-object/from16 v11, v22

    move/from16 v4, v43

    move-wide/from16 v5, v44

    move/from16 v8, v59

    move-object/from16 v15, p0

    goto/16 :goto_9

    .line 984
    :cond_36
    move/from16 v34, v1

    move/from16 v35, v2

    move/from16 v43, v4

    move-wide/from16 v44, v5

    move/from16 v59, v8

    move-object/from16 v21, v12

    move/from16 v29, v41

    move v6, v3

    move/from16 v64, v32

    move/from16 v32, v30

    move/from16 v30, v33

    move/from16 v33, v31

    move/from16 v31, v64

    move-object/from16 v15, p0

    iget-object v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    invoke-virtual {v0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 987
    move/from16 v27, v6

    move-object v0, v14

    move/from16 v4, v28

    move/from16 v10, v29

    move/from16 v11, v30

    move/from16 v12, v31

    move/from16 v13, v32

    move/from16 v14, v33

    move/from16 v8, v35

    goto :goto_29

    :cond_37
    move/from16 v43, v4

    move-wide/from16 v44, v5

    move/from16 v59, v8

    move v4, v3

    move/from16 v9, v27

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/16 v21, 0x0

    const/16 v34, 0x0

    :goto_29
    if-ltz v27, :cond_3a

    if-gez v9, :cond_38

    goto :goto_2a

    .line 1005
    :cond_38
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget-wide v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndDataWallTime:J

    sub-long v2, v2, v44

    move/from16 v5, v59

    int-to-long v5, v5

    mul-long/2addr v2, v5

    div-long v2, v2, v16

    long-to-int v2, v2

    add-int/2addr v1, v2

    .line 1006
    if-gez v1, :cond_39

    .line 1007
    nop

    .line 1011
    move-object v6, v0

    move/from16 v16, v9

    move/from16 v7, v27

    const/4 v9, 0x0

    goto :goto_2d

    :cond_39
    move-object v6, v0

    move/from16 v16, v9

    move/from16 v7, v27

    move v9, v1

    goto :goto_2d

    .line 989
    :cond_3a
    :goto_2a
    iget v0, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    .line 990
    iget v1, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v1, v1, v19

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v2, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    sub-int v2, v2, v43

    add-int/lit8 v3, v19, -0x1

    mul-int/2addr v2, v3

    div-int v2, v2, v18

    sub-int/2addr v1, v2

    .line 992
    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget v2, v2, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    int-to-byte v2, v2

    .line 993
    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalLevel:I

    if-gt v2, v3, :cond_3b

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    goto :goto_2b

    .line 994
    :cond_3b
    iget v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnLevel:I

    if-gt v2, v3, :cond_3c

    iget-object v2, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    goto :goto_2b

    .line 995
    :cond_3c
    nop

    .line 996
    const/4 v2, 0x0

    :goto_2b
    if-eqz v2, :cond_3d

    .line 997
    int-to-float v3, v0

    int-to-float v5, v1

    invoke-virtual {v2, v3, v5}, Landroid/graphics/Path;->moveTo(FF)V

    .line 998
    goto :goto_2c

    .line 1000
    :cond_3d
    move-object/from16 v2, v21

    :goto_2c
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    int-to-float v5, v0

    int-to-float v6, v1

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1001
    iget-object v3, v15, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLevelPath:Landroid/graphics/Path;

    .line 1002
    nop

    .line 1003
    nop

    .line 1011
    move/from16 v16, v0

    move v7, v1

    move-object/from16 v21, v2

    move-object v6, v3

    move/from16 v9, p1

    :goto_2d
    move-object v0, v15

    move v1, v9

    move/from16 v2, p2

    move/from16 v3, v19

    move v5, v7

    move/from16 v60, v7

    move/from16 v7, v16

    move/from16 v61, v9

    move/from16 v9, v34

    move-object/from16 v15, v21

    invoke-virtual/range {v0 .. v15}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->finishPaths(IIIIILandroid/graphics/Path;IZZZZZZZLandroid/graphics/Path;)V

    .line 1015
    move/from16 v1, v61

    move/from16 v0, p1

    if-ge v1, v0, :cond_3f

    .line 1018
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v1, v1

    move/from16 v3, v60

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1019
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v2, v2, v19

    rsub-int/lit8 v3, v43, 0x64

    add-int/lit8 v4, v19, -0x1

    mul-int/2addr v3, v4

    div-int v3, v3, v18

    sub-int/2addr v2, v3

    .line 1020
    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    add-int v3, v3, v19

    const/4 v5, 0x0

    rsub-int/lit8 v10, v43, 0x0

    mul-int/2addr v10, v4

    div-int v10, v10, v18

    sub-int/2addr v3, v10

    .line 1021
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mInfo:Lcom/android/settings/fuelgauge/BatteryInfo;

    iget-boolean v4, v4, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    if-eqz v4, :cond_3e

    .line 1022
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v4, v4

    int-to-float v6, v3

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2e

    .line 1024
    :cond_3e
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {v4, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1025
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    int-to-float v4, v4

    int-to-float v6, v3

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1027
    :goto_2e
    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    int-to-float v3, v3

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1028
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeRemainPath:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    goto :goto_2f

    .line 1031
    :cond_3f
    move-object/from16 v0, p0

    const/4 v5, 0x0

    :goto_2f
    iget-wide v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v1, v1, v25

    if-lez v1, :cond_46

    iget-wide v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_46

    .line 1033
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->is24Hour()Z

    move-result v1

    .line 1034
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    .line 1035
    iget-wide v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1036
    const/16 v3, 0xe

    invoke-virtual {v2, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1037
    const/16 v4, 0xd

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1038
    const/16 v6, 0xc

    invoke-virtual {v2, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1039
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    .line 1040
    iget-wide v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v9, v7, v9

    const/16 v10, 0xb

    if-gez v9, :cond_40

    .line 1041
    invoke-virtual {v2, v10}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/4 v9, 0x1

    add-int/2addr v7, v9

    invoke-virtual {v2, v10, v7}, Ljava/util/Calendar;->set(II)V

    .line 1042
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    goto :goto_30

    .line 1044
    :cond_40
    const/4 v9, 0x1

    :goto_30
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v11

    .line 1045
    iget-wide v12, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    invoke-virtual {v11, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1046
    invoke-virtual {v11, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1047
    invoke-virtual {v11, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1048
    invoke-virtual {v11, v6, v5}, Ljava/util/Calendar;->set(II)V

    .line 1049
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1050
    cmp-long v14, v7, v12

    if-gez v14, :cond_42

    .line 1051
    iget v14, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v15, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v0, v2, v14, v15, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1052
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v14

    .line 1053
    iget-wide v9, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    move-wide/from16 v62, v7

    iget-wide v6, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    sub-long/2addr v6, v3

    const-wide/16 v3, 0x2

    div-long/2addr v6, v3

    add-long/2addr v9, v6

    invoke-virtual {v14, v9, v10}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1054
    const/16 v3, 0xe

    invoke-virtual {v14, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1055
    const/16 v3, 0xd

    invoke-virtual {v14, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1056
    const/16 v3, 0xc

    invoke-virtual {v14, v3, v5}, Ljava/util/Calendar;->set(II)V

    .line 1057
    invoke-virtual {v14}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    .line 1058
    cmp-long v6, v3, v62

    if-lez v6, :cond_41

    cmp-long v3, v3, v12

    if-gez v3, :cond_41

    .line 1059
    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v0, v14, v3, v4, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1061
    :cond_41
    iget v3, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v0, v11, v3, v4, v1}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addTimeLabel(Ljava/util/Calendar;IIZ)V

    .line 1065
    :cond_42
    const/4 v1, 0x6

    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v3

    invoke-virtual {v11, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    if-ne v3, v4, :cond_43

    .line 1066
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v4

    invoke-virtual {v11, v3}, Ljava/util/Calendar;->get(I)I

    move-result v6

    if-eq v4, v6, :cond_46

    .line 1067
    :cond_43
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->isDayFirst()Z

    move-result v3

    .line 1068
    const/16 v4, 0xb

    invoke-virtual {v2, v4, v5}, Ljava/util/Calendar;->set(II)V

    .line 1069
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1070
    iget-wide v8, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    cmp-long v4, v6, v8

    if-gez v4, :cond_44

    .line 1071
    invoke-virtual {v2, v1}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v6, 0x1

    add-int/2addr v4, v6

    invoke-virtual {v2, v1, v4}, Ljava/util/Calendar;->set(II)V

    .line 1072
    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    .line 1074
    :cond_44
    const/16 v1, 0xb

    invoke-virtual {v11, v1, v5}, Ljava/util/Calendar;->set(II)V

    .line 1075
    invoke-virtual {v11}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1076
    cmp-long v1, v6, v8

    if-gez v1, :cond_45

    .line 1077
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v0, v2, v1, v4, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1078
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 1082
    sub-long v12, v8, v6

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    add-long/2addr v12, v6

    const-wide/32 v14, 0x6ddd00

    add-long/2addr v12, v14

    invoke-virtual {v1, v12, v13}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1084
    const/16 v2, 0xb

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1085
    const/16 v2, 0xc

    invoke-virtual {v1, v2, v5}, Ljava/util/Calendar;->set(II)V

    .line 1086
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v12

    .line 1087
    cmp-long v2, v12, v6

    if-lez v2, :cond_45

    cmp-long v2, v12, v8

    if-gez v2, :cond_45

    .line 1088
    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v0, v1, v2, v4, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1091
    :cond_45
    iget v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelLeft:I

    iget v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelRight:I

    invoke-virtual {v0, v11, v1, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->addDateLabel(Ljava/util/Calendar;IIZ)V

    .line 1095
    :cond_46
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeLabels:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x2

    if-ge v1, v2, :cond_47

    .line 1098
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-wide v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mEndWallTime:J

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStartWallTime:J

    sub-long/2addr v2, v4

    invoke-static {v1, v2, v3}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1100
    iget-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v2, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    goto :goto_31

    .line 1102
    :cond_47
    const/4 v1, 0x0

    iput-object v1, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    .line 1103
    iput v5, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    .line 1105
    :goto_31
    return-void

    .line 671
    :cond_48
    :goto_32
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xb
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
