.class public Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;
.super Ljava/lang/Object;
.source "DataCoder2.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/lbs/em2/utils/DataCoder2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DataCoderBuffer"
.end annotation


# instance fields
.field public mBuff:[B

.field public mOffset:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    new-array p1, p1, [B

    iput-object p1, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mBuff:[B

    .line 14
    const/4 p1, 0x0

    iput p1, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    .line 15
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 23
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    .line 24
    return-void
.end method

.method public flush()V
    .locals 1

    .line 31
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    .line 32
    return-void
.end method

.method public readFully([BII)V
    .locals 2

    .line 36
    const/4 p2, 0x0

    :goto_0
    if-ge p2, p3, :cond_0

    .line 37
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mBuff:[B

    iget v1, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    aget-byte v0, v0, v1

    aput-byte v0, p1, p2

    .line 38
    iget v0, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    .line 36
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 40
    :cond_0
    return-void
.end method

.method public write([B)V
    .locals 4

    .line 17
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 18
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mBuff:[B

    iget v2, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    aget-byte v3, p1, v0

    aput-byte v3, v1, v2

    .line 19
    iget v1, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    .line 17
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 21
    :cond_0
    return-void
.end method
