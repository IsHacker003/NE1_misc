.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ImeiInfoDialogFragment.java"


# static fields
.field static final TAG:Ljava/lang/String; = "ImeiInfoDialog"


# instance fields
.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;ILjava/lang/String;)V
    .locals 2

    .line 46
    invoke-virtual {p0}, Landroid/app/Fragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    .line 47
    const-string v0, "ImeiInfoDialog"

    invoke-virtual {p0, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 48
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 49
    const-string v1, "arg_key_slot_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 50
    const-string p1, "arg_key_dialog_title"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    new-instance p1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;-><init>()V

    .line 52
    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 53
    const-string p2, "ImeiInfoDialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 55
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 59
    const/16 v0, 0x4d8

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 65
    const-string v0, "arg_key_slot_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 66
    const-string v1, "arg_key_dialog_title"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    new-instance v1, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;I)V

    .line 69
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 70
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    const/4 v0, 0x0

    const v2, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 72
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 73
    const v3, 0x7f0d0087    # @layout/dialog_imei_info 'res/layout/dialog_imei_info.xml'

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    .line 74
    invoke-virtual {v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogController;->populateImeiInfo()V

    .line 75
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public removeViewFromScreen(I)V
    .locals 1

    .line 79
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 80
    if-eqz p1, :cond_0

    .line 81
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 83
    :cond_0
    return-void
.end method

.method public setText(ILjava/lang/CharSequence;)V
    .locals 1

    .line 86
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->mRootView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 87
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f120528    # @string/device_info_default 'Unknown'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 90
    :cond_0
    if-eqz p1, :cond_1

    .line 91
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    :cond_1
    return-void
.end method
