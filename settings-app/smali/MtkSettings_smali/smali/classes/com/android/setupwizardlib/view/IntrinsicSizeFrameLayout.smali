.class public Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;
.super Landroid/widget/FrameLayout;
.source "IntrinsicSizeFrameLayout.java"


# instance fields
.field private mIntrinsicHeight:I

.field private mIntrinsicWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 42
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 43
    const/4 v1, 0x0

    invoke-direct {p0, p1, v1, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 48
    invoke-direct {p0, p1, p2, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 53
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 39
    iput v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 54
    invoke-direct {p0, p1, p2, p3}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method private getIntrinsicMeasureSpec(II)I
    .locals 3

    .line 74
    if-gtz p2, :cond_0

    .line 76
    return p1

    .line 78
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result p2

    .line 79
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 80
    const/high16 v1, 0x40000000    # 2.0f

    if-nez p2, :cond_1

    .line 82
    iget p1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 83
    :cond_1
    const/high16 v2, -0x80000000

    if-ne p2, v2, :cond_2

    .line 86
    iget p1, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result p1

    invoke-static {p1, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    return p1

    .line 90
    :cond_2
    return p1
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 58
    sget-object v0, Lcom/android/setupwizardlib/R$styleable;->SuwIntrinsicSizeFrameLayout:[I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 60
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwIntrinsicSizeFrameLayout_android_height:I

    .line 61
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 62
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwIntrinsicSizeFrameLayout_android_width:I

    .line 63
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    .line 64
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 65
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 69
    iget v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicWidth:I

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result p1

    iget v0, p0, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->mIntrinsicHeight:I

    .line 70
    invoke-direct {p0, p2, v0}, Lcom/android/setupwizardlib/view/IntrinsicSizeFrameLayout;->getIntrinsicMeasureSpec(II)I

    move-result p2

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 71
    return-void
.end method
