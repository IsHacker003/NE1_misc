.class public Lcom/android/settingslib/drawer/TileUtils;
.super Ljava/lang/Object;
.source "TileUtils.java"


# static fields
.field private static final CATEGORY_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 605
    new-instance v0, Lcom/android/settingslib/drawer/TileUtils$1;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/TileUtils$1;-><init>()V

    sput-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private static createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;
    .locals 4

    .line 281
    new-instance v0, Lcom/android/settingslib/drawer/DashboardCategory;

    invoke-direct {v0}, Lcom/android/settingslib/drawer/DashboardCategory;-><init>()V

    .line 282
    iput-object p1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    .line 283
    if-nez p2, :cond_0

    .line 284
    return-object v0

    .line 286
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 287
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x0

    invoke-virtual {p0, p2, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p2

    .line 288
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 289
    const/4 p0, 0x0

    return-object p0

    .line 291
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 292
    iget-boolean v2, v1, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v2, :cond_2

    .line 294
    goto :goto_0

    .line 296
    :cond_2
    iget-object v2, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v2, p0}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settingslib/drawer/DashboardCategory;->title:Ljava/lang/CharSequence;

    .line 297
    const-string v2, "com.android.settings"

    iget-object v3, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 298
    iget v1, v1, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_1

    :cond_3
    move v1, p1

    :goto_1
    iput v1, v0, Lcom/android/settingslib/drawer/DashboardCategory;->priority:I

    .line 300
    goto :goto_0

    .line 302
    :cond_4
    return-object v0
.end method

