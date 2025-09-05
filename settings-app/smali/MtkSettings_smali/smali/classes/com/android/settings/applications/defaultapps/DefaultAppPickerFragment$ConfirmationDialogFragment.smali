.class public Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DefaultAppPickerFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmationDialogFragment"
.end annotation


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 100
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 111
    const/16 v0, 0x317

    return v0
.end method

.method public init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V
    .locals 2

    .line 120
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 121
    const-string v1, "extra_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    const-string p2, "extra_message"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 123
    invoke-virtual {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 124
    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 125
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    .line 145
    instance-of p2, p1, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;

    if-eqz p2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    .line 147
    check-cast p1, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;

    const-string v0, "extra_key"

    .line 148
    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 147
    invoke-virtual {p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 150
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 135
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "extra_message"

    .line 136
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 137
    const v0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 138
    const/high16 v1, 0x1040000    # @android:string/cancel

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 139
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public setCancelListener(Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 129
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 130
    return-void
.end method
