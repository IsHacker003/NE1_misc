.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ErrorDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 460
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static newInstance(Ljava/lang/CharSequence;I)Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;
    .locals 3

    .line 470
    new-instance v0, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;

    invoke-direct {v0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;-><init>()V

    .line 471
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 472
    const-string v2, "error_msg"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putCharSequence(Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 473
    const-string p0, "error_id"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 474
    invoke-virtual {v0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->setArguments(Landroid/os/Bundle;)V

    .line 475
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 506
    const/16 v0, 0x239

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 480
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 481
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "error_msg"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getCharSequence(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "error_id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 483
    const v2, 0x7f120be6    # @string/security_settings_fingerprint_enroll_error_dialog_title 'Enrollment was not completed'

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 484
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 485
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v3, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;

    invoke-direct {v3, p0, v1}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$ErrorDialog;I)V

    .line 486
    const v1, 0x7f120be1    # @string/security_settings_fingerprint_enroll_dialog_ok 'OK'

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 499
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 500
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 501
    return-object p1
.end method
