.class public Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;
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
    name = "BytesEditorFragment"
.end annotation


# instance fields
.field private mView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method private formatText(F)Ljava/lang/String;
    .locals 1

    .line 293
    const/high16 v0, 0x42c80000    # 100.0f

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    .line 294
    invoke-static {p1}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V
    .locals 4

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v0

    check-cast v0, Lcom/android/settings/datausage/DataUsageEditController;

    .line 269
    invoke-interface {v0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object v0

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "template"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkTemplate;

    .line 272
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "limit"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 273
    if-eqz v2, :cond_0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyLimitBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    goto :goto_0

    .line 274
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyWarningBytes(Landroid/net/NetworkTemplate;)J

    move-result-wide v0

    .line 275
    :goto_0
    nop

    .line 277
    long-to-float v0, v0

    const/high16 v1, 0x4ec00000

    cmpl-float v1, v0, v1

    const/4 v2, 0x0

    if-lez v1, :cond_1

    .line 278
    const/high16 v1, 0x4e800000

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v0

    .line 279
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 282
    const/4 p1, 0x1

    invoke-virtual {p2, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 283
    goto :goto_1

    .line 284
    :cond_1
    const/high16 v1, 0x49800000    # 1048576.0f

    div-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->formatText(F)Ljava/lang/String;

    move-result-object v0

    .line 285
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 286
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p1, v2, v0}, Landroid/widget/EditText;->setSelection(II)V

    .line 288
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 290
    :goto_1
    return-void
.end method

.method public static show(Lcom/android/settings/datausage/DataUsageEditController;Z)V
    .locals 3

    .line 233
    instance-of v0, p0, Landroid/app/Fragment;

    if-nez v0, :cond_0

    .line 234
    return-void

    .line 236
    :cond_0
    move-object v0, p0

    check-cast v0, Landroid/app/Fragment;

    .line 237
    invoke-virtual {v0}, Landroid/app/Fragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_1

    .line 238
    return-void

    .line 241
    :cond_1
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 242
    const-string v2, "template"

    invoke-interface {p0}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkTemplate()Landroid/net/NetworkTemplate;

    move-result-object p0

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 243
    const-string p0, "limit"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 245
    new-instance p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;

    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;-><init>()V

    .line 246
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setArguments(Landroid/os/Bundle;)V

    .line 247
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 248
    invoke-virtual {v0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "warningEditor"

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 249
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 330
    const/16 v0, 0x226

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7

    .line 299
    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 300
    return-void

    .line 302
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/DataUsageEditController;

    .line 303
    invoke-interface {p1}, Lcom/android/settings/datausage/DataUsageEditController;->getNetworkPolicyEditor()Lcom/android/settingslib/NetworkPolicyEditor;

    move-result-object p2

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "template"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 306
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 307
    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v3, 0x7f0a0097    # @id/bytes

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/EditText;

    .line 308
    iget-object v3, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v4, 0x7f0a0315    # @id/size_spinner

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Spinner;

    .line 310
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 311
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "."

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 312
    :cond_1
    const-string v2, "0"

    .line 314
    :cond_2
    invoke-static {v2}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 315
    invoke-virtual {v3}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v3

    if-nez v3, :cond_3

    const-wide/32 v3, 0x100000

    goto :goto_0

    :cond_3
    const-wide/32 v3, 0x40000000

    :goto_0
    long-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-long v2, v2

    .line 318
    const-wide v4, 0x30d400000000L

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    .line 319
    const-string v4, "BillingCycleSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onClick, isLimit = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, " correctedBytes = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    if-eqz v1, :cond_4

    .line 321
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyLimitBytes(Landroid/net/NetworkTemplate;J)V

    goto :goto_1

    .line 323
    :cond_4
    invoke-virtual {p2, v0, v2, v3}, Lcom/android/settingslib/NetworkPolicyEditor;->setPolicyWarningBytes(Landroid/net/NetworkTemplate;J)V

    .line 325
    :goto_1
    invoke-interface {p1}, Lcom/android/settings/datausage/DataUsageEditController;->updateDataUsage()V

    .line 326
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 254
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "limit"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 256
    const v2, 0x7f0d0074    # @layout/data_usage_bytes_editor 'res/layout/data_usage_bytes_editor.xml'

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 257
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    const v2, 0x7f0a0097    # @id/bytes

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 258
    const v3, 0x7f0a0315    # @id/size_spinner

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Spinner;

    .line 257
    invoke-direct {p0, v0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->setupPicker(Landroid/widget/EditText;Landroid/widget/Spinner;)V

    .line 259
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 260
    if-eqz v1, :cond_0

    const p1, 0x7f120498    # @string/data_usage_limit_editor_title 'Set data usage limit'

    goto :goto_0

    .line 261
    :cond_0
    const p1, 0x7f1204c6    # @string/data_usage_warning_editor_title 'Set data usage warning'

    .line 260
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings$BytesEditorFragment;->mView:Landroid/view/View;

    .line 262
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120485    # @string/data_usage_cycle_editor_positive 'Set'

    .line 263
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 264
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 259
    return-object p1
.end method
