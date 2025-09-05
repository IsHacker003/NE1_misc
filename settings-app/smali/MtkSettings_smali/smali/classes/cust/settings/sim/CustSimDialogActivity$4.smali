.class Lcust/settings/sim/CustSimDialogActivity$4;
.super Ljava/lang/Object;
.source "CustSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcust/settings/sim/CustSimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/sim/CustSimDialogActivity;

.field final synthetic val$id:I


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimDialogActivity;I)V
    .locals 0

    .line 180
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$4;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    iput p2, p0, Lcust/settings/sim/CustSimDialogActivity$4;->val$id:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    .line 183
    invoke-static {}, Lcust/settings/sim/CustSimDialogActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/sim/CustSimDialogActivity$4;->val$id:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ") onDismiss"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 185
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$4;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimDialogActivity;->finish()V

    .line 186
    return-void
.end method
