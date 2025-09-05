.class Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiTetherPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)V
    .locals 0

    .line 151
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 154
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 155
    const-string p2, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 156
    iget-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$2;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    const p2, 0x7f121057    # @string/wifi_hotspot_off_subtext 'Not sharing internet or content with other devices'

    invoke-static {p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$200(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)V

    .line 158
    :cond_0
    return-void
.end method
