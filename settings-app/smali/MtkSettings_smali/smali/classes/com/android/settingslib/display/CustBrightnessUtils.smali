.class public Lcom/android/settingslib/display/CustBrightnessUtils;
.super Ljava/lang/Object;
.source "CustBrightnessUtils.java"


# direct methods
.method public static final convertLinearToBezier(III)I
    .locals 0

    .line 44
    int-to-float p1, p1

    int-to-float p2, p2

    int-to-float p0, p0

    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->norm(FFF)F

    move-result p0

    .line 45
    invoke-static {p0}, Landroid/util/MathUtils;->sqrt(F)F

    move-result p0

    .line 46
    const/4 p1, 0x0

    const/high16 p2, 0x42fe0000    # 127.0f

    invoke-static {p1, p2, p0}, Landroid/util/MathUtils;->lerp(FFF)F

    move-result p0

    invoke-static {p0}, Ljava/lang/Math;->round(F)I

    move-result p0

    return p0
.end method
