.class public Lcom/android/settings/network/ApnEditor$ErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ApnEditor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/ApnEditor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1344
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static showError(Lcom/android/settings/network/ApnEditor;)V
    .locals 2

    .line 1347
    new-instance v0, Lcom/android/settings/network/ApnEditor$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;-><init>()V

    .line 1348
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 1349
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "error"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1350
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 1365
    const/16 v0, 0x212

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 1354
    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/network/ApnEditor;

    invoke-virtual {p1}, Lcom/android/settings/network/ApnEditor;->validateApnData()Ljava/lang/String;

    move-result-object p1

    .line 1356
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/network/ApnEditor$ErrorDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 1357
    const v1, 0x7f12060f    # @string/error_title ''

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1358
    const v1, 0x104000a    # @android:string/ok

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 1359
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 1360
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 1356
    return-object p1
.end method
