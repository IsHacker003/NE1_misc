.class public Lcom/android/settings/widget/ChartNetworkSeriesView;
.super Landroid/view/View;
.source "ChartNetworkSeriesView.java"


# instance fields
.field private mEnd:J

.field private mEndTime:J

.field private mEstimateVisible:Z

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mMax:J

.field private mMaxEstimate:J

.field private mPaintEstimate:Landroid/graphics/Paint;

.field private mPaintFill:Landroid/graphics/Paint;

.field private mPaintFillSecondary:Landroid/graphics/Paint;

.field private mPaintStroke:Landroid/graphics/Paint;

.field private mPathEstimate:Landroid/graphics/Path;

.field private mPathFill:Landroid/graphics/Path;

.field private mPathStroke:Landroid/graphics/Path;

.field private mPathValid:Z

.field private mSafeRegion:I

.field private mSecondary:Z

.field private mStart:J

.field private mStats:Landroid/net/NetworkStatsHistory;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 79
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 80
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 83
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .line 87
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 69
    const-wide/high16 v0, -0x8000000000000000L

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 71
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 72
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 73
    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 89
    sget-object v1, Lcom/android/settings/R$styleable;->ChartNetworkSeriesView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 92
    const/high16 p2, -0x10000

    const/4 p3, 0x3

    invoke-virtual {p1, p3, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p3

    .line 93
    invoke-virtual {p1, v0, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    .line 94
    const/4 v2, 0x1

    invoke-virtual {p1, v2, p2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result p2

    .line 96
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v2

    .line 99
    invoke-virtual {p0, p3, v1, p2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setChartColor(III)V

    .line 100
    invoke-virtual {p0, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setSafeRegion(I)V

    .line 101
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setWillNotDraw(Z)V

    .line 103
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    .line 106
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    .line 107
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    .line 108
    return-void
.end method

.method private generatePath()V
    .locals 23

    .line 172
    move-object/from16 v0, p0

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 173
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 174
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 175
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 176
    const/4 v3, 0x1

    iput-boolean v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 179
    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v3, :cond_5

    iget-object v3, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v3}, Landroid/net/NetworkStatsHistory;->size()I

    move-result v3

    const/4 v4, 0x2

    if-ge v3, v4, :cond_0

    goto/16 :goto_2

    .line 183
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    .line 184
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    .line 186
    nop

    .line 187
    nop

    .line 188
    int-to-float v3, v3

    .line 189
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    const/4 v5, 0x0

    invoke-interface {v4, v5}, Lcom/android/settings/widget/ChartAxis;->convertToValue(F)J

    move-result-wide v6

    .line 192
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 198
    nop

    .line 200
    const/4 v4, 0x0

    .line 202
    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    invoke-virtual {v8, v9, v10}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v8

    .line 203
    iget-object v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v10, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    invoke-virtual {v9, v10, v11}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v9

    .line 204
    move v10, v3

    move v11, v5

    :goto_0
    if-gt v8, v9, :cond_3

    .line 205
    iget-object v12, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v12, v8, v4}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v4

    .line 207
    iget-wide v12, v4, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 208
    iget-wide v14, v4, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v14, v12

    .line 210
    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5, v12, v13}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v5

    .line 211
    move/from16 v17, v9

    iget-object v9, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v9, v14, v15}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v9

    .line 214
    const/16 v16, 0x0

    cmpg-float v18, v9, v16

    if-gez v18, :cond_1

    .line 204
    move/from16 v21, v8

    goto :goto_1

    .line 217
    :cond_1
    move-wide/from16 v19, v14

    iget-wide v14, v4, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move/from16 v21, v8

    move/from16 v22, v9

    iget-wide v8, v4, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v14, v8

    add-long/2addr v1, v14

    .line 219
    nop

    .line 220
    iget-object v8, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v8, v1, v2}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v8

    .line 222
    cmp-long v6, v6, v12

    if-eqz v6, :cond_2

    .line 224
    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 225
    iget-object v6, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v6, v5, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 229
    :cond_2
    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    move/from16 v6, v22

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 230
    iget-object v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v5, v6, v8}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    nop

    .line 233
    nop

    .line 234
    nop

    .line 204
    move v11, v6

    move v10, v8

    move-wide/from16 v6, v19

    :goto_1
    add-int/lit8 v8, v21, 0x1

    move/from16 v9, v17

    const/4 v5, 0x0

    goto :goto_0

    .line 238
    :cond_3
    iget-wide v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    cmp-long v4, v6, v4

    if-gez v4, :cond_4

    .line 239
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-wide v5, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    invoke-interface {v4, v5, v6}, Lcom/android/settings/widget/ChartAxis;->convertToPoint(J)F

    move-result v11

    .line 241
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathStroke:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 242
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v10}, Landroid/graphics/Path;->lineTo(FF)V

    .line 253
    :cond_4
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {v4, v11, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 254
    iget-object v4, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    const/4 v5, 0x0

    invoke-virtual {v4, v5, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 256
    iput-wide v1, v0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 291
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 292
    return-void

    .line 180
    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method public getMaxEstimate()J
    .locals 2

    .line 304
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    return-wide v0
.end method

.method public getMaxVisible()J
    .locals 9

    .line 308
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMaxEstimate:J

    goto :goto_0

    :cond_0
    iget-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 309
    :goto_0
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-gtz v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    if-eqz v2, :cond_1

    .line 311
    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStats:Landroid/net/NetworkStatsHistory;

    iget-wide v4, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEnd:J

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 312
    iget-wide v1, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v3, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v1, v3

    return-wide v1

    .line 314
    :cond_1
    return-wide v0
.end method

.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    .line 111
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 112
    const-string p1, "missing vert"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 113
    return-void
.end method

.method public invalidatePath()V
    .locals 2

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    .line 161
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mMax:J

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 163
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    .line 322
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathValid:Z

    if-nez v0, :cond_0

    .line 323
    invoke-direct {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->generatePath()V

    .line 326
    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 327
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 328
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v3

    invoke-virtual {p1, v1, v1, v2, v3}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 329
    iget-object v2, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathEstimate:Landroid/graphics/Path;

    iget-object v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 330
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 333
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 335
    :goto_0
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    .line 336
    iget v3, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getHeight()I

    move-result v5

    iget v6, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    sub-int/2addr v5, v6

    invoke-virtual {p1, v3, v1, v4, v5}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 337
    iget-object v1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPathFill:Landroid/graphics/Path;

    invoke-virtual {p1, v1, v0}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 338
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 339
    return-void
.end method

.method public setChartColor(III)V
    .locals 3

    .line 116
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    const/high16 v2, 0x40800000    # 4.0f

    mul-float/2addr v2, v1

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 120
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintStroke:Landroid/graphics/Paint;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 122
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    .line 123
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFill:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 127
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 130
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintFillSecondary:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 132
    new-instance p1, Landroid/graphics/Paint;

    invoke-direct {p1}, Landroid/graphics/Paint;-><init>()V

    iput-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    .line 133
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    const/high16 p2, 0x40400000    # 3.0f

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 134
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, p3}, Landroid/graphics/Paint;->setColor(I)V

    .line 135
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    sget-object p2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 136
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 137
    iget-object p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mPaintEstimate:Landroid/graphics/Paint;

    new-instance p2, Landroid/graphics/DashPathEffect;

    const/4 p3, 0x2

    new-array p3, p3, [F

    fill-array-data p3, :array_0

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-direct {p2, p3, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {p1, p2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 138
    return-void

    nop

    :array_0
    .array-data 4
        0x41200000    # 10.0f
        0x41200000    # 10.0f
    .end array-data
.end method

.method public setEndTime(J)V
    .locals 0

    .line 295
    iput-wide p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEndTime:J

    .line 296
    return-void
.end method

.method public setEstimateVisible(Z)V
    .locals 0

    .line 299
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mEstimateVisible:Z

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidate()V

    .line 301
    return-void
.end method

.method public setSafeRegion(I)V
    .locals 0

    .line 141
    iput p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSafeRegion:I

    .line 142
    return-void
.end method

.method public setSecondary(Z)V
    .locals 0

    .line 156
    iput-boolean p1, p0, Lcom/android/settings/widget/ChartNetworkSeriesView;->mSecondary:Z

    .line 157
    return-void
.end method
