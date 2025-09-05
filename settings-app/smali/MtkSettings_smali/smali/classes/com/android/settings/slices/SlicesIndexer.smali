.class Lcom/android/settings/slices/SlicesIndexer;
.super Ljava/lang/Object;
.source "SlicesIndexer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    .line 48
    iget-object p1, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getInstance(Landroid/content/Context;)Lcom/android/settings/slices/SlicesDatabaseHelper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    .line 49
    return-void
.end method


# virtual methods
.method getSliceData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 92
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 93
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/slices/SlicesIndexer;->mContext:Landroid/content/Context;

    .line 94
    invoke-interface {v0, v1}, Lcom/android/settings/slices/SlicesFeatureProvider;->getSliceDataConverter(Landroid/content/Context;)Lcom/android/settings/slices/SliceDataConverter;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/android/settings/slices/SliceDataConverter;->getSliceData()Ljava/util/List;

    move-result-object v0

    .line 92
    return-object v0
.end method

.method protected indexSliceData()V
    .locals 7

    .line 64
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->isSliceDataIndexed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    const-string v0, "SlicesIndexer"

    const-string v1, "Slices already indexed - returning."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v0}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 72
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 73
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V

    .line 75
    iget-object v3, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    iget-object v4, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v4}, Lcom/android/settings/slices/SlicesDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/settings/slices/SlicesDatabaseHelper;->reconstruct(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->getSliceData()Ljava/util/List;

    move-result-object v3

    .line 77
    invoke-virtual {p0, v0, v3}, Lcom/android/settings/slices/SlicesIndexer;->insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V

    .line 79
    iget-object v3, p0, Lcom/android/settings/slices/SlicesIndexer;->mHelper:Lcom/android/settings/slices/SlicesDatabaseHelper;

    invoke-virtual {v3}, Lcom/android/settings/slices/SlicesDatabaseHelper;->setIndexedState()V

    .line 82
    const-string v3, "SlicesIndexer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Indexing slices database took: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    sub-long/2addr v5, v1

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 82
    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 87
    nop

    .line 88
    return-void

    .line 86
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v1
.end method

.method insertSliceData(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;)V"
        }
    .end annotation

    .line 102
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/slices/SliceData;

    .line 103
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 104
    const-string v2, "key"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v2, "title"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 106
    const-string v2, "summary"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getSummary()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    const-string v2, "screentitle"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    const-string v2, "keywords"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getKeywords()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    const-string v2, "icon"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 110
    const-string v2, "fragment"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 111
    const-string v2, "controller"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    const-string v2, "platform_slice"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->isPlatformDefined()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 113
    const-string v2, "slice_type"

    invoke-virtual {v0}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 115
    const-string v0, "slices_index"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteDatabase;->replaceOrThrow(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .line 117
    goto/16 :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public run()V
    .locals 0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/slices/SlicesIndexer;->indexSliceData()V

    .line 57
    return-void
.end method
