.class Lcom/mediatek/nfc/NfcSettings$QueryTask;
.super Landroid/os/AsyncTask;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "QueryTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/NfcSettings;


# direct methods
.method private constructor <init>(Lcom/mediatek/nfc/NfcSettings;)V
    .locals 0

    .line 413
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$1;)V
    .locals 0

    .line 413
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;-><init>(Lcom/mediatek/nfc/NfcSettings;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;
    .locals 2

    .line 417
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {v0}, Lcom/mediatek/nfc/NfcSettings;->access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->getAdapterState()I

    move-result v0

    invoke-static {p1, v0}, Lcom/mediatek/nfc/NfcSettings;->access$702(Lcom/mediatek/nfc/NfcSettings;I)I

    .line 418
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {v0}, Lcom/mediatek/nfc/NfcSettings;->access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object v0

    invoke-virtual {v0}, Landroid/nfc/NfcAdapter;->isNdefPushEnabled()Z

    move-result v0

    invoke-static {p1, v0}, Lcom/mediatek/nfc/NfcSettings;->access$802(Lcom/mediatek/nfc/NfcSettings;Z)Z

    .line 420
    const-string p1, "@M_NfcSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground  mNfcState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$700(Lcom/mediatek/nfc/NfcSettings;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    const-string p1, "@M_NfcSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "doInBackground  mNfcBeamOpen: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {v1}, Lcom/mediatek/nfc/NfcSettings;->access$800(Lcom/mediatek/nfc/NfcSettings;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p1}, Lcom/mediatek/nfc/NfcSettings;->access$700(Lcom/mediatek/nfc/NfcSettings;)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 413
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Ljava/lang/Integer;)V
    .locals 2

    .line 427
    const-string v0, "@M_NfcSettings"

    const-string v1, "onPostExecute"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$QueryTask;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {v0, p1}, Lcom/mediatek/nfc/NfcSettings;->access$900(Lcom/mediatek/nfc/NfcSettings;I)V

    .line 429
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 413
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->onPostExecute(Ljava/lang/Integer;)V

    return-void
.end method
