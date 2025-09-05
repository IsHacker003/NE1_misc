.class public final Lcom/android/settingslib/TronUtils;
.super Ljava/lang/Object;
.source "TronUtils.java"


# direct methods
.method public static logWifiSettingsSpeed(Landroid/content/Context;I)V
    .locals 1

    .line 31
    const-string v0, "settings_wifi_speed_labels"

    invoke-static {p0, v0, p1}, Lcom/android/internal/logging/MetricsLogger;->histogram(Landroid/content/Context;Ljava/lang/String;I)V

    .line 32
    return-void
.end method
