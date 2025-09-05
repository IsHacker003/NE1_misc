.class public final Lcom/android/settings/applications/ProcStatsEntry;
.super Ljava/lang/Object;
.source "ProcStatsEntry.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/ProcStatsEntry$Service;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;"
        }
    .end annotation
.end field

.field private static DEBUG:Z


# instance fields
.field final mAvgBgMem:J

.field final mAvgRunMem:J

.field mBestTargetPackage:Ljava/lang/String;

.field final mBgDuration:J

.field final mBgWeight:D

.field public mLabel:Ljava/lang/CharSequence;

.field final mMaxBgMem:J

.field final mMaxRunMem:J

.field final mName:Ljava/lang/String;

.field final mPackage:Ljava/lang/String;

.field final mPackages:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final mRunDuration:J

.field final mRunWeight:D

.field mServices:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/applications/ProcStatsEntry$Service;",
            ">;>;"
        }
    .end annotation
.end field

.field final mUid:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 39
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    .line 304
    new-instance v0, Lcom/android/settings/applications/ProcStatsEntry$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcStatsEntry$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcStatsEntry;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 5

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 93
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 94
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 98
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 99
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 101
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 105
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 106
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 107
    if-lez v0, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->ensureCapacity(I)V

    .line 109
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    .line 110
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 111
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 112
    sget-object v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {p1, v3, v4}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 113
    iget-object v4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v4, v2, v3}, Landroid/util/ArrayMap;->append(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 109
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 116
    :cond_0
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V
    .locals 2

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 62
    const-wide/16 v0, 0x0

    invoke-virtual {p1, p3, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 63
    invoke-virtual {p1, p4, v0, v1}, Lcom/android/internal/app/procstats/ProcessState;->computeProcessData(Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;J)V

    .line 64
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getPackage()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 65
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getUid()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 66
    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 67
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 68
    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 69
    if-eqz p5, :cond_0

    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    goto :goto_0

    :cond_0
    iget-wide v0, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 70
    if-eqz p5, :cond_1

    iget-wide p2, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_1

    :cond_1
    iget-wide p2, p3, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :goto_1
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    .line 71
    iget-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    long-to-double p2, p2

    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    long-to-double v0, v0

    mul-double/2addr p2, v0

    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 72
    iget-wide p2, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->totalTime:J

    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 73
    if-eqz p5, :cond_2

    iget-wide p2, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgUss:J

    goto :goto_2

    :cond_2
    iget-wide p2, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->avgPss:J

    :goto_2
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    .line 74
    if-eqz p5, :cond_3

    iget-wide p2, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxUss:J

    goto :goto_3

    :cond_3
    iget-wide p2, p4, Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;->maxPss:J

    :goto_3
    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    .line 75
    iget-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    long-to-double p2, p2

    iget-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    long-to-double p4, p4

    mul-double/2addr p2, p4

    iput-wide p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 76
    sget-boolean p2, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz p2, :cond_4

    const-string p2, "ProcStatsEntry"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "New proc entry "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ProcessState;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ": dur="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " avgpss="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p1, " weight="

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p3, p4, p5}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    :cond_4
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;JJJ)V
    .locals 2

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 57
    new-instance v0, Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    .line 82
    iput-object p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    .line 83
    iput p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    .line 84
    iput-object p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    .line 85
    iput-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    iput-wide p4, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    .line 86
    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    iput-wide p6, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    .line 87
    long-to-double p1, p8

    long-to-double p4, p6

    mul-double/2addr p1, p4

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    iput-wide p1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    .line 88
    sget-boolean p1, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz p1, :cond_0

    const-string p1, "ProcStatsEntry"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "New proc entry "

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p3, ": dur="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " avgpss="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string p3, " weight="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide p3, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p2, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_0
    return-void
.end method


