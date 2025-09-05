.class Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;
.super Landroid/widget/BaseAdapter;
.source "UsageStatsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/UsageStatsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsageStatsAdapter"
.end annotation


# instance fields
.field private mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

.field private final mAppLabelMap:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayOrder:I

.field private mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

.field private final mPackageStats:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/app/usage/UsageStats;",
            ">;"
        }
    .end annotation
.end field

.field private mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

.field final synthetic this$0:Lcom/android/settings/UsageStatsActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/UsageStatsActivity;)V
    .locals 10

    .line 109
    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    .line 103
    new-instance v1, Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    invoke-direct {v1}, Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    .line 104
    new-instance v1, Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    invoke-direct {v1}, Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    .line 106
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    .line 107
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    .line 110
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v1

    .line 111
    const/4 v2, 0x6

    const/4 v3, -0x5

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->add(II)V

    .line 113
    nop

    .line 114
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->access$000(Lcom/android/settings/UsageStatsActivity;)Landroid/app/usage/UsageStatsManager;

    move-result-object v4

    .line 115
    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    .line 114
    const/4 v5, 0x4

    invoke-virtual/range {v4 .. v9}, Landroid/app/usage/UsageStatsManager;->queryUsageStats(IJJ)Ljava/util/List;

    move-result-object v1

    .line 116
    if-nez v1, :cond_0

    .line 117
    return-void

    .line 120
    :cond_0
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    .line 121
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 122
    move v4, v0

    :goto_0
    if-ge v4, v3, :cond_2

    .line 123
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/app/usage/UsageStats;

    .line 127
    :try_start_0
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v6

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    .line 128
    invoke-static {p1}, Lcom/android/settings/UsageStatsActivity;->access$100(Lcom/android/settings/UsageStatsActivity;)Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    .line 129
    iget-object v7, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8, v6}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    nop

    .line 132
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/usage/UsageStats;

    .line 133
    if-nez v6, :cond_1

    .line 134
    invoke-virtual {v5}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 136
    :cond_1
    invoke-virtual {v6, v5}, Landroid/app/usage/UsageStats;->add(Landroid/app/usage/UsageStats;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 141
    :goto_1
    goto :goto_2

    .line 139
    :catch_0
    move-exception v5

    .line 122
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 143
    :cond_2
    iget-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 146
    new-instance p1, Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-direct {p1, v0}, Lcom/android/settings/UsageStatsActivity$AppNameComparator;-><init>(Ljava/util/Map;)V

    iput-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    .line 147
    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList()V

    .line 148
    return-void
.end method

.method private sortList()V
    .locals 2

    .line 214
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    if-nez v0, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mUsageTimeComparator:Lcom/android/settings/UsageStatsActivity$UsageTimeComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 217
    :cond_0
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 219
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mLastTimeUsedComparator:Lcom/android/settings/UsageStatsActivity$LastTimeUsedComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    goto :goto_0

    .line 220
    :cond_1
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelComparator:Lcom/android/settings/UsageStatsActivity$AppNameComparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 224
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->notifyDataSetChanged()V

    .line 225
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 157
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 162
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .line 174
    if-nez p2, :cond_0

    .line 175
    iget-object p2, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->this$0:Lcom/android/settings/UsageStatsActivity;

    invoke-static {p2}, Lcom/android/settings/UsageStatsActivity;->access$200(Lcom/android/settings/UsageStatsActivity;)Landroid/view/LayoutInflater;

    move-result-object p2

    const p3, 0x7f0d01bd    # @layout/usage_stats_item 'res/layout/usage_stats_item.xml'

    const/4 v0, 0x0

    invoke-virtual {p2, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 179
    new-instance p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;

    invoke-direct {p3}, Lcom/android/settings/UsageStatsActivity$AppViewHolder;-><init>()V

    .line 180
    const v0, 0x7f0a024e    # @id/package_name

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->pkgName:Landroid/widget/TextView;

    .line 181
    const v0, 0x7f0a01e1    # @id/last_time_used

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->lastTimeUsed:Landroid/widget/TextView;

    .line 182
    const v0, 0x7f0a03b5    # @id/usage_time

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->usageTime:Landroid/widget/TextView;

    .line 183
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0

    .line 187
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;

    .line 191
    :goto_0
    iget-object v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mPackageStats:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStats;

    .line 192
    if-eqz v0, :cond_1

    .line 193
    iget-object p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mAppLabelMap:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 194
    iget-object v1, p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->pkgName:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 195
    iget-object p1, p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->lastTimeUsed:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getLastTimeUsed()J

    move-result-wide v1

    .line 196
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    const/4 v5, 0x2

    const/4 v6, 0x2

    .line 195
    invoke-static/range {v1 .. v6}, Landroid/text/format/DateUtils;->formatSameDayTime(JJII)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iget-object p1, p3, Lcom/android/settings/UsageStatsActivity$AppViewHolder;->usageTime:Landroid/widget/TextView;

    .line 198
    invoke-virtual {v0}, Landroid/app/usage/UsageStats;->getTotalTimeInForeground()J

    move-result-wide v0

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    invoke-static {v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(J)Ljava/lang/String;

    move-result-object p3

    .line 197
    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 199
    goto :goto_1

    .line 200
    :cond_1
    const-string p3, "UsageStatsActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "No usage stats info for package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    :goto_1
    return-object p2
.end method

.method sortList(I)V
    .locals 1

    .line 206
    iget v0, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    if-ne v0, p1, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    iput p1, p0, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->mDisplayOrder:I

    .line 211
    invoke-direct {p0}, Lcom/android/settings/UsageStatsActivity$UsageStatsAdapter;->sortList()V

    .line 212
    return-void
.end method
