.class public Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;
.super Landroid/app/Activity;
.source "MtpDialogPopupActivity.java"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private enableDialog:Landroid/app/AlertDialog;

.field private mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 23
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    const-string v0, "MtpDialogPopupActivity"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->TAG:Ljava/lang/String;

    .line 31
    new-instance v0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$1;-><init>(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/app/AlertDialog;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->enableDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->enableDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)Landroid/hardware/usb/UsbManager;
    .locals 0

    .line 23
    iget-object p0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    return-object p0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 50
    const-string p1, "usb"

    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/usb/UsbManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 52
    new-instance p1, Landroid/view/ContextThemeWrapper;

    const v0, 0x103013f    # @android:style/Theme.DeviceDefault.Light.DarkActionBar

    invoke-direct {p1, p0, v0}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 53
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    const p1, 0x7f120633    # @string/fih_mtp_enable_dialog_title 'Using USB to transfer files?'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 55
    const p1, 0x7f120632    # @string/fih_mtp_enable_dialog_content 'After connecting, you can transfer files on the computer you trust and access data on the phone.'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 57
    new-instance p1, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$2;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$2;-><init>(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)V

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 71
    new-instance p1, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$3;-><init>(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)V

    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 81
    new-instance p1, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$4;

    invoke-direct {p1, p0}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity$4;-><init>(Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;)V

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->enableDialog:Landroid/app/AlertDialog;

    .line 88
    iget-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->enableDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 89
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 108
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 109
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 94
    invoke-super {p0}, Landroid/app/Activity;->onStart()V

    .line 96
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 98
    return-void
.end method

.method protected onStop()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->mDisconnectedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 103
    invoke-super {p0}, Landroid/app/Activity;->onStop()V

    .line 104
    return-void
.end method
