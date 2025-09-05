.class public Lcom/android/settingslib/bluetooth/HidProfile;
.super Ljava/lang/Object;
.source "HidProfile.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;
    }
.end annotation


# static fields
.field private static V:Z


# instance fields
.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private mIsProfileReady:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mService:Landroid/bluetooth/BluetoothHidHost;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/settingslib/bluetooth/HidProfile;->V:Z

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V
    .locals 0

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 92
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 93
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 94
    new-instance p3, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;

    const/4 p4, 0x0

    invoke-direct {p3, p0, p4}, Lcom/android/settingslib/bluetooth/HidProfile$HidHostServiceListener;-><init>(Lcom/android/settingslib/bluetooth/HidProfile;Lcom/android/settingslib/bluetooth/HidProfile$1;)V

    const/4 p4, 0x4

    invoke-virtual {p2, p1, p3, p4}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)V

    .line 96
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 34
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HidProfile;->V:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/HidProfile;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    return-object p0
.end method

.method static synthetic access$102(Lcom/android/settingslib/bluetooth/HidProfile;Landroid/bluetooth/BluetoothHidHost;)Landroid/bluetooth/BluetoothHidHost;
    .locals 0

    .line 34
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    return-object p1
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settingslib/bluetooth/HidProfile;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settingslib/bluetooth/HidProfile;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z

    return p1
.end method

.method public static getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I
    .locals 1

    .line 183
    invoke-virtual {p0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result p0

    const/16 v0, 0x540

    if-eq p0, v0, :cond_1

    const/16 v0, 0x580

    if-eq p0, v0, :cond_0

    const/16 v0, 0x5c0

    if-eq p0, v0, :cond_1

    .line 190
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_misc_hid:I

    return p0

    .line 188
    :cond_0
    sget p0, Lcom/android/settingslib/R$drawable;->ic_bt_pointing_hid:I

    return p0

    .line 186
    :cond_1
    sget p0, Lcom/android/settingslib/R$drawable;->ic_lockscreen_ime:I

    return p0
.end method


# virtual methods
.method public connect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method public disconnect(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 113
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    return p1
.end method

.method protected finalize()V
    .locals 3

    .line 195
    sget-boolean v0, Lcom/android/settingslib/bluetooth/HidProfile;->V:Z

    if-eqz v0, :cond_0

    const-string v0, "HidProfile"

    const-string v1, "finalize()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-eqz v0, :cond_1

    .line 198
    :try_start_0
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    const/4 v1, 0x4

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, v1, v2}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 200
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    const-string v1, "HidProfile"

    const-string v2, "Error cleaning up HID proxy"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 205
    :cond_1
    :goto_0
    return-void
.end method

.method public getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I
    .locals 3

    .line 117
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 118
    return v1

    .line 120
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothHidHost;->getConnectedDevices()Ljava/util/List;

    move-result-object v0

    .line 122
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 123
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getConnectionState(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    goto :goto_0

    .line 124
    :cond_1
    nop

    .line 122
    :goto_0
    return v1
.end method

.method public getDrawableResource(Landroid/bluetooth/BluetoothClass;)I
    .locals 0

    .line 176
    if-nez p1, :cond_0

    .line 177
    sget p1, Lcom/android/settingslib/R$drawable;->ic_lockscreen_ime:I

    return p1

    .line 179
    :cond_0
    invoke-static {p1}, Lcom/android/settingslib/bluetooth/HidProfile;->getHidClassDrawable(Landroid/bluetooth/BluetoothClass;)I

    move-result p1

    return p1
.end method

.method public getNameResource(Landroid/bluetooth/BluetoothDevice;)I
    .locals 0

    .line 158
    sget p1, Lcom/android/settingslib/R$string;->bluetooth_profile_hid:I

    return p1
.end method

.method public getProfileId()I
    .locals 1

    .line 85
    const/4 v0, 0x4

    return v0
.end method

.method public isAutoConnectable()Z
    .locals 1

    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method public isConnectable()Z
    .locals 1

    .line 99
    const/4 v0, 0x1

    return v0
.end method

.method public isPreferred(Landroid/bluetooth/BluetoothDevice;)Z
    .locals 2

    .line 128
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothHidHost;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    if-lez p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public isProfileReady()Z
    .locals 1

    .line 80
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mIsProfileReady:Z

    return v0
.end method

.method public setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    if-nez v0, :cond_0

    return-void

    .line 139
    :cond_0
    if-eqz p2, :cond_1

    .line 140
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {p2, p1}, Landroid/bluetooth/BluetoothHidHost;->getPriority(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    const/16 v0, 0x64

    if-ge p2, v0, :cond_2

    .line 141
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothHidHost;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    goto :goto_0

    .line 144
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/HidProfile;->mService:Landroid/bluetooth/BluetoothHidHost;

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/bluetooth/BluetoothHidHost;->setPriority(Landroid/bluetooth/BluetoothDevice;I)Z

    .line 146
    :cond_2
    :goto_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 149
    const-string v0, "HID"

    return-object v0
.end method
