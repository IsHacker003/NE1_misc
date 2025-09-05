.class public Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;
.super Ljava/lang/Object;
.source "BluetoothA2dpWrapper.java"


# instance fields
.field private mService:Landroid/bluetooth/BluetoothA2dp;


# direct methods
.method public constructor <init>(Landroid/bluetooth/BluetoothA2dp;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    .line 34
    return-void
.end method


# virtual methods
.method public getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;
    .locals 1

    .line 47
    iget-object v0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getCodecStatus(Landroid/bluetooth/BluetoothDevice;)Landroid/bluetooth/BluetoothCodecStatus;

    move-result-object p1

    return-object p1
.end method

.method public getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->getOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .line 68
    iget-object v0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1, p2}, Landroid/bluetooth/BluetoothA2dp;->setOptionalCodecsEnabled(Landroid/bluetooth/BluetoothDevice;I)V

    .line 69
    return-void
.end method

.method public supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settingslib/wrapper/BluetoothA2dpWrapper;->mService:Landroid/bluetooth/BluetoothA2dp;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothA2dp;->supportsOptionalCodecs(Landroid/bluetooth/BluetoothDevice;)I

    move-result p1

    return p1
.end method
