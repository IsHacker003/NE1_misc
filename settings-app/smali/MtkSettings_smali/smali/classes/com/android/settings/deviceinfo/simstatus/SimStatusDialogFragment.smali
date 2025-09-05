.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SimStatusDialogFragment.java"


# instance fields
.field private mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

.field private mRootView:Landroid/view/View;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 52
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 2

    .line 60
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 61
    const-string v0, "SimStatusDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 62
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 63
    const-string v1, "arg_key_sim_slot"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 64
    const-string p1, "arg_key_dialog_title"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    new-instance p1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;-><init>()V

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    const-string p2, "SimStatusDialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 70
    :cond_0
    return-void
.end method


# virtual methods
.method public addSettingToScreen(I)V
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 115
    if-eqz p1, :cond_0

    .line 116
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 118
    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 56
    const/16 v0, 0x4de

    return v0
.end method

.method public isSettingOnScreen(I)Z
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 107
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 110
    :cond_1
    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 124
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-nez p1, :cond_0

    .line 127
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 130
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 139
    :cond_1
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 74
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 75
    const-string v0, "arg_key_sim_slot"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 76
    const-string v1, "arg_key_dialog_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 77
    new-instance v1, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mLifecycle:Lcom/android/settingslib/core/lifecycle/Lifecycle;

    invoke-direct {v1, p0, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    .line 78
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 79
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 80
    const/4 v0, 0x0

    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 81
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    .line 82
    const v2, 0x7f0d0088    # @layout/dialog_sim_status 'res/layout/dialog_sim_status.xml'

    invoke-virtual {v1, v2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    .line 83
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mController:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;

    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->initialize()V

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 143
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-eqz v0, :cond_0

    .line 144
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 147
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    .line 148
    return-void
.end method

.method public removeSettingFromScreen(I)V
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 89
    if-eqz p1, :cond_0

    .line 90
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 92
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 95
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120528    # @string/device_info_default 'Unknown'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 99
    :cond_0
    if-eqz p1, :cond_1

    .line 100
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 102
    :cond_1
    return-void
.end method
