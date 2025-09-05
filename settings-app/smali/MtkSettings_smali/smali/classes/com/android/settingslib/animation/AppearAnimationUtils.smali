.class public Lcom/android/settingslib/animation/AppearAnimationUtils;
.super Ljava/lang/Object;
.source "AppearAnimationUtils.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationCreator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;,
        Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/settingslib/animation/AppearAnimationCreator<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field protected mAppearing:Z

.field protected final mDelayScale:F

.field private final mDuration:J

.field private final mInterpolator:Landroid/view/animation/Interpolator;

.field private final mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

.field protected mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

.field private final mStartTranslation:F


# direct methods
.method public constructor <init>(Landroid/content/Context;JFFLandroid/view/animation/Interpolator;)V
    .locals 1

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-instance v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    invoke-direct {v0, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;)V

    iput-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    .line 56
    iput-object p6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 57
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p6, Lcom/android/settingslib/R$dimen;->appear_y_translation_start:I

    invoke-virtual {p1, p6}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result p1

    int-to-float p1, p1

    mul-float/2addr p1, p4

    iput p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    .line 59
    iput p5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    .line 60
    iput-wide p2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 61
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    .line 62
    return-void
.end method

.method private getDelays([Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .line 133
    nop

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 135
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 136
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    array-length v1, p1

    new-array v1, v1, [[J

    iput-object v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 137
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move-wide v2, v1

    move v1, v0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_1

    .line 138
    iget-object v4, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v4, v4, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    const/4 v5, 0x1

    new-array v5, v5, [J

    aput-object v5, v4, v1

    .line 139
    invoke-virtual {p0, v1, v0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v4

    .line 140
    iget-object v6, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v6, v6, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v6, v6, v1

    aput-wide v4, v6, v0

    .line 141
    aget-object v6, p1, v1

    if-eqz v6, :cond_0

    cmp-long v6, v4, v2

    if-lez v6, :cond_0

    .line 142
    nop

    .line 143
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v0, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 144
    iget-object v2, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v1, v2, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 137
    move-wide v2, v4

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 147
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    return-object p1
.end method

.method private getDelays([[Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;)",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;"
        }
    .end annotation

    .line 151
    nop

    .line 152
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    const/4 v1, -0x1

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 153
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    array-length v1, p1

    new-array v1, v1, [[J

    iput-object v1, v0, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    .line 155
    const/4 v0, 0x0

    const-wide/16 v1, -0x1

    move-wide v2, v1

    move v1, v0

    :goto_0
    array-length v4, p1

    if-ge v1, v4, :cond_2

    .line 156
    aget-object v4, p1, v1

    .line 157
    iget-object v5, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v5, v5, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v4

    new-array v6, v6, [J

    aput-object v6, v5, v1

    .line 158
    move-wide v5, v2

    move v2, v0

    :goto_1
    array-length v3, v4

    if-ge v2, v3, :cond_1

    .line 159
    invoke-virtual {p0, v1, v2}, Lcom/android/settingslib/animation/AppearAnimationUtils;->calculateDelay(II)J

    move-result-wide v7

    .line 160
    iget-object v3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iget-object v3, v3, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v3, v3, v1

    aput-wide v7, v3, v2

    .line 161
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    if-eqz v3, :cond_0

    cmp-long v3, v7, v5

    if-lez v3, :cond_0

    .line 162
    nop

    .line 163
    iget-object v3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v2, v3, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    .line 164
    iget-object v3, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    iput v1, v3, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    .line 158
    move-wide v5, v7

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 155
    :cond_1
    add-int/lit8 v1, v1, 0x1

    move-wide v2, v5

    goto :goto_0

    .line 168
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mProperties:Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    return-object p1
.end method

.method private startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;",
            "[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 86
    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_5

    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v2, v3, :cond_0

    goto :goto_5

    .line 90
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 91
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v4, v4, v3

    .line 92
    aget-wide v7, v4, v2

    .line 93
    const/4 v4, 0x0

    .line 94
    iget v5, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v5, v3, :cond_1

    iget v5, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-nez v5, :cond_1

    .line 95
    nop

    .line 97
    move-object/from16 v14, p3

    goto :goto_1

    :cond_1
    move-object v14, v4

    :goto_1
    iget-object v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v4, :cond_2

    .line 98
    iget-object v4, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    iget-object v5, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v5, v5

    invoke-interface {v4, v3, v5}, Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;->getRowTranslationScale(II)F

    move-result v4

    goto :goto_2

    .line 99
    :cond_2
    const/high16 v4, 0x3f800000    # 1.0f

    .line 100
    :goto_2
    iget v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v4, v5

    .line 101
    aget-object v6, p2, v3

    iget-wide v9, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 102
    iget-boolean v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v5, :cond_3

    :goto_3
    move v11, v4

    goto :goto_4

    :cond_3
    neg-float v4, v4

    goto :goto_3

    :goto_4
    iget-boolean v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    iget-object v13, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    move-object/from16 v5, p4

    invoke-interface/range {v5 .. v14}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 90
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 105
    :cond_4
    return-void

    .line 87
    :cond_5
    :goto_5
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 88
    return-void
.end method

.method private startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;",
            "[[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 109
    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_6

    iget v2, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v2, v3, :cond_0

    goto :goto_5

    .line 113
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v4, v4

    if-ge v3, v4, :cond_5

    .line 114
    iget-object v4, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    aget-object v4, v4, v3

    .line 115
    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    if-eqz v5, :cond_1

    .line 116
    iget-object v5, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mRowTranslationScaler:Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;

    iget-object v6, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->delays:[[J

    array-length v6, v6

    invoke-interface {v5, v3, v6}, Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;->getRowTranslationScale(II)F

    move-result v5

    goto :goto_1

    .line 117
    :cond_1
    const/high16 v5, 0x3f800000    # 1.0f

    .line 118
    :goto_1
    iget v6, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mStartTranslation:F

    mul-float/2addr v5, v6

    .line 119
    move v6, v2

    :goto_2
    array-length v7, v4

    if-ge v6, v7, :cond_4

    .line 120
    aget-wide v10, v4, v6

    .line 121
    const/4 v7, 0x0

    .line 122
    iget v8, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayRowIndex:I

    if-ne v8, v3, :cond_2

    iget v8, v1, Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;->maxDelayColIndex:I

    if-ne v8, v6, :cond_2

    .line 123
    nop

    .line 125
    move-object/from16 v17, p3

    goto :goto_3

    :cond_2
    move-object/from16 v17, v7

    :goto_3
    aget-object v8, p2, v3

    aget-object v9, v8, v6

    iget-wide v12, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDuration:J

    .line 126
    iget-boolean v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    if-eqz v8, :cond_3

    move v14, v5

    goto :goto_4

    :cond_3
    neg-float v8, v5

    move v14, v8

    :goto_4
    iget-boolean v15, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mAppearing:Z

    iget-object v8, v0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 125
    move-object/from16 v16, v8

    move-object/from16 v8, p4

    invoke-interface/range {v8 .. v17}, Lcom/android/settingslib/animation/AppearAnimationCreator;->createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    .line 119
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 113
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 130
    :cond_5
    return-void

    .line 110
    :cond_6
    :goto_5
    invoke-interface/range {p3 .. p3}, Ljava/lang/Runnable;->run()V

    .line 111
    return-void
.end method

.method public static startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V
    .locals 5

    .line 228
    invoke-virtual {p0}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 229
    new-instance v0, Landroid/view/RenderNodeAnimator;

    invoke-direct {v0, v1, p5}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 231
    invoke-virtual {v0, p0}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 232
    nop

    .line 233
    goto :goto_0

    .line 234
    :cond_0
    sget-object v0, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    const/4 v2, 0x2

    new-array v2, v2, [F

    const/4 v3, 0x0

    .line 235
    invoke-virtual {p0}, Landroid/view/View;->getTranslationY()F

    move-result v4

    aput v4, v2, v3

    aput p5, v2, v1

    .line 234
    invoke-static {p0, v0, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 237
    :goto_0
    invoke-virtual {v0, p6}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 238
    invoke-virtual {v0, p3, p4}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 239
    invoke-virtual {v0, p1, p2}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 240
    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 241
    return-void
.end method


# virtual methods
.method protected calculateDelay(II)J
    .locals 6

    .line 172
    mul-int/lit8 v0, p1, 0x28

    int-to-double v0, v0

    int-to-double v2, p2

    int-to-double p1, p1

    const-wide v4, 0x3fd999999999999aL    # 0.4

    invoke-static {p1, p2, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p1

    add-double/2addr p1, v4

    mul-double/2addr v2, p1

    const-wide/high16 p1, 0x4034000000000000L    # 20.0

    mul-double/2addr v2, p1

    add-double/2addr v0, v2

    iget p1, p0, Lcom/android/settingslib/animation/AppearAnimationUtils;->mDelayScale:F

    float-to-double p1, p1

    mul-double/2addr v0, p1

    double-to-long p1, v0

    return-wide p1
.end method

.method public createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 13

    move-object v0, p0

    move-object v1, p1

    .line 186
    move-object/from16 v3, p9

    if-eqz v1, :cond_7

    .line 187
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz p7, :cond_0

    move v6, v5

    goto :goto_0

    :cond_0
    move v6, v4

    :goto_0
    invoke-virtual {v1, v6}, Landroid/view/View;->setAlpha(F)V

    .line 188
    if-eqz p7, :cond_1

    move/from16 v6, p6

    goto :goto_1

    :cond_1
    move v6, v5

    :goto_1
    invoke-virtual {v1, v6}, Landroid/view/View;->setTranslationY(F)V

    .line 190
    if-eqz p7, :cond_2

    goto :goto_2

    .line 191
    :cond_2
    move v4, v5

    :goto_2
    invoke-virtual {v1}, Landroid/view/View;->isHardwareAccelerated()Z

    move-result v6

    const/4 v7, 0x2

    if-eqz v6, :cond_3

    .line 192
    new-instance v6, Landroid/view/RenderNodeAnimator;

    const/16 v8, 0xb

    invoke-direct {v6, v8, v4}, Landroid/view/RenderNodeAnimator;-><init>(IF)V

    .line 194
    invoke-virtual {v6, v1}, Landroid/view/RenderNodeAnimator;->setTarget(Landroid/view/View;)V

    .line 195
    nop

    .line 196
    goto :goto_3

    .line 197
    :cond_3
    sget-object v6, Landroid/view/View;->ALPHA:Landroid/util/Property;

    new-array v8, v7, [F

    const/4 v9, 0x0

    invoke-virtual {v1}, Landroid/view/View;->getAlpha()F

    move-result v10

    aput v10, v8, v9

    const/4 v9, 0x1

    aput v4, v8, v9

    invoke-static {v1, v6, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v6

    .line 199
    :goto_3
    move-object/from16 v8, p8

    invoke-virtual {v6, v8}, Landroid/animation/Animator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 200
    move-wide/from16 v9, p4

    invoke-virtual {v6, v9, v10}, Landroid/animation/Animator;->setDuration(J)Landroid/animation/Animator;

    .line 201
    move-wide v11, p2

    invoke-virtual {v6, v11, v12}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 202
    invoke-virtual {v1}, Landroid/view/View;->hasOverlappingRendering()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 203
    const/4 v4, 0x0

    invoke-virtual {v1, v7, v4}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 204
    new-instance v4, Lcom/android/settingslib/animation/AppearAnimationUtils$1;

    invoke-direct {v4, v0, v1}, Lcom/android/settingslib/animation/AppearAnimationUtils$1;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Landroid/view/View;)V

    invoke-virtual {v6, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 211
    :cond_4
    if-eqz v3, :cond_5

    .line 212
    new-instance v4, Lcom/android/settingslib/animation/AppearAnimationUtils$2;

    invoke-direct {v4, v0, v3}, Lcom/android/settingslib/animation/AppearAnimationUtils$2;-><init>(Lcom/android/settingslib/animation/AppearAnimationUtils;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v4}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 219
    :cond_5
    invoke-virtual {v6}, Landroid/animation/Animator;->start()V

    .line 220
    if-eqz p7, :cond_6

    goto :goto_4

    :cond_6
    move/from16 v5, p6

    :goto_4
    move-object v0, v1

    move-wide v1, v11

    move-wide v3, v9

    move-object v6, v8

    invoke-static/range {v0 .. v6}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startTranslationYAnimation(Landroid/view/View;JJFLandroid/view/animation/Interpolator;)V

    .line 223
    :cond_7
    return-void
.end method

.method public bridge synthetic createAnimation(Ljava/lang/Object;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V
    .locals 10

    .line 36
    move-object v1, p1

    check-cast v1, Landroid/view/View;

    move-object v0, p0

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v9, p9

    invoke-virtual/range {v0 .. v9}, Lcom/android/settingslib/animation/AppearAnimationUtils;->createAnimation(Landroid/view/View;JJFZLandroid/view/animation/Interpolator;Ljava/lang/Runnable;)V

    return-void
.end method

.method public startAnimation([Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 0

    .line 69
    invoke-virtual {p0, p1, p2, p0}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 70
    return-void
.end method

.method public startAnimation([Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getDelays([Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 81
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 82
    return-void
.end method

.method public startAnimation2d([[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([[TT;",
            "Ljava/lang/Runnable;",
            "Lcom/android/settingslib/animation/AppearAnimationCreator<",
            "TT;>;)V"
        }
    .end annotation

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/animation/AppearAnimationUtils;->getDelays([[Ljava/lang/Object;)Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;

    move-result-object v0

    .line 75
    invoke-direct {p0, v0, p1, p2, p3}, Lcom/android/settingslib/animation/AppearAnimationUtils;->startAnimations(Lcom/android/settingslib/animation/AppearAnimationUtils$AppearAnimationProperties;[[Ljava/lang/Object;Ljava/lang/Runnable;Lcom/android/settingslib/animation/AppearAnimationCreator;)V

    .line 76
    return-void
.end method
