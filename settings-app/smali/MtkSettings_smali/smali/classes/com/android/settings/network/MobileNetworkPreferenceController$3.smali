.class Lcom/android/settings/network/MobileNetworkPreferenceController$3;
.super Landroid/content/BroadcastReceiver;
.source "MobileNetworkPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/MobileNetworkPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/network/MobileNetworkPreferenceController;)V
    .locals 0

    .line 215
    iput-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 218
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 219
    const-string p2, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    const-string p1, "MobileNetworkPreferenceController"

    const-string p2, "ACTION_SIM_INFO_UPDATE received"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    iget-object p1, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    iget-object p2, p0, Lcom/android/settings/network/MobileNetworkPreferenceController$3;->this$0:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-static {p2}, Lcom/android/settings/network/MobileNetworkPreferenceController;->access$000(Lcom/android/settings/network/MobileNetworkPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/network/MobileNetworkPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 227
    :cond_0
    return-void
.end method
