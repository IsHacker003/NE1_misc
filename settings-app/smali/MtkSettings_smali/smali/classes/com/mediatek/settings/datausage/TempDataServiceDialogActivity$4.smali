.class Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$4;
.super Ljava/lang/Object;
.source "TempDataServiceDialogActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


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

    .line 127
    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$4;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 130
    const-string p1, "TempDataServiceDialogActivity"

    const-string p2, "onClick, CANCEL."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$4;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-static {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->access$000(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    .line 132
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$4;->this$0:Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;

    invoke-virtual {p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->finish()V

    .line 133
    return-void
.end method
