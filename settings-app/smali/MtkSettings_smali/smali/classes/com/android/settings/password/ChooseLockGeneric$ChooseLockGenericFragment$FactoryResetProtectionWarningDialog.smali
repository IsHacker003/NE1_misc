.class public Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ChooseLockGeneric.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FactoryResetProtectionWarningDialog"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 883
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static synthetic lambda$onCreateDialog$0(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 918
    const-string p2, "unlockMethodToSet"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 919
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getParentFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;

    .line 920
    invoke-static {p2, p1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;->access$100(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment;Ljava/lang/String;)Z

    .line 921
    return-void
.end method

.method public static synthetic lambda$onCreateDialog$1(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 922
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->dismiss()V

    return-void
.end method

.method public static newInstance(IILjava/lang/String;)Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;
    .locals 3

    .line 891
    new-instance v0, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;

    invoke-direct {v0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;-><init>()V

    .line 893
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 894
    const-string v2, "titleRes"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 895
    const-string p0, "messageRes"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 896
    const-string p0, "unlockMethodToSet"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 897
    invoke-virtual {v0, v1}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->setArguments(Landroid/os/Bundle;)V

    .line 898
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 928
    const/16 v0, 0x210

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 911
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 913
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "titleRes"

    .line 914
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const-string v1, "messageRes"

    .line 915
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$Abdb-f1FnDmiVy0c3RZHU7n2B2k;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$Abdb-f1FnDmiVy0c3RZHU7n2B2k;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;Landroid/os/Bundle;)V

    .line 916
    const p1, 0x7f120e53    # @string/unlock_disable_frp_warning_ok 'Yes, remove'

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$YUiXVX_8NlQHl0UI000UMbpVL0U;

    invoke-direct {v0, p0}, Lcom/android/settings/password/-$$Lambda$ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog$YUiXVX_8NlQHl0UI000UMbpVL0U;-><init>(Lcom/android/settings/password/ChooseLockGeneric$ChooseLockGenericFragment$FactoryResetProtectionWarningDialog;)V

    .line 922
    const v1, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 923
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 913
    return-object p1
.end method

.method public show(Landroid/app/FragmentManager;Ljava/lang/String;)V
    .locals 1

    .line 903
    invoke-virtual {p1, p2}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 905
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 907
    :cond_0
    return-void
.end method
