.class public Lcust/settings/UtilsExt;
.super Ljava/lang/Object;
.source "UtilsExt.java"


# direct methods
.method public static getDisableAppList(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 63
    if-eqz p0, :cond_1

    .line 64
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 65
    if-eqz p0, :cond_0

    .line 66
    const v0, 0x7f03000e    # @array/app_white_list

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 67
    return-object p0

    .line 69
    :cond_0
    const-string p0, "UtilsExt"

    const-string v0, "getDisableAppList  res is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    goto :goto_0

    .line 72
    :cond_1
    const-string p0, "UtilsExt"

    const-string v0, "getDisableAppList context is null!"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static isInDisableAppList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3

    .line 78
    nop

    .line 79
    const/4 v0, 0x0

    if-eqz p0, :cond_2

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 84
    :cond_0
    invoke-static {p0}, Lcust/settings/UtilsExt;->getDisableAppList(Landroid/content/Context;)Ljava/util/List;

    move-result-object p0

    .line 86
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 87
    invoke-interface {p0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 88
    const/4 v0, 0x1

    .line 89
    const-string p0, "UtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DisableAppList contains "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_1
    return v0

    .line 80
    :cond_2
    :goto_0
    const-string p0, "UtilsExt"

    const-string p1, "isInDisableAppList context is null!"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return v0
.end method
