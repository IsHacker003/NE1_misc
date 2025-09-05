.class public Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "BillingCycleSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/BillingCycleSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CycleEditorFragment"
.end annotation


# instance fields
.field private mCycleDayPicker:Landroid/widget/NumberPicker;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 337
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 3

    .line 343
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 345
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 346
    const-string v1, "template"

    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->access$000(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 348
    new-instance v1, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;

    invoke-direct {v1}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;-><init>()V

    .line 349
    invoke-virtual {v1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 350
    const/4 v0, 0x0

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 351
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "cycleEditor"

    invoke-virtual {v1, p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 352
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 356
    const/16 v0, 0x225

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6

    .line 387
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "template"

    invoke-virtual {p1, p2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkTemplate;

    .line 388
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p2

    check-cast p2, Lcom/android/settings/datausage/DataUsageEditController;

    .line 389
    invoke-interface {p2}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 392
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->clearFocus()V

    .line 394
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v1}, Landroid/widget/NumberPicker;->getValue()I

    move-result v1

    .line 395
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    iget-object v2, v2, Landroid/text/format/Time;->timezone:Ljava/lang/String;

    .line 396
    const-string v3, "BillingCycleSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onClick, cycleDay = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", cycleTimezone = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyCycleDay(Landroid/net/NetworkTemplate;ILjava/lang/String;)V

    .line 398
    invoke-interface {p2}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    .line 399
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 361
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 362
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 363
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 365
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 366
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 368
    const v2, 0x7f0d0076    # @layout/data_usage_cycle_editor 'res/layout/data_usage_cycle_editor.xml'

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 369
    const v2, 0x7f0a00e8    # @id/cycle_day

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/NumberPicker;

    iput-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "template"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkTemplate;

    .line 372
    invoke-virtual {v0, v2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result v0

    .line 374
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/NumberPicker;->setMinValue(I)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    const/16 v4, 0x1f

    invoke-virtual {v2, v4}, Landroid/widget/NumberPicker;->setMaxValue(I)V

    .line 376
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPicker;->setValue(I)V

    .line 377
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$CycleEditorFragment;->mCycleDayPicker:Landroid/widget/NumberPicker;

    invoke-virtual {v0, v3}, Landroid/widget/NumberPicker;->setWrapSelectorWheel(Z)V

    .line 379
    const v0, 0x7f120487    # @string/data_usage_cycle_editor_title 'Usage cycle reset date'

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 380
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 381
    const v0, 0x7f120485    # @string/data_usage_cycle_editor_positive 'Set'

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 382
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 379
    return-object p1
.end method
