.class Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$5;
.super Ljava/lang/Object;
.source "TempDataServiceDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


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

    .line 136
    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$5;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 139
    const-string p1, "TempDataServiceDialogActivity"

    const-string v0, "onCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$5;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-static {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->access$000(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    .line 141
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$5;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->finish()V

    .line 142
    return-void
.end method
