.class public Lcom/android/settingslib/display/BrightnessUtils;
.super Ljava/lang/Object;
.source "BrightnessUtils.java"


# direct methods
.method public static final convertLinearToGamma(III)I
    .locals 0

    .line 91
    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p0, p0

    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    const/high16 p1, 0x41400000    # 12.0f

    mul-float/2addr p0, p1

    .line 93
    const/high16 p1, 0x3f800000    # 1.0f

    cmpg-float p1, p0, p1

    if-gtz p1, :cond_0

    .line 94
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    const/high16 p1, 0x3f000000    # 0.5f

    mul-float/2addr p0, p1

    goto :goto_0

    .line 96
    :cond_0
    const p1, 0x3e371ff0

    const p2, 0x3e91c020

    sub-float/2addr p0, p2

    invoke-static {p0}, Landroid/util/MathUtils;->log(F)F

    move-result p0

    mul-float/2addr p1, p0

    const p0, 0x3f0f564f

    add-float/2addr p0, p1

    .line 99
    :goto_0
    const/4 p1, 0x0

    const p2, 0x447fc000    # 1023.0f

    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
