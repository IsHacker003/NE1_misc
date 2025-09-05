.class public Lcom/android/settings/SettingsDumpService;
.super Landroid/app/Service;
.source "SettingsDumpService.java"


# static fields
.field static final BROWSER_INTENT:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_ANOMALY_DETECTION:Ljava/lang/String; = "anomaly_detection"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_DATAUSAGE:Ljava/lang/String; = "datausage"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_DEFAULT_BROWSER_APP:Ljava/lang/String; = "default_browser_app"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_MEMORY:Ljava/lang/String; = "memory"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_SERVICE:Ljava/lang/String; = "service"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field static final KEY_STORAGE:Ljava/lang/String; = "storage"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    const-string v2, "http://"

    .line 61
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    sput-object v0, Lcom/android/settings/SettingsDumpService;->BROWSER_INTENT:Landroid/content/Intent;

    .line 60
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 46
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method private dumpDataUsage()Lorg/json/JSONObject;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 101
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 102
    new-instance v1, Lcom/android/settingslib/net/DataUsageController;

    invoke-direct {v1, p0}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 103
    const-class v2, Landroid/net/ConnectivityManager;

    invoke-virtual {p0, v2}, Lcom/android/settings/SettingsDumpService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ConnectivityManager;

    .line 104
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 105
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 106
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 107
    new-instance v5, Lorg/json/JSONArray;

    invoke-direct {v5}, Lorg/json/JSONArray;-><init>()V

    .line 108
    invoke-virtual {v3}, Landroid/telephony/SubscriptionManager;->getAllSubscriptionInfoList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 109
    nop

    .line 110
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v7

    invoke-virtual {v4, v7}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v7

    .line 109
    invoke-static {v7}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v7

    .line 111
    invoke-direct {p0, v7, v1}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;

    move-result-object v7

    .line 112
    const-string v8, "subId"

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-virtual {v7, v8, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 113
    invoke-virtual {v5, v7}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 114
    goto :goto_0

    .line 115
    :cond_0
    const-string v3, "cell"

    invoke-virtual {v0, v3, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 117
    :cond_1
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    const-string v3, "wifi"

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v4

    invoke-direct {p0, v4, v1}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 120
    :cond_2
    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 121
    const-string v2, "ethernet"

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v3

    invoke-direct {p0, v3, v1}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 123
    :cond_3
    return-object v0
.end method

.method private dumpDataUsage(Landroid/net/NetworkTemplate;Lcom/android/settingslib/net/DataUsageController;)Lorg/json/JSONObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 128
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 129
    invoke-virtual {p2, p1}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    .line 130
    const-string p2, "carrier"

    iget-object v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->carrier:Ljava/lang/String;

    invoke-virtual {v0, p2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 131
    const-string p2, "start"

    iget-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->startDate:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 132
    const-string p2, "usage"

    iget-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 133
    const-string p2, "warning"

    iget-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->warningLevel:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 134
    const-string p2, "limit"

    iget-wide v1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->limitLevel:J

    invoke-virtual {v0, p2, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 135
    return-object v0
.end method

.method private dumpMemory()Lorg/json/JSONObject;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 87
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 88
    new-instance v1, Lcom/android/settings/applications/ProcStatsData;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    .line 89
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 90
    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v2

    .line 92
    const-string v3, "used"

    iget-wide v4, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 93
    const-string v3, "free"

    iget-wide v4, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 94
    const-string v3, "total"

    iget-wide v4, v2, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    invoke-static {v4, v5}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v3, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 95
    const-string v2, "state"

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 97
    return-object v0
.end method

.method private dumpStorage()Lorg/json/JSONObject;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 139
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 140
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {p0, v1}, Lcom/android/settings/SettingsDumpService;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 141
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/storage/VolumeInfo;

    .line 142
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 143
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->isMountedReadable()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 144
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getPath()Ljava/io/File;

    move-result-object v4

    .line 145
    const-string v5, "used"

    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    invoke-virtual {v4}, Ljava/io/File;->getFreeSpace()J

    move-result-wide v8

    sub-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 146
    const-string v5, "total"

    invoke-virtual {v4}, Ljava/io/File;->getTotalSpace()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v5, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 148
    :cond_0
    const-string v4, "path"

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getInternalPath()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    const-string v4, "state"

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getState()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 150
    const-string v4, "stateDesc"

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getStateDescription()I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 151
    const-string v4, "description"

    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getDescription()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 152
    invoke-virtual {v2}, Landroid/os/storage/VolumeInfo;->getId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 153
    goto :goto_0

    .line 154
    :cond_1
    return-object v0
.end method


# virtual methods
.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1

    .line 70
    new-instance p1, Lorg/json/JSONObject;

    invoke-direct {p1}, Lorg/json/JSONObject;-><init>()V

    .line 73
    :try_start_0
    const-string p3, "service"

    const-string v0, "Settings State"

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 74
    const-string p3, "storage"

    invoke-direct {p0}, Lcom/android/settings/SettingsDumpService;->dumpStorage()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 75
    const-string p3, "datausage"

    invoke-direct {p0}, Lcom/android/settings/SettingsDumpService;->dumpDataUsage()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string p3, "memory"

    invoke-direct {p0}, Lcom/android/settings/SettingsDumpService;->dumpMemory()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string p3, "default_browser_app"

    invoke-virtual {p0}, Lcom/android/settings/SettingsDumpService;->dumpDefaultBrowser()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    const-string p3, "anomaly_detection"

    invoke-virtual {p0}, Lcom/android/settings/SettingsDumpService;->dumpAnomalyDetection()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {p1, p3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_0

    .line 79
    :catch_0
    move-exception p3

    .line 80
    invoke-virtual {p3}, Ljava/lang/Exception;->printStackTrace()V

    .line 83
    :goto_0
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 84
    return-void
.end method

.method dumpAnomalyDetection()Lorg/json/JSONObject;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 171
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 172
    const-string v1, "anomaly_pref"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/SettingsDumpService;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 175
    const-string v3, "anomaly_config_version"

    invoke-interface {v1, v3, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 178
    const-string v2, "anomaly_config_version"

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 180
    return-object v0
.end method

.method dumpDefaultBrowser()Ljava/lang/String;
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/SettingsDumpService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/settings/SettingsDumpService;->BROWSER_INTENT:Landroid/content/Intent;

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 162
    if-eqz v0, :cond_1

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v2, "android"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 165
    :cond_0
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    return-object v0

    .line 163
    :cond_1
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    .line 65
    const/4 p1, 0x0

    return-object p1
.end method
