.class public Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ButtonActionDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;
    }
.end annotation


# instance fields
.field mId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private createDialog(I)Landroid/app/AlertDialog;
    .locals 3

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 85
    const v1, 0x7f120573    # @string/dlg_cancel 'Cancel'

    const/4 v2, 0x0

    packed-switch p1, :pswitch_data_0

    .line 101
    return-object v2

    .line 94
    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120690    # @string/force_stop_dlg_title 'Force stop?'

    .line 95
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12068f    # @string/force_stop_dlg_text 'If you force stop an app, it may misbehave.'

    .line 96
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120579    # @string/dlg_ok 'OK'

    .line 97
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 94
    return-object p1

    .line 88
    :pswitch_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120117    # @string/app_disable_dlg_text 'If you disable this app, Android and other apps may no longer function as intended.'

    .line 89
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120116    # @string/app_disable_dlg_positive 'Disable app'

    .line 90
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 91
    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 92
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 88
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static newInstance(I)Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;
    .locals 3

    .line 50
    new-instance v0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;-><init>()V

    .line 51
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 52
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 53
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x22e

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 78
    nop

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;

    .line 80
    iget p2, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment$AppButtonsDialogListener;->handleDialogClick(I)V

    .line 81
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 68
    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    .line 69
    iget p1, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->createDialog(I)Landroid/app/AlertDialog;

    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    .line 73
    return-object p1

    .line 71
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/fuelgauge/ButtonActionDialogFragment;->mId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
