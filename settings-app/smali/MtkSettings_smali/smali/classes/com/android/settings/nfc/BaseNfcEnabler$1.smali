.class Lcom/android/settings/nfc/BaseNfcEnabler$1;
.super Landroid/content/BroadcastReceiver;
.source "BaseNfcEnabler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/nfc/BaseNfcEnabler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/nfc/BaseNfcEnabler;


# direct methods
.method constructor <init>(Lcom/android/settings/nfc/BaseNfcEnabler;)V
    .locals 0

    .line 35
    iput-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler$1;->this$0:Lcom/android/settings/nfc/BaseNfcEnabler;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 38
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 39
    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 40
    iget-object p1, p0, Lcom/android/settings/nfc/BaseNfcEnabler$1;->this$0:Lcom/android/settings/nfc/BaseNfcEnabler;

    const-string v0, "android.nfc.extra.ADAPTER_STATE"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/nfc/BaseNfcEnabler;->handleNfcStateChanged(I)V

    .line 43
    :cond_0
    return-void
.end method
