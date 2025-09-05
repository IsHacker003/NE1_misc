.class Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$6;
.super Ljava/lang/Object;
.source "TempDataServiceDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->displayTempDataDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V
    .locals 0

    .line 144
    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$6;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/content/DialogInterface;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 146
    const/4 p1, 0x4

    if-ne p2, p1, :cond_0

    .line 147
    const-string p1, "TempDataServiceDialogActivity"

    const-string p2, "onKey, Back key."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$6;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-static {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->access$000(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    .line 149
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$6;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->finish()V

    .line 150
    const/4 p1, 0x1

    return p1

    .line 152
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
