.class public Lcom/android/settingslib/display/DisplayDensityUtils;
.super Ljava/lang/Object;
.source "DisplayDensityUtils.java"


# static fields
.field private static final SUMMARIES_LARGER:[I

.field private static final SUMMARIES_SMALLER:[I

.field private static final SUMMARY_CUSTOM:I

.field public static final SUMMARY_DEFAULT:I


# instance fields
.field private final mCurrentIndex:I

.field private final mDefaultDensity:I

.field private final mEntries:[Ljava/lang/String;

.field private final mValues:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 52
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_default:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    .line 55
    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_custom:I

    sput v0, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    .line 61
    const/4 v0, 0x1

    new-array v1, v0, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_small:I

    const/4 v3, 0x0

    aput v2, v1, v3

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    .line 69
    const/4 v1, 0x3

    new-array v1, v1, [I

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_large:I

    aput v2, v1, v3

    sget v2, Lcom/android/settingslib/R$string;->screen_zoom_summary_very_large:I

    aput v2, v1, v0

    sget v0, Lcom/android/settingslib/R$string;->screen_zoom_summary_extremely_large:I

    const/4 v2, 0x2

    aput v0, v1, v2

    sput-object v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 18

    move-object/from16 v0, p0

    .line 88
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 89
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/settingslib/display/DisplayDensityUtils;->getDefaultDisplayDensity(I)I

    move-result v2

    .line 91
    const/4 v3, -0x1

    if-gtz v2, :cond_0

    .line 92
    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 93
    iput-object v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 94
    iput v1, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 95
    iput v3, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 96
    return-void

    .line 99
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 100
    new-instance v5, Landroid/util/DisplayMetrics;

    invoke-direct {v5}, Landroid/util/DisplayMetrics;-><init>()V

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object v6

    invoke-virtual {v6, v5}, Landroid/view/Display;->getRealMetrics(Landroid/util/DisplayMetrics;)V

    .line 103
    iget v6, v5, Landroid/util/DisplayMetrics;->densityDpi:I

    .line 104
    nop

    .line 107
    iget v7, v5, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v5, v5, Landroid/util/DisplayMetrics;->heightPixels:I

    invoke-static {v7, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 108
    const/16 v7, 0xa0

    mul-int/2addr v7, v5

    div-int/lit16 v7, v7, 0x140

    .line 109
    const/high16 v5, 0x3fc00000    # 1.5f

    int-to-float v7, v7

    int-to-float v8, v2

    div-float/2addr v7, v8

    invoke-static {v5, v7}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 111
    const/high16 v7, 0x3f800000    # 1.0f

    sub-float/2addr v5, v7

    const v9, 0x3db851ec    # 0.09f

    div-float v9, v5, v9

    sget-object v10, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    array-length v10, v10

    int-to-float v10, v10

    const/4 v11, 0x0

    invoke-static {v9, v11, v10}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v9

    float-to-int v9, v9

    .line 113
    const v10, 0x3fd55553

    sget-object v12, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    array-length v12, v12

    int-to-float v12, v12

    invoke-static {v10, v11, v12}, Landroid/util/MathUtils;->constrain(FFF)F

    move-result v10

    float-to-int v10, v10

    .line 116
    const/4 v11, 0x1

    add-int v12, v11, v10

    add-int/2addr v12, v9

    new-array v12, v12, [Ljava/lang/String;

    .line 117
    array-length v13, v12

    new-array v13, v13, [I

    .line 118
    nop

    .line 120
    if-lez v10, :cond_2

    .line 121
    const v14, 0x3e199998    # 0.14999998f

    int-to-float v15, v10

    div-float/2addr v14, v15

    .line 122
    sub-int/2addr v10, v11

    move v15, v3

    move v3, v1

    :goto_0
    if-ltz v10, :cond_3

    .line 124
    add-int/lit8 v1, v10, 0x1

    int-to-float v1, v1

    mul-float/2addr v1, v14

    sub-float v1, v7, v1

    mul-float/2addr v1, v8

    float-to-int v1, v1

    and-int/lit8 v1, v1, -0x2

    .line 125
    if-ne v6, v1, :cond_1

    .line 126
    nop

    .line 128
    move v15, v3

    :cond_1
    sget-object v16, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_SMALLER:[I

    aget v11, v16, v10

    invoke-virtual {v4, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v12, v3

    .line 129
    aput v1, v13, v3

    .line 130
    add-int/lit8 v3, v3, 0x1

    .line 122
    add-int/lit8 v10, v10, -0x1

    const/4 v1, 0x0

    const/4 v11, 0x1

    goto :goto_0

    .line 134
    :cond_2
    move v15, v3

    const/4 v3, 0x0

    :cond_3
    if-ne v6, v2, :cond_4

    .line 135
    nop

    .line 137
    move v15, v3

    :cond_4
    aput v2, v13, v3

    .line 138
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_DEFAULT:I

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v3

    .line 139
    add-int/lit8 v3, v3, 0x1

    .line 141
    if-lez v9, :cond_6

    .line 142
    int-to-float v1, v9

    div-float/2addr v5, v1

    .line 143
    const/4 v1, 0x0

    :goto_1
    if-ge v1, v9, :cond_6

    .line 145
    add-int/lit8 v10, v1, 0x1

    int-to-float v11, v10

    mul-float/2addr v11, v5

    add-float/2addr v11, v7

    mul-float/2addr v11, v8

    float-to-int v11, v11

    and-int/lit8 v11, v11, -0x2

    .line 146
    if-ne v6, v11, :cond_5

    .line 147
    nop

    .line 149
    move v15, v3

    :cond_5
    aput v11, v13, v3

    .line 150
    sget-object v11, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARIES_LARGER:[I

    aget v1, v11, v1

    invoke-virtual {v4, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v3

    .line 151
    add-int/lit8 v3, v3, 0x1

    .line 143
    move v1, v10

    goto :goto_1

    .line 156
    :cond_6
    if-ltz v15, :cond_7

    .line 157
    goto :goto_2

    .line 161
    :cond_7
    array-length v1, v13

    const/4 v5, 0x1

    add-int/2addr v1, v5

    .line 162
    invoke-static {v13, v1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v13

    .line 163
    aput v6, v13, v3

    .line 165
    invoke-static {v12, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v1

    move-object v12, v1

    check-cast v12, [Ljava/lang/String;

    .line 166
    sget v1, Lcom/android/settingslib/display/DisplayDensityUtils;->SUMMARY_CUSTOM:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    invoke-virtual {v4, v1, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v12, v3

    .line 168
    nop

    .line 171
    move v15, v3

    :goto_2
    iput v2, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    .line 172
    iput v15, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    .line 173
    iput-object v12, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    .line 174
    iput-object v13, v0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    .line 175
    return-void
.end method

.method public static clearForcedDisplayDensity(I)V
    .locals 2

    .line 218
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 219
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;

    invoke-direct {v1, p0, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$FjSo_v2dJihYeklLmCubVRPf_nw;-><init>(II)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 227
    return-void
.end method

.method private static getDefaultDisplayDensity(I)I
    .locals 1

    .line 202
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 203
    invoke-interface {v0, p0}, Landroid/view/IWindowManager;->getInitialDisplayDensity(I)I

    move-result p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p0

    .line 204
    :catch_0
    move-exception p0

    .line 205
    const/4 p0, -0x1

    return p0
.end method

.method static synthetic lambda$clearForcedDisplayDensity$0(II)V
    .locals 1

    .line 221
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 222
    invoke-interface {v0, p0, p1}, Landroid/view/IWindowManager;->clearForcedDisplayDensityForUser(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 225
    goto :goto_0

    .line 223
    :catch_0
    move-exception p0

    .line 224
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to clear forced display density setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_0
    return-void
.end method

.method static synthetic lambda$setForcedDisplayDensity$1(III)V
    .locals 1

    .line 242
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v0

    .line 243
    invoke-interface {v0, p0, p1, p2}, Landroid/view/IWindowManager;->setForcedDisplayDensityForUser(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 246
    goto :goto_0

    .line 244
    :catch_0
    move-exception p0

    .line 245
    const-string p0, "DisplayDensityUtils"

    const-string p1, "Unable to save forced display density setting"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :goto_0
    return-void
.end method

.method public static setForcedDisplayDensity(II)V
    .locals 2

    .line 239
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 240
    new-instance v1, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settingslib/display/-$$Lambda$DisplayDensityUtils$jbnNZEy3zYf8rJTNV5wQSa3Z5eQ;-><init>(III)V

    invoke-static {v1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 248
    return-void
.end method


# virtual methods
.method public getCurrentIndex()I
    .locals 1

    .line 186
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mCurrentIndex:I

    return v0
.end method

.method public getDefaultDensity()I
    .locals 1

    .line 190
    iget v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mDefaultDensity:I

    return v0
.end method

.method public getEntries()[Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mEntries:[Ljava/lang/String;

    return-object v0
.end method

.method public getValues()[I
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/android/settingslib/display/DisplayDensityUtils;->mValues:[I

    return-object v0
.end method
