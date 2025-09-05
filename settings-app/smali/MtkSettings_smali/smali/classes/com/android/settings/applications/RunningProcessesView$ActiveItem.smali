.class public Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/RunningProcessesView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ActiveItem"
.end annotation


# instance fields
.field mFirstRunTime:J

.field mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

.field mItem:Lcom/android/settings/applications/RunningState$BaseItem;

.field mRootView:Landroid/view/View;

.field mSetBackground:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method updateTime(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 7

    .line 107
    nop

    .line 109
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/settings/applications/RunningState$ServiceItem;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    goto :goto_2

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mSizeStr:Ljava/lang/String;

    goto :goto_0

    :cond_1
    const-string v0, ""

    .line 116
    :goto_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 117
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iput-object v0, v2, Lcom/android/settings/applications/RunningState$BaseItem;->mCurSizeStr:Ljava/lang/String;

    .line 118
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v2, v2, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->size:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    iget-boolean v0, v0, Lcom/android/settings/applications/RunningState$BaseItem;->mBackground:Z

    if-eqz v0, :cond_3

    .line 123
    iget-boolean v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    if-nez v0, :cond_4

    .line 124
    iput-boolean v1, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 125
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 127
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v0, :cond_4

    .line 130
    iget-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mHolder:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->uptime:Landroid/widget/TextView;

    goto :goto_2

    .line 134
    :cond_4
    :goto_1
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_9

    .line 135
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mSetBackground:Z

    .line 136
    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-ltz v3, :cond_5

    .line 139
    nop

    .line 140
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mFirstRunTime:J

    sub-long/2addr v1, v3

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    .line 139
    invoke-static {p2, v1, v2}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 142
    :cond_5
    nop

    .line 143
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    instance-of p2, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz p2, :cond_7

    .line 144
    iget-object p2, p0, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mItem:Lcom/android/settings/applications/RunningState$BaseItem;

    check-cast p2, Lcom/android/settings/applications/RunningState$MergedItem;

    iget-object p2, p2, Lcom/android/settings/applications/RunningState$MergedItem;->mServices:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    if-lez p2, :cond_6

    .line 146
    move v2, v1

    goto :goto_3

    .line 144
    :cond_6
    nop

    .line 146
    :cond_7
    :goto_3
    if-eqz v2, :cond_8

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120c1e    # @string/service_restarting 'Restarting'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 150
    :cond_8
    const-string p1, ""

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_9
    :goto_4
    return-void
.end method
