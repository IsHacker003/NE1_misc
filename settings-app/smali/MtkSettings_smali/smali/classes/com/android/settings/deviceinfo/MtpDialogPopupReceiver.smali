.class public Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;
.super Landroid/content/BroadcastReceiver;
.source "MtpDialogPopupReceiver.java"


# static fields
.field private static final DEBUG:Z


# instance fields
.field private TAG:Ljava/lang/String;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 16
    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v1, "userdebug"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->DEBUG:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 12
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 13
    const-string v0, "MtpDialogPopupReceiver"

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->TAG:Ljava/lang/String;

    .line 14
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 20
    iput-object p1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->mContext:Landroid/content/Context;

    .line 21
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 22
    sget-boolean v1, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->DEBUG:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Received "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    :cond_0
    const-string v1, "android.hardware.usb.action.USB_STATE"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 24
    const-string v0, "connected"

    const/4 v1, 0x0

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 25
    const-string v2, "configured"

    invoke-virtual {p2, v2, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v2, "device_provisioned"

    invoke-static {p1, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v2, 0x1

    if-eqz p1, :cond_1

    .line 28
    move p1, v2

    goto :goto_0

    .line 26
    :cond_1
    nop

    .line 28
    move p1, v1

    :goto_0
    const-string v3, "ro.product.name"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 29
    if-eqz v3, :cond_2

    const-string v4, "000F"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 30
    move v3, v2

    goto :goto_1

    .line 29
    :cond_2
    nop

    .line 30
    move v3, v1

    .line 32
    :goto_1
    if-nez p2, :cond_3

    .line 33
    const-string v4, "1"

    const-string v5, "sys.usb.skip_first_popup"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 34
    const-string v4, "sys.usb.skip_first_popup"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 37
    :cond_3
    if-nez v0, :cond_4

    .line 38
    const-string v4, "sys.usb.mtp_popup_done"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    :cond_4
    if-eqz p2, :cond_5

    const-string v4, "0"

    const-string v5, "sys.usb.skip_first_popup"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 43
    const-string v4, "0"

    const-string v5, "sys.usb.mtp_popup_done"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 44
    nop

    .line 48
    move v1, v2

    :cond_5
    sget-boolean v2, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->DEBUG:Z

    if-eqz v2, :cond_6

    iget-object v2, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " connected = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, "  configured = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  mMtpDialogPopupAllowed = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, "  isDeviceProvisioned = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, " isFactoryVersion = "

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_6
    if-eqz v1, :cond_7

    if-eqz p1, :cond_7

    if-nez v3, :cond_7

    .line 55
    new-instance p1, Landroid/content/Intent;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->mContext:Landroid/content/Context;

    const-class v0, Lcom/android/settings/deviceinfo/MtpDialogPopupActivity;

    invoke-direct {p1, p2, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 56
    const/high16 p2, 0x10000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 57
    iget-object p2, p0, Lcom/android/settings/deviceinfo/MtpDialogPopupReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p2, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 58
    const-string p1, "sys.usb.mtp_popup_done"

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    :cond_7
    goto :goto_2

    :cond_8
    const-string p1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 61
    const-string p1, "sys.usb.skip_first_popup"

    const-string p2, "1"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    const-string p1, "sys.usb.mtp_popup_done"

    const-string p2, "0"

    invoke-static {p1, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    :cond_9
    :goto_2
    return-void
.end method
