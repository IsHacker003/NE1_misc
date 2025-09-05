.class public Lcom/android/setupwizardlib/view/Illustration;
.super Landroid/widget/FrameLayout;
.source "Illustration.java"


# instance fields
.field private mAspectRatio:F

.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mBaselineGridSize:F

.field private mIllustration:Landroid/graphics/drawable/Drawable;

.field private final mIllustrationBounds:Landroid/graphics/Rect;

.field private mScale:F

.field private final mViewBounds:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 56
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mViewBounds:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    .line 52
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    .line 53
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    .line 57
    const/4 p1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/setupwizardlib/view/Illustration;->init(Landroid/util/AttributeSet;I)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mViewBounds:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    .line 52
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    .line 53
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    .line 62
    const/4 p1, 0x0

    invoke-direct {p0, p2, p1}, Lcom/android/setupwizardlib/view/Illustration;->init(Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 50
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mViewBounds:Landroid/graphics/Rect;

    .line 51
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    .line 52
    const/high16 p1, 0x3f800000    # 1.0f

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    .line 53
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    .line 68
    invoke-direct {p0, p2, p3}, Lcom/android/setupwizardlib/view/Illustration;->init(Landroid/util/AttributeSet;I)V

    .line 69
    return-void
.end method

.method private init(Landroid/util/AttributeSet;I)V
    .locals 3

    .line 74
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 75
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->getContext()Landroid/content/Context;

    move-result-object v1

    sget-object v2, Lcom/android/setupwizardlib/R$styleable;->SuwIllustration:[I

    invoke-virtual {v1, p1, v2, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 77
    sget p2, Lcom/android/setupwizardlib/R$styleable;->SuwIllustration_suwAspectRatio:I

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p2

    iput p2, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    .line 78
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 81
    :cond_0
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F

    const/high16 p2, 0x41000000    # 8.0f

    mul-float/2addr p1, p2

    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mBaselineGridSize:F

    .line 82
    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/Illustration;->setWillNotDraw(Z)V

    .line 83
    return-void
.end method

.method private shouldMirrorDrawable(Landroid/graphics/drawable/Drawable;I)Z
    .locals 3

    .line 211
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    .line 212
    sget p2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt p2, v2, :cond_0

    .line 213
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isAutoMirrored()Z

    move-result p1

    return p1

    .line 214
    :cond_0
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x11

    if-lt p1, p2, :cond_2

    .line 215
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    .line 217
    const/high16 p2, 0x400000

    and-int/2addr p1, p2

    if-eqz p1, :cond_1

    move v0, v1

    nop

    :cond_1
    return v0

    .line 220
    :cond_2
    return v0
.end method


# virtual methods
.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6

    .line 180
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    const/high16 v1, 0x3f800000    # 1.0f

    const/high16 v2, -0x40800000    # -1.0f

    const/16 v3, 0x11

    const/4 v4, 0x0

    if-eqz v0, :cond_1

    .line 182
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 183
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p1, v4, v0}, Landroid/graphics/Canvas;->translate(FF)V

    .line 185
    iget v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    iget v5, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    invoke-virtual {p1, v0, v5, v4, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 186
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_0

    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 187
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->getLayoutDirection()I

    move-result v5

    invoke-direct {p0, v0, v5}, Lcom/android/setupwizardlib/view/Illustration;->shouldMirrorDrawable(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 190
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 193
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 195
    :cond_1
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    .line 196
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 197
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-le v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    .line 198
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->getLayoutDirection()I

    move-result v3

    invoke-direct {p0, v0, v3}, Lcom/android/setupwizardlib/view/Illustration;->shouldMirrorDrawable(Landroid/graphics/drawable/Drawable;I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 200
    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 201
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->translate(FF)V

    .line 204
    :cond_2
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 205
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 207
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 208
    return-void
.end method

.method protected onLayout(ZIIII)V
    .locals 8

    .line 153
    sub-int v0, p4, p2

    .line 154
    sub-int v1, p5, p3

    .line 155
    iget-object v2, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    .line 156
    iget-object v2, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 157
    iget-object v4, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 159
    iget-object v5, p0, Lcom/android/setupwizardlib/view/Illustration;->mViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v5, v3, v3, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    .line 160
    iget v5, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-eqz v5, :cond_0

    .line 161
    int-to-float v5, v0

    int-to-float v2, v2

    div-float/2addr v5, v2

    iput v5, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    .line 162
    nop

    .line 163
    int-to-float v2, v4

    iget v4, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    mul-float/2addr v2, v4

    float-to-int v4, v2

    .line 165
    move v2, v0

    :cond_0
    const/16 v5, 0x37

    iget-object v6, p0, Lcom/android/setupwizardlib/view/Illustration;->mViewBounds:Landroid/graphics/Rect;

    iget-object v7, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    invoke-static {v5, v2, v4, v6, v7}, Landroid/view/Gravity;->apply(IIILandroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 167
    iget-object v2, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    iget-object v4, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(Landroid/graphics/Rect;)V

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_2

    .line 172
    iget-object v2, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    int-to-float v0, v0

    iget v4, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    div-float/2addr v0, v4

    float-to-double v4, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v0, v4

    iget-object v4, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustrationBounds:Landroid/graphics/Rect;

    .line 173
    invoke-virtual {v4}, Landroid/graphics/Rect;->height()I

    move-result v4

    sub-int/2addr v1, v4

    int-to-float v1, v1

    iget v4, p0, Lcom/android/setupwizardlib/view/Illustration;->mScale:F

    div-float/2addr v1, v4

    float-to-double v4, v1

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    double-to-int v1, v4

    .line 172
    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 175
    :cond_2
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 176
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2

    .line 137
    iget v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 138
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 139
    int-to-float v0, v0

    iget v1, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    .line 140
    int-to-float v0, v0

    iget v1, p0, Lcom/android/setupwizardlib/view/Illustration;->mBaselineGridSize:F

    rem-float v1, v0, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    .line 142
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0, v1, v1}, Lcom/android/setupwizardlib/view/Illustration;->setPadding(IIII)V

    .line 144
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 146
    sget-object v0, Landroid/view/ViewOutlineProvider;->BOUNDS:Landroid/view/ViewOutlineProvider;

    invoke-virtual {p0, v0}, Lcom/android/setupwizardlib/view/Illustration;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 148
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 149
    return-void
.end method

.method public setAspectRatio(F)V
    .locals 0

    .line 124
    iput p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mAspectRatio:F

    .line 125
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->invalidate()V

    .line 126
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->requestLayout()V

    .line 127
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 95
    return-void

    .line 97
    :cond_0
    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 98
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->invalidate()V

    .line 99
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->requestLayout()V

    .line 100
    return-void
.end method

.method public setForeground(Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 132
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/view/Illustration;->setIllustration(Landroid/graphics/drawable/Drawable;)V

    .line 133
    return-void
.end method

.method public setIllustration(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

    .line 108
    return-void

    .line 110
    :cond_0
    iput-object p1, p0, Lcom/android/setupwizardlib/view/Illustration;->mIllustration:Landroid/graphics/drawable/Drawable;

    .line 111
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->invalidate()V

    .line 112
    invoke-virtual {p0}, Lcom/android/setupwizardlib/view/Illustration;->requestLayout()V

    .line 113
    return-void
.end method
