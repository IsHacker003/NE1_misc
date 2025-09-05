.class public Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;
.super Ljava/lang/Object;
.source "DefaultPplSettingsEntryExt.java"

# interfaces
.implements Lcom/mediatek/settings/ext/IPplSettingsEntryExt;


# static fields
.field private static final APK_PATH:Ljava/lang/String; = "/system/priv-app/PrivacyProtectionLock/PrivacyProtectionLock.apk"

.field private static final PKG_NAME:Ljava/lang/String; = "com.mediatek.ppl"

.field private static final TAG:Ljava/lang/String; = "PPL/PplSettingsEntryExt"

.field private static final TARGET_NAME:Ljava/lang/String; = "com.mediatek.ppl.ext.PplSettingsEntryPlugin"

.field private static mPplExt:Ljava/lang/Object;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/settings/ext/IPplSettingsEntryExt;
    .locals 5

    .line 27
    if-nez p0, :cond_0

    .line 28
    const-string p0, "PPL/PplSettingsEntryExt"

    const-string v0, "[getInstance] context is null !!!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 29
    new-instance p0, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;

    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;-><init>()V

    return-object p0

    .line 32
    :cond_0
    const-string v0, "PPL/PplSettingsEntryExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[getInstance] context="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    :try_start_0
    new-instance v0, Ldalvik/system/PathClassLoader;

    const-string v1, "/system/priv-app/PrivacyProtectionLock/PrivacyProtectionLock.apk"

    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 37
    const-string v1, "com.mediatek.ppl.ext.PplSettingsEntryPlugin"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 38
    const-string v2, "PPL/PplSettingsEntryExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Load class : com.mediatek.ppl.ext.PplSettingsEntryPlugin successfully with classLoader:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/4 v0, 0x1

    new-array v2, v0, [Ljava/lang/Class;

    const-class v3, Landroid/content/Context;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 42
    const-string v2, "com.mediatek.ppl"

    const/4 v3, 0x3

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p0

    .line 44
    new-array v0, v0, [Ljava/lang/Object;

    aput-object p0, v0, v4

    invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    sput-object p0, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;->mPplExt:Ljava/lang/Object;

    .line 45
    const-string p0, "PPL/PplSettingsEntryExt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getInstance] return plugin:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;->mPplExt:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    sget-object p0, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;->mPplExt:Ljava/lang/Object;

    check-cast p0, Lcom/mediatek/settings/ext/IPplSettingsEntryExt;
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 47
    :catch_0
    move-exception p0

    .line 51
    const-string v0, "PPL/PplSettingsEntryExt"

    const-string v1, "Exception occurs when initial instance"

    invoke-static {v0, v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 54
    const-string p0, "PPL/PplSettingsEntryExt"

    const-string v0, "[getInstance] return default()"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    new-instance p0, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;

    invoke-direct {p0}, Lcom/mediatek/settings/ext/DefaultPplSettingsEntryExt;-><init>()V

    return-object p0
.end method


# virtual methods
.method public addPplPrf(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 1

    .line 62
    const-string p1, "PPL/PplSettingsEntryExt"

    const-string v0, "addPplPrf() default"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public enablerPause()V
    .locals 2

    .line 70
    const-string v0, "PPL/PplSettingsEntryExt"

    const-string v1, "enablerPause() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void
.end method

.method public enablerResume()V
    .locals 2

    .line 66
    const-string v0, "PPL/PplSettingsEntryExt"

    const-string v1, "enablerResume() default"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    return-void
.end method
