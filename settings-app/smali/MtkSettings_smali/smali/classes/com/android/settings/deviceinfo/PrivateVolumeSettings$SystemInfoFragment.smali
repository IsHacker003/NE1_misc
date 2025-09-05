.class public Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "PrivateVolumeSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deviceinfo/PrivateVolumeSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SystemInfoFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 768
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;)V
    .locals 2

    .line 770
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 772
    :cond_0
    new-instance v0, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;

    invoke-direct {v0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;-><init>()V

    .line 773
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 774
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "systemInfo"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 775
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 779
    const/16 v0, 0x235

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 784
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 785
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PrivateVolumeSettings$SystemInfoFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    sget-object v2, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const v2, 0x7f120d12    # @string/storage_detail_dialog_system 'System includes files used to run Android version %s'

    invoke-virtual {v0, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 787
    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 788
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 784
    return-object p1
.end method
