.class public Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;
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
    name = "ConfirmLimitFragment"
.end annotation


# static fields
.field static final EXTRA_LIMIT_BYTES:Ljava/lang/String; = "limitBytes"
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 406
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/datausage/BillingCycleSettings;)V
    .locals 4

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 414
    const-string p0, "BillingCycleSettings"

    const-string v0, "Parent not added, Cannot ShowDialog"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 415
    return-void

    .line 418
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCycleSettings;->services:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v0, v0, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    .line 419
    invoke-static {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->access$000(Lcom/android/settings/datausage/BillingCycleSettings;)Landroid/net/NetworkTemplate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicy(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v0

    .line 421
    if-nez v0, :cond_1

    .line 422
    const-string p0, "BillingCycleSettings"

    const-string v0, "NetworkPolicy is null, Cannot ShowDialog"

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 423
    return-void

    .line 426
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getResources()Landroid/content/res/Resources;

    .line 427
    iget-wide v0, v0, Landroid/net/NetworkPolicy;->warningBytes:J

    long-to-float v0, v0

    const v1, 0x3f99999a    # 1.2f

    mul-float/2addr v0, v1

    float-to-long v0, v0

    .line 431
    const-wide v2, 0x140000000L

    invoke-static {v2, v3, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 433
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 434
    const-string v3, "limitBytes"

    invoke-virtual {v2, v3, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 436
    new-instance v0, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;

    invoke-direct {v0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;-><init>()V

    .line 437
    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->setArguments(Landroid/os/Bundle;)V

    .line 438
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 439
    const-string v1, "BillingCycleSettings"

    const-string v2, "show ConfirmLimitFragment"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v1, "confirmLimit"

    invoke-virtual {v0, p0, v1}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 441
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 445
    const/16 v0, 0x227

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 483
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 484
    if-eqz p1, :cond_0

    .line 485
    invoke-virtual {p1}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 487
    :cond_0
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 463
    const/4 v0, -0x1

    if-eq p2, v0, :cond_1

    .line 465
    if-eqz p1, :cond_0

    .line 466
    invoke-virtual {p1}, Lcom/android/settings/datausage/BillingCycleSettings;->updatePrefs()V

    .line 469
    :cond_0
    return-void

    .line 472
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "limitBytes"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v0

    .line 473
    if-eqz p1, :cond_2

    .line 474
    const-string p2, "BillingCycleSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClick, limitBytes = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    invoke-virtual {p1, v0, v1}, Lcom/android/settings/datausage/BillingCycleSettings;->setPolicyLimitBytes(J)V

    .line 477
    :cond_2
    invoke-virtual {p1}, Lcom/android/settings/datausage/BillingCycleSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "set_data_limit"

    const/4 v0, 0x1

    .line 478
    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 479
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 1

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCycleSettings$ConfirmLimitFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 452
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 453
    const p1, 0x7f120497    # @string/data_usage_limit_dialog_title 'Limiting data usage'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 454
    const v0, 0x7f120496    # @string/data_usage_limit_dialog_mobile 'Your phone will turn off mobile data once it reaches the limit you set.\n\nSince data usage is measure ...'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 455
    const v0, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 456
    const/high16 v0, 0x1040000    # @android:string/cancel

    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 457
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 452
    return-object p1
.end method
