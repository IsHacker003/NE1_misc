.class public Lcom/android/settings/password/SetupSkipDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SetupSkipDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Z)Lcom/android/settings/password/SetupSkipDialog;
    .locals 3

    .line 41
    new-instance v0, Lcom/android/settings/password/SetupSkipDialog;

    invoke-direct {v0}, Lcom/android/settings/password/SetupSkipDialog;-><init>()V

    .line 42
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 43
    const-string v2, "frp_supported"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/settings/password/SetupSkipDialog;->setArguments(Landroid/os/Bundle;)V

    .line 45
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 50
    const/16 v0, 0x23d

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 75
    const/16 p2, 0xb

    invoke-virtual {p1, p2}, Landroid/app/Activity;->setResult(I)V

    .line 76
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 79
    :goto_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 0

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onCreateDialogBuilder()Landroid/app/AlertDialog$Builder;
    .locals 3

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/SetupSkipDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 62
    const v2, 0x7f120caf    # @string/skip_anyway_button_label 'Skip anyway'

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 63
    const v2, 0x7f1206b4    # @string/go_back_button_label 'Go back'

    invoke-virtual {v1, v2, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 64
    const v2, 0x7f12081a    # @string/lock_screen_intro_skip_title 'Skip screen lock?'

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 65
    const-string v2, "frp_supported"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const v0, 0x7f120819    # @string/lock_screen_intro_skip_dialog_text_frp 'Device protection features won’t be turned on. You won’t be able to prevent others from using this p ...'

    goto :goto_0

    .line 67
    :cond_0
    const v0, 0x7f120818    # @string/lock_screen_intro_skip_dialog_text 'Device protection features won’t be turned on. You won’t be able to prevent others from using this p ...'

    .line 65
    :goto_0
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 61
    return-object v0
.end method

.method public show(Landroid/app/FragmentManager;)V
    .locals 1

    .line 82
    const-string v0, "skip_dialog"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/password/SetupSkipDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 83
    return-void
.end method
