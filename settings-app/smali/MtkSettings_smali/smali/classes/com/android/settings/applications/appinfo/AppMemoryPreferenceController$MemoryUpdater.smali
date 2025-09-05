.class Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;
.super Landroid/os/AsyncTask;
.source "AppMemoryPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MemoryUpdater"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$1;)V
    .locals 0

    .line 49
    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;-><init>(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;
    .locals 6

    .line 53
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 54
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 55
    return-object v0

    .line 57
    :cond_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v1

    .line 58
    if-nez v1, :cond_1

    .line 59
    return-object v0

    .line 61
    :cond_1
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v2}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object v2

    if-nez v2, :cond_2

    .line 62
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    new-instance v3, Lcom/android/settings/applications/ProcStatsData;

    const/4 v4, 0x0

    invoke-direct {v3, p1, v4}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    invoke-static {v2, v3}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$102(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsData;)Lcom/android/settings/applications/ProcStatsData;

    .line 63
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    sget-object v2, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v2, v4

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 65
    :cond_2
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    const/4 v2, 0x1

    invoke-virtual {p1, v2}, Lcom/android/settings/applications/ProcStatsData;->refreshStats(Z)V

    .line 66
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 67
    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getEntries()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settings/applications/ProcStatsEntry;

    .line 68
    invoke-virtual {v4}, Lcom/android/settings/applications/ProcStatsEntry;->getUid()I

    move-result v4

    iget-object v5, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v5, :cond_3

    .line 69
    invoke-virtual {v2}, Lcom/android/settings/applications/ProcStatsPackageEntry;->updateMetrics()V

    .line 70
    return-object v2

    .line 72
    :cond_3
    goto :goto_1

    .line 73
    :cond_4
    goto :goto_0

    .line 74
    :cond_5
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 49
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->doInBackground([Ljava/lang/Void;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    move-result-object p1

    return-object p1
.end method

.method protected onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V
    .locals 7

    .line 79
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$000(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 80
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$202(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;Lcom/android/settings/applications/ProcStatsPackageEntry;)Lcom/android/settings/applications/ProcStatsPackageEntry;

    .line 84
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 85
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getRunWeight()D

    move-result-wide v3

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsPackageEntry;->getBgWeight()D

    move-result-wide v5

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(DD)D

    move-result-wide v3

    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 86
    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$100(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Lcom/android/settings/applications/ProcStatsData;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsData$MemInfo;->getWeightToRam()D

    move-result-wide v5

    mul-double/2addr v3, v5

    .line 87
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$500(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v1

    const v5, 0x7f1208e7    # @string/memory_use_summary '%1$s avg memory used in last 3 hours'

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    .line 88
    invoke-static {v6}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$400(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v6

    double-to-long v3, v3

    invoke-static {v6, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v0

    .line 87
    invoke-virtual {v1, v5, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    goto :goto_0

    .line 90
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 91
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$300(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->this$0:Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;

    invoke-static {v0}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;->access$600(Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12098a    # @string/no_memory_use_summary 'No memory used in last 3 hours'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    :goto_0
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 49
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/AppMemoryPreferenceController$MemoryUpdater;->onPostExecute(Lcom/android/settings/applications/ProcStatsPackageEntry;)V

    return-void
.end method
