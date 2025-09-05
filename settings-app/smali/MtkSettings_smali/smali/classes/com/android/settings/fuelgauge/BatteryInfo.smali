.class public Lcom/android/settings/fuelgauge/BatteryInfo;
.super Ljava/lang/Object;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;,
        Lcom/android/settings/fuelgauge/BatteryInfo$Callback;
    }
.end annotation


# instance fields
.field public averageTimeToDischarge:J

.field public batteryLevel:I

.field public batteryPercentString:Ljava/lang/String;

.field public chargeLabel:Ljava/lang/CharSequence;

.field public discharging:Z

.field private mCharging:Z

.field private mStats:Landroid/os/BatteryStats;

.field public remainingLabel:Ljava/lang/CharSequence;

.field public remainingTimeUs:J

.field public statusLabel:Ljava/lang/String;

.field private timePeriod:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 44
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    .line 45
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 46
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/fuelgauge/BatteryInfo;)J
    .locals 2

    .line 39
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/settings/fuelgauge/BatteryInfo;J)J
    .locals 0

    .line 39
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/settings/fuelgauge/BatteryInfo;)Z
    .locals 0

    .line 39
    iget-boolean p0, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    return p0
.end method

.method public static getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 9

    .line 225
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 226
    new-instance v8, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-direct {v8}, Lcom/android/settings/fuelgauge/BatteryInfo;-><init>()V

    .line 227
    iput-object p2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    .line 228
    invoke-static {p1}, Lcom/android/settings/Utils;->getBatteryLevel(Landroid/content/Intent;)I

    move-result v2

    iput v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    .line 229
    iget v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    invoke-static {v2}, Lcom/android/settings/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    .line 231
    const-string v2, "status"

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/4 v4, 0x2

    if-ne v4, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    .line 234
    iget-wide v2, p3, Lcom/android/settings/fuelgauge/Estimate;->averageDischargeTime:J

    iput-wide v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->averageTimeToDischarge:J

    .line 235
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 237
    invoke-static {v2, p1}, Lcom/android/settings/Utils;->getBatteryStatus(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->statusLabel:Ljava/lang/String;

    .line 238
    iget-boolean v2, v8, Lcom/android/settings/fuelgauge/BatteryInfo;->mCharging:Z

    if-nez v2, :cond_1

    .line 239
    invoke-static {p0, p6, p3, v8}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settings/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V

    goto :goto_1

    .line 241
    :cond_1
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-wide v5, p4

    move-object v7, v8

    invoke-static/range {v2 .. v7}, Lcom/android/settings/fuelgauge/BatteryInfo;->updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V

    .line 243
    :goto_1
    const-string p0, "BatteryInfo"

    const-string p1, "time for getBatteryInfo"

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 244
    return-object v8
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V
    .locals 1

    .line 158
    new-instance v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;

    invoke-direct {v0, p0, p2, p3, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V

    const/4 p0, 0x0

    new-array p0, p0, [Ljava/lang/Void;

    .line 208
    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 209
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V
    .locals 4

    .line 150
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 151
    invoke-virtual {p2}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object p2

    .line 152
    const-string v2, "BatteryInfo"

    const-string v3, "time for getStats"

    invoke-static {v2, v3, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 153
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V

    .line 154
    return-void
.end method

.method public static getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Z)V
    .locals 5

    .line 141
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 142
    new-instance v2, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    .line 143
    const/4 v3, 0x0

    check-cast v3, Landroid/os/Bundle;

    invoke-virtual {v2, v3}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 144
    const-string v3, "BatteryInfo"

    const-string v4, "time to make batteryStatsHelper"

    invoke-static {v3, v4, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 145
    invoke-static {p0, p1, v2, p2}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Lcom/android/internal/os/BatteryStatsHelper;Z)V

    .line 146
    return-void
.end method

.method public static getBatteryInfoOld(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 7

    .line 214
    new-instance v6, Lcom/android/settings/fuelgauge/Estimate;

    .line 215
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v0

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v1

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    .line 218
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v6

    move-wide v4, p3

    move v6, p5

    invoke-static/range {v0 .. v6}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p0

    return-object p0
.end method

.method public static varargs parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 26

    move-object/from16 v0, p0

    .line 306
    move-object/from16 v1, p1

    .line 307
    nop

    .line 308
    nop

    .line 309
    nop

    .line 310
    nop

    .line 311
    nop

    .line 312
    nop

    .line 313
    nop

    .line 314
    nop

    .line 315
    nop

    .line 316
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    const/4 v3, 0x7

    const/4 v4, 0x5

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_8

    .line 317
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 318
    const/4 v8, 0x1

    move-wide v9, v6

    move-wide v12, v9

    move-wide v14, v12

    move-wide/from16 v18, v14

    move-wide/from16 v20, v18

    move/from16 v17, v8

    const/4 v11, 0x0

    const/16 v16, 0x0

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v22

    if-eqz v22, :cond_7

    .line 319
    add-int/lit8 v16, v16, 0x1

    .line 320
    if-eqz v17, :cond_0

    .line 321
    nop

    .line 322
    move-wide/from16 v23, v9

    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 324
    move-wide/from16 v20, v8

    const/16 v17, 0x0

    goto :goto_1

    :cond_0
    move-wide/from16 v23, v9

    :goto_1
    iget-byte v8, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v8, v4, :cond_2

    iget-byte v8, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v8, v3, :cond_1

    goto :goto_2

    .line 344
    :cond_1
    move-wide/from16 v9, v23

    goto :goto_3

    .line 334
    :cond_2
    :goto_2
    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v23, 0x39ef8b000L

    add-long v14, v14, v23

    cmp-long v8, v8, v14

    if-gtz v8, :cond_3

    iget-wide v8, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    const-wide/32 v14, 0x493e0

    add-long v14, v20, v14

    cmp-long v8, v8, v14

    if-gez v8, :cond_4

    .line 336
    :cond_3
    nop

    .line 338
    move-wide/from16 v18, v6

    :cond_4
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 339
    iget-wide v9, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 340
    cmp-long v8, v18, v6

    if-nez v8, :cond_5

    .line 341
    sub-long v18, v9, v20

    sub-long v18, v14, v18

    .line 344
    :cond_5
    :goto_3
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v8

    if-eqz v8, :cond_6

    .line 345
    nop

    .line 346
    iget-wide v12, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 318
    move/from16 v11, v16

    :cond_6
    const/4 v8, 0x1

    goto :goto_0

    .line 350
    :cond_7
    move-wide/from16 v23, v9

    move-wide/from16 v8, v18

    goto :goto_4

    :cond_8
    move-wide v8, v6

    move-wide v12, v8

    move-wide v14, v12

    move-wide/from16 v20, v14

    move-wide/from16 v23, v20

    const/4 v11, 0x0

    :goto_4
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 351
    add-long/2addr v14, v12

    sub-long v14, v14, v23

    .line 353
    nop

    .line 354
    nop

    .line 356
    const/4 v2, 0x0

    :goto_5
    array-length v10, v1

    if-ge v2, v10, :cond_9

    .line 357
    aget-object v10, v1, v2

    invoke-interface {v10, v8, v9, v14, v15}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingStarted(JJ)V

    .line 356
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 359
    :cond_9
    cmp-long v2, v14, v8

    if-lez v2, :cond_12

    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 360
    new-instance v2, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v2}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 361
    move-wide v12, v6

    const/4 v10, 0x0

    :goto_6
    invoke-virtual {v0, v2}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v14

    if-eqz v14, :cond_12

    if-ge v10, v11, :cond_12

    .line 362
    invoke-virtual {v2}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v14

    if-eqz v14, :cond_c

    .line 363
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v14, v14, v23

    add-long/2addr v12, v14

    .line 364
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 365
    sub-long v16, v12, v8

    .line 366
    cmp-long v18, v16, v6

    if-gez v18, :cond_a

    .line 367
    nop

    .line 369
    move-wide v5, v6

    goto :goto_7

    :cond_a
    move-wide/from16 v5, v16

    :goto_7
    const/4 v7, 0x0

    :goto_8
    array-length v3, v1

    if-ge v7, v3, :cond_b

    .line 370
    aget-object v3, v1, v7

    invoke-interface {v3, v5, v6, v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataPoint(JLandroid/os/BatteryStats$HistoryItem;)V

    .line 369
    add-int/lit8 v7, v7, 0x1

    const/4 v3, 0x7

    goto :goto_8

    .line 372
    :cond_b
    goto :goto_d

    .line 373
    :cond_c
    nop

    .line 374
    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v3, v4, :cond_e

    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x7

    if-ne v3, v5, :cond_d

    goto :goto_9

    .line 384
    :cond_d
    move-wide v6, v12

    move-wide/from16 v14, v23

    goto :goto_b

    .line 376
    :cond_e
    const/4 v5, 0x7

    :goto_9
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    cmp-long v3, v6, v8

    if-ltz v3, :cond_f

    .line 377
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    goto :goto_a

    .line 379
    :cond_f
    iget-wide v6, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    sub-long v6, v6, v20

    add-long/2addr v6, v8

    .line 381
    :goto_a
    iget-wide v14, v2, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 384
    :goto_b
    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v5, 0x6

    if-eq v3, v5, :cond_11

    iget-byte v3, v2, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-ne v3, v4, :cond_10

    sub-long/2addr v12, v6

    .line 386
    invoke-static {v12, v13}, Ljava/lang/Math;->abs(J)J

    move-result-wide v12

    const-wide/32 v16, 0x36ee80

    cmp-long v3, v12, v16

    if-lez v3, :cond_11

    .line 387
    :cond_10
    const/4 v3, 0x0

    :goto_c
    array-length v5, v1

    if-ge v3, v5, :cond_11

    .line 388
    aget-object v5, v1, v3

    invoke-interface {v5}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onDataGap()V

    .line 387
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 392
    :cond_11
    move-wide v12, v6

    :goto_d
    move-wide/from16 v23, v14

    add-int/lit8 v10, v10, 0x1

    .line 361
    const/4 v3, 0x7

    const-wide/16 v6, 0x0

    goto :goto_6

    .line 396
    :cond_12
    invoke-virtual/range {p0 .. p0}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    .line 398
    const/4 v0, 0x0

    :goto_e
    array-length v2, v1

    if-ge v0, v2, :cond_13

    .line 399
    aget-object v2, v1, v0

    invoke-interface {v2}, Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;->onParsingDone()V

    .line 398
    add-int/lit8 v0, v0, 0x1

    goto :goto_e

    .line 401
    :cond_13
    return-void
.end method

.method private static updateBatteryInfoCharging(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;JLcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 4

    .line 249
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 250
    invoke-virtual {p2, p3, p4}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide p2

    .line 251
    const-string p4, "status"

    const/4 v1, 0x1

    invoke-virtual {p1, p4, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 253
    const/4 p4, 0x0

    iput-boolean p4, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->discharging:Z

    .line 254
    const-wide/16 v2, 0x0

    cmp-long v2, p2, v2

    const/4 v3, 0x2

    if-lez v2, :cond_0

    const/4 v2, 0x5

    if-eq p1, v2, :cond_0

    .line 255
    iput-wide p2, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 256
    iget-wide p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 257
    invoke-static {p1, p2}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide p1

    long-to-double p1, p1

    .line 256
    invoke-static {p0, p1, p2, p4}, Lcom/android/settingslib/utils/StringUtil;->formatElapsedTime(Landroid/content/Context;DZ)Ljava/lang/CharSequence;

    move-result-object p1

    .line 258
    const p2, 0x7f120a37    # @string/power_charging_duration '%1$s - %2$s until fully charged'

    .line 259
    const p3, 0x7f120a44    # @string/power_remaining_charging_duration_only '%1$s left until fully charged'

    new-array v0, v1, [Ljava/lang/Object;

    aput-object p1, v0, p4

    invoke-virtual {p0, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 261
    new-array p3, v3, [Ljava/lang/Object;

    iget-object v0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object v0, p3, p4

    aput-object p1, p3, v1

    invoke-virtual {p0, p2, p3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 262
    goto :goto_1

    .line 263
    :cond_0
    const p0, 0x7f1201f1    # @string/battery_info_status_charging_lower 'charging'

    invoke-virtual {v0, p0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 265
    const/4 p1, 0x0

    iput-object p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 266
    iget p1, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryLevel:I

    const/16 p2, 0x64

    if-ne p1, p2, :cond_1

    iget-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    goto :goto_0

    .line 267
    :cond_1
    const p1, 0x7f120a36    # @string/power_charging '%1$s - %2$s'

    new-array p2, v3, [Ljava/lang/Object;

    iget-object p3, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    aput-object p3, p2, p4

    aput-object p0, p2, v1

    invoke-virtual {v0, p1, p2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    iput-object p0, p5, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 270
    :goto_1
    return-void
.end method

.method private static updateBatteryInfoDischarging(Landroid/content/Context;ZLcom/android/settings/fuelgauge/Estimate;Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 8

    .line 274
    iget-wide v0, p2, Lcom/android/settings/fuelgauge/Estimate;->estimateMillis:J

    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v0

    .line 275
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x0

    if-lez v2, :cond_2

    .line 276
    iput-wide v0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    .line 277
    nop

    .line 279
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v4

    iget-boolean v2, p2, Lcom/android/settings/fuelgauge/Estimate;->isBasedOnUsage:Z

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    if-nez p1, :cond_0

    .line 277
    move v2, v7

    goto :goto_0

    .line 279
    :cond_0
    nop

    .line 277
    move v2, v6

    :goto_0
    invoke-static {p0, v4, v5, v3, v2}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 283
    nop

    .line 285
    invoke-static {v0, v1}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v0

    iget-object v2, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iget-boolean p2, p2, Lcom/android/settings/fuelgauge/Estimate;->isBasedOnUsage:Z

    if-eqz p2, :cond_1

    if-nez p1, :cond_1

    .line 283
    move v6, v7

    goto :goto_1

    .line 285
    :cond_1
    nop

    .line 283
    :goto_1
    invoke-static {p0, v0, v1, v2, v6}, Lcom/android/settingslib/utils/PowerUtil;->getBatteryRemainingStringFormatted(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    move-result-object p0

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    goto :goto_2

    .line 290
    :cond_2
    iput-object v3, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingLabel:Ljava/lang/CharSequence;

    .line 291
    iget-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->batteryPercentString:Ljava/lang/String;

    iput-object p0, p3, Lcom/android/settings/fuelgauge/BatteryInfo;->chargeLabel:Ljava/lang/CharSequence;

    .line 293
    :goto_2
    return-void
.end method


# virtual methods
.method public varargs bindHistory(Lcom/android/settings/graph/UsageView;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V
    .locals 9

    .line 59
    invoke-virtual {p1}, Lcom/android/settings/graph/UsageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 60
    new-instance v1, Lcom/android/settings/fuelgauge/BatteryInfo$1;

    invoke-direct {v1, p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryInfo$1;-><init>(Lcom/android/settings/fuelgauge/BatteryInfo;Lcom/android/settings/graph/UsageView;Landroid/content/Context;)V

    .line 119
    array-length v2, p2

    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v2, v2, [Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;

    .line 120
    const/4 v4, 0x0

    move v5, v4

    :goto_0
    array-length v6, p2

    if-ge v5, v6, :cond_0

    .line 121
    aget-object v6, p2, v5

    aput-object v6, v2, v5

    .line 120
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 123
    :cond_0
    array-length p2, p2

    aput-object v1, v2, p2

    .line 124
    iget-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->mStats:Landroid/os/BatteryStats;

    invoke-static {p2, v2}, Lcom/android/settings/fuelgauge/BatteryInfo;->parse(Landroid/os/BatteryStats;[Lcom/android/settings/fuelgauge/BatteryInfo$BatteryDataParser;)V

    .line 125
    const p2, 0x7f1203a2    # @string/charge_length_format '%1$s ago'

    new-array v1, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->timePeriod:J

    .line 126
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 125
    invoke-virtual {v0, p2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 127
    const-string v1, ""

    .line 128
    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v7, 0x0

    cmp-long v2, v5, v7

    if-eqz v2, :cond_1

    .line 129
    const v1, 0x7f120b1b    # @string/remaining_length_format '%1$s left'

    new-array v2, v3, [Ljava/lang/Object;

    iget-wide v5, p0, Lcom/android/settings/fuelgauge/BatteryInfo;->remainingTimeUs:J

    const-wide/16 v7, 0x3e8

    div-long/2addr v5, v7

    .line 130
    invoke-static {v0, v5, v6}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    .line 129
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 132
    :cond_1
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object p2, v0, v4

    aput-object v1, v0, v3

    invoke-virtual {p1, v0}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 133
    return-void
.end method
