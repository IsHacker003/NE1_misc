.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/ChartView;
.source "ChartDataUsageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/widget/ChartDataUsageView$DataAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;,
        Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    }
.end annotation


# instance fields
.field private mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mGrid:Lcom/android/settings/widget/ChartGridView;

.field private mHandler:Landroid/os/Handler;

.field private mInspectEnd:J

.field private mInspectStart:J

.field private mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

.field private mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

.field private mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

.field private mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

.field private mVertMax:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 83
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 87
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 88
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 294
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$2;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/ChartDataUsageView$2;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    .line 92
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;

    invoke-direct {p1}, Lcom/android/settings/widget/ChartDataUsageView$TimeAxis;-><init>()V

    new-instance p2, Lcom/android/settings/widget/InvertedChartAxis;

    new-instance p3, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;

    invoke-direct {p3}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;-><init>()V

    invoke-direct {p2, p3}, Lcom/android/settings/widget/InvertedChartAxis;-><init>(Lcom/android/settings/widget/ChartAxis;)V

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 94
    new-instance p1, Lcom/android/settings/widget/ChartDataUsageView$1;

    invoke-direct {p1, p0}, Lcom/android/settings/widget/ChartDataUsageView$1;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 105
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->updateEstimateVisible()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    return-object p0
.end method

