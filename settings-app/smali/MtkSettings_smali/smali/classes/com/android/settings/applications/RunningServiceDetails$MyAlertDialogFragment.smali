.class public Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "RunningServiceDetails.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningServiceDetails;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 564
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newConfirmStop(ILandroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;
    .locals 3

    .line 567
    new-instance v0, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;-><init>()V

    .line 568
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 569
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 570
    const-string p0, "comp"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 571
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 572
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 610
    const/16 v0, 0x218

    return v0
.end method

.method getOwner()Lcom/android/settings/applications/RunningServiceDetails;
    .locals 1

    .line 576
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/RunningServiceDetails;

    return-object v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 581
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 582
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 584
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "comp"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 585
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getOwner()Lcom/android/settings/applications/RunningServiceDetails;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/RunningServiceDetails;->activeDetailForService(Landroid/content/ComponentName;)Lcom/android/settings/applications/RunningServiceDetails$ActiveDetail;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 586
    return-object v1

    .line 589
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b7a    # @string/runningservicedetails_stop_dlg_title 'Stop system service?'

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 591
    invoke-virtual {p0}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v3, 0x7f120b79    # @string/runningservicedetails_stop_dlg_text 'If you stop this service, some features of your phone may stop working correctly until you power it  ...'

    invoke-virtual {v2, v3}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f120579    # @string/dlg_ok 'OK'

    new-instance v3, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;

    invoke-direct {v3, p0, p1}, Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment$1;-><init>(Lcom/android/settings/applications/RunningServiceDetails$MyAlertDialogFragment;Landroid/content/ComponentName;)V

    .line 592
    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120573    # @string/dlg_cancel 'Cancel'

    .line 601
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 602
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 589
    return-object p1

    .line 605
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
