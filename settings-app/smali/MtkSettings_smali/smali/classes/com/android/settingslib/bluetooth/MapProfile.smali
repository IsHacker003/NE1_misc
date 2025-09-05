.class public Lcom/android/settingslib/bluetooth/MapProfile;
.super Ljava/lang/Object;
.source "MapProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;
    }
.end annotation


# static fields
.field static final UUIDS:[Landroid/os/ParcelUuid;

.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothMap;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    .line 48
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/os/ParcelUuid;

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MAP:Landroid/os/ParcelUuid;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    aput-object v2, v1, v0

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MAS:Landroid/os/ParcelUuid;

    const/4 v2, 0x2

    aput-object v0, v1, v2

    sput-object v1, Lcom/android/settingslib/bluetooth/MapProfile;->UUIDS:[Landroid/os/ParcelUuid;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 105
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 106
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 107
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    new-instance p3, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/bluetooth/MapProfile$MapServiceListener;-><init>(Lcom/android/settingslib/bluetooth/MapProfile;Lcom/android/settingslib/bluetooth/MapProfile$1;)V

    const/16 p4, 0x9

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 109
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 37
    sget-boolean v0, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/MapProfile;)Landroid/bluetooth/BluetoothMap;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/MapProfile;Landroid/bluetooth/BluetoothMap;)Landroid/bluetooth/BluetoothMap;
    .locals 0

    .line 37
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/MapProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 37
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/MapProfile;Z)Z
    .locals 0

    .line 37
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    return p1
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 120
    sget-boolean p1, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    if-eqz p1, :cond_0

    const-string p1, "MapProfile"

    const-string v0, "connect() - should not get called"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 3

    .line 125
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 126
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 127
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/16 v1, 0x64

    if-le v0, v1, :cond_1

    .line 129
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1, v1}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1

    .line 133
    :cond_2
    return v1
.end method

.method protected finalize()V
    .locals 3

    .line 207
    sget-boolean v0, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-eqz v0, :cond_1

    .line 210
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/16 v1, 0x9

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 212
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    goto :goto_0

    .line 213
    :catch_0
    move-exception v0

    .line 214
    const-string v1, "MapProfile"

    const-string v2, "Error cleaning up MAP proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 217
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 5

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 139
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothMap;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 140
    sget-boolean v2, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    if-eqz v2, :cond_1

    const-string v2, "MapProfile"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getConnectionStatus: status is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v4, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0

    .line 144
    :cond_2
    nop

    .line 142
    :goto_0
    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 203
    sget p1, Lcom/android/settingslib/R$drawable;->ic_bt_cellphone:I

    return p1
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 185
    sget p1, Lcom/android/settingslib/R$string;->bluetooth_profile_map:I

    return p1
.end method

.method public getProfileId()I
    .locals 1

    .line 98
    const/16 v0, 0x9

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 116
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 112
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isProfileReady()Z
    .locals 3

    .line 92
    sget-boolean v0, Lcom/android/settingslib/bluetooth/MapProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "MapProfile"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isProfileReady(): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    :cond_0
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    if-nez v0, :cond_0

    return-void

    .line 159
    :cond_0
    if-eqz p2, :cond_1

    .line 160
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothMap;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 161
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 164
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/MapProfile;->mService:Landroid/bluetooth/BluetoothMap;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothMap;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 166
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 177
    const-string v0, "MAP"

    return-object v0
.end method
