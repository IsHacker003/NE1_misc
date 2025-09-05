.class public Lcom/android/settingslib/bluetooth/BluetoothEventManager;
.super Ljava/lang/Object;
.source "BluetoothEventManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;
    }
.end annotation


# instance fields
.field private final mAdapterIntentFilter:Landroid/content/IntentFilter;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/BluetoothCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mHandlerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;",
            ">;"
        }
    .end annotation
.end field

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mProfileIntentFilter:Landroid/content/IntentFilter;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mReceiverHandler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Landroid/content/Context;)V
    .locals 2

    .line 82
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    .line 159
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;

    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 173
    new-instance v0, Lcom/android/settingslib/bluetooth/BluetoothEventManager$2;

    invoke-direct {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$2;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 83
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 84
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 85
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    .line 86
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    .line 87
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    .line 88
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    .line 91
    const-string p1, "android.bluetooth.adapter.action.STATE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AdapterStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 93
    const-string p1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ConnectionStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 97
    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_STARTED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v0, 0x1

    invoke-direct {p2, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 98
    const-string p1, "android.bluetooth.adapter.action.DISCOVERY_FINISHED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ScanningStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Z)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 99
    const-string p1, "android.bluetooth.device.action.FOUND"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceFoundHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 100
    const-string p1, "android.bluetooth.device.action.DISAPPEARED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DeviceDisappearedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 101
    const-string p1, "android.bluetooth.device.action.NAME_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 102
    const-string p1, "android.bluetooth.device.action.ALIAS_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$NameChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 105
    const-string p1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BondStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 108
    const-string p1, "android.bluetooth.device.action.CLASS_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ClassChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 109
    const-string p1, "android.bluetooth.device.action.UUID"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$UuidChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 110
    const-string p1, "android.bluetooth.device.action.BATTERY_LEVEL_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$BatteryLevelChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 113
    const-string p1, "android.intent.action.DOCK_EVENT"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$DockEventHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 116
    const-string p1, "android.bluetooth.a2dp.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 118
    const-string p1, "android.bluetooth.headset.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 120
    const-string p1, "android.bluetooth.hearingaid.profile.action.ACTIVE_DEVICE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$ActiveDeviceChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 124
    const-string p1, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 126
    const-string p1, "android.intent.action.PHONE_STATE"

    new-instance p2, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;

    invoke-direct {p2, p0, p3}, Lcom/android/settingslib/bluetooth/BluetoothEventManager$AudioModeChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager$1;)V

    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 129
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 130
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    invoke-virtual {p1, p2, v0, p3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 131
    return-void
.end method

.method static synthetic access$1200(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Map;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Landroid/content/BroadcastReceiver;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Ljava/util/Collection;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settingslib/bluetooth/BluetoothEventManager;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 0

    .line 47
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchAudioModeChanged()V

    return-void
.end method

.method private addHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 68
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mAdapterIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 69
    return-void
.end method

.method private dispatchActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1, p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 478
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 479
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 480
    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 481
    goto :goto_0

    .line 482
    :cond_0
    monitor-exit v0

    .line 483
    return-void

    .line 482
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private dispatchAudioModeChanged()V
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->dispatchAudioModeChanged()V

    .line 500
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 501
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 502
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onAudioModeChanged()V

    .line 503
    goto :goto_0

    .line 504
    :cond_0
    monitor-exit v0

    .line 505
    return-void

    .line 504
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private dispatchConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 265
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 266
    invoke-interface {v2, p1, p2}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V

    .line 267
    goto :goto_0

    .line 268
    :cond_0
    monitor-exit v0

    .line 269
    return-void

    .line 268
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mHandlerMap:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p2, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 74
    return-void
.end method

.method dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 272
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 273
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 274
    invoke-interface {v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 275
    goto :goto_0

    .line 276
    :cond_0
    monitor-exit v0

    .line 277
    return-void

    .line 276
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dispatchDeviceRemoved(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 3

    .line 280
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 281
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 282
    invoke-interface {v2, p1}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 283
    goto :goto_0

    .line 284
    :cond_0
    monitor-exit v0

    .line 285
    return-void

    .line 284
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method dispatchProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 3

    .line 509
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 510
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/BluetoothCallback;

    .line 511
    invoke-interface {v2, p1, p2, p3}, Lcom/android/settingslib/bluetooth/BluetoothCallback;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    .line 512
    goto :goto_0

    .line 513
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 514
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V

    .line 515
    return-void

    .line 513
    :catchall_0
    move-exception p1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method readPairedDevices()Z
    .locals 5

    .line 433
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 434
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    return v1

    .line 438
    :cond_0
    nop

    .line 439
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 440
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v3

    .line 441
    if-nez v3, :cond_1

    .line 442
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1, v3, v4, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    .line 443
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->dispatchDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V

    .line 444
    const/4 v1, 0x1

    .line 446
    :cond_1
    goto :goto_0

    .line 448
    :cond_2
    return v1
.end method

.method public registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V
    .locals 2

    .line 147
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 148
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 149
    monitor-exit v0

    .line 150
    return-void

    .line 149
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method registerProfileIntentReceiver()V
    .locals 5

    .line 134
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileBroadcastReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileIntentFilter:Landroid/content/IntentFilter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mReceiverHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 135
    return-void
.end method

.method setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 78
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 79
    return-void
.end method

.method public unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V
    .locals 2

    .line 154
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 155
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 156
    monitor-exit v0

    .line 157
    return-void

    .line 156
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
