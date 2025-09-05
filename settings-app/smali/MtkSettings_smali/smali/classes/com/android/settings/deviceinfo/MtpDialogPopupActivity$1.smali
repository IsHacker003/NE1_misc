.class Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;
.super Landroid/content/BroadcastReceiver;
.source "MtpDialogPopupActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)V
    .locals 0

    .line 31
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 34
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 35
    const-string v0, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 36
    const-string p1, "connected"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    .line 37
    if-nez p1, :cond_0

    .line 38
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$000(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 39
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$000(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 40
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$002(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 44
    :cond_0
    return-void
.end method
