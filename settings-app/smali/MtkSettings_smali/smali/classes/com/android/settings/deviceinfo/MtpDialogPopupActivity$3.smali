.class Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;
.super Ljava/lang/Object;
.source "MtpDialogPopupActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->onCreate(Landroid/os/Bundle;)V
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

    .line 71
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$000(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$000(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 75
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-static {p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$000(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/app/AlertDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 76
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->access$002(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 78
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;->this$0:Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->finish()V

    .line 79
    return-void
.end method
