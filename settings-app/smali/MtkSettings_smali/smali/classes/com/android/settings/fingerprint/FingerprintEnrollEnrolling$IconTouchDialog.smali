.class public Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintEnrollEnrolling.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "IconTouchDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 437
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 456
    const/16 v0, 0x238

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 441
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    const v0, 0x7f120bfe    # @string/security_settings_fingerprint_enroll_touch_dialog_title 'Whoops, that’s not the sensor'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 443
    const v1, 0x7f120bfd    # @string/security_settings_fingerprint_enroll_touch_dialog_message 'Touch the sensor on the back of your phone. Use your index finger.'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintEnrollEnrolling$IconTouchDialog;)V

    .line 444
    const v2, 0x7f120be1    # @string/security_settings_fingerprint_enroll_dialog_ok 'OK'

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 451
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method
