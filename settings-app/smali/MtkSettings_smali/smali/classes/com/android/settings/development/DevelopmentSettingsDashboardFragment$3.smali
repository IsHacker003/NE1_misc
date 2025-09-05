.class Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;
.super Ljava/lang/Object;
.source "DevelopmentSettingsDashboardFragment.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


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

    .line 105
    iput-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 109
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object p1

    monitor-enter p1

    .line 110
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    check-cast p2, Landroid/bluetooth/BluetoothA2dp;

    invoke-static {v0, p2}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 111
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 112
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

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

    .line 113
    instance-of v0, p2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v0, :cond_0

    .line 114
    check-cast p2, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 115
    invoke-static {v0}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$200(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Landroid/bluetooth/BluetoothA2dp;

    move-result-object v0

    invoke-interface {p2, v0}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceConnected(Landroid/bluetooth/BluetoothA2dp;)V

    .line 117
    :cond_0
    goto :goto_0

    .line 118
    :cond_1
    return-void

    .line 111
    :catchall_0
    move-exception p2

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p2
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 122
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$100(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Lcom/android/settings/development/BluetoothA2dpConfigStore;

    move-result-object p1

    monitor-enter p1

    .line 123
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$202(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;Landroid/bluetooth/BluetoothA2dp;)Landroid/bluetooth/BluetoothA2dp;

    .line 124
    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    iget-object p1, p0, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment$3;->this$0:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-static {p1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->access$000(Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/core/AbstractPreferenceController;

    .line 126
    instance-of v1, v0, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    if-eqz v1, :cond_0

    .line 127
    check-cast v0, Lcom/android/settings/development/BluetoothServiceConnectionListener;

    .line 128
    invoke-interface {v0}, Lcom/android/settings/development/BluetoothServiceConnectionListener;->onBluetoothServiceDisconnected()V

    .line 130
    :cond_0
    goto :goto_0

    .line 131
    :cond_1
    return-void

    .line 124
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
