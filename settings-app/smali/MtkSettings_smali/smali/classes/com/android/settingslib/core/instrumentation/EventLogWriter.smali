.class public Lcom/android/settingslib/core/instrumentation/EventLogWriter;
.super Ljava/lang/Object;
.source "EventLogWriter.java"

# interfaces
.implements Lcom/android/settingslib/core/instrumentation/LogWriter;


# instance fields
.field private final mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    new-instance v0, Lcom/android/internal/logging/MetricsLogger;

    invoke-direct {v0}, Lcom/android/internal/logging/MetricsLogger;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    return-void
.end method


# virtual methods
.method public varargs action(II[Landroid/util/Pair;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 46
    if-eqz p3, :cond_2

    array-length v0, p3

    if-nez v0, :cond_0

    goto :goto_1

    .line 49
    :cond_0
    new-instance v0, Landroid/metrics/LogMaker;

    invoke-direct {v0, p1}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p1, 0x4

    .line 50
    invoke-virtual {v0, p1}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 51
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setSubtype(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 52
    array-length p2, p3

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_1

    aget-object v1, p3, v0

    .line 53
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v2, v1}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 52
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p2, p1}, Lcom/android/internal/logging/MetricsLogger;->write(Landroid/metrics/LogMaker;)V

    goto :goto_2

    .line 47
    :cond_2
    :goto_1
    iget-object p3, p0, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->mMetricsLogger:Lcom/android/internal/logging/MetricsLogger;

    invoke-virtual {p3, p1, p2}, Lcom/android/internal/logging/MetricsLogger;->action(II)V

    .line 57
    :goto_2
    return-void
.end method

.method public varargs action(IZ[Landroid/util/Pair;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 60
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(II[Landroid/util/Pair;)V

    .line 61
    return-void
.end method

.method public action(Landroid/content/Context;II)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 79
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;II)V

    .line 80
    return-void
.end method

.method public varargs action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I",
            "Ljava/lang/String;",
            "[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 90
    if-eqz p4, :cond_2

    array-length v0, p4

    if-nez v0, :cond_0

    goto :goto_1

    .line 93
    :cond_0
    new-instance p1, Landroid/metrics/LogMaker;

    invoke-direct {p1, p2}, Landroid/metrics/LogMaker;-><init>(I)V

    const/4 p2, 0x4

    .line 94
    invoke-virtual {p1, p2}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 95
    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setPackageName(Ljava/lang/String;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 96
    array-length p2, p4

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_1

    aget-object v0, p4, p3

    .line 97
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {p1, v1, v0}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 96
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 99
    :cond_1
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    goto :goto_2

    .line 91
    :cond_2
    :goto_1
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;ILjava/lang/String;)V

    .line 101
    :goto_2
    return-void
.end method

.method public action(Landroid/content/Context;IZ)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 85
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/content/Context;IZ)V

    .line 86
    return-void
.end method

.method public varargs action(Landroid/content/Context;I[Landroid/util/Pair;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I[",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 64
    const-string v0, ""

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/settingslib/core/instrumentation/EventLogWriter;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 65
    return-void
.end method

.method public actionWithSource(Landroid/content/Context;II)V
    .locals 0

    .line 68
    new-instance p1, Landroid/metrics/LogMaker;

    invoke-direct {p1, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 69
    const/4 p3, 0x4

    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 70
    if-eqz p2, :cond_0

    .line 71
    const/16 p3, 0x341

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    .line 73
    :cond_0
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 74
    return-void
.end method

.method public count(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 0

    .line 104
    invoke-static {p1, p2, p3}, Lcom/android/internal/logging/MetricsLogger;->count(Landroid/content/Context;Ljava/lang/String;I)V

    .line 105
    return-void
.end method

.method public hidden(Landroid/content/Context;I)V
    .locals 0

    .line 42
    invoke-static {p1, p2}, Lcom/android/internal/logging/MetricsLogger;->hidden(Landroid/content/Context;I)V

    .line 43
    return-void
.end method

.method public visible(Landroid/content/Context;II)V
    .locals 0

    .line 35
    new-instance p1, Landroid/metrics/LogMaker;

    invoke-direct {p1, p3}, Landroid/metrics/LogMaker;-><init>(I)V

    .line 36
    const/4 p3, 0x1

    invoke-virtual {p1, p3}, Landroid/metrics/LogMaker;->setType(I)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 37
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/16 p3, 0x341

    invoke-virtual {p1, p3, p2}, Landroid/metrics/LogMaker;->addTaggedData(ILjava/lang/Object;)Landroid/metrics/LogMaker;

    move-result-object p1

    .line 38
    invoke-static {p1}, Lcom/android/internal/logging/MetricsLogger;->action(Landroid/metrics/LogMaker;)V

    .line 39
    return-void
.end method
