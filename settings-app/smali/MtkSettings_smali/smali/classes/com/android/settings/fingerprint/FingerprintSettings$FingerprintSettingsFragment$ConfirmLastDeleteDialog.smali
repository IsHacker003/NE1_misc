.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConfirmLastDeleteDialog"
.end annotation


# instance fields
.field private mFp:Landroid/hardware/fingerprint/Fingerprint;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 819
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 819
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 825
    const/16 v0, 0x23b

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 830
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "fingerprint"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/hardware/fingerprint/Fingerprint;

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 831
    nop

    .line 832
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "isProfileChallengeUser"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 833
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 834
    const v1, 0x7f12066a    # @string/fingerprint_last_delete_title 'Remove all fingerprints?'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 835
    if-eqz p1, :cond_0

    .line 836
    const p1, 0x7f120669    # @string/fingerprint_last_delete_message_profile_challenge 'You won't be able to use your fingerprints to unlock your work profile, authorize purchases, or sign ...'

    goto :goto_0

    .line 837
    :cond_0
    const p1, 0x7f120668    # @string/fingerprint_last_delete_message 'You won't be able to use your fingerprints to unlock your phone, authorize purchases, or sign in to  ...'

    .line 835
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120667    # @string/fingerprint_last_delete_confirm 'Yes, remove'

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V

    .line 838
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120361    # @string/cancel 'Cancel'

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$ConfirmLastDeleteDialog;)V

    .line 848
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 856
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 857
    return-object p1
.end method
