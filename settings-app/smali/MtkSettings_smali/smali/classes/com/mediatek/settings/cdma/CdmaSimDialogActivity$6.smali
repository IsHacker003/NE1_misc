.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayAlertCdmaDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V
    .locals 0

    .line 173
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 176
    if-eqz p1, :cond_0

    .line 177
    const-string p2, "CdmaSimDialogActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "displayAlertCdmaDialog, set data sub to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->access$000(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object p2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-static {v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->access$000(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I

    move-result v1

    invoke-static {p2, v0, v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->access$100(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V

    .line 179
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 182
    return-void
.end method
