.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;
.super Ljava/lang/Object;
.source "AnomalyDetectionPolicy.java"


# static fields
.field static final KEY_ANOMALY_DETECTION_ENABLED:Ljava/lang/String; = "anomaly_detection_enabled"

.field static final KEY_BLUETOOTH_SCAN_DETECTION_ENABLED:Ljava/lang/String; = "bluetooth_scan_enabled"

.field static final KEY_BLUETOOTH_SCAN_THRESHOLD:Ljava/lang/String; = "bluetooth_scan_threshold"

.field static final KEY_WAKELOCK_DETECTION_ENABLED:Ljava/lang/String; = "wakelock_enabled"

.field static final KEY_WAKELOCK_THRESHOLD:Ljava/lang/String; = "wakelock_threshold"

.field static final KEY_WAKEUP_ALARM_DETECTION_ENABLED:Ljava/lang/String; = "wakeup_alarm_enabled"

.field static final KEY_WAKEUP_ALARM_THRESHOLD:Ljava/lang/String; = "wakeup_alarm_threshold"

.field static final KEY_WAKEUP_BLACKLISTED_TAGS:Ljava/lang/String; = "wakeup_blacklisted_tags"


# instance fields
.field final anomalyDetectionEnabled:Z

.field final bluetoothScanDetectionEnabled:Z

.field public final bluetoothScanThreshold:J

.field private final mParser:Landroid/util/KeyValueListParser;

.field final wakeLockDetectionEnabled:Z

.field public final wakeLockThreshold:J

.field final wakeupAlarmDetectionEnabled:Z

.field public final wakeupAlarmThreshold:J

.field public final wakeupBlacklistedTags:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    new-instance v0, Landroid/util/KeyValueListParser;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Landroid/util/KeyValueListParser;-><init>(C)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    .line 123
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "anomaly_detection_constants"

    invoke-static {p1, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 127
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    invoke-virtual {v0, p1}, Landroid/util/KeyValueListParser;->setString(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception p1

    .line 129
    const-string p1, "AnomalyDetectionPolicy"

    const-string v0, "Bad anomaly detection constants"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    :goto_0
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "anomaly_detection_enabled"

    .line 133
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->anomalyDetectionEnabled:Z

    .line 134
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "wakelock_enabled"

    .line 135
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeLockDetectionEnabled:Z

    .line 136
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "wakeup_alarm_enabled"

    .line 137
    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupAlarmDetectionEnabled:Z

    .line 138
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "bluetooth_scan_enabled"

    invoke-virtual {p1, v0, v1}, Landroid/util/KeyValueListParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->bluetoothScanDetectionEnabled:Z

    .line 140
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "wakelock_threshold"

    const-wide/32 v1, 0x36ee80

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeLockThreshold:J

    .line 142
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "wakeup_alarm_threshold"

    const-wide/16 v1, 0xa

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupAlarmThreshold:J

    .line 143
    const-string p1, "wakeup_blacklisted_tags"

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->parseStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupBlacklistedTags:Ljava/util/Set;

    .line 144
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const-string v0, "bluetooth_scan_threshold"

    const-wide/32 v1, 0x1b7740

    invoke-virtual {p1, v0, v1, v2}, Landroid/util/KeyValueListParser;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->bluetoothScanThreshold:J

    .line 146
    return-void
.end method

.method public static synthetic lambda$MGZTkxm_LWhWFo0-u65o5bz97bA(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$xFZhNZfuK_aveGITeM1VIXBhSVQ(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-static {p0}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private parseStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 166
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->mParser:Landroid/util/KeyValueListParser;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/KeyValueListParser;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 167
    if-eqz p1, :cond_0

    .line 168
    const-string p2, ":"

    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/settings/fuelgauge/anomaly/-$$Lambda$AnomalyDetectionPolicy$MGZTkxm_LWhWFo0-u65o5bz97bA;->INSTANCE:Lcom/android/settings/fuelgauge/anomaly/-$$Lambda$AnomalyDetectionPolicy$MGZTkxm_LWhWFo0-u65o5bz97bA;

    .line 169
    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/android/settings/fuelgauge/anomaly/-$$Lambda$AnomalyDetectionPolicy$xFZhNZfuK_aveGITeM1VIXBhSVQ;->INSTANCE:Lcom/android/settings/fuelgauge/anomaly/-$$Lambda$AnomalyDetectionPolicy$xFZhNZfuK_aveGITeM1VIXBhSVQ;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    .line 168
    return-object p1

    .line 171
    :cond_0
    return-object p2
.end method


# virtual methods
.method public isAnomalyDetectorEnabled(I)Z
    .locals 0

    .line 153
    packed-switch p1, :pswitch_data_0

    .line 161
    const/4 p1, 0x0

    return p1

    .line 159
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->bluetoothScanDetectionEnabled:Z

    return p1

    .line 157
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeupAlarmDetectionEnabled:Z

    return p1

    .line 155
    :pswitch_2
    iget-boolean p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDetectionPolicy;->wakeLockDetectionEnabled:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
