.class Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;
.super Ljava/lang/Object;
.source "WifiDetailPreferenceController.java"

# interfaces
.implements Landroid/net/wifi/WifiManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)V
    .locals 0

    .line 608
    iput-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 2

    .line 615
    iget-object p1, p0, Lcom/android/settings/wifi/details/WifiDetailPreferenceController$3;->this$0:Lcom/android/settings/wifi/details/WifiDetailPreferenceController;

    invoke-static {p1}, Lcom/android/settings/wifi/details/WifiDetailPreferenceController;->access$900(Lcom/android/settings/wifi/details/WifiDetailPreferenceController;)Landroid/app/Fragment;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 616
    if-eqz p1, :cond_0

    .line 617
    const v0, 0x7f12103e    # @string/wifi_failed_save_message 'Failed to save network'

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 619
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 621
    :cond_0
    return-void
.end method

.method public onSuccess()V
    .locals 0

    .line 611
    return-void
.end method
