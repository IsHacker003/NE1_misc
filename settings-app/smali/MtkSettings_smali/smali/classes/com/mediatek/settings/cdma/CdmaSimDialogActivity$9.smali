.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 203
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 206
    iget-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 207
    return-void
.end method
