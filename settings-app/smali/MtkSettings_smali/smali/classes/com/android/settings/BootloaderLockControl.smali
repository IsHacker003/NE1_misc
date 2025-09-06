.class public final Lcom/android/settings/BootloaderLockControl;
.super Landroid/app/Activity;
.source "BootloaderLockControl.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0002J\u0008\u0010\u000e\u001a\u00020\u000fH\u0002\u00a8\u0006\u0010"
    }
    d2 = {
        "Lcom/android/settings/BootloaderLockControl;",
        "Landroid/app/Activity;",
        "Landroid/view/View$OnClickListener;",
        "<init>",
        "()V",
        "onCreate",
        "",
        "savedInstanceState",
        "Landroid/os/Bundle;",
        "unlockBl",
        "v",
        "Landroid/view/View;",
        "onClick",
        "showDialog",
        "isSelinuxPermissive",
        "",
        "app_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# direct methods
.method public static synthetic $r8$lambda$A0SEVJromRMzi2L1kLPiVLhpIr4(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/BootloaderLockControl;->showDialog$lambda$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$OpqYcd3ZUjTR8Lc7Cwzhg8vCCmk(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/BootloaderLockControl;->onClick$lambda$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$bV8nZFyPpUcrrH8gFwuCThOPaz0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/BootloaderLockControl;->unlockBl$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$gmYC4LUfOZe7XtQkVNTh52l_4R0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/BootloaderLockControl;->unlockBl$lambda$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$tNO6jeaghBt_1iV_z8Pm3YgIRDM(Lcom/android/settings/BootloaderLockControl;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/BootloaderLockControl;->onClick$lambda$2(Lcom/android/settings/BootloaderLockControl;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$wXbgN1Mz5IOfQoh-IwwAfxMwmao(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/BootloaderLockControl;->showDialog$lambda$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private final isSelinuxPermissive()Z
    .locals 3

    .line 85
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v1, "/sys/fs/selinux/enforce"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    invoke-static {v0, v2, v1, v2}, Lkotlin/io/FilesKt;->readText$default(Ljava/io/File;Ljava/nio/charset/Charset;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-static {v0}, Lkotlin/text/StringsKt;->trim(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 87
    const-string v1, "0"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    move-exception v0

    .line 89
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method private static final onClick$lambda$2(Lcom/android/settings/BootloaderLockControl;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/BootloaderLockControl;->isSelinuxPermissive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 51
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 52
    const-string p2, "su -c dd if=/dev/zero of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/seccfg"

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_0

    .line 55
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 56
    const-string p2, "dd if=/dev/zero of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/seccfg"

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 58
    :goto_0
    invoke-direct {p0}, Lcom/android/settings/BootloaderLockControl;->showDialog()V

    return-void
.end method

.method private static final onClick$lambda$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final showDialog()V
    .locals 3

    .line 68
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 69
    const-string v1, "Bootloader successfully locked!"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 70
    const-string v1, "Please connect your charger and reboot the phone for changes to take effect. Your data will NOT be erased."

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 73
    const-string v1, "OK"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 77
    const-string v1, "Later"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 80
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showDialog$lambda$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 74
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string p1, "svc power reboot"

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    return-void
.end method

.method private static final showDialog$lambda$5(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private static final unlockBl$lambda$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 34
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p0

    const-string p1, "svc power reboot"

    invoke-virtual {p0, p1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    return-void
.end method

.method private static final unlockBl$lambda$1(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 44
    new-instance p1, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 45
    const-string v0, "WARNING"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 46
    const-string v0, "If your bootloader is locked, you will not be able to boot the phone if the charger is not connected. You will get the \"red state\" error. This is due to how the Nokia 3\'s bootloader works. For the same reason, you also can\'t boot into recovery or fastboot through button combinations if the phone is running on battery. You can disconnect the charger after the phone starts playing the boot animation with the Nokia logo."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 49
    const-string v0, "Continue"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda0;-><init>(Lcom/android/settings/BootloaderLockControl;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    const-string v0, "Cancel"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 14
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 15
    sget p1, Lcom/android/settings/R$layout;->button:I

    invoke-virtual {p0, p1}, Lcom/android/settings/BootloaderLockControl;->setContentView(I)V

    return-void
.end method

.method public final unlockBl(Landroid/view/View;)V
    .locals 2

    .line 20
    invoke-direct {p0}, Lcom/android/settings/BootloaderLockControl;->isSelinuxPermissive()Z

    move-result p1

    if-nez p1, :cond_0

    .line 21
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 22
    const-string v0, "su -c dd if=/system/etc/seccfg.bin of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/seccfg"

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    goto :goto_0

    .line 25
    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    .line 26
    const-string v0, "dd if=/system/etc/seccfg.bin of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/seccfg"

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 28
    :goto_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "Bootloader successfully unlocked!"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 30
    const-string v0, "Please reboot the phone for changes to take effect. Your data will NOT be erased."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 33
    const-string v0, "OK"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 37
    const-string v0, "Later"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda3;

    invoke-direct {v1}, Lcom/android/settings/BootloaderLockControl$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
