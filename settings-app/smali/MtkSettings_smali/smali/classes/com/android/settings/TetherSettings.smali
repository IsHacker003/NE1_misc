.class public Lcom/android/settings/TetherSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "TetherSettings.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/TetherSettings$OnStartTetheringCallback;,
        Lcom/android/settings/TetherSettings$TetherChangeReceiver;
    }
.end annotation


# instance fields
.field private mBluetoothEnableForTether:Z

.field private mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Landroid/bluetooth/BluetoothPan;",
            ">;"
        }
    .end annotation
.end field

.field private mBluetoothRegexs:[Ljava/lang/String;

.field private mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

.field private mCm:Landroid/net/ConnectivityManager;

.field private mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

.field private mDataSaverEnabled:Z

.field private mDataSaverFooter:Landroid/support/v7/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mMassStorageActive:Z

.field private mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

.field private mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

.field private mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUnavailable:Z

.field private mUsbConnected:Z

.field private mUsbRegexs:[Ljava/lang/String;

.field private mUsbTether:Landroid/support/v14/preference/SwitchPreference;

.field private mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 96
    const-string v0, "no_config_tethering"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    .line 72
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    .line 456
    new-instance v0, Lcom/android/settings/TetherSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TetherSettings$1;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    .line 97
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TetherSettings;[Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$102(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/TetherSettings;)V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/TetherSettings;)Z
    .locals 0

    .line 53
    iget-boolean p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/TetherSettings;Z)Z
    .locals 0

    .line 53
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/TetherSettings;I)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/TetherSettings;Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/TetherSettings;->onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/TetherSettings;)Ljava/util/concurrent/atomic/AtomicReference;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    return-object p0
.end method

