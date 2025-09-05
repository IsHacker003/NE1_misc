.class final Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;
.super Ljava/lang/Object;
.source "HearingAidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/HearingAidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HearingAidServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;)V
    .locals 0

    .line 57
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;Lcom/android/settingslib/bluetooth/HearingAidProfile$1;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HearingAidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 61
    invoke-static {}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HearingAidProfile"

    const-string v0, "Bluetooth service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHearingAid;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$102(Lcom/android/settingslib/bluetooth/HearingAidProfile;Landroid/bluetooth/BluetoothHearingAid;)Landroid/bluetooth/BluetoothHearingAid;

    .line 64
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$100(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Landroid/bluetooth/BluetoothHearingAid;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHearingAid;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 65
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_3

    .line 66
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$200(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 69
    if-nez v0, :cond_2

    .line 70
    invoke-static {}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$000()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 71
    const-string v0, "HearingAidProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HearingAidProfile found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$200(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$300(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$400(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 75
    :cond_2
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 77
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 78
    goto :goto_0

    .line 81
    :cond_3
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$200(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-static {p2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$400(Lcom/android/settingslib/bluetooth/HearingAidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->updateHearingAidsDevices(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 83
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$502(Lcom/android/settingslib/bluetooth/HearingAidProfile;Z)Z

    .line 84
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 87
    invoke-static {}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HearingAidProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HearingAidProfile$HearingAidServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->access$502(Lcom/android/settingslib/bluetooth/HearingAidProfile;Z)Z

    .line 89
    return-void
.end method
