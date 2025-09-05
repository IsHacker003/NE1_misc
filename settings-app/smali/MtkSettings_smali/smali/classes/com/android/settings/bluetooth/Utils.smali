.class public final Lcom/android/settings/bluetooth/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/bluetooth/Utils$ErrorDialogFragment;
    }
.end annotation


# static fields
.field private static final mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

.field private static final mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/android/settings/bluetooth/Utils$1;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$1;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    .line 167
    new-instance v0, Lcom/android/settings/bluetooth/Utils$2;

    invoke-direct {v0}, Lcom/android/settings/bluetooth/Utils$2;-><init>()V

    sput-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    return-void
.end method

.method static synthetic access$000()Lcom/android/settingslib/bluetooth/Utils$ErrorListener;
    .locals 1

    .line 44
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mErrorListener:Lcom/android/settingslib/bluetooth/Utils$ErrorListener;

    return-object v0
.end method

.method public static createRemoteName(Landroid/content/Context;Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 0

    .line 152
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 154
    :goto_0
    if-nez p1, :cond_1

    .line 155
    const p1, 0x7f120e3d    # @string/unknown 'Unknown'

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 157
    :cond_1
    return-object p1
.end method

.method public static getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1

    .line 148
    sget-object v0, Lcom/android/settings/bluetooth/Utils;->mOnInitCallback:Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;

    invoke-static {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getInstance(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothManager$BluetoothManagerCallback;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p0

    return-object p0
.end method

.method public static isBluetoothScanningEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 176
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "ble_scan_always_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 v0, 0x1

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method static showConnectingError(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 3

    .line 99
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/4 v1, 0x0

    const/16 v2, 0x365

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->visible(Landroid/content/Context;II)V

    .line 101
    const v0, 0x7f12027d    # @string/bluetooth_connecting_error_message 'Couldn’t connect to %1$s.'

    invoke-static {p0, p1, v0, p2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 102
    return-void
.end method

.method static showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;
    .locals 2

    .line 72
    const v0, 0x104000a    # @android:string/ok

    if-nez p1, :cond_0

    .line 73
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 74
    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 p2, 0x0

    .line 75
    invoke-virtual {p0, p1, p2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 76
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    goto :goto_0

    .line 78
    :cond_0
    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 79
    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 82
    :cond_1
    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 83
    const/4 v0, -0x1

    invoke-virtual {p1, v0, p0, p2}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 86
    :goto_0
    invoke-virtual {p1, p3}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {p1, p4}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 89
    return-object p1
.end method

.method static showError(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1

    .line 105
    invoke-static {p0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V

    .line 106
    return-void
.end method

.method private static showError(Landroid/content/Context;Ljava/lang/String;ILcom/android/settingslib/bluetooth/LocalBluetoothManager;)V
    .locals 2

    .line 110
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, p2, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 111
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object p2

    .line 112
    invoke-virtual {p3}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->isForegroundActivity()Z

    move-result p3

    if-eqz p3, :cond_0

    .line 121
    const-string p0, "Bluetooth.Utils"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "show ErrorDialogFragment, message is "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p0, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    new-instance p0, Lcom/android/settings/bluetooth/Utils$ErrorDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/bluetooth/Utils$ErrorDialogFragment;-><init>()V

    .line 123
    new-instance p3, Landroid/os/Bundle;

    invoke-direct {p3}, Landroid/os/Bundle;-><init>()V

    .line 124
    const-string v0, "errorMessage"

    invoke-virtual {p3, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0, p3}, Lcom/android/settings/bluetooth/Utils$ErrorDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 126
    check-cast p2, Landroid/app/Activity;

    invoke-virtual {p2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string p2, "Error"

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/bluetooth/Utils$ErrorDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 128
    goto :goto_0

    .line 129
    :cond_0
    invoke-static {p0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 131
    :goto_0
    return-void
.end method
