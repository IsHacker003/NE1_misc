.class Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;
.super Ljava/lang/Object;
.source "WifiTetherPreferenceController.java"

# interfaces
.implements Lcom/android/settings/wifi/tether/WifiTetherSoftApManager$WifiTetherSoftApCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->initWifiTetherSoftApManager()V
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

    .line 128
    iput-object p1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNumClientsChanged(I)V
    .locals 6

    .line 137
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 138
    invoke-static {v0}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$000(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 140
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    iget-object v0, v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$100(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f100041    # @plurals/wifi_tether_connected_summary

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 142
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    invoke-virtual {v1, v2, p1, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 144
    :cond_0
    return-void
.end method

.method public onStateChanged(II)V
    .locals 1

    .line 131
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-static {v0, p1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->access$002(Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;I)I

    .line 132
    iget-object v0, p0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController$1;->this$0:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->handleWifiApStateChanged(II)V

    .line 133
    return-void
.end method
