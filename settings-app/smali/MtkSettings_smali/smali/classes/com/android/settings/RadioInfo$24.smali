.class Lcom/android/settings/RadioInfo$24;
.super Ljava/lang/Object;
.source "RadioInfo.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RadioInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/RadioInfo;


# direct methods
.method constructor <init>(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 1453
    iput-object p1, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1455
    iget-object p1, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 1456
    iget-object p1, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {p1}, Lcom/android/settings/RadioInfo;->access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    invoke-static {v0}, Lcom/android/settings/RadioInfo;->access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/RadioInfo$24;->this$0:Lcom/android/settings/RadioInfo;

    .line 1457
    invoke-static {v1}, Lcom/android/settings/RadioInfo;->access$2700(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x3ee

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1456
    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/Phone;->setSmscAddress(Ljava/lang/String;Landroid/os/Message;)V

    .line 1458
    return-void
.end method
