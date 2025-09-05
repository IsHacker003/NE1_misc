.class public final Lcom/android/settings/widget/AspectRatioFrameLayout;
.super Landroid/widget/FrameLayout;
.source "AspectRatioFrameLayout.java"


# instance fields
.field mAspectRatio:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/AspectRatioFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 43
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    const/high16 p3, 0x3f800000    # 1.0f

    iput p3, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    .line 47
    if-eqz p2, :cond_0

    .line 48
    sget-object v0, Lcom/android/settings/R$styleable;->AspectRatioFrameLayout:[I

    .line 49
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 50
    const/4 p2, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    .line 52
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 54
    :cond_0
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 2

    .line 62
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->getMeasuredWidth()I

    move-result p1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/widget/AspectRatioFrameLayout;->getMeasuredHeight()I

    move-result p2

    .line 65
    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 68
    :cond_0
    int-to-float p1, p1

    int-to-float v0, p2

    div-float/2addr p1, v0

    .line 69
    iget v1, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    sub-float/2addr v1, p1

    .line 70
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const v1, 0x3c23d70a    # 0.01f

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    .line 72
    return-void

    .line 75
    :cond_1
    iget p1, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    mul-float/2addr v0, p1

    float-to-int p1, v0

    .line 77
    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 78
    invoke-static {p2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 77
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 79
    return-void

    .line 66
    :cond_2
    :goto_0
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 57
    iput p1, p0, Lcom/android/settings/widget/AspectRatioFrameLayout;->mAspectRatio:F

    .line 58
    return-void
.end method