.method private static getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/os/Bundle;"
        }
    .end annotation

    .line 555
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 556
    return-object v1

    .line 558
    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 559
    invoke-static {v0}, Lcom/android/settingslib/drawer/TileUtils;->getMethodFromUri(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v2

    .line 560
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 561
    return-object v1

    .line 563
    :cond_1
    invoke-static {p0, v0, p2}, Lcom/android/settingslib/drawer/TileUtils;->getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;

    move-result-object p2

    .line 564
    if-nez p2, :cond_2

    .line 565
    return-object v1

    .line 568
    :cond_2
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-interface {p2, p0, v2, p1, v1}, Landroid/content/IContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 569
    :catch_0
    move-exception p0

    .line 570
    return-object v1
.end method

.method public static getCategories(Landroid/content/Context;Ljava/util/Map;ZLjava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/DashboardCategory;",
            ">;"
        }
    .end annotation

    move-object v9, p0

    move/from16 v10, p2

    .line 218
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 219
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v2, 0x1

    .line 221
    :goto_0
    move v11, v2

    goto :goto_1

    .line 219
    :cond_0
    goto :goto_0

    .line 221
    :goto_1
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 222
    const-string v0, "user"

    invoke-virtual {v9, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 223
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_2
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v14, v0

    check-cast v14, Landroid/os/UserHandle;

    .line 225
    invoke-virtual {v14}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 227
    const-string v2, "com.android.settings.action.SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x1

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v3, p1

    move-object v5, v12

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 229
    const-string v2, "com.android.settings.OPERATOR_APPLICATION_SETTING"

    const-string v4, "com.android.settings.category.wireless"

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object/from16 v8, p4

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 231
    const-string v2, "com.android.settings.MANUFACTURER_APPLICATION_SETTING"

    const-string v4, "com.android.settings.category.device"

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 234
    :cond_1
    if-eqz v11, :cond_2

    .line 235
    const-string v2, "com.android.settings.action.EXTRA_SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v3, p1

    move-object v5, v12

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 237
    if-nez v10, :cond_2

    .line 238
    const-string v2, "com.android.settings.action.IA_SETTINGS"

    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v3, p1

    move-object v5, v12

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 240
    if-eqz p3, :cond_2

    .line 241
    const/4 v4, 0x0

    const/4 v6, 0x0

    move-object v0, v9

    move-object v1, v14

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object v5, v12

    move-object/from16 v7, p4

    invoke-static/range {v0 .. v7}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V

    .line 246
    :cond_2
    goto :goto_2

    .line 248
    :cond_3
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 249
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/Tile;

    .line 250
    iget-object v3, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 251
    if-nez v3, :cond_5

    .line 252
    iget-object v3, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-static {v9, v3, v10}, Lcom/android/settingslib/drawer/TileUtils;->createCategory(Landroid/content/Context;Ljava/lang/String;Z)Lcom/android/settingslib/drawer/DashboardCategory;

    move-result-object v3

    .line 253
    if-nez v3, :cond_4

    .line 254
    const-string v3, "TileUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Couldn\'t find category "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v2, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 255
    goto :goto_3

    .line 257
    :cond_4
    iget-object v4, v3, Lcom/android/settingslib/drawer/DashboardCategory;->key:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    :cond_5
    invoke-virtual {v3, v2}, Lcom/android/settingslib/drawer/DashboardCategory;->addTile(Lcom/android/settingslib/drawer/Tile;)V

    .line 260
    goto :goto_3

    .line 261
    :cond_6
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 262
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/drawer/DashboardCategory;

    .line 263
    invoke-virtual {v2}, Lcom/android/settingslib/drawer/DashboardCategory;->sortTiles()V

    .line 264
    goto :goto_4

    .line 265
    :cond_7
    sget-object v0, Lcom/android/settingslib/drawer/TileUtils;->CATEGORY_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 268
    return-object v1
.end method

.method public static getIconFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 519
    invoke-static {p0, p2, p3}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p2

    .line 520
    const/4 p3, 0x0

    if-nez p2, :cond_0

    .line 521
    return-object p3

    .line 523
    :cond_0
    const-string v0, "com.android.settings.icon_package"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 524
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 525
    return-object p3

    .line 527
    :cond_1
    const-string v1, "com.android.settings.icon"

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 528
    if-nez v1, :cond_2

    .line 529
    return-object p3

    .line 532
    :cond_2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 533
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    goto :goto_0

    .line 536
    :cond_3
    return-object p3

    .line 534
    :cond_4
    :goto_0
    const-string p0, "com.android.settings.icon"

    invoke-virtual {p2, p0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method

.method static getMethodFromUri(Landroid/net/Uri;)Ljava/lang/String;
    .locals 2

    .line 595
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 596
    return-object v0

    .line 598
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object p0

    .line 599
    if-eqz p0, :cond_2

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_0

    .line 602
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    return-object p0

    .line 600
    :cond_2
    :goto_0
    return-object v0
.end method

.method private static getProviderFromUri(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)Landroid/content/IContentProvider;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;)",
            "Landroid/content/IContentProvider;"
        }
    .end annotation

    .line 580
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 581
    return-object v0

    .line 583
    :cond_0
    invoke-virtual {p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    .line 584
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 585
    return-object v0

    .line 587
    :cond_1
    invoke-interface {p2, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 588
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->acquireUnstableProvider(Landroid/net/Uri;)Landroid/content/IContentProvider;

    move-result-object p0

    invoke-interface {p2, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 590
    :cond_2
    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/IContentProvider;

    return-object p0
.end method

.method private static getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 575
    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static getTextFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 549
    invoke-static {p0, p1, p2}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p0

    .line 550
    if-eqz p0, :cond_0

    invoke-virtual {p0, p3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;Z",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 309
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    move v7, p6

    move-object/from16 v8, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V

    .line 311
    return-void
.end method

.method private static getTilesForAction(Landroid/content/Context;Landroid/os/UserHandle;Ljava/lang/String;Ljava/util/Map;Ljava/lang/String;Ljava/util/ArrayList;ZZLjava/lang/String;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 317
    new-instance v2, Landroid/content/Intent;

    move-object v0, p2

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 318
    if-eqz p6, :cond_0

    .line 319
    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 321
    :cond_0
    const/4 v7, 0x1

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p7

    invoke-static/range {v0 .. v8}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZ)V

    .line 323
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZZ)V"
        }
    .end annotation

    .line 329
    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    invoke-static/range {v0 .. v9}, Lcom/android/settingslib/drawer/TileUtils;->getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZZ)V

    .line 331
    return-void
.end method

.method public static getTilesForIntent(Landroid/content/Context;Landroid/os/UserHandle;Landroid/content/Intent;Ljava/util/Map;Ljava/lang/String;Ljava/util/List;ZZZZ)V
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            "Landroid/content/Intent;",
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lcom/android/settingslib/drawer/Tile;",
            ">;ZZZZ)V"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p5

    .line 338
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v11

    .line 339
    nop

    .line 340
    invoke-virtual/range {p1 .. p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    .line 339
    const/16 v5, 0x80

    invoke-virtual {v11, v1, v5, v4}, Landroid/content/pm/PackageManager;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v4

    .line 341
    new-instance v12, Ljava/util/HashMap;

    invoke-direct {v12}, Ljava/util/HashMap;-><init>()V

    .line 342
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_0
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 343
    iget-boolean v5, v4, Landroid/content/pm/ResolveInfo;->system:Z

    if-nez v5, :cond_0

    .line 345
    goto :goto_0

    .line 347
    :cond_0
    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 348
    iget-object v5, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 349
    nop

    .line 352
    if-eqz p7, :cond_3

    if-eqz v5, :cond_1

    const-string v7, "com.android.settings.category"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_3

    :cond_1
    if-nez p4, :cond_3

    .line 354
    const-string v6, "TileUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Found "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " for intent "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " missing metadata "

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 356
    if-nez v5, :cond_2

    const-string v4, ""

    goto :goto_1

    :cond_2
    const-string v4, "com.android.settings.category"

    :goto_1
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 354
    invoke-static {v6, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    goto :goto_0

    .line 359
    :cond_3
    const-string v7, "com.android.settings.category"

    invoke-virtual {v5, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 362
    new-instance v10, Landroid/util/Pair;

    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v10, v7, v8}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 364
    invoke-interface {v2, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/drawer/Tile;

    .line 365
    if-nez v7, :cond_5

    .line 366
    new-instance v9, Lcom/android/settingslib/drawer/Tile;

    invoke-direct {v9}, Lcom/android/settingslib/drawer/Tile;-><init>()V

    .line 367
    new-instance v7, Landroid/content/Intent;

    invoke-direct {v7}, Landroid/content/Intent;-><init>()V

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v6, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v7, v8, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    iput-object v1, v9, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 369
    iput-object v5, v9, Lcom/android/settingslib/drawer/Tile;->category:Ljava/lang/String;

    .line 370
    if-eqz p6, :cond_4

    iget v4, v4, Landroid/content/pm/ResolveInfo;->priority:I

    goto :goto_2

    :cond_4
    const/4 v4, 0x0

    :goto_2
    iput v4, v9, Lcom/android/settingslib/drawer/Tile;->priority:I

    .line 371
    iget-object v4, v6, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    iput-object v4, v9, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    .line 372
    iget-object v7, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v4, p0

    move-object v5, v9

    move-object v8, v11

    move-object v1, v9

    move-object v9, v12

    move-object v14, v11

    move-object v11, v10

    move/from16 v10, p8

    invoke-static/range {v4 .. v10}, Lcom/android/settingslib/drawer/TileUtils;->updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/util/Map;Z)Z

    .line 375
    invoke-interface {v2, v11, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 380
    move-object v7, v1

    goto :goto_3

    .line 376
    :cond_5
    move-object v14, v11

    if-eqz p9, :cond_6

    .line 377
    move-object v4, p0

    invoke-static {v4, v12, v7}, Lcom/android/settingslib/drawer/TileUtils;->updateSummaryAndTitle(Landroid/content/Context;Ljava/util/Map;Lcom/android/settingslib/drawer/Tile;)V

    goto :goto_3

    .line 380
    :cond_6
    move-object v4, p0

    :goto_3
    iget-object v5, v7, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    .line 381
    iget-object v5, v7, Lcom/android/settingslib/drawer/Tile;->userHandle:Ljava/util/ArrayList;

    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 383
    :cond_7
    invoke-interface {v3, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    .line 384
    invoke-interface {v3, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 386
    :cond_8
    nop

    .line 342
    move-object v11, v14

    move-object/from16 v1, p2

    goto/16 :goto_0

    .line 387
    :cond_9
    return-void
.end method

.method private static updateSummaryAndTitle(Landroid/content/Context;Ljava/util/Map;Lcom/android/settingslib/drawer/Tile;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;",
            "Lcom/android/settingslib/drawer/Tile;",
            ")V"
        }
    .end annotation

    .line 491
    if-eqz p2, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    .line 492
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 496
    :cond_0
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string v1, "com.android.settings.summary_uri"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 497
    invoke-static {p0, v0, p1}, Lcom/android/settingslib/drawer/TileUtils;->getBundleFromUri(Landroid/content/Context;Ljava/lang/String;Ljava/util/Map;)Landroid/os/Bundle;

    move-result-object p0

    .line 498
    const-string p1, "com.android.settings.summary"

    invoke-static {p0, p1}, Lcom/android/settingslib/drawer/TileUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 499
    const-string v0, "com.android.settings.title"

    invoke-static {p0, v0}, Lcom/android/settingslib/drawer/TileUtils;->getString(Landroid/os/Bundle;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 500
    if-eqz p1, :cond_1

    .line 501
    iget-object v0, p2, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    const v1, 0x1020010    # @android:id/summary

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 504
    :cond_1
    if-eqz p0, :cond_2

    .line 505
    iget-object p1, p2, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    const p2, 0x1020016    # @android:id/title

    invoke-virtual {p1, p2, p0}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    .line 507
    :cond_2
    return-void

    .line 493
    :cond_3
    :goto_0
    return-void
.end method

.method private static updateTileData(Landroid/content/Context;Lcom/android/settingslib/drawer/Tile;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Landroid/content/pm/PackageManager;Ljava/util/Map;Z)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settingslib/drawer/Tile;",
            "Landroid/content/pm/ActivityInfo;",
            "Landroid/content/pm/ApplicationInfo;",
            "Landroid/content/pm/PackageManager;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/content/IContentProvider;",
            ">;Z)Z"
        }
    .end annotation

    .line 392
    invoke-virtual {p3}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_f

    .line 393
    nop

    .line 394
    nop

    .line 395
    nop

    .line 396
    nop

    .line 397
    nop

    .line 398
    nop

    .line 399
    nop

    .line 403
    const/4 v0, 0x1

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p4, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    .line 404
    iget-object v4, p2, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 406
    if-eqz p6, :cond_0

    .line 407
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p6

    iget-object v5, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p6
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4

    if-nez p6, :cond_0

    .line 408
    nop

    .line 409
    nop

    .line 412
    move p6, v0

    goto :goto_0

    :cond_0
    move p6, v1

    :goto_0
    move v5, p6

    if-eqz v3, :cond_b

    if-eqz v4, :cond_b

    .line 413
    :try_start_1
    const-string v6, "com.android.settings.icon"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 414
    const-string v6, "com.android.settings.icon"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    .line 416
    move v1, v6

    :cond_1
    const-string v6, "com.android.settings.icon_tintable"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 417
    if-eqz p6, :cond_2

    .line 418
    const-string p6, "TileUtils"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Ignoring icon tintable for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {p6, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 420
    :cond_2
    const-string p6, "com.android.settings.icon_tintable"

    .line 421
    invoke-virtual {v4, p6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p6
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 424
    :cond_3
    :goto_1
    move p6, v5

    :goto_2
    :try_start_2
    const-string v5, "com.android.settings.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 425
    const-string v5, "com.android.settings.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    instance-of v5, v5, Ljava/lang/Integer;

    if-eqz v5, :cond_4

    .line 426
    const-string v5, "com.android.settings.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 428
    :cond_4
    const-string v5, "com.android.settings.title"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    .line 431
    :cond_5
    move-object v5, v2

    :goto_3
    :try_start_3
    const-string v6, "com.android.settings.summary"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 432
    const-string v6, "com.android.settings.summary"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Ljava/lang/Integer;

    if-eqz v6, :cond_6

    .line 433
    const-string v6, "com.android.settings.summary"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_4

    .line 435
    :cond_6
    const-string v6, "com.android.settings.summary"

    invoke-virtual {v4, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_3
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    .line 438
    :cond_7
    move-object v6, v2

    :goto_4
    :try_start_4
    const-string v7, "com.android.settings.keyhint"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 439
    const-string v7, "com.android.settings.keyhint"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/Integer;

    if-eqz v7, :cond_8

    .line 440
    const-string v7, "com.android.settings.keyhint"

    invoke-virtual {v4, v7}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_5

    .line 442
    :cond_8
    const-string v3, "com.android.settings.keyhint"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 445
    :goto_5
    move-object v2, v3

    :cond_9
    const-string v3, "com.android.settings.custom_view"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 446
    const-string v3, "com.android.settings.custom_view"

    invoke-virtual {v4, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 447
    new-instance v4, Landroid/widget/RemoteViews;

    iget-object p3, p3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v4, p3, v3}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v4, p1, Lcom/android/settingslib/drawer/Tile;->remoteViews:Landroid/widget/RemoteViews;

    .line 448
    invoke-static {p0, p5, p1}, Lcom/android/settingslib/drawer/TileUtils;->updateSummaryAndTitle(Landroid/content/Context;Ljava/util/Map;Lcom/android/settingslib/drawer/Tile;)V
    :try_end_4
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_4} :catch_0

    .line 453
    :cond_a
    move-object p0, v2

    move-object v2, v5

    goto :goto_7

    .line 451
    :catch_0
    move-exception p0

    move-object p0, v2

    goto :goto_6

    :catch_1
    move-exception p0

    move-object p0, v2

    move-object v6, p0

    :goto_6
    move-object v2, v5

    goto :goto_9

    :catch_2
    move-exception p0

    goto :goto_8

    :catch_3
    move-exception p0

    move-object p0, v2

    move-object v6, p0

    move p6, v5

    goto :goto_9

    .line 453
    :cond_b
    move-object p0, v2

    move-object v6, p0

    move p6, v5

    :goto_7
    goto :goto_9

    .line 451
    :catch_4
    move-exception p0

    move p6, v1

    :goto_8
    move-object p0, v2

    move-object v6, p0

    .line 457
    :goto_9
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-eqz p3, :cond_c

    .line 458
    invoke-virtual {p2, p4}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p3

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 462
    :cond_c
    if-nez v1, :cond_d

    .line 465
    iget-object p3, p1, Lcom/android/settingslib/drawer/Tile;->metaData:Landroid/os/Bundle;

    const-string p4, "com.android.settings.icon_uri"

    invoke-virtual {p3, p4}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_d

    .line 466
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 469
    :cond_d
    if-eqz v1, :cond_e

    .line 470
    iget-object p3, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {p3, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Ljava/lang/String;I)Landroid/graphics/drawable/Icon;

    move-result-object p3

    iput-object p3, p1, Lcom/android/settingslib/drawer/Tile;->icon:Landroid/graphics/drawable/Icon;

    .line 474
    :cond_e
    iput-object v2, p1, Lcom/android/settingslib/drawer/Tile;->title:Ljava/lang/CharSequence;

    .line 475
    iput-object v6, p1, Lcom/android/settingslib/drawer/Tile;->summary:Ljava/lang/CharSequence;

    .line 477
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    iget-object p4, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p3, p4, p2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    iput-object p2, p1, Lcom/android/settingslib/drawer/Tile;->intent:Landroid/content/Intent;

    .line 480
    iput-object p0, p1, Lcom/android/settingslib/drawer/Tile;->key:Ljava/lang/String;

    .line 481
    iput-boolean p6, p1, Lcom/android/settingslib/drawer/Tile;->isIconTintable:Z

    .line 483
    return v0

    .line 486
    :cond_f
    return v1
.end method
