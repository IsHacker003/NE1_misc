.class Lcom/android/settings/applications/ProcessStatsUi$1;
.super Ljava/lang/Object;
.source "ProcessStatsUi.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ProcessStatsUi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/android/settings/applications/ProcStatsPackageEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 189
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/settings/applications/ProcStatsPackageEntry;Lcom/android/settings/applications/ProcStatsPackageEntry;)I
    .locals 4

    .line 192
    iget-wide v0, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide v2, p2, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    .line 193
    iget-wide v2, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mRunWeight:D

    iget-wide p1, p1, Lcom/android/settings/applications/ProcStatsPackageEntry;->mBgWeight:D

    invoke-static {v2, v3, p1, p2}, Ljava/lang/Math;->max(DD)D

    move-result-wide p1

    .line 194
    cmpl-double v2, p1, v0

    if-nez v2, :cond_0

    .line 195
    const/4 p1, 0x0

    return p1

    .line 197
    :cond_0
    cmpg-double p1, p1, v0

    if-gez p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 189
    check-cast p1, Lcom/android/settings/applications/ProcStatsPackageEntry;

    check-cast p2, Lcom/android/settings/applications/ProcStatsPackageEntry;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/applications/ProcessStatsUi$1;->compare(Lcom/android/settings/applications/ProcStatsPackageEntry;Lcom/android/settings/applications/ProcStatsPackageEntry;)I

    move-result p1

    return p1
.end method
