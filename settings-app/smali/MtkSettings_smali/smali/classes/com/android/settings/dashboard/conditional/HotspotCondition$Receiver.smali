.class public Lcom/android/settings/dashboard/conditional/HotspotCondition$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "HotspotCondition.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/dashboard/conditional/HotspotCondition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Receiver"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 135
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 138
    const-string v0, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 139
    invoke-static {p1}, Lcom/android/settings/dashboard/conditional/ConditionManager;->get(Landroid/content/Context;)Lcom/android/settings/dashboard/conditional/ConditionManager;

    move-result-object p1

    const-class p2, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    invoke-virtual {p1, p2}, Lcom/android/settings/dashboard/conditional/ConditionManager;->getCondition(Ljava/lang/Class;)Lcom/android/settings/dashboard/conditional/Condition;

    move-result-object p1

    check-cast p1, Lcom/android/settings/dashboard/conditional/HotspotCondition;

    .line 140
    invoke-virtual {p1}, Lcom/android/settings/dashboard/conditional/HotspotCondition;->refreshState()V

    .line 142
    :cond_0
    return-void
.end method
