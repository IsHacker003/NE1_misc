.class public Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "FingerprintSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RenameDialog"
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mDeleteInProgress:Z

.field private mDialogTextField:Landroid/widget/EditText;

.field private mFingerName:Ljava/lang/String;

.field private mFp:Landroid/hardware/fingerprint/Fingerprint;

.field private mTextHadFocus:Ljava/lang/Boolean;

.field private mTextSelectionEnd:I

.field private mTextSelectionStart:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 721
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/String;
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFingerName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Ljava/lang/Boolean;
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    return-object p0
.end method

.method static synthetic access$1200(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I
    .locals 0

    .line 721
    iget p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionStart:I

    return p0
.end method

.method static synthetic access$1300(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)I
    .locals 0

    .line 721
    iget p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionEnd:I

    return p0
.end method

.method static synthetic access$1400(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Z
    .locals 0

    .line 721
    iget-boolean p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDeleteInProgress:Z

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/widget/EditText;
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$502(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;Landroid/widget/EditText;)Landroid/widget/EditText;
    .locals 0

    .line 721
    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/hardware/fingerprint/Fingerprint;
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 721
    iget-object p0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method


# virtual methods
.method public enableDelete()V
    .locals 2

    .line 796
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDeleteInProgress:Z

    .line 797
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 798
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, -0x2

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 800
    :cond_0
    return-void
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 815
    const/16 v0, 0x23a

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 738
    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "fingerprint"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/hardware/fingerprint/Fingerprint;

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFp:Landroid/hardware/fingerprint/Fingerprint;

    .line 739
    if-eqz p1, :cond_0

    .line 740
    const-string v0, "fingerName"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mFingerName:Ljava/lang/String;

    .line 741
    const-string v0, "textHadFocus"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    .line 742
    const-string v0, "startSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionStart:I

    .line 743
    const-string v0, "endSelection"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextSelectionEnd:I

    .line 745
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f0d00a1    # @layout/fingerprint_rename_dialog 'res/layout/fingerprint_rename_dialog.xml'

    .line 746
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120be1    # @string/security_settings_fingerprint_enroll_dialog_ok 'OK'

    new-instance v1, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;

    invoke-direct {v1, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$1;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V

    .line 747
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 768
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    .line 769
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog$2;-><init>(Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 787
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mTextHadFocus:Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 789
    :cond_1
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 792
    :cond_2
    iget-object p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 804
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 805
    iget-object v0, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 806
    const-string v0, "fingerName"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 807
    const-string v0, "textHadFocus"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->hasFocus()Z

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 808
    const-string v0, "startSelection"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 809
    const-string v0, "endSelection"

    iget-object v1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDialogTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 811
    :cond_0
    return-void
.end method

.method public setDeleteInProgress(Z)V
    .locals 0

    .line 733
    iput-boolean p1, p0, Lcom/android/settings/fingerprint/FingerprintSettings$FingerprintSettingsFragment$RenameDialog;->mDeleteInProgress:Z

    .line 734
    return-void
.end method
