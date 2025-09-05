.class Lcom/android/settings/location/LocationEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "LocationEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/location/LocationEnabler;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/location/LocationEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/location/LocationEnabler;)V
    .locals 0

    .line 77
    iput-object p1, p0, Lcom/android/settings/location/LocationEnabler$1;->this$0:Lcom/android/settings/location/LocationEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 80
    const-string p1, "LocationEnabler"

    const/4 v0, 0x3

    invoke-static {p1, v0}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 81
    const-string p1, "LocationEnabler"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received location mode change intent: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    :cond_0
    iget-object p1, p0, Lcom/android/settings/location/LocationEnabler$1;->this$0:Lcom/android/settings/location/LocationEnabler;

    invoke-virtual {p1}, Lcom/android/settings/location/LocationEnabler;->refreshLocationMode()V

    .line 84
    return-void
.end method
