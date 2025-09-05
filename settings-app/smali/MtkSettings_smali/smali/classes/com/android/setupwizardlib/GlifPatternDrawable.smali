.class public Lcom/android/setupwizardlib/GlifPatternDrawable;
.super Landroid/graphics/drawable/Drawable;
.source "GlifPatternDrawable.java"


# static fields
.field private static final ATTRS_PRIMARY_COLOR:[I
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "InlinedApi"
        }
    .end annotation
.end field

.field private static sBitmapCache:Ljava/lang/ref/SoftReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/SoftReference<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private static sPatternLightness:[I

.field private static sPatternPaths:[Landroid/graphics/Path;


# instance fields
.field private mColor:I

.field private mTempPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 52
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x1010433    # @android:attr/colorPrimary

    aput v2, v0, v1

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->ATTRS_PRIMARY_COLOR:[I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 2

    .line 99
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 97
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    .line 100
    invoke-virtual {p0, p1}, Lcom/android/setupwizardlib/GlifPatternDrawable;->setColor(I)V

    .line 101
    return-void
.end method

.method public static invalidatePattern()V
    .locals 1

    .line 91
    const/4 v0, 0x0

    sput-object v0, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 92
    return-void
.end method

.method private renderOnCanvas(Landroid/graphics/Canvas;F)V
    .locals 13

    .line 171
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 172
    invoke-virtual {p1, p2, p2}, Landroid/graphics/Canvas;->scale(FF)V

    .line 174
    iget-object p2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/PorterDuffXfermode;

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v0, v1}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {p2, v0}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 179
    sget-object p2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v0, 0x0

    const/4 v1, 0x7

    if-nez p2, :cond_0

    .line 180
    new-array p2, v1, [Landroid/graphics/Path;

    sput-object p2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    .line 182
    new-array p2, v1, [I

    fill-array-data p2, :array_0

    sput-object p2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    .line 184
    sget-object p2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-instance v2, Landroid/graphics/Path;

    invoke-direct {v2}, Landroid/graphics/Path;-><init>()V

    aput-object v2, p2, v0

    .line 185
    const p2, 0x4480accd    # 1029.4f

    const v3, 0x43b2c000    # 357.5f

    invoke-virtual {v2, p2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 186
    const p2, 0x443dc666    # 759.1f

    const v3, 0x44aac000    # 1366.0f

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 187
    const/4 p2, 0x0

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 188
    const v3, 0x448e3666    # 1137.7f

    invoke-virtual {v2, v3, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 189
    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 191
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    new-instance v10, Landroid/graphics/Path;

    invoke-direct {v10}, Landroid/graphics/Path;-><init>()V

    const/4 v3, 0x1

    aput-object v10, v2, v3

    .line 192
    const v2, 0x448e4333    # 1138.1f

    invoke-virtual {v10, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 193
    const v2, -0x3cef3333    # -144.8f

    const/high16 v11, 0x44400000    # 768.0f

    invoke-virtual {v10, v2, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 194
    const v2, 0x43ba599a    # 372.7f

    invoke-virtual {v10, v2, p2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 195
    const/high16 v2, -0x3bfd0000    # -524.0f

    invoke-virtual {v10, p2, v2}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 196
    const v4, 0x44a15666    # 1290.7f

    const v5, 0x42f33333    # 121.6f

    const v6, 0x44986666    # 1219.2f

    const v7, 0x42246666    # 41.1f

    const v8, 0x44935666    # 1178.7f

    const/4 v9, 0x0

    move-object v3, v10

    invoke-virtual/range {v3 .. v9}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 197
    invoke-virtual {v10}, Landroid/graphics/Path;->close()V

    .line 199
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v3, 0x2

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    aput-object v12, v2, v3

    .line 200
    const v2, 0x446d7333    # 949.8f

    invoke-virtual {v12, v2, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 201
    const v5, 0x42b93333    # 92.6f

    const v6, -0x3cd56666    # -170.6f

    const/high16 v7, 0x43550000    # 213.0f

    const v8, -0x3c23d99a    # -440.3f

    const v9, 0x4386b333    # 269.4f

    const/high16 v10, -0x3bc00000    # -768.0f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->rCubicTo(FFFFFF)V

    .line 202
    const v2, 0x44124000    # 585.0f

    invoke-virtual {v12, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 203
    const v2, 0x40066666    # 2.1f

    const v3, 0x443f8000    # 766.0f

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 204
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 206
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v3, 0x3

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    aput-object v12, v2, v3

    .line 207
    const v2, 0x43eb8ccd    # 471.1f

    invoke-virtual {v12, v2, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 208
    const v2, 0x44302000    # 704.5f

    invoke-virtual {v12, v2, p2}, Landroid/graphics/Path;->rMoveTo(FF)V

    .line 209
    const v5, 0x448c7333    # 1123.6f

    const v6, 0x440cd333    # 563.3f

    const v7, 0x44806ccd    # 1027.4f

    const v8, 0x4389999a    # 275.2f

    const v9, 0x44560ccd    # 856.2f

    const/4 v10, 0x0

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 210
    const v2, 0x43ee3333    # 476.4f

    invoke-virtual {v12, v2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 211
    const v2, -0x3f566666    # -5.3f

    invoke-virtual {v12, v2, v11}, Landroid/graphics/Path;->rLineTo(FF)V

    .line 212
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 214
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v3, 0x4

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    aput-object v12, v2, v3

    .line 215
    const v2, 0x43a18ccd    # 323.1f

    invoke-virtual {v12, v2, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 216
    const v3, 0x44426000    # 777.5f

    invoke-virtual {v12, v3, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 217
    const v5, 0x4425799a    # 661.9f

    const v6, 0x43ae6666    # 348.8f

    const v7, 0x43d5999a    # 427.2f

    const v8, 0x41ab3333    # 21.4f

    const v9, 0x43c8999a    # 401.2f

    const v10, 0x41cb3333    # 25.4f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 218
    invoke-virtual {v12, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 219
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 221
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v3, 0x5

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    aput-object v12, v2, v3

    .line 222
    const v2, 0x4332715f

    const v3, 0x443fb6db

    invoke-virtual {v12, v2, v3}, Landroid/graphics/Path;->moveTo(FF)V

    .line 223
    const v2, 0x439a599a    # 308.7f

    invoke-virtual {v12, v2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 224
    const v5, 0x43bed99a    # 381.7f

    const v6, 0x44172666    # 604.6f

    const v7, 0x43f0cccd    # 481.6f

    const v8, 0x43ac2666    # 344.3f

    const v9, 0x440c8ccd    # 562.2f

    const/4 v10, 0x0

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 225
    invoke-virtual {v12, p2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 226
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 228
    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    const/4 v3, 0x6

    new-instance v12, Landroid/graphics/Path;

    invoke-direct {v12}, Landroid/graphics/Path;-><init>()V

    aput-object v12, v2, v3

    .line 229
    const/high16 v2, 0x43120000    # 146.0f

    invoke-virtual {v12, v2, p2}, Landroid/graphics/Path;->moveTo(FF)V

    .line 230
    invoke-virtual {v12, p2, p2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 231
    invoke-virtual {v12, p2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 232
    const p2, 0x43c5199a    # 394.2f

    invoke-virtual {v12, p2, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 233
    const v5, 0x43a3d99a    # 327.7f

    const v6, 0x43eda666    # 475.3f

    const v7, 0x43648000    # 228.5f

    const/high16 v8, 0x43490000    # 201.0f

    const/high16 v9, 0x43120000    # 146.0f

    move-object v4, v12

    invoke-virtual/range {v4 .. v10}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 234
    invoke-virtual {v12}, Landroid/graphics/Path;->close()V

    .line 237
    :cond_0
    :goto_0
    if-ge v0, v1, :cond_1

    .line 241
    iget-object p2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    sget-object v2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternLightness:[I

    aget v2, v2, v0

    shl-int/lit8 v2, v2, 0x18

    invoke-virtual {p2, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    sget-object p2, Lcom/android/setupwizardlib/GlifPatternDrawable;->sPatternPaths:[Landroid/graphics/Path;

    aget-object p2, p2, v0

    iget-object v2, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 245
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 246
    iget-object p1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/graphics/Paint;->reset()V

    .line 247
    return-void

    :array_0
    .array-data 4
        0xa
        0x28
        0x33
        0x42
        0x5b
        0x70
        0x82
    .end array-data
.end method


# virtual methods
.method public createBitmapCache(II)Landroid/graphics/Bitmap;
    .locals 2

    .line 151
    int-to-float p1, p1

    const v0, 0x44aac000    # 1366.0f

    div-float/2addr p1, v0

    .line 152
    int-to-float p2, p2

    const/high16 v1, 0x44400000    # 768.0f

    div-float/2addr p2, v1

    .line 153
    invoke-static {p1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    .line 154
    const/high16 p2, 0x3fc00000    # 1.5f

    invoke-static {p2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 157
    mul-float/2addr v0, p1

    float-to-int p2, v0

    .line 158
    mul-float/2addr v1, p1

    float-to-int v0, v1

    .line 161
    sget-object v1, Landroid/graphics/Bitmap$Config;->ALPHA_8:Landroid/graphics/Bitmap$Config;

    invoke-static {p2, v0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p2

    .line 165
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p2}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 166
    invoke-direct {p0, v0, p1}, Lcom/android/setupwizardlib/GlifPatternDrawable;->renderOnCanvas(Landroid/graphics/Canvas;F)V

    .line 167
    return-object p2
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 8

    .line 105
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 107
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 108
    nop

    .line 109
    sget-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 110
    sget-object v3, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    invoke-virtual {v3}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/Bitmap;

    goto :goto_0

    .line 112
    :cond_0
    move-object v3, v4

    :goto_0
    if-eqz v3, :cond_2

    .line 113
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    .line 114
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    .line 117
    if-le v1, v5, :cond_1

    int-to-float v5, v5

    const v7, 0x45001000    # 2049.0f

    cmpg-float v5, v5, v7

    if-gez v5, :cond_1

    .line 119
    goto :goto_1

    .line 120
    :cond_1
    if-le v2, v6, :cond_2

    int-to-float v5, v6

    const/high16 v6, 0x44900000    # 1152.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_2

    .line 122
    goto :goto_1

    .line 126
    :cond_2
    move-object v4, v3

    :goto_1
    if-nez v4, :cond_3

    .line 128
    iget-object v3, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v3}, Landroid/graphics/Paint;->reset()V

    .line 130
    invoke-virtual {p0, v1, v2}, Lcom/android/setupwizardlib/GlifPatternDrawable;->createBitmapCache(II)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 131
    new-instance v1, Ljava/lang/ref/SoftReference;

    invoke-direct {v1, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    sput-object v1, Lcom/android/setupwizardlib/GlifPatternDrawable;->sBitmapCache:Ljava/lang/ref/SoftReference;

    .line 134
    iget-object v1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    invoke-virtual {v1}, Landroid/graphics/Paint;->reset()V

    .line 137
    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 138
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 140
    invoke-virtual {p0, p1, v4, v0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V

    .line 141
    const/high16 v0, -0x1000000

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 142
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 143
    iget-object v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mTempPaint:Landroid/graphics/Paint;

    const/4 v1, 0x0

    invoke-virtual {p1, v4, v1, v1, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 144
    iget v0, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    .line 146
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 147
    return-void
.end method

.method public getOpacity()I
    .locals 1

    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method public scaleCanvasToBounds(Landroid/graphics/Canvas;Landroid/graphics/Bitmap;Landroid/graphics/Rect;)V
    .locals 5

    .line 251
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    .line 252
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p2

    .line 253
    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    int-to-float v0, v0

    div-float/2addr v1, v0

    .line 254
    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    .line 257
    invoke-virtual {p1, v1, p3}, Landroid/graphics/Canvas;->scale(FF)V

    .line 258
    cmpl-float v2, p3, v1

    const/4 v3, 0x0

    const/high16 v4, 0x3f800000    # 1.0f

    if-lez v2, :cond_0

    .line 261
    div-float/2addr p3, v1

    const p2, 0x3e158106    # 0.146f

    mul-float/2addr p2, v0

    invoke-virtual {p1, p3, v4, p2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    goto :goto_0

    .line 262
    :cond_0
    cmpl-float v0, v1, p3

    if-lez v0, :cond_1

    .line 265
    div-float/2addr v1, p3

    const p3, 0x3e6978d5    # 0.228f

    mul-float/2addr p3, p2

    invoke-virtual {p1, v4, v1, v3, p3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 267
    :cond_1
    :goto_0
    return-void
.end method

.method public setAlpha(I)V
    .locals 0

    .line 272
    return-void
.end method

.method public setColor(I)V
    .locals 3

    .line 289
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v0

    .line 290
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    .line 291
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result p1

    .line 292
    const/16 v2, 0xcc

    invoke-static {v2, v0, v1, p1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p1

    iput p1, p0, Lcom/android/setupwizardlib/GlifPatternDrawable;->mColor:I

    .line 293
    invoke-virtual {p0}, Lcom/android/setupwizardlib/GlifPatternDrawable;->invalidateSelf()V

    .line 294
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 277
    return-void
.end method
