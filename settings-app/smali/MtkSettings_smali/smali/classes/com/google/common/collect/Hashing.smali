.class final Lcom/google/common/collect/Hashing;
.super Ljava/lang/Object;
.source "Hashing.java"


# static fields
.field private static MAX_TABLE_SIZE:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 54
    const/high16 v0, 0x40000000    # 2.0f

    sput v0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    return-void
.end method

.method static closedTableSize(ID)I
    .locals 3

    .line 59
    const/4 v0, 0x2

    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result p0

    .line 60
    invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I

    move-result v0

    .line 62
    int-to-double v1, v0

    mul-double/2addr p1, v1

    double-to-int p1, p1

    if-le p0, p1, :cond_1

    .line 63
    shl-int/lit8 p0, v0, 0x1

    .line 64
    if-lez p0, :cond_0

    goto :goto_0

    :cond_0
    sget p0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    :goto_0
    return p0

    .line 66
    :cond_1
    return v0
.end method

.method static needsResizing(IID)Z
    .locals 4

    .line 70
    int-to-double v0, p0

    int-to-double v2, p1

    mul-double/2addr p2, v2

    cmpl-double p0, v0, p2

    if-lez p0, :cond_0

    sget p0, Lcom/google/common/collect/Hashing;->MAX_TABLE_SIZE:I

    if-ge p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method static smear(I)I
    .locals 1

    .line 47
    const v0, -0x3361d2af    # -8.293031E7f

    mul-int/2addr p0, v0

    const/16 v0, 0xf

    invoke-static {p0, v0}, Ljava/lang/Integer;->rotateLeft(II)I

    move-result p0

    const v0, 0x1b873593

    mul-int/2addr v0, p0

    return v0
.end method

.method static smearedHash(Ljava/lang/Object;)I
    .locals 0

    .line 51
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    :goto_0
    invoke-static {p0}, Lcom/google/common/collect/Hashing;->smear(I)I

    move-result p0

    return p0
.end method
