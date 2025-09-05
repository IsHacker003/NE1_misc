.class public Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AnomalyDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;
    }
.end annotation


# instance fields
.field mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

.field mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;
    .locals 3

    .line 60
    new-instance v0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;-><init>()V

    .line 62
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 63
    const-string v2, "anomaly"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 64
    const-string p0, "metrics_key"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 65
    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 67
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 83
    const/16 v0, 0x3dc

    return v0
.end method

.method initAnomalyUtils()V
    .locals 1

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    .line 79
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;

    .line 89
    if-nez p1, :cond_0

    .line 90
    return-void

    .line 93
    :cond_0
    iget-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {p2, v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object p2

    .line 94
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "metrics_key"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {p2, v1, v0}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->handlePositiveAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 97
    iget-object p2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-interface {p1, p2}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment$AnomalyDialogListener;->onAnomalyHandled(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)V

    .line 98
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->initAnomalyUtils()V

    .line 74
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 104
    invoke-static {v0}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getInstance(Landroid/content/Context;)Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    move-result-object v1

    .line 106
    const-string v2, "anomaly"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iput-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    .line 107
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    const/16 v3, 0x3dc

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->logAnomaly(Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;Lcom/android/settings/fuelgauge/anomaly/Anomaly;I)V

    .line 110
    iget-object p1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomalyUtils:Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    invoke-virtual {p1, v1}, Lcom/android/settings/fuelgauge/anomaly/AnomalyUtils;->getAnomalyAction(Lcom/android/settings/fuelgauge/anomaly/Anomaly;)Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;

    move-result-object p1

    .line 111
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/anomaly/action/AnomalyAction;->getActionType()I

    move-result p1

    const/4 v1, 0x0

    const v2, 0x7f120573    # @string/dlg_cancel 'Cancel'

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 138
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "unknown type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v1, v1, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 122
    :pswitch_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120538    # @string/dialog_background_check_title 'Turn off background usage & stop app?'

    .line 123
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120536    # @string/dialog_background_check_message 'Your phone can't manage battery normally because %1$s keeps waking up your phone.\n\nTo try to fix thi ...'

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    .line 124
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120537    # @string/dialog_background_check_ok 'Turn off'

    .line 126
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 127
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 128
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 122
    return-object p1

    .line 130
    :pswitch_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12053b    # @string/dialog_location_title 'Turn off location?'

    .line 131
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120539    # @string/dialog_location_message 'Your phone can't manage battery normally because %1$s keeps requesting your location when you're not ...'

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    .line 132
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12053a    # @string/dialog_location_ok 'Turn off'

    .line 134
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 130
    return-object p1

    .line 113
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12053f    # @string/dialog_stop_title 'Stop app?'

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 115
    iget-object v0, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget v0, v0, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->type:I

    if-nez v0, :cond_1

    .line 116
    const v0, 0x7f12053c    # @string/dialog_stop_message 'Your phone can't manage battery normally because %1$s is keeping your phone awake.\n\nTo try to fix th ...'

    goto :goto_0

    .line 117
    :cond_1
    const v0, 0x7f12053d    # @string/dialog_stop_message_wakeup_alarm 'Your phone can't manage battery normally because %1$s keeps waking up your phone.\n\nTo try to fix thi ...'

    :goto_0
    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->mAnomaly:Lcom/android/settings/fuelgauge/anomaly/Anomaly;

    iget-object v5, v5, Lcom/android/settings/fuelgauge/anomaly/Anomaly;->displayName:Ljava/lang/CharSequence;

    aput-object v5, v4, v3

    .line 115
    invoke-virtual {p0, v0, v4}, Lcom/android/settings/fuelgauge/anomaly/AnomalyDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f12053e    # @string/dialog_stop_ok 'Stop app'

    .line 118
    invoke-virtual {p1, v0, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 119
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 120
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 113
    return-object p1

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
