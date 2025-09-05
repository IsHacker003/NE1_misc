.class public Lcom/android/settings/widget/ChartDataUsageView$DataAxis;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/ChartAxis;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ChartDataUsageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataAxis"
.end annotation


# static fields
.field private static final sSpanSize:Ljava/lang/Object;

.field private static final sSpanUnit:Ljava/lang/Object;


# instance fields
.field private mMax:J

.field private mMin:J

.field private mSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 534
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    .line 535
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public buildLabel(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 6

    .line 539
    const-wide/16 v2, 0x0

    const-wide v4, 0x10000000000L

    move-wide v0, p3

    invoke-static/range {v0 .. v5}, Landroid/util/MathUtils;->constrain(JJJ)J

    move-result-wide p3

    .line 540
    const/4 v0, 0x3

    invoke-static {p1, p3, p4, v0}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 542
    sget-object p3, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanSize:Ljava/lang/Object;

    iget-object p4, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const-string v0, "^1"

    invoke-static {p2, p3, p4, v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 543
    sget-object p3, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->sSpanUnit:Ljava/lang/Object;

    iget-object p4, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const-string v0, "^2"

    invoke-static {p2, p3, p4, v0}, Lcom/android/settings/widget/ChartDataUsageView;->access$700(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 544
    iget-wide p1, p1, Landroid/text/format/Formatter$BytesResult;->roundedBytes:J

    return-wide p1
.end method

.method public convertToPoint(J)F
    .locals 3

    .line 518
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    mul-float/2addr v0, p1

    iget-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr p1, v1

    long-to-float p1, p1

    div-float/2addr v0, p1

    return v0
.end method

.method public convertToValue(F)J
    .locals 5

    .line 530
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    long-to-float v0, v0

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v1, v3

    long-to-float v1, v1

    mul-float/2addr p1, v1

    iget v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    div-float/2addr p1, v1

    add-float/2addr v0, p1

    float-to-long v0, v0

    return-wide v0
.end method

.method public getTickPoints()[F
    .locals 7

    .line 549
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    iget-wide v2, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    sub-long/2addr v0, v2

    .line 552
    const-wide/16 v2, 0x10

    div-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->access$800(J)J

    move-result-wide v2

    .line 553
    div-long/2addr v0, v2

    long-to-int v0, v0

    .line 554
    new-array v0, v0, [F

    .line 555
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 556
    const/4 v1, 0x0

    :goto_0
    array-length v6, v0

    if-ge v1, v6, :cond_0

    .line 557
    invoke-virtual {p0, v4, v5}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result v6

    aput v6, v0, v1

    .line 558
    add-long/2addr v4, v2

    .line 556
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 561
    :cond_0
    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 485
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    iget-wide v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    iget v1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v1

    const/4 v2, 0x2

    aput-object v1, v0, v2

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public setBounds(JJ)Z
    .locals 2

    .line 490
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_1

    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    const/4 p1, 0x0

    return p1

    .line 491
    :cond_1
    :goto_0
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMin:J

    .line 492
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mMax:J

    .line 493
    const/4 p1, 0x1

    return p1
.end method

.method public setSize(F)Z
    .locals 1

    .line 501
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 502
    iput p1, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    .line 503
    const/4 p1, 0x1

    return p1

    .line 505
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public shouldAdjustAxis(J)I
    .locals 4

    .line 566
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->convertToPoint(J)F

    move-result p1

    .line 567
    float-to-double p1, p1

    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v0, v0

    const-wide v2, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v0, v2

    cmpg-double v0, p1, v0

    if-gez v0, :cond_0

    .line 568
    const/4 p1, -0x1

    return p1

    .line 569
    :cond_0
    iget v0, p0, Lcom/android/settings/widget/ChartDataUsageView$DataAxis;->mSize:F

    float-to-double v0, v0

    const-wide v2, 0x3feb333333333333L    # 0.85

    mul-double/2addr v0, v2

    cmpl-double p1, p1, v0

    if-lez p1, :cond_1

    .line 570
    const/4 p1, 0x1

    return p1

    .line 572
    :cond_1
    const/4 p1, 0x0

    return p1
.end method
