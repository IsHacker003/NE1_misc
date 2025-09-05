.class Lcom/android/settingslib/animation/DisappearAnimationUtils$1;
.super Ljava/lang/Object;
.source "DisappearAnimationUtils.java"

# interfaces
.implements Lcom/android/settingslib/animation/AppearAnimationUtils$RowTranslationScaler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/animation/DisappearAnimationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getRowTranslationScale(II)F
    .locals 4

    .line 55
    sub-int p1, p2, p1

    int-to-double v0, p1

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    int-to-double p1, p2

    div-double/2addr v0, p1

    double-to-float p1, v0

    return p1
.end method
