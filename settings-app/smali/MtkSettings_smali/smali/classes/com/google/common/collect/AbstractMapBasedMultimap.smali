.class abstract Lcom/google/common/collect/AbstractMapBasedMultimap;
.super Lcom/google/common/collect/AbstractMultimap;
.source "AbstractMapBasedMultimap.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$Itr;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;,
        Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/AbstractMultimap<",
        "TK;TV;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x21f766b1f568c81dL


# instance fields
.field private transient map:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private transient totalSize:I


# direct methods
.method static synthetic access$000(Lcom/google/common/collect/AbstractMapBasedMultimap;)Ljava/util/Map;
    .locals 0

    .line 91
    iget-object p0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$208(Lcom/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2

    .line 91
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$210(Lcom/google/common/collect/AbstractMapBasedMultimap;)I
    .locals 2

    .line 91
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/lit8 v1, v0, -0x1

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$212(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$220(Lcom/google/common/collect/AbstractMapBasedMultimap;I)I
    .locals 1

    .line 91
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method static synthetic access$300(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    .locals 0

    .line 91
    invoke-direct {p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;)I
    .locals 0

    .line 91
    invoke-direct {p0, p1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->removeValuesForKey(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method private iteratorOrListIterator(Ljava/util/Collection;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 595
    instance-of v0, p1, Ljava/util/List;

    if-eqz v0, :cond_0

    .line 596
    check-cast p1, Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object p1

    goto :goto_0

    .line 597
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    .line 595
    :goto_0
    return-object p1
.end method

.method private removeValuesForKey(Ljava/lang/Object;)I
    .locals 1

    .line 1111
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-static {v0, p1}, Lcom/google/common/collect/Maps;->safeRemove(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    .line 1113
    nop

    .line 1114
    if-eqz p1, :cond_0

    .line 1115
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 1116
    invoke-interface {p1}, Ljava/util/Collection;->clear()V

    .line 1117
    iget p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    sub-int/2addr p1, v0

    iput p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    goto :goto_0

    .line 1119
    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/List<",
            "TV;>;",
            "Lcom/google/common/collect/AbstractMapBasedMultimap<",
            "TK;TV;>.com/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)",
            "Ljava/util/List<",
            "TV;>;"
        }
    .end annotation

    .line 332
    instance-of v0, p2, Ljava/util/RandomAccess;

    if-eqz v0, :cond_0

    .line 333
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultimap$RandomAccessWrappedList;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    goto :goto_0

    .line 334
    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedList;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    .line 332
    :goto_0
    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    .line 289
    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    .line 290
    goto :goto_0

    .line 291
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 292
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 293
    return-void
.end method

.method createAsMap()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;"
        }
    .end annotation

    .line 1226
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 1227
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedAsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$AsMap;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 1226
    :goto_0
    return-object v0
.end method

.method abstract createCollection()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end method

.method createCollection(Ljava/lang/Object;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractMapBasedMultimap;->createCollection()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method createKeySet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 915
    iget-object v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    instance-of v0, v0, Ljava/util/SortedMap;

    if-eqz v0, :cond_0

    .line 916
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    check-cast v1, Ljava/util/SortedMap;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$SortedKeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/SortedMap;)V

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;

    iget-object v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    invoke-direct {v0, p0, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$KeySet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/util/Map;)V

    .line 915
    :goto_0
    return-object v0
.end method

.method public entries()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1201
    invoke-super {p0}, Lcom/google/common/collect/AbstractMultimap;->entries()Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method entryIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 1214
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$2;

    invoke-direct {v0, p0}, Lcom/google/common/collect/AbstractMapBasedMultimap$2;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;)V

    return-object v0
.end method

.method final setMap(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/Collection<",
            "TV;>;>;)V"
        }
    .end annotation

    .line 129
    iput-object p1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->map:Ljava/util/Map;

    .line 130
    const/4 v0, 0x0

    iput v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 131
    invoke-interface {p1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 132
    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 133
    iget v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    .line 134
    goto :goto_0

    .line 135
    :cond_0
    return-void
.end method

.method public size()I
    .locals 1

    .line 180
    iget v0, p0, Lcom/google/common/collect/AbstractMapBasedMultimap;->totalSize:I

    return v0
.end method

.method wrapCollection(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;",
            "Ljava/util/Collection<",
            "TV;>;)",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 319
    instance-of v0, p2, Ljava/util/SortedSet;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 320
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;

    check-cast p2, Ljava/util/SortedSet;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSortedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/SortedSet;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0

    .line 321
    :cond_0
    instance-of v0, p2, Ljava/util/Set;

    if-eqz v0, :cond_1

    .line 322
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;

    check-cast p2, Ljava/util/Set;

    invoke-direct {v0, p0, p1, p2}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedSet;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Set;)V

    return-object v0

    .line 323
    :cond_1
    instance-of v0, p2, Ljava/util/List;

    if-eqz v0, :cond_2

    .line 324
    check-cast p2, Ljava/util/List;

    invoke-direct {p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap;->wrapList(Ljava/lang/Object;Ljava/util/List;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 326
    :cond_2
    new-instance v0, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;

    invoke-direct {v0, p0, p1, p2, v1}, Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;-><init>(Lcom/google/common/collect/AbstractMapBasedMultimap;Ljava/lang/Object;Ljava/util/Collection;Lcom/google/common/collect/AbstractMapBasedMultimap$WrappedCollection;)V

    return-object v0
.end method
