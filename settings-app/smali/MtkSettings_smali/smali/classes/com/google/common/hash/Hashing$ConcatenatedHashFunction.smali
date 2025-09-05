.class final Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;
.super Lcom/google/common/hash/AbstractCompositeHashFunction;
.source "Hashing.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/hash/Hashing;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "ConcatenatedHashFunction"
.end annotation


# instance fields
.field private final bits:I


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    .line 444
    instance-of v0, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 445
    check-cast p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;

    .line 446
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    iget v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    if-ne v0, v2, :cond_3

    iget-object v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v0, v0

    iget-object v2, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-eq v0, v2, :cond_0

    goto :goto_1

    .line 449
    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 450
    iget-object v2, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v2, v2, v0

    iget-object v3, p1, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 451
    return v1

    .line 449
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 454
    :cond_2
    const/4 p1, 0x1

    return p1

    .line 447
    :cond_3
    :goto_1
    return v1

    .line 456
    :cond_4
    return v1
.end method

.method public hashCode()I
    .locals 5

    .line 461
    iget v0, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->bits:I

    .line 462
    iget-object v1, p0, Lcom/google/common/hash/Hashing$ConcatenatedHashFunction;->functions:[Lcom/google/common/hash/HashFunction;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 463
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    xor-int/2addr v0, v4

    .line 462
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 465
    :cond_0
    return v0
.end method
