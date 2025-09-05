.class public Lcom/android/settings/datausage/CycleAdapter;
.super Landroid/widget/ArrayAdapter;
.source "CycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;,
        Lcom/android/settings/datausage/CycleAdapter$CycleItem;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/datausage/CycleAdapter$CycleItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;Landroid/widget/AdapterView$OnItemSelectedListener;Z)V
    .locals 0

    .line 40
    if-eqz p4, :cond_0

    const p4, 0x7f0d0093    # @layout/filter_spinner_item 'res/layout/filter_spinner_item.xml'

    goto :goto_0

    .line 41
    :cond_0
    const p4, 0x7f0d0077    # @layout/data_usage_cycle_item 'res/layout/data_usage_cycle_item.xml'

    .line 40
    :goto_0
    invoke-direct {p0, p1, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 42
    const p1, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CycleAdapter;->setDropDownViewResource(I)V

    .line 43
    iput-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 44
    iput-object p3, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 45
    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {p1, p0}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setAdapter(Lcom/android/settings/datausage/CycleAdapter;)V

    .line 46
    iget-object p1, p0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    iget-object p2, p0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-interface {p1, p2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 47
    return-void
.end method


# virtual methods
.method public findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I
    .locals 2

    .line 54
    if-eqz p1, :cond_1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v0

    .line 56
    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 57
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 58
    invoke-virtual {v1, p1}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;->compareTo(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v1

    if-ltz v1, :cond_0

    .line 59
    return v0

    .line 56
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public updateCycleList(Landroid/net/NetworkPolicy;Lcom/android/settingslib/net/ChartData;)Z
    .locals 33

    move-object/from16 v0, p0

    .line 73
    move-object/from16 v1, p2

    iget-object v2, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    .line 74
    invoke-interface {v2}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->getSelectedItem()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 75
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->clear()V

    .line 77
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getContext()Landroid/content/Context;

    move-result-object v9

    .line 78
    nop

    .line 80
    nop

    .line 81
    nop

    .line 82
    const-wide/high16 v3, -0x8000000000000000L

    const-wide v5, 0x7fffffffffffffffL

    if-eqz v1, :cond_0

    .line 83
    iget-object v7, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v7}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v7

    .line 84
    iget-object v10, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v10}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v10

    goto :goto_0

    .line 87
    :cond_0
    move-wide v10, v3

    move-wide v7, v5

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 88
    cmp-long v5, v7, v5

    if-nez v5, :cond_1

    .line 89
    move-wide v14, v12

    goto :goto_1

    :cond_1
    move-wide v14, v7

    :goto_1
    cmp-long v3, v10, v3

    if-nez v3, :cond_2

    const-wide/16 v3, 0x1

    add-long v10, v12, v3

    .line 91
    :cond_2
    nop

    .line 92
    const/16 v16, 0x0

    const/16 v17, 0x1

    const/4 v3, 0x0

    if-eqz p1, :cond_6

    .line 93
    nop

    .line 94
    invoke-static/range {p1 .. p1}, Landroid/net/NetworkPolicyManager;->cycleIterator(Landroid/net/NetworkPolicy;)Ljava/util/Iterator;

    move-result-object v7

    .line 95
    move-object/from16 v23, v3

    move/from16 v3, v16

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_7

    .line 96
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 97
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/time/ZonedDateTime;

    invoke-virtual {v5}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v5

    invoke-virtual {v5}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v5

    .line 98
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/time/ZonedDateTime;

    invoke-virtual {v4}, Ljava/time/ZonedDateTime;->toInstant()Ljava/time/Instant;

    move-result-object v4

    invoke-virtual {v4}, Ljava/time/Instant;->toEpochMilli()J

    move-result-wide v24

    .line 101
    if-eqz v1, :cond_4

    .line 102
    iget-object v4, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v18, v4

    move-wide/from16 v19, v5

    move-wide/from16 v21, v24

    invoke-virtual/range {v18 .. v23}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v4

    .line 103
    iget-wide v12, v4, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    move-object/from16 v26, v7

    iget-wide v7, v4, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v12, v7

    const-wide/16 v7, 0x0

    cmp-long v12, v12, v7

    if-lez v12, :cond_3

    .line 108
    move/from16 v7, v17

    goto :goto_3

    .line 103
    :cond_3
    nop

    .line 108
    move/from16 v7, v16

    :goto_3
    move-object/from16 v23, v4

    goto :goto_4

    .line 105
    :cond_4
    move-object/from16 v26, v7

    .line 108
    move/from16 v7, v17

    :goto_4
    if-eqz v7, :cond_5

    .line 109
    new-instance v12, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v12

    move-object v4, v9

    move-object/from16 v13, v26

    move-wide/from16 v7, v24

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v12}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 110
    nop

    .line 112
    move/from16 v3, v17

    goto :goto_5

    :cond_5
    move-object/from16 v13, v26

    .line 95
    :goto_5
    move-object v7, v13

    goto :goto_2

    .line 115
    :cond_6
    move-object/from16 v23, v3

    move/from16 v3, v16

    :cond_7
    if-nez v3, :cond_b

    .line 117
    nop

    .line 118
    move-object/from16 v31, v23

    :goto_6
    cmp-long v3, v10, v14

    if-lez v3, :cond_b

    .line 119
    const-wide v3, 0x90321000L

    sub-long v12, v10, v3

    .line 122
    if-eqz v1, :cond_9

    .line 123
    iget-object v3, v1, Lcom/android/settingslib/net/ChartData;->network:Landroid/net/NetworkStatsHistory;

    move-object/from16 v26, v3

    move-wide/from16 v27, v12

    move-wide/from16 v29, v10

    invoke-virtual/range {v26 .. v31}, Landroid/net/NetworkStatsHistory;->getValues(JJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v3

    .line 124
    iget-wide v4, v3, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v6, v3, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v4, v6

    const-wide/16 v18, 0x0

    cmp-long v4, v4, v18

    if-lez v4, :cond_8

    .line 129
    move/from16 v4, v17

    goto :goto_7

    .line 124
    :cond_8
    nop

    .line 129
    move/from16 v4, v16

    :goto_7
    move-object/from16 v31, v3

    goto :goto_8

    .line 126
    :cond_9
    const-wide/16 v18, 0x0

    .line 129
    move/from16 v4, v17

    :goto_8
    if-eqz v4, :cond_a

    .line 130
    new-instance v7, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    move-object v3, v7

    move-object v4, v9

    move-wide v5, v12

    move-object v1, v7

    move-wide v7, v10

    invoke-direct/range {v3 .. v8}, Lcom/android/settings/datausage/CycleAdapter$CycleItem;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v0, v1}, Lcom/android/settings/datausage/CycleAdapter;->add(Ljava/lang/Object;)V

    .line 132
    :cond_a
    nop

    .line 133
    nop

    .line 118
    move-wide v10, v12

    move-object/from16 v1, p2

    goto :goto_6

    .line 137
    :cond_b
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/datausage/CycleAdapter;->getCount()I

    move-result v1

    if-lez v1, :cond_c

    .line 138
    invoke-virtual {v0, v2}, Lcom/android/settings/datausage/CycleAdapter;->findNearestPosition(Lcom/android/settings/datausage/CycleAdapter$CycleItem;)I

    move-result v6

    .line 139
    iget-object v1, v0, Lcom/android/settings/datausage/CycleAdapter;->mSpinner:Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;

    invoke-interface {v1, v6}, Lcom/android/settings/datausage/CycleAdapter$SpinnerInterface;->setSelection(I)V

    .line 143
    invoke-virtual {v0, v6}, Lcom/android/settings/datausage/CycleAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/CycleAdapter$CycleItem;

    .line 144
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    .line 145
    iget-object v3, v0, Lcom/android/settings/datausage/CycleAdapter;->mListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const-wide/16 v7, 0x0

    invoke-interface/range {v3 .. v8}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 146
    return v16

    .line 149
    :cond_c
    return v17
.end method
