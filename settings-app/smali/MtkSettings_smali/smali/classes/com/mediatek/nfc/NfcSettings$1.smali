.class Lcom/mediatek/nfc/NfcSettings$1;
.super Landroid/content/BroadcastReceiver;
.source "NfcSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/nfc/NfcSettings;


# direct methods
.method constructor <init>(Lcom/mediatek/nfc/NfcSettings;)V
    .locals 0

    .line 101
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 104
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 105
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 106
    const-string p1, "@M_NfcSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive nfc change "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "android.nfc.extra.ADAPTER_STATE"

    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p1}, Lcom/mediatek/nfc/NfcSettings;->access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 109
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    new-instance p2, Lcom/mediatek/nfc/NfcSettings$QueryTask;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    const/4 v2, 0x0

    invoke-direct {p2, v0, v2}, Lcom/mediatek/nfc/NfcSettings$QueryTask;-><init>(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$1;)V

    invoke-static {p1, p2}, Lcom/mediatek/nfc/NfcSettings;->access$102(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$QueryTask;)Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .line 110
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-static {p1}, Lcom/mediatek/nfc/NfcSettings;->access$100(Lcom/mediatek/nfc/NfcSettings;)Lcom/mediatek/nfc/NfcSettings$QueryTask;

    move-result-object p1

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 112
    :cond_0
    const-string p2, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 113
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {p1}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 114
    const-string p1, "@M_NfcSettings"

    const-string p2, "Receive broadcast: RF field on detected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 115
    :cond_1
    const-string p2, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 116
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings$1;->this$0:Lcom/mediatek/nfc/NfcSettings;

    invoke-virtual {p1}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 117
    const-string p1, "@M_NfcSettings"

    const-string p2, "Receive broadcast: RF field off detected"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_2
    :goto_0
    return-void
.end method
