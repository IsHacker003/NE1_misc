.class Lcom/android/settings/fuelgauge/BatteryInfo$2;
.super Landroid/os/AsyncTask;
.source "BatteryInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Lcom/android/settings/fuelgauge/BatteryInfo$Callback;Landroid/os/BatteryStats;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/fuelgauge/BatteryInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$shortString:Z

.field final synthetic val$stats:Landroid/os/BatteryStats;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/BatteryStats;ZLcom/android/settings/fuelgauge/BatteryInfo$Callback;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    iput-boolean p3, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    iput-object p4, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;
    .locals 18

    move-object/from16 v0, p0

    .line 161
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 162
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    .line 163
    invoke-static {v3}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v3

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    invoke-virtual {v3, v4}, Lcom/android/settings/overlay/FeatureFactory;->getPowerUsageFeatureProvider(Landroid/content/Context;)Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;

    move-result-object v3

    .line 165
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/settingslib/utils/PowerUtil;->convertMsToUs(J)J

    move-result-wide v10

    .line 167
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    new-instance v5, Landroid/content/IntentFilter;

    const-string v6, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v5, v6}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v7

    .line 171
    const-string v4, "status"

    const/4 v5, 0x1

    invoke-virtual {v7, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 174
    const/4 v6, 0x2

    if-eq v4, v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v5, 0x0

    .line 181
    :goto_0
    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    .line 182
    invoke-interface {v3, v4}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->isEnhancedBatteryPredictionEnabled(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 183
    iget-object v4, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    invoke-interface {v3, v4}, Lcom/android/settings/fuelgauge/PowerUsageFeatureProvider;->getEnhancedBatteryPrediction(Landroid/content/Context;)Lcom/android/settings/fuelgauge/Estimate;

    move-result-object v9

    .line 184
    if-eqz v9, :cond_1

    .line 185
    const-string v3, "BatteryInfo"

    const-string v4, "time for enhanced BatteryInfo"

    .line 186
    invoke-static {v3, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 187
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    iget-boolean v12, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    invoke-static/range {v6 .. v12}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0

    .line 191
    :cond_1
    if-eqz v5, :cond_2

    .line 192
    iget-object v3, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    invoke-virtual {v3, v10, v11}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v3

    goto :goto_1

    :cond_2
    const-wide/16 v3, 0x0

    .line 193
    :goto_1
    new-instance v5, Lcom/android/settings/fuelgauge/Estimate;

    .line 194
    invoke-static {v3, v4}, Lcom/android/settingslib/utils/PowerUtil;->convertUsToMs(J)J

    move-result-wide v13

    const/4 v15, 0x0

    const-wide/16 v16, -0x1

    move-object v12, v5

    invoke-direct/range {v12 .. v17}, Lcom/android/settings/fuelgauge/Estimate;-><init>(JZJ)V

    .line 197
    const-string v3, "BatteryInfo"

    const-string v4, "time for regular BatteryInfo"

    invoke-static {v3, v4, v1, v2}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 198
    iget-object v6, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$context:Landroid/content/Context;

    iget-object v8, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$stats:Landroid/os/BatteryStats;

    iget-boolean v12, v0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$shortString:Z

    move-object v9, v5

    invoke-static/range {v6 .. v12}, Lcom/android/settings/fuelgauge/BatteryInfo;->getBatteryInfo(Landroid/content/Context;Landroid/content/Intent;Landroid/os/BatteryStats;Lcom/android/settings/fuelgauge/Estimate;JZ)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 158
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/fuelgauge/BatteryInfo;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V
    .locals 3

    .line 204
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 205
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryInfo$2;->val$callback:Lcom/android/settings/fuelgauge/BatteryInfo$Callback;

    invoke-interface {v2, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$Callback;->onBatteryInfoLoaded(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    .line 206
    const-string p1, "BatteryInfo"

    const-string v2, "time for callback"

    invoke-static {p1, v2, v0, v1}, Lcom/android/settings/fuelgauge/BatteryUtils;->logRuntime(Ljava/lang/String;Ljava/lang/String;J)V

    .line 207
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 158
    check-cast p1, Lcom/android/settings/fuelgauge/BatteryInfo;

    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/BatteryInfo$2;->onPostExecute(Lcom/android/settings/fuelgauge/BatteryInfo;)V

    return-void
.end method
