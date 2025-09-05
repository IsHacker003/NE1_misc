.class Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "InvalidBatteryActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/InvalidBatteryActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)V
    .locals 0

    .line 28
    iput-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 31
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 32
    const-string v0, "flag"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 33
    const-string v0, "android.fih.action.invalidbattery"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    if-nez p2, :cond_0

    .line 34
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->access$000(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 35
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->access$002(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 36
    const-string p1, "persist.sys.invalid.battery.activity"

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$1;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->finish()V

    .line 39
    :cond_0
    return-void
.end method
