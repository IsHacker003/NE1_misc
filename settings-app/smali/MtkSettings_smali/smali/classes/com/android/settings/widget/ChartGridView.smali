.class public Lcom/android/settings/widget/ChartGridView;
.super Landroid/view/View;
.source "ChartGridView.java"


# instance fields
.field private mBorder:Landroid/graphics/drawable/Drawable;

.field private mHoriz:Lcom/android/settings/widget/ChartAxis;

.field private mLabelColor:I

.field private mLabelEnd:Landroid/text/Layout;

.field private mLabelMid:Landroid/text/Layout;

.field private mLabelSize:I

.field private mLabelStart:Landroid/text/Layout;

.field private mPrimary:Landroid/graphics/drawable/Drawable;

.field private mSecondary:Landroid/graphics/drawable/Drawable;

.field private mVert:Lcom/android/settings/widget/ChartAxis;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 58
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 62
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2

    .line 66
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 68
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartGridView;->setWillNotDraw(Z)V

    .line 70
    sget-object v1, Lcom/android/settings/R$styleable;->ChartGridView:[I

    invoke-virtual {p1, p2, v1, p3, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 73
    const/4 p3, 0x3

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 74
    const/4 p3, 0x4

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 75
    const/4 p3, 0x2

    invoke-virtual {p2, p3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    .line 77
    const/4 p3, -0x1

    invoke-virtual {p2, v0, p3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p3

    .line 78
    sget-object v1, Lcom/android/internal/R$styleable;->TextAppearance:[I

    invoke-virtual {p1, p3, v1}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 80
    invoke-virtual {p1, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p3

    iput p3, p0, Lcom/android/settings/widget/ChartGridView;->mLabelSize:I

    .line 82
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 84
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result p1

    iput p1, p0, Lcom/android/settings/widget/ChartGridView;->mLabelColor:I

    .line 88
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    return-void
.end method


# virtual methods
.method init(Lcom/android/settings/widget/ChartAxis;Lcom/android/settings/widget/ChartAxis;)V
    .locals 1

    .line 92
    const-string v0, "missing horiz"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    .line 93
    const-string p1, "missing vert"

    invoke-static {p2, p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/ChartAxis;

    iput-object p1, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    .line 94
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 11

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getWidth()I

    move-result v0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getHeight()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/widget/ChartGridView;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    .line 110
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mSecondary:Landroid/graphics/drawable/Drawable;

    .line 111
    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    .line 114
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mVert:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v5

    .line 115
    array-length v6, v5

    move v7, v3

    :goto_0
    if-ge v7, v6, :cond_0

    aget v8, v5, v7

    .line 116
    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v1

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 117
    float-to-int v8, v8

    invoke-virtual {v2, v3, v8, v0, v9}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 118
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 115
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 122
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mPrimary:Landroid/graphics/drawable/Drawable;

    .line 123
    if-eqz v2, :cond_1

    .line 124
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    .line 125
    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    .line 127
    iget-object v5, p0, Lcom/android/settings/widget/ChartGridView;->mHoriz:Lcom/android/settings/widget/ChartAxis;

    invoke-interface {v5}, Lcom/android/settings/widget/ChartAxis;->getTickPoints()[F

    move-result-object v5

    .line 128
    array-length v6, v5

    move v7, v3

    :goto_1
    if-ge v7, v6, :cond_1

    aget v8, v5, v7

    .line 129
    int-to-float v9, v4

    add-float/2addr v9, v8

    int-to-float v10, v0

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    float-to-int v9, v9

    .line 130
    float-to-int v8, v8

    invoke-virtual {v2, v8, v3, v9, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 131
    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 128
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 135
    :cond_1
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 136
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mBorder:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 138
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getHeight()I

    move-result v2

    div-int/lit8 v3, v2, 0x8

    nop

    .line 140
    :cond_2
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelStart:Landroid/text/Layout;

    .line 141
    if-eqz v2, :cond_3

    .line 142
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 143
    const/4 v5, 0x0

    add-int v6, v1, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 144
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 145
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 148
    :cond_3
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelMid:Landroid/text/Layout;

    .line 149
    if-eqz v2, :cond_4

    .line 150
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 151
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int v5, v0, v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    add-int v6, v1, v3

    int-to-float v6, v6

    invoke-virtual {p1, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 152
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 153
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 156
    :cond_4
    iget-object v2, p0, Lcom/android/settings/widget/ChartGridView;->mLabelEnd:Landroid/text/Layout;

    .line 157
    if-eqz v2, :cond_5

    .line 158
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v4

    .line 159
    invoke-virtual {v2}, Landroid/text/Layout;->getWidth()I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    add-int/2addr v1, v3

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 160
    invoke-virtual {v2, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {p1, v4}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 163
    :cond_5
    return-void
.end method
