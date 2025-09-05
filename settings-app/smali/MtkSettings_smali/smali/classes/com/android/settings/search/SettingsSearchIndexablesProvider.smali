.class public Lcom/android/settings/search/SettingsSearchIndexablesProvider;
.super Landroid/provider/SearchIndexablesProvider;
.source "SettingsSearchIndexablesProvider.java"


# static fields
.field private static final INVALID_KEYS:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 82
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    .line 83
    sget-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 84
    sget-object v0, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 85
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Landroid/provider/SearchIndexablesProvider;-><init>()V

    return-void
.end method

.method private getNonIndexableKeysFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 189
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 190
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 192
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 193
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 194
    invoke-static {v2}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v3

    .line 199
    :try_start_0
    invoke-interface {v3, p1}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    nop

    .line 214
    if-eqz v4, :cond_0

    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 219
    goto :goto_0

    .line 222
    :cond_1
    sget-object v2, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->INVALID_KEYS:Ljava/util/Collection;

    invoke-interface {v4, v2}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 223
    const-string v2, "SettingsSearchProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " tried to add an empty non-indexable key"

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_2
    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 236
    goto :goto_0

    .line 200
    :catch_0
    move-exception v3

    .line 207
    const-string v4, "debug.com.android.settings.search.crash_on_error"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_3

    .line 210
    const-string v4, "SettingsSearchProvider"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Error trying to get non-indexable keys from: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 211
    goto :goto_0

    .line 208
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    invoke-direct {p1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw p1

    .line 238
    :cond_4
    return-object v1
.end method

.method private getSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 270
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 271
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 272
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 274
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 275
    invoke-static {v2}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v3

    .line 277
    const/4 v4, 0x1

    invoke-interface {v3, p1, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 280
    if-nez v3, :cond_0

    .line 281
    goto :goto_0

    .line 284
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/search/SearchIndexableRaw;

    .line 287
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    .line 289
    goto :goto_1

    .line 290
    :cond_1
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 291
    goto :goto_0

    .line 293
    :cond_2
    return-object v1
.end method

.method private getSearchIndexableResourcesFromProvider(Landroid/content/Context;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 242
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 243
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 244
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 246
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Class;

    .line 247
    invoke-static {v2}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v3

    .line 250
    const/4 v4, 0x1

    .line 251
    invoke-interface {v3, p1, v4}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v3

    .line 253
    if-nez v3, :cond_0

    .line 254
    goto :goto_0

    .line 257
    :cond_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/provider/SearchIndexableResource;

    .line 258
    iget-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 259
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    goto :goto_2

    .line 260
    :cond_1
    iget-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    :goto_2
    iput-object v6, v5, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    .line 261
    goto :goto_1

    .line 263
    :cond_2
    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 264
    goto :goto_0

    .line 266
    :cond_3
    return-object v1
.end method


# virtual methods
.method public onCreate()Z
    .locals 1

    .line 89
    const/4 v0, 0x1

    return v0
.end method

.method public queryNonIndexableKeys([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 4

    .line 144
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getNonIndexableKeysFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 147
    sget-object v2, Landroid/provider/SearchIndexablesContract;->NON_INDEXABLES_KEYS_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 148
    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 149
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 150
    goto :goto_0

    .line 152
    :cond_0
    return-object p1
.end method

.method public queryRawData([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 114
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getSearchIndexableRawFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 116
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/search/SearchIndexableRaw;

    .line 117
    sget-object v2, Landroid/provider/SearchIndexablesContract;->INDEXABLES_RAW_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 118
    const/4 v3, 0x1

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 119
    const/4 v3, 0x2

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOn:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 120
    const/4 v3, 0x3

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->summaryOff:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 121
    const/4 v3, 0x4

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->entries:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 122
    const/4 v3, 0x5

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 123
    const/4 v3, 0x6

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 124
    const/4 v3, 0x7

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 125
    const/16 v3, 0x8

    iget v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 126
    const/16 v3, 0x9

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 127
    const/16 v3, 0xa

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 128
    const/16 v3, 0xb

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 129
    const/16 v3, 0xc

    iget-object v4, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 130
    const/16 v3, 0xd

    iget v1, v1, Lcom/android/settings/search/SearchIndexableRaw;->userId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v3

    .line 131
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 132
    goto :goto_0

    .line 134
    :cond_0
    return-object p1
.end method

.method public querySiteMapPairs()Landroid/database/Cursor;
    .locals 7

    .line 157
    new-instance v0, Landroid/database/MatrixCursor;

    sget-object v1, Landroid/provider/SearchIndexablesContract;->SITE_MAP_COLUMNS:[Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 160
    invoke-static {v1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    .line 161
    invoke-virtual {v2, v1}, Lcom/android/settings/overlay/FeatureFactory;->getDashboardFeatureProvider(Landroid/content/Context;)Lcom/android/settings/dashboard/DashboardFeatureProvider;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/settings/dashboard/DashboardFeatureProvider;->getAllCategories()Ljava/util/List;

    move-result-object v1

    .line 162
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 164
    sget-object v3, Lcom/android/settings/dashboard/DashboardFragmentRegistry;->CATEGORY_KEY_TO_PARENT_MAP:Ljava/util/Map;

    iget-object v4, v2, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 165
    if-nez v3, :cond_0

    .line 166
    goto :goto_0

    .line 169
    :cond_0
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->getTiles()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/settingslib/drawer/Tile;

    .line 170
    const/4 v5, 0x0

    .line 171
    iget-object v6, v4, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v6, :cond_1

    .line 172
    iget-object v4, v4, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v5, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 175
    :cond_1
    if-nez v5, :cond_2

    .line 176
    goto :goto_1

    .line 178
    :cond_2
    invoke-virtual {v0}, Landroid/database/MatrixCursor;->newRow()Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const-string v6, "parent_class"

    .line 179
    invoke-virtual {v4, v6, v3}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    move-result-object v4

    const-string v6, "child_class"

    .line 180
    invoke-virtual {v4, v6, v5}, Landroid/database/MatrixCursor$RowBuilder;->add(Ljava/lang/String;Ljava/lang/Object;)Landroid/database/MatrixCursor$RowBuilder;

    .line 181
    goto :goto_1

    .line 182
    :cond_3
    goto :goto_0

    .line 184
    :cond_4
    return-object v0
.end method

.method public queryXmlResources([Ljava/lang/String;)Landroid/database/Cursor;
    .locals 5

    .line 94
    new-instance p1, Landroid/database/MatrixCursor;

    sget-object v0, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    invoke-direct {p1, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    .line 95
    nop

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/search/SettingsSearchIndexablesProvider;->getSearchIndexableResourcesFromProvider(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 97
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/SearchIndexableResource;

    .line 98
    sget-object v2, Landroid/provider/SearchIndexablesContract;->INDEXABLES_XML_RES_COLUMNS:[Ljava/lang/String;

    array-length v2, v2

    new-array v2, v2, [Ljava/lang/Object;

    .line 99
    const/4 v3, 0x0

    iget v4, v1, Landroid/provider/SearchIndexableResource;->rank:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 100
    const/4 v3, 0x1

    iget v4, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 101
    const/4 v3, 0x2

    iget-object v4, v1, Landroid/provider/SearchIndexableResource;->className:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 102
    const/4 v3, 0x3

    iget v4, v1, Landroid/provider/SearchIndexableResource;->iconResId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 103
    const/4 v3, 0x4

    iget-object v4, v1, Landroid/provider/SearchIndexableResource;->intentAction:Ljava/lang/String;

    aput-object v4, v2, v3

    .line 104
    const/4 v3, 0x5

    iget-object v1, v1, Landroid/provider/SearchIndexableResource;->intentTargetPackage:Ljava/lang/String;

    aput-object v1, v2, v3

    .line 105
    const/4 v1, 0x6

    const/4 v3, 0x0

    aput-object v3, v2, v1

    .line 106
    invoke-virtual {p1, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 107
    goto :goto_0

    .line 109
    :cond_0
    return-object p1
.end method
