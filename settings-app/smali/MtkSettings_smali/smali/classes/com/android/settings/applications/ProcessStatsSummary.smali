.class public Lcom/android/settings/applications/ProcessStatsSummary;
.super Lcom/android/settings/applications/ProcessStatsBase;
.source "ProcessStatsSummary.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcessStatsSummary$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;


# instance fields
.field private mAppListPreference:Landroid/support/v7/preference/Preference;

.field private mAverageUsed:Landroid/support/v7/preference/Preference;

.field private mFree:Landroid/support/v7/preference/Preference;

.field private mPerformance:Landroid/support/v7/preference/Preference;

.field private mSummaryPref:Lcom/android/settings/SummaryPreference;

.field private mTotalMemory:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 156
    new-instance v0, Lcom/android/settings/applications/ProcessStatsSummary$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsSummary$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 109
    const v0, 0x7f1206e7    # @string/help_uri_process_stats_summary ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 104
    const/16 v0, 0xca

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/applications/ProcessStatsBase;->onCreate(Landroid/os/Bundle;)V

    .line 56
    const p1, 0x7f15008a    # @xml/process_stats_summary 'res/xml/process_stats_summary.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->addPreferencesFromResource(I)V

    .line 57
    const-string p1, "status_header"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SummaryPreference;

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    .line 58
    const-string p1, "performance"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    .line 59
    const-string p1, "total_memory"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    .line 60
    const-string p1, "average_used"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    .line 61
    const-string p1, "free"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    .line 62
    const-string p1, "apps_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ProcessStatsSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    .line 63
    iget-object p1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 64
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 115
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 116
    const-string v0, "transfer_stats"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 117
    const-string v0, "duration_index"

    iget v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcStatsData;->xferStats()V

    .line 119
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/ProcessStatsUi;

    .line 120
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f1208e5    # @string/memory_usage_apps 'Memory used by apps'

    .line 121
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 122
    invoke-virtual {v0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 123
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getMetricsCategory()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 125
    return v1

    .line 127
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public refreshUi()V
    .locals 15

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getMemInfo()Lcom/android/settings/applications/ProcStatsData$MemInfo;

    move-result-object v1

    .line 72
    iget-wide v2, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realUsedRam:D

    .line 73
    iget-wide v4, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realTotalRam:D

    .line 74
    iget-wide v6, v1, Lcom/android/settings/applications/ProcStatsData$MemInfo;->realFreeRam:D

    .line 75
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    double-to-long v8, v2

    const/4 v10, 0x1

    invoke-static {v1, v8, v9, v10}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object v1

    .line 77
    double-to-long v4, v4

    invoke-static {v0, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v11

    .line 78
    double-to-long v12, v6

    invoke-static {v0, v12, v13}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x7f030074    # @array/ram_states

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v12

    .line 81
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v13}, Lcom/android/settings/applications/ProcStatsData;->getMemState()I

    move-result v13

    .line 82
    if-ltz v13, :cond_0

    array-length v14, v12

    sub-int/2addr v14, v10

    if-ge v13, v14, :cond_0

    .line 83
    aget-object v12, v12, v13

    goto :goto_0

    .line 85
    :cond_0
    array-length v13, v12

    sub-int/2addr v13, v10

    aget-object v12, v12, v13

    .line 87
    :goto_0
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iget-object v14, v1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    invoke-virtual {v13, v14}, Lcom/android/settings/SummaryPreference;->setAmount(Ljava/lang/String;)V

    .line 88
    iget-object v13, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    iget-object v1, v1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    invoke-virtual {v13, v1}, Lcom/android/settings/SummaryPreference;->setUnits(Ljava/lang/String;)V

    .line 89
    add-double/2addr v6, v2

    div-double/2addr v2, v6

    double-to-float v1, v2

    .line 90
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mSummaryPref:Lcom/android/settings/SummaryPreference;

    const/4 v3, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    sub-float/2addr v6, v1

    invoke-virtual {v2, v1, v3, v6}, Lcom/android/settings/SummaryPreference;->setRatios(FFF)V

    .line 92
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mPerformance:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v12}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mTotalMemory:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v11}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAverageUsed:Landroid/support/v7/preference/Preference;

    invoke-static {v8, v9, v4, v5}, Lcom/android/settings/Utils;->formatPercentage(JJ)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 95
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mFree:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 96
    sget-object v0, Lcom/android/settings/applications/ProcessStatsSummary;->sDurationLabels:[I

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mDurationIndex:I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsSummary;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 97
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mStatsManager:Lcom/android/settings/applications/ProcStatsData;

    invoke-virtual {v1}, Lcom/android/settings/applications/ProcStatsData;->getEntries()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 98
    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsSummary;->mAppListPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100024    # @plurals/memory_usage_apps_summary

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 99
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    aput-object v0, v5, v10

    .line 98
    invoke-virtual {v3, v4, v1, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method
