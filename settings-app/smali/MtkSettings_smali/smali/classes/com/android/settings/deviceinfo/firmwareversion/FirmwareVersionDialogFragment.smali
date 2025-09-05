.class public Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FirmwareVersionDialogFragment.java"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private initializeControllers()V
    .locals 1

    .line 87
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogController;->initialize()V

    .line 88
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/SecurityPatchLevelDialogController;->initialize()V

    .line 89
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/BasebandVersionDialogController;->initialize()V

    .line 90
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/KernelVersionDialogController;->initialize()V

    .line 91
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;-><init>(Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;)V

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/firmwareversion/BuildNumberDialogController;->initialize()V

    .line 92
    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 2

    .line 39
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 40
    const-string v0, "firmwareVersionDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;-><init>()V

    .line 42
    const-string v1, "firmwareVersionDialog"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 44
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x4df

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 53
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 54
    const v0, 0x7f120677    # @string/firmware_title 'Android'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 55
    const/4 v0, 0x0

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d0085    # @layout/dialog_firmware_version 'res/layout/dialog_firmware_version.xml'

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    .line 60
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->initializeControllers()V

    .line 62
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public registerClickListener(ILandroid/view/View$OnClickListener;)V
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 81
    if-eqz p1, :cond_0

    .line 82
    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 84
    :cond_0
    return-void
.end method

.method public removeSettingFromScreen(I)V
    .locals 1

    .line 73
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 74
    if-eqz p1, :cond_0

    .line 75
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 77
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/deviceinfo/firmwareversion/FirmwareVersionDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 67
    if-eqz p1, :cond_0

    .line 68
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    return-void
.end method
