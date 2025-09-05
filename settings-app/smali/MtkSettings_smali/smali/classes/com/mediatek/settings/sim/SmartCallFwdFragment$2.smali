.class Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;
.super Ljava/lang/Object;
.source "SmartCallFwdFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V
    .locals 0

    .line 885
    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 888
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 889
    const-string p1, "SmartCallFwdFragment"

    const-string p2, "Clear unwanted progress dialog"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 890
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    invoke-static {p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/app/ProgressDialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->dismiss()V

    .line 891
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;->this$0:Lcom/mediatek/settings/sim/SmartCallFwdFragment;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->access$1602(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;

    .line 893
    :cond_0
    return-void
.end method
