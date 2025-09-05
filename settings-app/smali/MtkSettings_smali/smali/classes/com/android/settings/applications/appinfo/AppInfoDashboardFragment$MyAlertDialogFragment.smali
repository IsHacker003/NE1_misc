.class public Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppInfoDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MyAlertDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 780
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static newInstance(II)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;
    .locals 3

    .line 802
    new-instance v0, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;-><init>()V

    .line 803
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 804
    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 805
    const-string p0, "moveError"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 806
    invoke-virtual {v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 807
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 786
    const/16 v0, 0x22e

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 791
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 792
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "moveError"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 793
    nop

    .line 794
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment$MyAlertDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1, p1, v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->createDialog(II)Landroid/app/AlertDialog;

    move-result-object v0

    .line 795
    if-eqz v0, :cond_0

    .line 798
    return-object v0

    .line 796
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
