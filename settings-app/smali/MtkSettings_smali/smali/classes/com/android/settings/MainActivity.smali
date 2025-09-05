.class public final Lcom/android/settings/MainActivity;
.super Landroid/app/Activity;
.source "MainActivity.kt"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0018\u00002\u00020\u00012\u00020\u0002B\u0007\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u0012\u0010\u0005\u001a\u00020\u00062\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0008H\u0014J\u0010\u0010\t\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bJ\u0012\u0010\u000c\u001a\u00020\u00062\u0008\u0010\n\u001a\u0004\u0018\u00010\u000bH\u0016J\u0008\u0010\r\u001a\u00020\u0006H\u0002\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcom/android/settings/MainActivity;",
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
.method public static synthetic $r8$lambda$0cbMVQ3N1TBPWrC7Xv8UM6svnzM(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/MainActivity;->showDialog$lambda$4(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$4RufJfmM7dhGwj4NKizObCcuuiw(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/MainActivity;->unlockBl$lambda$0(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$CKjqtQf5Fx5A3-JiEfuV8hDAbiU(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/MainActivity;->showDialog$lambda$5(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$NcAsguPWrOdTPtiYfq33a97VtPU(Lcom/android/settings/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1, p2}, Lcom/android/settings/MainActivity;->onClick$lambda$2(Lcom/android/settings/MainActivity;Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$dwscB6g2oXGEGY0uZYxebzZHZz0(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/MainActivity;->unlockBl$lambda$1(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$ytix36vgucgubekF1Ltc93np1bg(Landroid/content/DialogInterface;I)V
    .locals 0

    invoke-static {p0, p1}, Lcom/android/settings/MainActivity;->onClick$lambda$3(Landroid/content/DialogInterface;I)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method

.method private static final onClick$lambda$2(Lcom/android/settings/MainActivity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 41
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string p2, "dd if=/dev/zero of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/seccfg"

    invoke-virtual {p1, p2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 42
    invoke-direct {p0}, Lcom/android/settings/MainActivity;->showDialog()V

    return-void
.end method

.method private static final onClick$lambda$3(Landroid/content/DialogInterface;I)V
    .locals 0

    return-void
.end method

.method private final showDialog()V
    .locals 3

    .line 52
    new-instance v0, Landroid/app/AlertDialog$Builder;

    move-object v1, p0

    check-cast v1, Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 53
    const-string v1, "Bootloader successfully locked!"

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 54
    const-string v1, "Please connect your charger and reboot the phone for changes to take effect. Your data will NOT be erased."

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 57
    const-string v1, "OK"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 61
    const-string v1, "Later"

    check-cast v1, Ljava/lang/CharSequence;

    new-instance v2, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 64
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method private static final showDialog$lambda$4(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 58
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

    .line 25
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

    .line 35
    new-instance p1, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 36
    const-string v0, "WARNING"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 37
    const-string v0, "If your bootloader is locked, you will not be able to boot the phone if the charger is not connected. You will get the \"red state\" error. This is due to how the Nokia 3\'s bootloader works. For the same reason, you also can\'t boot into recovery or fastboot through button combinations if the phone is running on battery. You can disconnect the charger after the phone starts playing the boot animation with the Nokia logo."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 40
    const-string v0, "Continue"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda4;

    invoke-direct {v1, p0}, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda4;-><init>(Lcom/android/settings/MainActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    const-string v0, "Cancel"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 12
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 13
    sget p1, Lcom/android/settings/R$layout;->button:I

    invoke-virtual {p0, p1}, Lcom/android/settings/MainActivity;->setContentView(I)V

    return-void
.end method

.method public final unlockBl(Landroid/view/View;)V
    .locals 2

    .line 18
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object p1

    const-string v0, "dd if=/system/etc/seccfg.bin of=/dev/block/platform/mtk-msdc.0/11230000.msdc0/by-name/seccfg"

    invoke-virtual {p1, v0}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    .line 19
    new-instance p1, Landroid/app/AlertDialog$Builder;

    move-object v0, p0

    check-cast v0, Landroid/content/Context;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 20
    const-string v0, "Bootloader successfully unlocked!"

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 21
    const-string v0, "Please reboot the phone for changes to take effect. Your data will NOT be erased."

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 24
    const-string v0, "OK"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda0;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 28
    const-string v0, "Later"

    check-cast v0, Ljava/lang/CharSequence;

    new-instance v1, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/settings/MainActivity$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 31
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    return-void
.end method
