.class public Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "SettingsPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SettingsPreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SettingsDialogFragment"
.end annotation


# instance fields
.field private mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

.field private mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private mParentFragment:Landroid/app/Fragment;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 542
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 544
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/DialogCreatable;I)V
    .locals 1

    .line 547
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>(Lcom/android/settings/DialogCreatable;I)V

    .line 548
    instance-of p2, p1, Landroid/app/Fragment;

    if-eqz p2, :cond_0

    .line 552
    check-cast p1, Landroid/app/Fragment;

    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 553
    return-void

    .line 549
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "fragment argument must be an instance of "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class v0, Landroid/app/Fragment;

    .line 550
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method static synthetic access$002(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnCancelListener;)Landroid/content/DialogInterface$OnCancelListener;
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    return-object p1
.end method

.method static synthetic access$102(Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;Landroid/content/DialogInterface$OnDismissListener;)Landroid/content/DialogInterface$OnDismissListener;
    .locals 0

    .line 533
    iput-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    return-object p1
.end method


# virtual methods
.method public getDialogId()I
    .locals 1

    .line 629
    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    return v0
.end method

.method public getMetricsCategory()I
    .locals 2

    .line 558
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogCreatable:Lcom/android/settings/DialogCreatable;

    if-nez v0, :cond_0

    .line 559
    const/4 v0, 0x0

    return v0

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogCreatable:Lcom/android/settings/DialogCreatable;

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {v0, v1}, Lcom/android/settings/DialogCreatable;->getDialogMetricsCategory(I)I

    move-result v0

    .line 562
    if-lez v0, :cond_1

    .line 565
    return v0

    .line 563
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Dialog must provide a metrics category"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 614
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 615
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    if-eqz v0, :cond_0

    .line 616
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnCancelListener;->onCancel(Landroid/content/DialogInterface;)V

    .line 618
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 588
    if-eqz p1, :cond_3

    .line 589
    const-string v0, "key_dialog_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    .line 590
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 591
    const-string v0, "key_parent_fragment_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 592
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 593
    invoke-virtual {p0}, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    .line 595
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/DialogCreatable;

    if-nez v0, :cond_2

    .line 596
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 597
    iget-object v2, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v2, :cond_1

    .line 598
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 599
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " must implement "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-class p1, Lcom/android/settings/DialogCreatable;

    .line 601
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 604
    :cond_2
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of p1, p1, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz p1, :cond_3

    .line 606
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast p1, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {p1, p0}, Lcom/android/settings/SettingsPreferenceFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 609
    :cond_3
    iget-object p1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast p1, Lcom/android/settings/DialogCreatable;

    iget v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-interface {p1, v0}, Lcom/android/settings/DialogCreatable;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object p1

    return-object p1
.end method

.method public onDetach()V
    .locals 2

    .line 634
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDetach()V

    .line 637
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 639
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-static {v0}, Lcom/android/settings/SettingsPreferenceFragment;->access$200(Lcom/android/settings/SettingsPreferenceFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 640
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/settings/SettingsPreferenceFragment;->access$202(Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;)Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;

    .line 643
    :cond_0
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 622
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 623
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    .line 624
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-interface {v0, p1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    .line 626
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 570
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 571
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    .line 572
    const-string v0, "key_dialog_id"

    iget v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mDialogId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 573
    const-string v0, "key_parent_fragment_id"

    iget-object v1, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    invoke-virtual {v1}, Landroid/app/Fragment;->getId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 575
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .line 579
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onStart()V

    .line 581
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    instance-of v0, v0, Lcom/android/settings/SettingsPreferenceFragment;

    if-eqz v0, :cond_0

    .line 582
    iget-object v0, p0, Lcom/android/settings/SettingsPreferenceFragment$SettingsDialogFragment;->mParentFragment:Landroid/app/Fragment;

    check-cast v0, Lcom/android/settings/SettingsPreferenceFragment;

    invoke-virtual {v0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 584
    :cond_0
    return-void
.end method
