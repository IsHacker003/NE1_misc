.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;
.super Landroid/content/BroadcastReceiver;
.source "DevelopmentSettingsDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;


# direct methods
.method constructor <init>(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 84
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 87
    const-string p1, "DevSettingsDashboard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mBluetoothA2dpReceiver.onReceive intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 90
    const-string v0, "android.bluetooth.a2dp.profile.action.CODEC_CONFIG_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 91
    const-string p1, "android.bluetooth.codec.extra.CODEC_STATUS"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothCodecStatus;

    .line 93
    const-string p2, "DevSettingsDashboard"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Received BluetoothCodecStatus="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$2;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 95
    instance-of v0, p2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 96
    check-cast p2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    invoke-interface {p2}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothCodecUpdated()V

    .line 98
    :cond_0
    goto :goto_0

    .line 100
    :cond_1
    return-void
.end method
