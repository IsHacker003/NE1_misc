.class public Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;
.super Ljava/lang/Object;
.source "OpSettingsCustomizationUtils.java"


# static fields
.field static sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

.field private static final sOperatorFactoryInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 18
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    .line 21
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP01Settings.apk"

    const-string v3, "com.mediatek.settings.op01.Op01SettingsCustomizationFactory"

    const-string v4, "com.mediatek.settings.op01"

    const-string v5, "OP01"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP02Settings.apk"

    const-string v3, "com.mediatek.settings.op02.Op02SettingsCustomizationFactory"

    const-string v4, "com.mediatek.settings.op02"

    const-string v5, "OP02"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 33
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP03Settings.apk"

    const-string v3, "com.mediatek.op03.settings.OP03SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op03.settings"

    const-string v5, "OP03"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 40
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP06Settings.apk"

    const-string v3, "com.mediatek.op06.settings.Op06SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op06.settings"

    const-string v5, "OP06"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP07Settings.apk"

    const-string v3, "com.mediatek.op07.settings.OP07SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op07.settings"

    const-string v5, "OP07"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP08Settings.apk"

    const-string v3, "com.mediatek.op08.settings.Op08SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op08.settings"

    const-string v5, "OP08"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP09ClibSettings.apk"

    const-string v3, "com.mediatek.settings.op09clib.Op09ClibSettingsCustomizationFactory"

    const-string v4, "com.mediatek.settings.op09clib"

    const-string v5, "OP09"

    const-string v6, "SEGC"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 68
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v1, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP12Settings.apk"

    const-string v3, "com.mediatek.op12.settings.Op12SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op12.settings"

    const-string v5, "OP12"

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP16Settings.apk"

    const-string v3, "com.mediatek.op16.settings.Op16SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op16.settings"

    const-string v5, "OP16"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    new-instance v7, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;

    const-string v2, "OP18Settings.apk"

    const-string v3, "com.mediatek.op18.settings.OP18SettingsCustomizationFactory"

    const-string v4, "com.mediatek.op18.settings"

    const-string v5, "OP18"

    const-string v6, "SEGDEFAULT"

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader$OperatorFactoryInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 88
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;
    .locals 2

    const-class v0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;

    monitor-enter v0

    .line 91
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    if-nez v1, :cond_0

    .line 92
    sget-object v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sOperatorFactoryInfoList:Ljava/util/List;

    .line 93
    invoke-static {p0, v1}, Lcom/mediatek/common/util/OperatorCustomizationFactoryLoader;->loadFactory(Landroid/content/Context;Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    sput-object v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    .line 94
    sget-object v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    if-nez v1, :cond_0

    .line 95
    new-instance v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    .line 98
    :cond_0
    sget-object p0, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->sFactory:Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    .line 90
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method
