.class Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;
.super Ljava/lang/Object;
.source "CdmaSimDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


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

    .line 194
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 196
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 197
    iget-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;->this$0:Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 198
    const/4 p1, 0x1

    return p1

    .line 200
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
