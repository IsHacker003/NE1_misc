.class Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
.super Ljava/lang/Object;
.source "ProcessStatsSummary.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 135
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 136
    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    .line 137
    iput-object p2, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 138
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 6

    .line 142
    if-eqz p1, :cond_0

    .line 143
    new-instance p1, Lcom/android/settings/applications/ProcStatsData;

    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    const/4 v1, 0x0

    invoke-direct {p1, v0, v1}, Lcom/android/settings/applications/ProcStatsData;-><init>(Landroid/content/Context;Z)V

    .line 144
    sget-object v0, Lcom/android/settings/applications/ProcessStatsBase;->sDurations:[J

    aget-wide v2, v0, v1

    invoke-virtual {p1, v2, v3}, Lcom/android/settings/applications/ProcStatsData;->setDuration(J)V

    .line 145
    invoke-virtual {p1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object p1

    .line 146
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    double-to-long v2, v2

    invoke-static {v0, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 148
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    iget-wide v3, p1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    double-to-long v3, v3

    invoke-static {v2, v3, v4}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object p1

    .line 150
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;->mContext:Landroid/content/Context;

    const v4, 0x7f1208e3    # @string/memory_summary 'Avg %1$s of %2$s memory used'

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 153
    :cond_0
    return-void
.end method
