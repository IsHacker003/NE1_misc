.class Lcom/android/settings/datausage/DataUsageSummary$4;
.super Landroid/database/ContentObserver;
.source "DataUsageSummary.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/DataUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/datausage/DataUsageSummary;


# direct methods
.method constructor <init>(Lcom/android/settings/datausage/DataUsageSummary;Landroid/os/Handler;)V
    .locals 0

    .line 736
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 3

    .line 739
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->access$000(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object p1

    if-nez p1, :cond_0

    .line 740
    const-string p1, "DataUsageSummary"

    const-string v0, "onChange mEnableDataService == null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    return-void

    .line 744
    :cond_0
    iget-object p1, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {p1}, Lcom/android/settings/datausage/DataUsageSummary;->access$400(Lcom/android/settings/datausage/DataUsageSummary;)Z

    move-result p1

    .line 745
    const-string v0, "DataUsageSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onChange dataService = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isChecked = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    .line 746
    invoke-static {v2}, Lcom/android/settings/datausage/DataUsageSummary;->access$000(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 745
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 747
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->access$000(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eq p1, v0, :cond_1

    .line 748
    iget-object v0, p0, Lcom/android/settings/datausage/DataUsageSummary$4;->this$0:Lcom/android/settings/datausage/DataUsageSummary;

    invoke-static {v0}, Lcom/android/settings/datausage/DataUsageSummary;->access$000(Lcom/android/settings/datausage/DataUsageSummary;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 750
    :cond_1
    return-void
.end method
