.class public Lcom/android/settings/graph/UsageGraph;
.super Landroid/view/View;
.source "UsageGraph.java"


# instance fields
.field private mAccentColor:I

.field private final mCornerRadius:I

.field private final mDivider:Landroid/graphics/drawable/Drawable;

.field private final mDividerSize:I

.field private final mDottedPaint:Landroid/graphics/Paint;

.field private final mFillPaint:Landroid/graphics/Paint;

.field private final mLinePaint:Landroid/graphics/Paint;

.field private final mLocalPaths:Landroid/util/SparseIntArray;

.field private final mLocalProjectedPaths:Landroid/util/SparseIntArray;

.field private mMaxX:F

.field private mMaxY:F

.field private mMiddleDividerLoc:F

.field private mMiddleDividerTint:I

.field private final mPath:Landroid/graphics/Path;

.field private final mPaths:Landroid/util/SparseIntArray;

.field private final mProjectedPaths:Landroid/util/SparseIntArray;

.field private final mTintedDivider:Landroid/graphics/drawable/Drawable;

.field private mTopDividerTint:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    .line 76
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    new-instance p2, Landroid/graphics/Path;

    invoke-direct {p2}, Landroid/graphics/Path;-><init>()V

    iput-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    .line 56
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    .line 58
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    .line 61
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    .line 63
    new-instance p2, Landroid/util/SparseIntArray;

    invoke-direct {p2}, Landroid/util/SparseIntArray;-><init>()V

    iput-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    .line 68
    const/high16 p2, 0x42c80000    # 100.0f

    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    .line 69
    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    .line 71
    const/high16 p2, 0x3f000000    # 0.5f

    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    .line 72
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    .line 73
    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    .line 77
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 79
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    .line 80
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V

    .line 83
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 84
    const v0, 0x7f0701c3    # @dimen/usage_graph_line_corner_radius '6.0dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    .line 85
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/CornerPathEffect;

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    int-to-float v3, v3

    invoke-direct {v2, v3}, Landroid/graphics/CornerPathEffect;-><init>(F)V

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 86
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    const v2, 0x7f0701c4    # @dimen/usage_graph_line_width '3.0dp'

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 88
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    .line 89
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {v0, v2}, Landroid/graphics/Paint;-><init>(Landroid/graphics/Paint;)V

    iput-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 93
    const v0, 0x7f0701c0    # @dimen/usage_graph_dot_size '0.75dp'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    int-to-float v0, v0

    .line 94
    const v2, 0x7f0701bf    # @dimen/usage_graph_dot_interval '7.0dp'

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    int-to-float v2, v2

    .line 95
    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const/high16 v4, 0x40400000    # 3.0f

    mul-float/2addr v4, v0

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 96
    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/DashPathEffect;

    const/4 v5, 0x2

    new-array v5, v5, [F

    const/4 v6, 0x0

    aput v0, v5, v6

    aput v2, v5, v1

    const/4 v0, 0x0

    invoke-direct {v4, v5, v0}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 97
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    const v2, 0x7f0600d8    # @color/usage_graph_dots '#b0bec5'

    invoke-virtual {p1, v2}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 100
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    const v3, 0x1010214    # @android:attr/listDivider

    invoke-virtual {v2, v3, v0, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 101
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 102
    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {p1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    .line 103
    const p1, 0x7f0701be    # @dimen/usage_graph_divider_size '1.0dp'

    invoke-virtual {p2, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    .line 104
    return-void
.end method

.method private addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 6

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    .line 143
    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    invoke-virtual {p1, v3}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    invoke-virtual {p2, v4, v5}, Landroid/util/SparseIntArray;->put(II)V

    .line 142
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {p1, v2}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result p1

    add-int/lit8 p1, p1, 0x1

    const/4 v2, -0x1

    invoke-virtual {p2, p1, v2}, Landroid/util/SparseIntArray;->put(II)V

    .line 147
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 148
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    .line 149
    const-string p1, "UsageGraph"

    const-string p2, "addPathAndUpdate"

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 150
    return-void
.end method

.method private calculateLocalPaths()V
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 171
    return-void
.end method

.method private drawDivider(ILandroid/graphics/Canvas;I)V
    .locals 3

    .line 305
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 306
    const/4 v1, -0x1

    if-eq p3, v1, :cond_0

    .line 307
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p3}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 308
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mTintedDivider:Landroid/graphics/drawable/Drawable;

    .line 310
    :cond_0
    const/4 p3, 0x0

    invoke-virtual {p2}, Landroid/graphics/Canvas;->getWidth()I

    move-result v1

    iget v2, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    add-int/2addr v2, p1

    invoke-virtual {v0, p3, p1, v1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 311
    invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 312
    return-void
.end method

.method private drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 6

    .line 283
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 284
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v1

    int-to-float v1, v1

    .line 285
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {v2, v3, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 286
    const/4 v0, 0x1

    move v2, v1

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 287
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    .line 288
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    .line 289
    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 290
    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    add-int/lit8 v4, v1, -0x1

    invoke-virtual {p2, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    .line 291
    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v3, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 292
    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->close()V

    .line 293
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 294
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    .line 295
    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 298
    :cond_0
    iget-object v5, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v5, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 286
    :cond_1
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 301
    :cond_2
    iget-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 302
    return-void
.end method

.method private drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V
    .locals 5

    .line 263
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 264
    return-void

    .line 266
    :cond_0
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->reset()V

    .line 267
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 268
    const/4 v0, 0x1

    move v1, v0

    :goto_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 269
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v2

    .line 270
    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v3

    .line 271
    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    .line 272
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 273
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p2, v1}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_1

    .line 276
    :cond_1
    iget-object v4, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    int-to-float v2, v2

    int-to-float v3, v3

    invoke-virtual {v4, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 268
    :cond_2
    :goto_1
    add-int/2addr v1, v0

    goto :goto_0

    .line 279
    :cond_3
    iget-object p2, p0, Lcom/android/settings/graph/UsageGraph;->mPath:Landroid/graphics/Path;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 280
    return-void
.end method

.method private getColor(IF)I
    .locals 1

    .line 236
    const/high16 v0, 0x437f0000    # 255.0f

    mul-float/2addr v0, p2

    float-to-int p2, v0

    shl-int/lit8 p2, p2, 0x18

    const v0, 0xffffff

    or-int/2addr p2, v0

    and-int/2addr p1, p2

    return p1
.end method

.method private getX(F)I
    .locals 1

    .line 222
    iget v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    div-float/2addr p1, v0

    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getWidth()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method private getY(F)I
    .locals 2

    .line 226
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    div-float/2addr p1, v1

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, p1

    mul-float/2addr v0, v1

    float-to-int p1, v0

    return p1
.end method

.method private hasDiff(II)Z
    .locals 0

    .line 218
    sub-int/2addr p2, p1

    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p1

    iget p2, p0, Lcom/android/settings/graph/UsageGraph;->mCornerRadius:I

    if-lt p1, p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private updateGradient()V
    .locals 10

    .line 230
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    new-instance v9, Landroid/graphics/LinearGradient;

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getHeight()I

    move-result v1

    int-to-float v5, v1

    iget v1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    const v2, 0x3e4ccccd    # 0.2f

    invoke-direct {p0, v1, v2}, Lcom/android/settings/graph/UsageGraph;->getColor(IF)I

    move-result v6

    sget-object v8, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v7, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    .line 230
    invoke-virtual {v0, v9}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 233
    return-void
.end method


# virtual methods
.method public addPath(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 132
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/graph/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 133
    return-void
.end method

.method public addProjectedPath(Landroid/util/SparseIntArray;)V
    .locals 2

    .line 136
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v1, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/graph/UsageGraph;->addPathAndUpdate(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V

    .line 137
    return-void
.end method

.method calculateLocalPaths(Landroid/util/SparseIntArray;Landroid/util/SparseIntArray;)V
    .locals 11

    .line 175
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 176
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->getWidth()I

    move-result v2

    if-nez v2, :cond_0

    .line 177
    return-void

    .line 179
    :cond_0
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->clear()V

    .line 181
    nop

    .line 182
    nop

    .line 183
    nop

    .line 184
    const/4 v2, -0x1

    const/4 v3, 0x0

    move v7, v2

    move v4, v3

    move v5, v4

    move v6, v5

    :goto_0
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    if-ge v4, v8, :cond_5

    .line 185
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v8

    .line 186
    invoke-virtual {p1, v4}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v9

    .line 187
    const/4 v10, 0x1

    if-ne v9, v2, :cond_3

    .line 188
    if-ne v4, v10, :cond_1

    .line 189
    add-int/lit8 v8, v8, 0x1

    int-to-float v8, v8

    invoke-direct {p0, v8}, Lcom/android/settings/graph/UsageGraph;->getX(F)I

    move-result v8

    sub-int/2addr v8, v10

    const/4 v9, 0x0

    invoke-direct {p0, v9}, Lcom/android/settings/graph/UsageGraph;->getY(F)I

    move-result v9

    invoke-virtual {p2, v8, v9}, Landroid/util/SparseIntArray;->put(II)V

    .line 190
    goto :goto_2

    .line 192
    :cond_1
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v10

    if-ne v4, v8, :cond_2

    if-eqz v5, :cond_2

    .line 194
    invoke-virtual {p2, v6, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 196
    :cond_2
    nop

    .line 197
    add-int/lit8 v5, v6, 0x1

    invoke-virtual {p2, v5, v2}, Landroid/util/SparseIntArray;->put(II)V

    goto :goto_1

    .line 199
    :cond_3
    int-to-float v5, v8

    invoke-direct {p0, v5}, Lcom/android/settings/graph/UsageGraph;->getX(F)I

    move-result v5

    .line 200
    int-to-float v6, v9

    invoke-direct {p0, v6}, Lcom/android/settings/graph/UsageGraph;->getY(F)I

    move-result v6

    .line 202
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 203
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v7

    sub-int/2addr v7, v10

    invoke-virtual {p2, v7}, Landroid/util/SparseIntArray;->keyAt(I)I

    move-result v7

    .line 204
    invoke-virtual {p2}, Landroid/util/SparseIntArray;->size()I

    move-result v8

    sub-int/2addr v8, v10

    invoke-virtual {p2, v8}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v8

    .line 205
    if-eq v8, v2, :cond_4

    invoke-direct {p0, v7, v5}, Lcom/android/settings/graph/UsageGraph;->hasDiff(II)Z

    move-result v7

    if-nez v7, :cond_4

    invoke-direct {p0, v8, v6}, Lcom/android/settings/graph/UsageGraph;->hasDiff(II)Z

    move-result v7

    if-nez v7, :cond_4

    .line 206
    nop

    .line 207
    nop

    .line 184
    move v7, v6

    move v6, v5

    move v5, v10

    goto :goto_2

    .line 210
    :cond_4
    nop

    .line 211
    invoke-virtual {p2, v5, v6}, Landroid/util/SparseIntArray;->put(II)V

    .line 184
    move v7, v6

    move v6, v5

    :goto_1
    move v5, v3

    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 214
    :cond_5
    const-string p1, "UsageGraph"

    const-string p2, "calculateLocalPaths"

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 215
    return-void
.end method

.method clearPaths()V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 108
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 109
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 110
    iget-object v0, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 111
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 241
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 243
    iget v2, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-eqz v2, :cond_0

    .line 244
    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 246
    :cond_0
    nop

    .line 247
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    mul-float/2addr v2, v3

    float-to-int v2, v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    .line 246
    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 250
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/settings/graph/UsageGraph;->mDividerSize:I

    sub-int/2addr v2, v3

    const/4 v3, -0x1

    invoke-direct {p0, v2, p1, v3}, Lcom/android/settings/graph/UsageGraph;->drawDivider(ILandroid/graphics/Canvas;I)V

    .line 252
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-nez v2, :cond_1

    .line 253
    return-void

    .line 256
    :cond_1
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalProjectedPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mDottedPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 257
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mFillPaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawFilledPath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 258
    iget-object v2, p0, Lcom/android/settings/graph/UsageGraph;->mLocalPaths:Landroid/util/SparseIntArray;

    iget-object v3, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    invoke-direct {p0, p1, v2, v3}, Lcom/android/settings/graph/UsageGraph;->drawLinePath(Landroid/graphics/Canvas;Landroid/util/SparseIntArray;Landroid/graphics/Paint;)V

    .line 259
    const-string p1, "UsageGraph"

    const-string v2, "onDraw"

    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 260
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 2

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 162
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 163
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->updateGradient()V

    .line 164
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths()V

    .line 165
    const-string p1, "UsageGraph"

    const-string p2, "onSizeChanged"

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 166
    return-void
.end method

.method setAccentColor(I)V
    .locals 1

    .line 153
    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    .line 154
    iget-object p1, p0, Lcom/android/settings/graph/UsageGraph;->mLinePaint:Landroid/graphics/Paint;

    iget v0, p0, Lcom/android/settings/graph/UsageGraph;->mAccentColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 155
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->updateGradient()V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    .line 157
    return-void
.end method

.method setDividerColors(II)V
    .locals 0

    .line 127
    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerTint:I

    .line 128
    iput p2, p0, Lcom/android/settings/graph/UsageGraph;->mTopDividerTint:I

    .line 129
    return-void
.end method

.method setDividerLoc(I)V
    .locals 1

    .line 123
    int-to-float p1, p1

    iget v0, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    div-float/2addr p1, v0

    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr v0, p1

    iput v0, p0, Lcom/android/settings/graph/UsageGraph;->mMiddleDividerLoc:F

    .line 124
    return-void
.end method

.method setMax(II)V
    .locals 2

    .line 114
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 115
    int-to-float p1, p1

    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxX:F

    .line 116
    int-to-float p1, p2

    iput p1, p0, Lcom/android/settings/graph/UsageGraph;->mMaxY:F

    .line 117
    invoke-direct {p0}, Lcom/android/settings/graph/UsageGraph;->calculateLocalPaths()V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/graph/UsageGraph;->postInvalidate()V

    .line 119
    const-string p1, "UsageGraph"

    const-string p2, "setMax"

    invoke-static {p1, p2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 120
    return-void
.end method
