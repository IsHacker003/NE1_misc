.class Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$4;
.super Ljava/lang/Object;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;


# direct methods
.method constructor <init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 324
    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$4;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSimHotSwap()V
    .locals 2

    .line 327
    const-string v0, "WifiCallingForSub"

    const-string v1, "onSimHotSwap, finish Activity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$4;->this$0:Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;

    invoke-virtual {v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 329
    return-void
.end method
