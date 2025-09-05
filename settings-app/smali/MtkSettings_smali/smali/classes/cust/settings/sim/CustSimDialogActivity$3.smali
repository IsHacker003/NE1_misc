.class Lcust/settings/sim/CustSimDialogActivity$3;
.super Ljava/lang/Object;
.source "CustSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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


# direct methods
.method constructor <init>(Lcust/settings/sim/CustSimDialogActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$3;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 176
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity$3;->this$0:Lcust/settings/sim/CustSimDialogActivity;

    invoke-virtual {p1}, Lcust/settings/sim/CustSimDialogActivity;->finish()V

    .line 177
    return-void
.end method