.method static synthetic access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .line 51
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartDataUsageView;->setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(J)J
    .locals 0

    .line 51
    invoke-static {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->roundUpToPowerOfTwo(J)J

    move-result-wide p0

    return-wide p0
.end method

.method private clearUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 2

    .line 291
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 292
    return-void
.end method

.method private static roundUpToPowerOfTwo(J)J
    .locals 4

    .line 592
    const-wide/16 v0, 0x1

    sub-long/2addr p0, v0

    .line 595
    const/4 v2, 0x1

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    .line 596
    const/4 v2, 0x2

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    .line 597
    const/4 v2, 0x4

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    .line 598
    const/16 v2, 0x8

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    .line 599
    const/16 v2, 0x10

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    .line 600
    const/16 v2, 0x20

    ushr-long v2, p0, v2

    or-long/2addr p0, v2

    .line 602
    add-long/2addr p0, v0

    .line 604
    const-wide/16 v0, 0x0

    cmp-long v0, p0, v0

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    const-wide p0, 0x7fffffffffffffffL

    :goto_0
    return-wide p0
.end method

.method private sendUpdateAxisDelayed(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 2

    .line 284
    const/16 v0, 0x64

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {p2, v0, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_1

    .line 285
    :cond_0
    iget-object p2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 286
    invoke-virtual {v1, v0, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object p1

    const-wide/16 v0, 0xfa

    .line 285
    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 288
    :cond_1
    return-void
.end method

.method private static setText(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .line 579
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 580
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    .line 581
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 582
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    .line 583
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int v1, v0, p3

    .line 584
    const/16 p3, 0x12

    invoke-virtual {p0, p1, v0, v1, p3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 586
    :cond_0
    invoke-virtual {p0, v0, v1, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 587
    return-void
.end method

.method private updateEstimateVisible()V
    .locals 9

    .line 265
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxEstimate()J

    move-result-wide v0

    .line 268
    nop

    .line 269
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    const-wide v3, 0x7fffffffffffffffL

    if-eqz v2, :cond_0

    .line 270
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v5

    goto :goto_0

    .line 271
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 272
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v5

    goto :goto_0

    .line 275
    :cond_1
    move-wide v5, v3

    :goto_0
    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-gez v2, :cond_2

    .line 276
    goto :goto_1

    .line 279
    :cond_2
    move-wide v3, v5

    :goto_1
    const-wide/16 v5, 0x7

    mul-long/2addr v3, v5

    const-wide/16 v5, 0xa

    div-long/2addr v3, v5

    cmp-long v0, v0, v3

    if-ltz v0, :cond_3

    const/4 v0, 0x1

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    .line 280
    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setEstimateVisible(Z)V

    .line 281
    return-void
.end method

.method private updateVertAxisBounds(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 12

    .line 205
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 207
    nop

    .line 208
    const-wide/16 v2, 0xa

    const-wide/16 v4, 0x0

    if-eqz p1, :cond_2

    .line 209
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->shouldAdjustAxis()I

    move-result v6

    .line 210
    if-lez v6, :cond_0

    .line 212
    const-wide/16 v6, 0xb

    mul-long/2addr v0, v6

    div-long/2addr v0, v2

    goto :goto_0

    .line 213
    :cond_0
    if-gez v6, :cond_1

    .line 215
    const-wide/16 v6, 0x9

    mul-long/2addr v0, v6

    div-long/2addr v0, v2

    goto :goto_0

    .line 217
    :cond_1
    goto :goto_0

    .line 222
    :cond_2
    move-wide v0, v4

    :goto_0
    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 223
    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v8

    iget-object v10, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v10}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getMaxVisible()J

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    .line 224
    invoke-static {v8, v9, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    const-wide/16 v8, 0xc

    mul-long/2addr v6, v8

    div-long/2addr v6, v2

    .line 225
    const-wide/32 v2, 0x3200000

    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 226
    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 229
    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    cmp-long v2, v0, v2

    if-eqz v2, :cond_6

    .line 230
    iput-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertMax:J

    .line 232
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v2, v4, v5, v0, v1}, Lcom/android/settings/widget/ChartAxis;->setBounds(JJ)Z

    move-result v2

    .line 233
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 234
    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v3, v4, v5, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRange(JJ)V

    .line 236
    if-eqz v2, :cond_3

    .line 237
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 238
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->invalidatePath()V

    .line 241
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 244
    if-eqz p1, :cond_4

    .line 245
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->updateValueFromPosition()V

    .line 251
    :cond_4
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_5

    .line 252
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    .line 254
    :cond_5
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_6

    .line 255
    iget-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->layoutSweep(Lcom/android/settings/widget/ChartSweepView;)V

    .line 258
    :cond_6
    return-void
.end method


# virtual methods
.method public getInspectEnd()J
    .locals 2

    .line 344
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 340
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mInspectStart:J

    return-wide v0
.end method

.method public getLimitBytes()J
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getWarningBytes()J
    .locals 2

    .line 348
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->getLabelValue()J

    move-result-wide v0

    return-wide v0
.end method

.method protected onFinishInflate()V
    .locals 5

    .line 109
    invoke-super {p0}, Lcom/android/settings/widget/ChartView;->onFinishInflate()V

    .line 111
    const v0, 0x7f0a0178    # @id/grid

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    .line 112
    const v0, 0x7f0a02f3    # @id/series

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 113
    const v0, 0x7f0a010b    # @id/detail_series

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 114
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 116
    const v0, 0x7f0a036c    # @id/sweep_limit

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    .line 117
    const v0, 0x7f0a036d    # @id/sweep_warning

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    .line 120
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setValidRangeDynamic(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v3, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v1, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setNeighbors([Lcom/android/settings/widget/ChartSweepView;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVertListener:Lcom/android/settings/widget/ChartSweepView$OnSweepListener;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->addOnSweepListener(Lcom/android/settings/widget/ChartSweepView$OnSweepListener;)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    const-wide/32 v1, 0x500000

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->setDragInterval(J)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mGrid:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mDetailSeries:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepWarning:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 138
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mSweepLimit:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->init(Lcom/android/settings/widget/ChartAxis;)V

    .line 140
    invoke-virtual {p0, v4}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 141
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 325
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result p1

    const/4 v0, 0x1

    packed-switch p1, :pswitch_data_0

    .line 334
    return v1

    .line 330
    :pswitch_0
    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 331
    return v0

    .line 327
    :pswitch_1
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setListener(Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mListener:Lcom/android/settings/widget/ChartDataUsageView$DataUsageChartListener;

    .line 145
    return-void
.end method