.method private static isIntentAvailable(Landroid/content/Context;)Z
    .locals 5

    .line 396
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070036    # @android:array/config_mobile_tcp_buffers

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 398
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x2

    if-ge v1, v3, :cond_0

    .line 399
    return v2

    .line 401
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 402
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 403
    aget-object v3, v0, v2

    const/4 v4, 0x1

    aget-object v0, v0, v4

    invoke-virtual {v1, v3, v0}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 405
    const/high16 v0, 0x10000

    invoke-virtual {p0, v1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 406
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-lez p0, :cond_1

    .line 405
    move v2, v4

    goto :goto_0

    .line 406
    :cond_1
    nop

    .line 405
    :goto_0
    return v2
.end method

.method public static isProvisioningNeededButUnavailable(Landroid/content/Context;)Z
    .locals 1

    .line 391
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isProvisioningNeeded(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0}, Lcom/android/settings/TetherSettings;->isIntentAvailable(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 391
    :goto_0
    return p0
.end method

.method private onReceiveExt(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 0

    .line 505
    const-string p2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 506
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 508
    :cond_0
    return-void
.end method

.method private startTethering(I)V
    .locals 5

    .line 410
    const/4 v0, 0x1

    const/4 v1, 0x2

    if-ne p1, v1, :cond_1

    .line 412
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 413
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 414
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v4, 0x5

    invoke-virtual {v1, v2, v3, v4}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 418
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xa

    if-ne v2, v3, :cond_1

    .line 419
    iput-boolean v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothEnableForTether:Z

    .line 420
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 421
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 422
    return-void

    .line 426
    :cond_1
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, v0, v2, v3}, Landroid/net/ConnectivityManager;->startTethering(IZLandroid/net/ConnectivityManager$OnStartTetheringCallback;Landroid/os/Handler;)V

    .line 427
    return-void
.end method

.method private updateBluetoothState()V
    .locals 6

    .line 355
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 356
    if-nez v0, :cond_0

    .line 357
    return-void

    .line 359
    :cond_0
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v0

    .line 360
    const/16 v1, 0xd

    const/4 v2, 0x0

    if-ne v0, v1, :cond_1

    .line 361
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto/16 :goto_0

    .line 362
    :cond_1
    const/16 v1, 0xb

    if-ne v0, v1, :cond_2

    .line 363
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 365
    :cond_2
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothPan;

    .line 366
    const-string v3, "TetheringSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBluetoothState bluetoothPan= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, " btState= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mDataSaverEnabled="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    if-eqz v1, :cond_3

    .line 369
    const-string v3, "TetheringSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateBluetoothState tetheringon= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    :cond_3
    const/16 v3, 0xc

    const/4 v4, 0x1

    if-ne v0, v3, :cond_4

    if-eqz v1, :cond_4

    .line 372
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 373
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v4}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 374
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_0

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr v1, v4

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 380
    :goto_0
    return-void
.end method

.method private updateState()V
    .locals 3

    .line 303
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableIfaces()[Ljava/lang/String;

    move-result-object v0

    .line 304
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getTetheredIfaces()[Ljava/lang/String;

    move-result-object v1

    .line 305
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v2}, Landroid/net/ConnectivityManager;->getTetheringErroredIfaces()[Ljava/lang/String;

    move-result-object v2

    .line 306
    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings/TetherSettings;->updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 307
    return-void
.end method

.method private updateState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 0

    .line 312
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/TetherSettings;->updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 313
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateBluetoothState()V

    .line 314
    return-void
.end method

.method private updateUsbState([Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .locals 11

    .line 318
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUsbConnected:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    if-nez v0, :cond_0

    .line 319
    move v0, v1

    goto :goto_0

    .line 318
    :cond_0
    nop

    .line 319
    move v0, v2

    .line 320
    :goto_0
    array-length v3, p1

    move v4, v2

    move v5, v4

    :goto_1
    if-ge v4, v3, :cond_3

    aget-object v6, p1, v4

    .line 321
    iget-object v7, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v8, v7

    move v9, v5

    move v5, v2

    :goto_2
    if-ge v5, v8, :cond_2

    aget-object v10, v7, v5

    .line 322
    invoke-virtual {v6, v10}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 323
    if-nez v9, :cond_1

    .line 324
    iget-object v9, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v9, v6}, Landroid/net/ConnectivityManager;->getLastTetherError(Ljava/lang/String;)I

    move-result v9

    .line 321
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 320
    :cond_2
    add-int/lit8 v4, v4, 0x1

    move v5, v9

    goto :goto_1

    .line 329
    :cond_3
    nop

    .line 330
    array-length p1, p2

    move v3, v2

    move v4, v3

    :goto_3
    if-ge v3, p1, :cond_6

    aget-object v5, p2, v3

    .line 331
    iget-object v6, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v7, v6

    move v8, v4

    move v4, v2

    :goto_4
    if-ge v4, v7, :cond_5

    aget-object v9, v6, v4

    .line 332
    invoke-virtual {v5, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 331
    move v8, v1

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 330
    :cond_5
    add-int/lit8 v3, v3, 0x1

    move v4, v8

    goto :goto_3

    .line 335
    :cond_6
    nop

    .line 336
    array-length p1, p3

    move p2, v2

    :goto_5
    if-ge p2, p1, :cond_8

    aget-object v3, p3, p2

    .line 337
    iget-object v5, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v6, v5

    move v7, v2

    :goto_6
    if-ge v7, v6, :cond_7

    aget-object v8, v5, v7

    .line 338
    invoke-virtual {v3, v8}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    .line 337
    add-int/lit8 v7, v7, 0x1

    goto :goto_6

    .line 336
    :cond_7
    add-int/lit8 p2, p2, 0x1

    goto :goto_5

    .line 342
    :cond_8
    if-eqz v4, :cond_9

    .line 343
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 344
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 345
    :cond_9
    if-eqz v0, :cond_a

    .line 346
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 347
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_7

    .line 349
    :cond_a
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 350
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 352
    :goto_7
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 453
    const v0, 0x7f120717    # @string/help_url_tether ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 92
    const/16 v0, 0x5a

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 101
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onAttach(Landroid/content/Context;)V

    .line 102
    new-instance v0, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    .line 104
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 0

    .line 197
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 110
    const p1, 0x7f1500a8    # @xml/tether_prefs 'res/xml/tether_prefs.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->addPreferencesFromResource(I)V

    .line 111
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 112
    const v0, 0x7f120df0    # @string/tethering_footer_info 'Use hotspot and tethering to provide internet to other devices through your mobile data connection.  ...'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 114
    new-instance p1, Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    .line 115
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 116
    const-string p1, "disabled_on_data_saver"

    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    .line 118
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->setIfOnlyAvailableForAdmins(Z)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 120
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 122
    return-void

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 125
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 126
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v2

    const/16 v3, 0xc

    if-ne v2, v3, :cond_1

    .line 127
    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mProfileServiceListener:Landroid/bluetooth/BluetoothProfile$ServiceListener;

    const/4 v3, 0x5

    invoke-virtual {v1, v0, v2, v3}, Landroid/bluetooth/BluetoothAdapter;->getProfileProxy(Landroid/content/Context;Landroid/bluetooth/BluetoothProfile$ServiceListener;I)Z

    .line 131
    :cond_1
    const-string v0, "usb_tether_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    .line 132
    const-string v0, "enable_bluetooth_tethering"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    .line 134
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 136
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/TetherSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    .line 138
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableUsbRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getTetherableBluetoothRegexs()[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbRegexs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 142
    move v0, p1

    goto :goto_0

    .line 141
    :cond_2
    nop

    .line 142
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mBluetoothRegexs:[Ljava/lang/String;

    array-length v2, v2

    if-eqz v2, :cond_3

    .line 144
    move v2, p1

    goto :goto_1

    .line 142
    :cond_3
    nop

    .line 144
    move v2, v1

    :goto_1
    if-eqz v0, :cond_4

    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 145
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 148
    :cond_5
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mWifiTetherPreferenceController:Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;

    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings/wifi/tether/WifiTetherPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 150
    if-nez v2, :cond_6

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 153
    :cond_6
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 154
    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothPan;->isTetheringOn()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 155
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_2

    .line 157
    :cond_7
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 161
    :goto_2
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {p1}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TetherSettings;->onDataSaverChanged(Z)V

    .line 162
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 1

    .line 185
    iput-boolean p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    .line 186
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 187
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 188
    iget-object p1, p0, Lcom/android/settings/TetherSettings;->mDataSaverFooter:Landroid/support/v7/preference/Preference;

    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverEnabled:Z

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 189
    return-void
.end method

.method public onDestroy()V
    .locals 4

    .line 166
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mDataSaverBackend:Lcom/android/settings/datausage/DataSaverBackend;

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothPan;

    .line 170
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    .line 171
    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothProfile;

    .line 172
    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 173
    const/4 v3, 0x5

    invoke-virtual {v0, v3, v1}, Landroid/bluetooth/BluetoothAdapter;->closeProfileProxy(ILandroid/bluetooth/BluetoothProfile;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothPan:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 176
    nop

    .line 180
    :cond_0
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 181
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 431
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_1

    .line 432
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mUsbTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 433
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 435
    :cond_0
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    goto :goto_0

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    if-ne p1, v0, :cond_3

    .line 438
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mBluetoothTether:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 439
    invoke-direct {p0, v1}, Lcom/android/settings/TetherSettings;->startTethering(I)V

    goto :goto_0

    .line 441
    :cond_2
    iget-object v0, p0, Lcom/android/settings/TetherSettings;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->stopTethering(I)V

    .line 444
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 448
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onStart()V
    .locals 4

    .line 250
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStart()V

    .line 252
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_1

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->isUiRestrictedByOnlyAdmin()Z

    move-result v0

    if-nez v0, :cond_0

    .line 254
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getEmptyTextView()Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f120df4    # @string/tethering_settings_not_available 'Tethering settings are not available for this user'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 256
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 257
    return-void

    .line 260
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 262
    new-instance v1, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    invoke-direct {v1, p0}, Lcom/android/settings/TetherSettings$OnStartTetheringCallback;-><init>(Lcom/android/settings/TetherSettings;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 264
    const-string v1, "shared"

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings/TetherSettings;->mMassStorageActive:Z

    .line 265
    new-instance v1, Lcom/android/settings/TetherSettings$TetherChangeReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/TetherSettings$TetherChangeReceiver;-><init>(Lcom/android/settings/TetherSettings;Lcom/android/settings/TetherSettings$1;)V

    iput-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 266
    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.net.conn.TETHER_STATE_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 267
    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v2, v1}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 269
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 270
    const-string v3, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 271
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 273
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 274
    const-string v3, "android.intent.action.MEDIA_SHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 275
    const-string v3, "android.intent.action.MEDIA_UNSHARED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 276
    const-string v3, "file"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 277
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 279
    new-instance v2, Landroid/content/IntentFilter;

    invoke-direct {v2}, Landroid/content/IntentFilter;-><init>()V

    .line 280
    const-string v3, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 281
    const-string v3, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v2, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 282
    iget-object v3, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v3, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 285
    if-eqz v1, :cond_2

    iget-object v2, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v0, v1}, Landroid/content/BroadcastReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 287
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/TetherSettings;->updateState()V

    .line 288
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 292
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onStop()V

    .line 294
    iget-boolean v0, p0, Lcom/android/settings/TetherSettings;->mUnavailable:Z

    if-eqz v0, :cond_0

    .line 295
    return-void

    .line 297
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/TetherSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 298
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mTetherChangeReceiver:Landroid/content/BroadcastReceiver;

    .line 299
    iput-object v0, p0, Lcom/android/settings/TetherSettings;->mStartTetheringCallback:Lcom/android/settings/TetherSettings$OnStartTetheringCallback;

    .line 300
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 0

    .line 193
    return-void
.end method