# virtual methods
.method public addPackage(Ljava/lang/String;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 120
    return-void
.end method

.method public addService(Lcom/android/internal/app/procstats/ServiceState;)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ServiceState;->getPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    .line 265
    if-nez v0, :cond_0

    .line 266
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 267
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Lcom/android/internal/app/procstats/ServiceState;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_0
    new-instance v1, Lcom/android/settings/applications/ProcStatsEntry$Service;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/ProcStatsEntry$Service;-><init>(Lcom/android/internal/app/procstats/ServiceState;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 270
    return-void
.end method

.method public describeContents()I
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public evaluateTargetPackage(Landroid/content/pm/PackageManager;Lcom/android/internal/app/procstats/ProcessStats;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;Z)V
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManager;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;",
            "Ljava/util/Comparator<",
            "Lcom/android/settings/applications/ProcStatsEntry;",
            ">;Z)V"
        }
    .end annotation

    move-object/from16 v1, p0

    .line 126
    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 127
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 128
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": single pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_0
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 130
    return-void

    .line 135
    :cond_1
    move v0, v4

    :goto_0
    iget-object v5, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_3

    .line 136
    const-string v5, "android"

    iget-object v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 137
    iget-object v2, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 138
    return-void

    .line 135
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 143
    :cond_3
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 144
    move v0, v4

    :goto_1
    iget-object v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v0, v6, :cond_8

    .line 145
    move-object/from16 v6, p2

    iget-object v7, v6, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget-object v8, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 146
    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v9, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v7, v8, v9}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/util/LongSparseArray;

    .line 147
    move v8, v4

    :goto_2
    invoke-virtual {v7}, Landroid/util/LongSparseArray;->size()I

    move-result v9

    if-ge v8, v9, :cond_7

    .line 148
    invoke-virtual {v7, v8}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 149
    sget-boolean v10, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v10, :cond_4

    const-string v10, "ProcStatsEntry"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Eval pkg of "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ", pkg "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v12, ":"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_4
    if-nez v9, :cond_5

    .line 152
    const-string v9, "ProcStatsEntry"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No package state found for "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " in process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    goto :goto_3

    .line 156
    :cond_5
    iget-object v10, v9, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Lcom/android/internal/app/procstats/ProcessState;

    .line 157
    if-nez v12, :cond_6

    .line 158
    const-string v9, "ProcStatsEntry"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No process "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, " found in package state "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    .line 159
    invoke-virtual {v11, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, "/"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v11, v1, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 158
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    goto :goto_3

    .line 162
    :cond_6
    new-instance v10, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v13, v9, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object v11, v10

    move-object/from16 v14, p3

    move-object/from16 v15, p4

    move/from16 v16, p6

    invoke-direct/range {v11 .. v16}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/procstats/ProcessState;Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Lcom/android/internal/app/procstats/ProcessStats$ProcessDataCollection;Z)V

    invoke-virtual {v5, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 147
    :goto_3
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_2

    .line 144
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_1

    .line 167
    :cond_8
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le v0, v3, :cond_21

    .line 168
    move-object/from16 v0, p5

    invoke-static {v5, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 169
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v8, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    cmpl-double v0, v6, v8

    if-lez v0, :cond_a

    .line 170
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Eval pkg of "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ": best pkg "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " weight "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v6, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v6, " better than "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v6, v6, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " weight "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 173
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v3, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 170
    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_9
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 175
    return-void

    .line 180
    :cond_a
    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-wide v6, v0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    .line 181
    const-wide/16 v8, -0x1

    .line 182
    nop

    .line 183
    move-wide v10, v8

    move v8, v4

    move v9, v8

    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v8, v0, :cond_1f

    .line 184
    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v12, v0

    check-cast v12, Lcom/android/settings/applications/ProcStatsEntry;

    .line 185
    iget-wide v13, v12, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    const-wide/high16 v15, 0x4000000000000000L    # 2.0

    div-double v15, v6, v15

    cmpg-double v0, v13, v15

    if-gez v0, :cond_c

    .line 186
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_b

    const-string v0, "ProcStatsEntry"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Eval pkg of "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ": pkg "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v14, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " weight "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v14, v12, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {v13, v14, v15}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, " too small"

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    :cond_b
    move-object/from16 v13, p1

    goto/16 :goto_6

    .line 192
    :cond_c
    :try_start_0
    iget-object v0, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-object/from16 v13, p1

    :try_start_1
    invoke-virtual {v13, v0, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 193
    iget v14, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    if-nez v14, :cond_e

    .line 194
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_d

    const-string v0, "ProcStatsEntry"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Eval pkg of "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ": pkg "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v15, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " has no icon"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v0, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_d
    goto/16 :goto_6

    .line 198
    :cond_e
    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_13

    .line 199
    iget-wide v14, v12, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    .line 200
    if-eqz v9, :cond_10

    cmp-long v0, v14, v10

    if-lez v0, :cond_f

    goto :goto_5

    .line 207
    :cond_f
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_12

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " pers run time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " not as good as last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 201
    :cond_10
    :goto_5
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_11

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " new best pers run time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    :cond_11
    nop

    .line 205
    nop

    .line 211
    move-wide v10, v14

    const/4 v9, 0x1

    .line 183
    :cond_12
    :goto_6
    move-wide/from16 v17, v6

    goto/16 :goto_c

    .line 212
    :cond_13
    if-eqz v9, :cond_15

    .line 213
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_14

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " is not persistent"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 215
    :cond_14
    goto :goto_6

    .line 221
    :cond_15
    nop

    .line 222
    nop

    .line 223
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    move v2, v4

    :goto_7
    if-ge v2, v0, :cond_17

    .line 224
    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 225
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/settings/applications/ProcStatsEntry$Service;

    iget-object v14, v14, Lcom/android/settings/applications/ProcStatsEntry$Service;->mPackage:Ljava/lang/String;

    iget-object v15, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_16

    .line 226
    nop

    .line 227
    goto :goto_8

    .line 223
    :cond_16
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 230
    :cond_17
    const/4 v3, 0x0

    :goto_8
    const-wide/16 v14, 0x0

    .line 231
    if-eqz v3, :cond_1a

    .line 232
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    move v2, v4

    :goto_9
    if-ge v2, v0, :cond_1a

    .line 233
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v4, v16

    check-cast v4, Lcom/android/settings/applications/ProcStatsEntry$Service;

    .line 234
    move-wide/from16 v17, v6

    iget-wide v6, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    cmp-long v6, v6, v14

    if-lez v6, :cond_19

    .line 235
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_18

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " run time is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v6, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    invoke-virtual {v2, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    :cond_18
    iget-wide v14, v4, Lcom/android/settings/applications/ProcStatsEntry$Service;->mDuration:J

    .line 239
    goto :goto_a

    .line 232
    :cond_19
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v6, v17

    const/4 v4, 0x0

    goto :goto_9

    .line 243
    :cond_1a
    move-wide/from16 v17, v6

    :goto_a
    cmp-long v0, v14, v10

    if-lez v0, :cond_1c

    .line 244
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_1b

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " new best run time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_1b
    iget-object v0, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 247
    nop

    .line 183
    move-wide v10, v14

    goto :goto_c

    .line 249
    :cond_1c
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_1e

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " run time "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " not as good as last "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_c

    .line 217
    :catch_0
    move-exception v0

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v13, p1

    :goto_b
    move-wide/from16 v17, v6

    .line 218
    sget-boolean v0, Lcom/android/settings/applications/ProcStatsEntry;->DEBUG:Z

    if-eqz v0, :cond_1d

    const-string v0, "ProcStatsEntry"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Eval pkg of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v1, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ": pkg "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v12, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " failed finding app info"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    :cond_1d
    nop

    .line 183
    :cond_1e
    :goto_c
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v6, v17

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    goto/16 :goto_4

    .line 255
    :cond_1f
    iget-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_20

    .line 256
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 258
    :cond_20
    goto :goto_d

    :cond_21
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_22

    .line 259
    const/4 v2, 0x0

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    .line 261
    :cond_22
    :goto_d
    return-void
.end method

.method public getUid()I
    .locals 1

    .line 301
    iget v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 279
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 280
    iget p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mUid:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 282
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mPackages:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeStringList(Ljava/util/List;)V

    .line 283
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 284
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 285
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxBgMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 286
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBgWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 287
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunDuration:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 288
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mAvgRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 289
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mMaxRunMem:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 290
    iget-wide v0, p0, Lcom/android/settings/applications/ProcStatsEntry;->mRunWeight:D

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeDouble(D)V

    .line 291
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mBestTargetPackage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 292
    iget-object p2, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {p2}, Landroid/util/ArrayMap;->size()I

    move-result p2

    .line 293
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 294
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p2, :cond_0

    .line 295
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 296
    iget-object v1, p0, Lcom/android/settings/applications/ProcStatsEntry;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 294
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 298
    :cond_0
    return-void
.end method
