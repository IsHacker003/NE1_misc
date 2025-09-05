.class public Lcom/android/settings/datausage/ChartDataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "ChartDataUsagePreference.java"


# instance fields
.field private mEnd:J

.field private final mLimitColor:I

.field private mNetwork:Landroid/net/NetworkStatsHistory;

.field private mPolicy:Landroid/net/NetworkPolicy;

.field private mSecondaryColor:I

.field private mSeriesColor:I

.field private mStart:J

.field private final mWarningColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setSelectable(Z)V

    .line 54
    const p2, 0x1010543    # @android:attr/colorError

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 55
    const p2, 0x1010038    # @android:attr/textColorSecondary

    invoke-static {p1, p2}, Lcom/android/settings/Utils;->getColorAttr(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 56
    const p1, 0x7f0d007a    # @layout/data_usage_graph 'res/layout/data_usage_graph.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->setLayoutResource(I)V

    .line 57
    return-void
.end method

.method private bindNetworkPolicy(Lcom/android/settings/graph/UsageView;Landroid/net/NetworkPolicy;I)V
    .locals 10

    .line 131
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 132
    nop

    .line 133
    nop

    .line 134
    if-nez p2, :cond_0

    .line 135
    return-void

    .line 138
    :cond_0
    iget-wide v1, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v3, -0x1

    cmp-long v1, v1, v3

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 139
    iget v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    .line 140
    const/4 v5, 0x2

    iget-wide v6, p2, Landroid/net/NetworkPolicy;->limitBytes:J

    const v8, 0x7f1204b9    # @string/data_usage_sweep_limit '<font size="18">^1</font> <font size="9">^2</font><font size="12">limit</font>'

    iget v9, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mLimitColor:I

    invoke-direct {p0, v6, v7, v8, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v0, v5

    goto :goto_0

    .line 143
    :cond_1
    move v1, v2

    :goto_0
    iget-wide v5, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v3, v5, v3

    if-eqz v3, :cond_2

    .line 144
    iget-wide v2, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const-wide/32 v4, 0x80000

    div-long/2addr v2, v4

    long-to-int v2, v2

    invoke-virtual {p1, v2}, Lcom/android/settings/graph/UsageView;->setDividerLoc(I)V

    .line 145
    iget-wide v2, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    div-long/2addr v2, v4

    long-to-float v2, v2

    int-to-float p3, p3

    div-float/2addr v2, p3

    .line 146
    const/high16 p3, 0x3f800000    # 1.0f

    sub-float/2addr p3, v2

    .line 147
    invoke-virtual {p1, p3, v2}, Lcom/android/settings/graph/UsageView;->setSideLabelWeights(FF)V

    .line 148
    iget v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    .line 149
    const/4 p3, 0x1

    iget-wide v3, p2, Landroid/net/NetworkPolicy;->warningBytes:J

    const p2, 0x7f1204ba    # @string/data_usage_sweep_warning '<font size="18">^1</font> <font size="9">^2</font><font size="12">warning</font>'

    iget v5, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mWarningColor:I

    invoke-direct {p0, v3, v4, p2, v5}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getLabel(JII)Ljava/lang/CharSequence;

    move-result-object p2

    aput-object p2, v0, p3

    .line 153
    :cond_2
    invoke-virtual {p1, v0}, Lcom/android/settings/graph/UsageView;->setSideLabels([Ljava/lang/CharSequence;)V

    .line 154
    invoke-virtual {p1, v2, v1}, Lcom/android/settings/graph/UsageView;->setDividerColors(II)V

    .line 155
    return-void
.end method

.method private getLabel(JII)Ljava/lang/CharSequence;
    .locals 2

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, 0x9

    invoke-static {v0, p1, p2, v1}, Landroid/text/format/Formatter;->formatBytes(Landroid/content/res/Resources;JI)Landroid/text/format/Formatter$BytesResult;

    move-result-object p1

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p2, p3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    const/4 p3, 0x2

    new-array p3, p3, [Ljava/lang/CharSequence;

    iget-object v0, p1, Landroid/text/format/Formatter$BytesResult;->value:Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v0, p3, v1

    iget-object p1, p1, Landroid/text/format/Formatter$BytesResult;->units:Ljava/lang/String;

    const/4 v0, 0x1

    aput-object p1, p3, v0

    invoke-static {p2, p3}, Landroid/text/TextUtils;->expandTemplate(Ljava/lang/CharSequence;[Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 162
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2}, Landroid/text/SpannableStringBuilder;-><init>()V

    new-instance p3, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {p3, p4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p2, p1, p3, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;Ljava/lang/Object;I)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1
.end method

.method private toInt(J)I
    .locals 2

    .line 127
    const-wide/32 v0, 0xea60

    div-long/2addr p1, v0

    long-to-int p1, p1

    return p1
.end method


# virtual methods
.method calcPoints(Lcom/android/settings/graph/UsageView;)V
    .locals 16

    move-object/from16 v0, p0

    .line 95
    new-instance v1, Landroid/util/SparseIntArray;

    invoke-direct {v1}, Landroid/util/SparseIntArray;-><init>()V

    .line 96
    nop

    .line 98
    nop

    .line 100
    iget-object v2, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v3, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v2, v3, v4}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v2

    .line 101
    iget-object v3, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v4, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v3, v4, v5}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v3

    .line 102
    if-gez v2, :cond_0

    return-void

    .line 104
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    const/4 v4, 0x0

    const-wide/16 v5, 0x0

    :goto_0
    const/4 v7, 0x1

    if-gt v2, v3, :cond_2

    .line 106
    iget-object v8, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v8, v2, v4}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v4

    .line 108
    iget-wide v8, v4, Landroid/net/NetworkStatsHistory$Entry;->bucketStart:J

    .line 109
    iget-wide v10, v4, Landroid/net/NetworkStatsHistory$Entry;->bucketDuration:J

    add-long/2addr v10, v8

    .line 112
    iget-wide v12, v4, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v14, v4, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v12, v14

    add-long/2addr v5, v12

    .line 114
    if-nez v2, :cond_1

    .line 115
    iget-wide v12, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long v12, v8, v12

    invoke-direct {v0, v12, v13}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v12

    sub-int/2addr v12, v7

    const/4 v7, -0x1

    invoke-virtual {v1, v12, v7}, Landroid/util/SparseIntArray;->put(II)V

    .line 117
    :cond_1
    iget-wide v12, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v8, v12

    const-wide/16 v12, 0x1

    add-long/2addr v8, v12

    invoke-direct {v0, v8, v9}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v7

    const-wide/32 v8, 0x80000

    div-long v8, v5, v8

    long-to-int v8, v8

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 118
    iget-wide v12, v0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v10, v12

    invoke-direct {v0, v10, v11}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v7

    invoke-virtual {v1, v7, v8}, Landroid/util/SparseIntArray;->put(II)V

    .line 105
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 120
    :cond_2
    invoke-virtual {v1}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    if-le v0, v7, :cond_3

    .line 121
    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/graph/UsageView;->addPath(Landroid/util/SparseIntArray;)V

    .line 123
    :cond_3
    return-void
.end method

.method public getInspectEnd()J
    .locals 2

    .line 181
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    return-wide v0
.end method

.method public getInspectStart()J
    .locals 2

    .line 177
    iget-wide v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    return-wide v0
.end method

.method public getTop()I
    .locals 11

    .line 78
    nop

    .line 79
    nop

    .line 80
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-virtual {v0, v1, v2}, Landroid/net/NetworkStatsHistory;->getIndexBefore(J)I

    move-result v0

    .line 81
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    iget-wide v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-virtual {v1, v2, v3}, Landroid/net/NetworkStatsHistory;->getIndexAfter(J)I

    move-result v1

    .line 83
    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    move-wide v5, v2

    :goto_0
    if-gt v0, v1, :cond_0

    .line 84
    iget-object v7, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v7, v0, v4}, Landroid/net/NetworkStatsHistory;->getValues(ILandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v4

    .line 87
    iget-wide v7, v4, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v9, v4, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v7, v9

    add-long/2addr v5, v7

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v0, v0, Landroid/net/NetworkPolicy;->limitBytes:J

    iget-object v2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    iget-wide v2, v2, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    nop

    .line 90
    :cond_1
    invoke-static {v5, v6, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    const-wide/32 v2, 0x80000

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 8

    .line 61
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 62
    const v0, 0x7f0a00f6    # @id/data_usage

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/graph/UsageView;

    .line 63
    iget-object v0, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    if-nez v0, :cond_0

    return-void

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getTop()I

    move-result v0

    .line 66
    invoke-virtual {p1}, Lcom/android/settings/graph/UsageView;->clearPaths()V

    .line 67
    iget-wide v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    sub-long/2addr v1, v3

    invoke-direct {p0, v1, v2}, Lcom/android/settings/datausage/ChartDataUsagePreference;->toInt(J)I

    move-result v1

    invoke-virtual {p1, v1, v0}, Lcom/android/settings/graph/UsageView;->configureGraph(II)V

    .line 68
    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/ChartDataUsagePreference;->calcPoints(Lcom/android/settings/graph/UsageView;)V

    .line 69
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    const/4 v2, 0x0

    .line 70
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 71
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    iget-wide v6, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    invoke-static {v3, v4, v5, v6, v7}, Lcom/android/settings/Utils;->formatDateRange(Landroid/content/Context;JJ)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-virtual {p1, v1}, Lcom/android/settings/graph/UsageView;->setBottomLabels([Ljava/lang/CharSequence;)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    invoke-direct {p0, p1, v1, v0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->bindNetworkPolicy(Lcom/android/settings/graph/UsageView;Landroid/net/NetworkPolicy;I)V

    .line 75
    return-void
.end method

.method public setColors(II)V
    .locals 0

    .line 190
    iput p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSeriesColor:I

    .line 191
    iput p2, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mSecondaryColor:I

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 193
    return-void
.end method

.method public setNetworkPolicy(Landroid/net/NetworkPolicy;)V
    .locals 0

    .line 166
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mPolicy:Landroid/net/NetworkPolicy;

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 168
    return-void
.end method

.method public setNetworkStats(Landroid/net/NetworkStatsHistory;)V
    .locals 0

    .line 185
    iput-object p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mNetwork:Landroid/net/NetworkStatsHistory;

    .line 186
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 187
    return-void
.end method

.method public setVisibleRange(JJ)V
    .locals 0

    .line 171
    iput-wide p1, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mStart:J

    .line 172
    iput-wide p3, p0, Lcom/android/settings/datausage/ChartDataUsagePreference;->mEnd:J

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/datausage/ChartDataUsagePreference;->notifyChanged()V

    .line 174
    return-void
.end method
