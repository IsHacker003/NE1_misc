.class public Lcom/mediatek/settings/UtilsExt;
.super Ljava/lang/Object;
.source "UtilsExt.java"


# static fields
.field public static disableAppList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

.field private static sSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private static sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

.field private static sWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

.field private static sWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-string v0, "/vendor/etc/disableapplist.txt"

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->readFile(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    sput-object v0, Lcom/mediatek/settings/UtilsExt;->disableAppList:Ljava/util/ArrayList;

    return-void
.end method

.method public static getApnSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;
    .locals 1

    .line 168
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeApnSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object p0

    return-object p0
.end method

.method public static getDataUsageSummaryExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 2

    .line 65
    sget-object v0, Lcom/mediatek/settings/UtilsExt;->sDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    if-nez v0, :cond_1

    .line 66
    const-class v0, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    monitor-enter v0

    .line 67
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    if-nez v1, :cond_0

    .line 68
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object p0

    .line 69
    invoke-virtual {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeDataUsageSummaryExt()Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object p0

    sput-object p0, Lcom/mediatek/settings/UtilsExt;->sDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 70
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getDataUsageSummaryExt]create ext instance: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->log(Ljava/lang/String;)V

    .line 72
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 74
    :cond_1
    :goto_0
    sget-object p0, Lcom/mediatek/settings/UtilsExt;->sDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    return-object p0
.end method

.method public static getDeviceInfoSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;
    .locals 0

    .line 211
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeDeviceInfoSettingsExt()Lcom/mediatek/settings/ext/IDeviceInfoSettingsExt;

    move-result-object p0

    return-object p0
.end method

.method public static getDisplaySettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDisplaySettingsExt;
    .locals 1

    .line 164
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeDisplaySettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDisplaySettingsExt;

    move-result-object p0

    return-object p0
.end method

.method public static getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;
    .locals 1

    .line 160
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeSettingsMiscExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object p0

    return-object p0
.end method

.method public static getRCSSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;
    .locals 1

    .line 172
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeRCSSettings(Landroid/content/Context;)Lcom/mediatek/settings/ext/IRCSSettings;

    move-result-object p0

    return-object p0
.end method

.method public static getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 2

    .line 78
    sget-object v0, Lcom/mediatek/settings/UtilsExt;->sSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    if-nez v0, :cond_1

    .line 79
    const-class v0, Lcom/mediatek/settings/ext/ISimManagementExt;

    monitor-enter v0

    .line 80
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    if-nez v1, :cond_0

    .line 81
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object p0

    .line 82
    invoke-virtual {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeSimManagementExt()Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p0

    sput-object p0, Lcom/mediatek/settings/UtilsExt;->sSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 83
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimManagementExt] create ext instance: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->log(Ljava/lang/String;)V

    .line 85
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 87
    :cond_1
    :goto_0
    sget-object p0, Lcom/mediatek/settings/UtilsExt;->sSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object p0
.end method

.method public static getSimRoamingExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;
    .locals 2

    .line 91
    sget-object v0, Lcom/mediatek/settings/UtilsExt;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    if-nez v0, :cond_1

    .line 92
    const-class v0, Lcom/mediatek/settings/ext/ISimRoamingExt;

    monitor-enter v0

    .line 93
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    if-nez v1, :cond_0

    .line 94
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object p0

    .line 95
    invoke-virtual {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeSimRoamingExt()Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object p0

    sput-object p0, Lcom/mediatek/settings/UtilsExt;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    .line 96
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getSimRoamingExt] create ext instance: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->log(Ljava/lang/String;)V

    .line 98
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 100
    :cond_1
    :goto_0
    sget-object p0, Lcom/mediatek/settings/UtilsExt;->sSimRoamingExt:Lcom/mediatek/settings/ext/ISimRoamingExt;

    return-object p0
.end method

.method public static getWWOPJoynSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;
    .locals 1

    .line 176
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeWWOPJoynSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWWOPJoynSettingsExt;

    move-result-object p0

    return-object p0
.end method

.method public static getWfcSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWfcSettingsExt;
    .locals 2

    .line 130
    sget-object v0, Lcom/mediatek/settings/UtilsExt;->sWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    if-nez v0, :cond_1

    .line 131
    const-class v0, Lcom/mediatek/settings/ext/IWfcSettingsExt;

    monitor-enter v0

    .line 132
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    if-nez v1, :cond_0

    .line 133
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object p0

    .line 134
    invoke-virtual {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeWfcSettingsExt()Lcom/mediatek/settings/ext/IWfcSettingsExt;

    move-result-object p0

    sput-object p0, Lcom/mediatek/settings/UtilsExt;->sWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 135
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getWfcSettingsExt] create ext instance: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->log(Ljava/lang/String;)V

    .line 137
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 139
    :cond_1
    :goto_0
    sget-object p0, Lcom/mediatek/settings/UtilsExt;->sWfcSettingsExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    return-object p0
.end method

.method public static getWifiExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;
    .locals 1

    .line 186
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeWifiExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiSettingsExt;
    .locals 0

    .line 191
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeWifiSettingsExt()Lcom/mediatek/settings/ext/IWifiSettingsExt;

    move-result-object p0

    return-object p0
.end method

.method public static getWifiTetherSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;
    .locals 2

    .line 145
    sget-object v0, Lcom/mediatek/settings/UtilsExt;->sWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    if-nez v0, :cond_1

    .line 146
    const-class v0, Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    monitor-enter v0

    .line 147
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    if-nez v1, :cond_0

    .line 148
    invoke-static {p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationUtils;->getOpFactory(Landroid/content/Context;)Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;

    move-result-object v1

    .line 149
    invoke-virtual {v1, p0}, Lcom/mediatek/settings/ext/OpSettingsCustomizationFactoryBase;->makeWifiTetherSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    move-result-object p0

    sput-object p0, Lcom/mediatek/settings/UtilsExt;->sWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    .line 150
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[getWifiTetherSettingsExt] create ext instance: "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/mediatek/settings/UtilsExt;->sWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/settings/UtilsExt;->log(Ljava/lang/String;)V

    .line 153
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 155
    :cond_1
    :goto_0
    sget-object p0, Lcom/mediatek/settings/UtilsExt;->sWifiTetherSettingsExt:Lcom/mediatek/settings/ext/IWifiTetherSettingsExt;

    return-object p0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 291
    const-string v0, "UtilsExt"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    return-void
.end method

.method private static readFile(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 234
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 235
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 236
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 237
    nop

    .line 238
    nop

    .line 240
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 241
    new-instance p0, Ljava/io/FileReader;

    invoke-direct {p0, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 246
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 248
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 249
    const-string v4, "UtilsExt"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " read line "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 252
    :cond_0
    nop

    .line 258
    nop

    .line 259
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_1

    .line 264
    :catch_0
    move-exception p0

    goto :goto_2

    .line 261
    :goto_1
    nop

    .line 262
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_3

    .line 264
    :goto_2
    nop

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_4

    .line 266
    :goto_3
    nop

    .line 252
    :goto_4
    return-object v0

    .line 253
    :catch_1
    move-exception v0

    goto :goto_5

    .line 257
    :catchall_0
    move-exception v0

    goto :goto_a

    .line 253
    :catch_2
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 243
    :cond_1
    :try_start_4
    const-string v0, "UtilsExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file in "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, " does not exist!"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 244
    nop

    .line 258
    nop

    .line 261
    nop

    .line 266
    nop

    .line 244
    return-object v2

    .line 257
    :catchall_1
    move-exception v0

    move-object p0, v2

    goto :goto_a

    .line 253
    :catch_3
    move-exception v0

    move-object p0, v2

    move-object v1, p0

    .line 254
    :goto_5
    :try_start_5
    const-string v3, "UtilsExt"

    const-string v4, "IOException"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 258
    if-eqz v1, :cond_2

    .line 259
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    goto :goto_6

    .line 264
    :catch_4
    move-exception p0

    goto :goto_7

    .line 261
    :cond_2
    :goto_6
    if-eqz p0, :cond_3

    .line 262
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_8

    .line 264
    :goto_7
    nop

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    .line 267
    goto :goto_9

    .line 266
    :cond_3
    :goto_8
    nop

    .line 268
    :goto_9
    return-object v2

    .line 257
    :catchall_2
    move-exception v0

    move-object v2, v1

    .line 258
    :goto_a
    if-eqz v2, :cond_4

    .line 259
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V

    goto :goto_b

    .line 264
    :catch_5
    move-exception p0

    goto :goto_c

    .line 261
    :cond_4
    :goto_b
    if-eqz p0, :cond_5

    .line 262
    invoke-virtual {p0}, Ljava/io/FileReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_5

    goto :goto_d

    .line 264
    :goto_c
    nop

    .line 265
    invoke-virtual {p0}, Ljava/io/IOException;->printStackTrace()V

    nop

    .line 266
    :cond_5
    :goto_d
    throw v0
.end method

.method public static shouldDisableForAutoSanity()Z
    .locals 5

    .line 278
    const-string v0, "ro.mtk.autosanity"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 279
    const-string v1, "ro.build.type"

    const-string v2, ""

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 280
    const-string v2, "UtilsExt"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "autoSanity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " buildType: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    if-eqz v0, :cond_0

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "eng"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 282
    const-string v0, "UtilsExt"

    const-string v1, "ShouldDisableForAutoSanity()..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x1

    return v0

    .line 285
    :cond_0
    const/4 v0, 0x0

    return v0
.end method
