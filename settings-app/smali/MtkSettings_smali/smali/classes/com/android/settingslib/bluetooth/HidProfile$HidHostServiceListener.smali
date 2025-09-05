.class final Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settingslib/bluetooth/HidProfile;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "HidHostServiceListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settingslib/bluetooth/HidProfile;


# direct methods
.method private constructor <init>(Lcom/android/settingslib/bluetooth/HidProfile;)V
    .locals 0

    .line 51
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settingslib/bluetooth/HidProfile;Lcom/android/settingslib/bluetooth/HidProfile$1;)V
    .locals 0

    .line 51
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HidProfile;)V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 3

    .line 55
    invoke-static {}, Lcom/android/settingslib/bluetooth/HidProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HidProfile"

    const-string v0, "Bluetooth service connected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    check-cast p2, Landroid/bluetooth/BluetoothHidHost;

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/HidProfile;->access$102(Lcom/android/settingslib/bluetooth/HidProfile;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;

    .line 58
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HidProfile;->access$100(Lcom/android/settingslib/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothHidHost;

    move-result-object p1

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object p1

    .line 59
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p2

    if-nez p2, :cond_2

    .line 60
    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/bluetooth/BluetoothDevice;

    .line 61
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->access$200(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 63
    if-nez v0, :cond_1

    .line 64
    const-string v0, "HidProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "HidProfile found new device: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-static {v0}, Lcom/android/settingslib/bluetooth/HidProfile;->access$200(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-static {v1}, Lcom/android/settingslib/bluetooth/HidProfile;->access$300(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-static {v2}, Lcom/android/settingslib/bluetooth/HidProfile;->access$400(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v0

    .line 67
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 v1, 0x2

    invoke-virtual {v0, p2, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V

    .line 68
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 69
    goto :goto_0

    .line 70
    :cond_2
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lcom/android/settingslib/bluetooth/HidProfile;->access$502(Lcom/android/settingslib/bluetooth/HidProfile;Z)Z

    .line 71
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 1

    .line 74
    invoke-static {}, Lcom/android/settingslib/bluetooth/HidProfile;->access$000()Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, "HidProfile"

    const-string v0, "Bluetooth service disconnected"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;->this$0:Lcom/android/settingslib/bluetooth/HidProfile;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settingslib/bluetooth/HidProfile;->access$502(Lcom/android/settingslib/bluetooth/HidProfile;Z)Z

    .line 76
    return-void
.end method
