.class Lcom/android/settings/TetherSettings$1;
.super Ljava/lang/Object;
.source "TetherSettings.java"

# interfaces
.implements Landroid/bluetooth/BluetoothProfile$ServiceListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/TetherSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/TetherSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 457
    iput-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(ILandroid/bluetooth/BluetoothProfile;)V
    .locals 1

    .line 459
    const-string p1, "TetheringSettings"

    const-string v0, "onServiceConnected "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 460
    iget-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    check-cast p2, Landroid/bluetooth/BluetoothPan;

    invoke-virtual {p1, p2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public onServiceDisconnected(I)V
    .locals 2

    .line 463
    const-string p1, "TetheringSettings"

    const-string v0, "onServiceDisconnected "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    iget-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/bluetooth/BluetoothPan;

    .line 466
    if-eqz p1, :cond_1

    .line 467
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 468
    if-eqz v0, :cond_0

    .line 469
    const/4 v1, 0x5

    invoke-virtual {v0, v1, p1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 471
    :cond_0
    nop

    .line 474
    :cond_1
    iget-object p1, p0, Lcom/android/settings/TetherSettings$1;->this$0:Lcom/android/settings/TetherSettings;

    invoke-static {p1}, Lcom/android/settings/TetherSettings;->access$800(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 475
    return-void
.end method
