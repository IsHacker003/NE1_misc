.class public Lcust/settings/deviceinfo/CustPreferenceUtils;
.super Ljava/lang/Object;
.source "CustPreferenceUtils.java"


# static fields
.field private static BUILD_NUMBER_HAS_PROPERTY_PATH:Ljava/lang/String;

.field private static isSupportDefaultBuildVer:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    const-string v0, ""

    sput-object v0, Lcust/settings/deviceinfo/CustPreferenceUtils;->BUILD_NUMBER_HAS_PROPERTY_PATH:Ljava/lang/String;

    .line 32
    const/4 v0, 0x0

    sput-boolean v0, Lcust/settings/deviceinfo/CustPreferenceUtils;->isSupportDefaultBuildVer:Z

    return-void
.end method

.method public static getCustBuildNumber(Landroid/content/Context;)Ljava/lang/String;
    .locals 8

    .line 39
    const-string v0, "ro.build.version.base_os"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/deviceinfo/CustPreferenceUtils;->BUILD_NUMBER_HAS_PROPERTY_PATH:Ljava/lang/String;

    .line 40
    const-string v0, "ro.product.device"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 41
    const-string v1, "ro.build.sp.num"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 43
    const-string v2, "ro.build.version.incremental"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 44
    nop

    .line 45
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f12121b    # @string/zzz_ver_append_str ''

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 46
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f120679    # @string/fixed_version ''

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v5, 0x7f050056    # @bool/zzz_default_build_ver 'false'

    invoke-virtual {p0, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    sput-boolean p0, Lcust/settings/deviceinfo/CustPreferenceUtils;->isSupportDefaultBuildVer:Z

    .line 49
    sget-boolean p0, Lcust/settings/deviceinfo/CustPreferenceUtils;->isSupportDefaultBuildVer:Z

    if-nez p0, :cond_5

    .line 51
    sget-object p0, Lcust/settings/deviceinfo/CustPreferenceUtils;->BUILD_NUMBER_HAS_PROPERTY_PATH:Ljava/lang/String;

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_2

    sget-object p0, Lcust/settings/deviceinfo/CustPreferenceUtils;->BUILD_NUMBER_HAS_PROPERTY_PATH:Ljava/lang/String;

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 54
    :try_start_0
    sget-object p0, Lcust/settings/deviceinfo/CustPreferenceUtils;->BUILD_NUMBER_HAS_PROPERTY_PATH:Ljava/lang/String;

    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 55
    const/4 v2, 0x4

    aget-object p0, p0, v2

    const-string v2, ":"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 56
    const-string v2, "CustPreferenceUtils"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "build_version_split[0] : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x0

    aget-object v7, p0, v6

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    const-string v2, "_sprout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 58
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_SP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 59
    const-string v0, "CustPreferenceUtils"

    const-string v1, "hse _SP and _sprout and get_zzz_ver_append_str "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 60
    :cond_0
    const-string v2, "_sprout"

    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 61
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_SP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 62
    const-string v0, "CustPreferenceUtils"

    const-string v1, "hse _SP and get_zzz_ver_append_str but no _sprout"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 64
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p0, p0, v6

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "_SP"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 65
    const-string v0, "CustPreferenceUtils"

    const-string v1, "have _SP but no _sprout and no get_zzz_ver_append_str"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 67
    :catch_0
    move-exception p0

    .line 68
    const-string p0, "CustPreferenceUtils"

    const-string v0, "Exception to get ro.build.version.base_os string, rollback to default design"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 70
    :goto_0
    goto :goto_2

    .line 73
    :cond_2
    :try_start_1
    const-string p0, "_sprout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 74
    const-string p0, "CustPreferenceUtils"

    const-string v0, "no _SP and no _sprout but has get_zzz_ver_append_str"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    .line 77
    :cond_3
    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 78
    const-string v0, "CustPreferenceUtils"

    const-string v1, "default "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 83
    :goto_1
    goto :goto_2

    .line 80
    :catch_1
    move-exception p0

    .line 81
    const-string p0, "CustPreferenceUtils"

    const-string v0, "Exception to get ro.build.version.base_os string, rollback to default design"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    sget-object p0, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 90
    :goto_2
    if-eqz v4, :cond_4

    :try_start_2
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_3

    if-nez v0, :cond_4

    .line 91
    nop

    .line 92
    :try_start_3
    const-string p0, "CustPreferenceUtils"

    const-string v0, "fixed_version"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_4

    .line 94
    :catch_2
    move-exception p0

    goto :goto_3

    :catch_3
    move-exception v0

    move-object v4, p0

    .line 95
    :goto_3
    const-string p0, "CustPreferenceUtils"

    const-string v0, "Exception to get fixed_version_string string"

    invoke-static {p0, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 96
    :cond_4
    move-object v4, p0

    :goto_4
    goto :goto_5

    .line 99
    :cond_5
    sget-object v4, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    .line 102
    :goto_5
    return-object v4
.end method
