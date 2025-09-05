.class Lcom/mediatek/nfc/MtkNfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "MtkNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/MtkNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/MtkNfcEnabler;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/MtkNfcEnabler;)V
    .locals 0

    .line 52
    iput-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 56
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 57
    iget-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {p1, p2}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$002(Lcom/mediatek/nfc/MtkNfcEnabler;I)I

    .line 59
    const-string p1, "@M_MtkNfcEnabler"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Receive nfc state changed : "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-static {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$000(Lcom/mediatek/nfc/MtkNfcEnabler;)I

    move-result v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    iget-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-static {p1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$100(Lcom/mediatek/nfc/MtkNfcEnabler;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 61
    iget-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    new-instance p2, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    iget-object v0, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    const/4 v1, 0x0

    invoke-direct {p2, v0, v1}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;-><init>(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$1;)V

    invoke-static {p1, p2}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$202(Lcom/mediatek/nfc/MtkNfcEnabler;Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;)Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    .line 62
    iget-object p1, p0, Lcom/mediatek/nfc/MtkNfcEnabler$1;->this$0:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-static {p1}, Lcom/mediatek/nfc/MtkNfcEnabler;->access$200(Lcom/mediatek/nfc/MtkNfcEnabler;)Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;

    move-result-object p1

    const/4 p2, 0x0

    new-array p2, p2, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/mediatek/nfc/MtkNfcEnabler$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 65
    :cond_0
    return-void
.end method
