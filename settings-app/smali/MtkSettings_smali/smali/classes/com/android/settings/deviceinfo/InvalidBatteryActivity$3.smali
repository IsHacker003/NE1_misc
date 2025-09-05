.class Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;
.super Ljava/lang/Object;
.source "InvalidBatteryActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 62
    iput-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 65
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->access$000(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->access$000(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->access$000(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 67
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->access$002(Lcom/android/settings/deviceinfo/InvalidBatteryActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 69
    :cond_0
    const-string p1, "persist.sys.invalid.battery.activity"

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    iget-object p1, p0, Lcom/android/settings/deviceinfo/InvalidBatteryActivity$3;->this$0:Lcom/android/settings/deviceinfo/InvalidBatteryActivity;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/InvalidBatteryActivity;->finish()V

    .line 71
    return-void
.end method
