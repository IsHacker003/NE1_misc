.class final Lcom/google/common/collect/Cut$BelowAll;
.super Lcom/google/common/collect/Cut;
.source "Cut.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Cut;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "BelowAll"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/collect/Cut<",
        "Ljava/lang/Comparable<",
        "*>;>;"
    }
.end annotation


# static fields
.field private static final INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

.field private static final serialVersionUID:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 114
    new-instance v0, Lcom/google/common/collect/Cut$BelowAll;

    invoke-direct {v0}, Lcom/google/common/collect/Cut$BelowAll;-><init>()V

    sput-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .line 117
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/google/common/collect/Cut;-><init>(Ljava/lang/Comparable;)V

    .line 118
    return-void
.end method

.method static synthetic access$000()Lcom/google/common/collect/Cut$BelowAll;
    .locals 1

    .line 113
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 1

    .line 168
    sget-object v0, Lcom/google/common/collect/Cut$BelowAll;->INSTANCE:Lcom/google/common/collect/Cut$BelowAll;

    return-object v0
.end method


# virtual methods
.method public compareTo(Lcom/google/common/collect/Cut;)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Cut<",
            "Ljava/lang/Comparable<",
            "*>;>;)I"
        }
    .end annotation

    .line 162
    if-ne p1, p0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 113
    check-cast p1, Lcom/google/common/collect/Cut;

    invoke-virtual {p0, p1}, Lcom/google/common/collect/Cut$BelowAll;->compareTo(Lcom/google/common/collect/Cut;)I

    move-result p1

    return p1
.end method

.method describeAsLowerBound(Ljava/lang/StringBuilder;)V
    .locals 1

    .line 140
    const-string v0, "(-\u221e"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 141
    return-void
.end method

.method describeAsUpperBound(Ljava/lang/StringBuilder;)V
    .locals 0

    .line 143
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1
.end method

.method endpoint()Ljava/lang/Comparable;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Comparable<",
            "*>;"
        }
    .end annotation

    .line 120
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "range unbounded on this side"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method isLessThan(Ljava/lang/Comparable;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Comparable<",
            "*>;)Z"
        }
    .end annotation

    .line 123
    const/4 p1, 0x1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 165
    const-string v0, "-\u221e"

    return-object v0
.end method
