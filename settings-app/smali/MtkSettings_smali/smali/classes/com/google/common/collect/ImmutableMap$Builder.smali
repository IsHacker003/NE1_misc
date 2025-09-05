.class public Lcom/google/common/collect/ImmutableMap$Builder;
.super Ljava/lang/Object;
.source "ImmutableMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/ImmutableMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field size:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 184
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>(I)V

    .line 185
    return-void
.end method

.method constructor <init>(I)V
    .locals 0

    .line 188
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 189
    new-array p1, p1, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    .line 190
    const/4 p1, 0x0

    iput p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    .line 191
    return-void
.end method

.method private ensureCapacity(I)V
    .locals 2

    .line 194
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v0, v0

    if-le p1, v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget-object v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    array-length v1, v1

    .line 196
    invoke-static {v1, p1}, Lcom/google/common/collect/ImmutableCollection$Builder;->expandedCapacity(II)I

    move-result p1

    .line 195
    invoke-static {v0, p1}, Lcom/google/common/collect/ObjectArrays;->arraysCopyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iput-object p1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    .line 198
    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lcom/google/common/collect/ImmutableMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 248
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    packed-switch v0, :pswitch_data_0

    .line 254
    new-instance v0, Lcom/google/common/collect/RegularImmutableMap;

    iget v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    invoke-direct {v0, v1, v2}, Lcom/google/common/collect/RegularImmutableMap;-><init>(I[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;)V

    return-object v0

    .line 252
    :pswitch_0
    iget-object v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getKey()Ljava/lang/Object;

    move-result-object v0

    iget-object v2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/google/common/collect/ImmutableMap;->of(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    .line 250
    :pswitch_1
    invoke-static {}, Lcom/google/common/collect/ImmutableMap;->of()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMap$Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lcom/google/common/collect/ImmutableMap$Builder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 205
    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0}, Lcom/google/common/collect/ImmutableMap$Builder;->ensureCapacity(I)V

    .line 206
    invoke-static {p1, p2}, Lcom/google/common/collect/ImmutableMap;->entryOf(Ljava/lang/Object;Ljava/lang/Object;)Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    move-result-object p1

    .line 208
    iget-object p2, p0, Lcom/google/common/collect/ImmutableMap$Builder;->entries:[Lcom/google/common/collect/ImmutableMapEntry$TerminalEntry;

    iget v0, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/ImmutableMap$Builder;->size:I

    aput-object p1, p2, v0

    .line 209
    return-object p0
.end method
