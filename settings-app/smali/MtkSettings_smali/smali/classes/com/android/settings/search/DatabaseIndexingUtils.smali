.class public Lcom/android/settings/search/DatabaseIndexingUtils;
.super Ljava/lang/Object;
.source "DatabaseIndexingUtils.java"


# direct methods
.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 1

    .line 54
    const/16 v0, 0x22

    invoke-static {p0, p1, p2, p3, v0}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method public static buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 2

    .line 60
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 61
    const-string v1, ":settings:fragment_args_key"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-direct {v1, p0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 63
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 64
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 65
    invoke-virtual {p0, p3}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 66
    invoke-virtual {p0, p4}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object p0

    .line 68
    const-string p1, ":settings:fragment_args_key"

    invoke-virtual {p0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const-string p2, "com.android.settings.SEARCH_RESULT_TRAMPOLINE"

    .line 69
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 70
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 71
    return-object p0
.end method

.method public static getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;"
        }
    .end annotation

    .line 141
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "SEARCH_INDEX_DATA_PROVIDER"

    invoke-virtual {p0, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object p0

    .line 142
    invoke-virtual {p0, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/settings/search/Indexable$SearchIndexProvider;
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 150
    :catch_0
    move-exception p0

    .line 151
    const-string p0, "IndexingUtil"

    const-string v1, "Illegal argument when accessing field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :catch_1
    move-exception p0

    .line 149
    const-string p0, "IndexingUtil"

    const-string v1, "Illegal access to field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 145
    :catch_2
    move-exception p0

    .line 146
    const-string p0, "IndexingUtil"

    const-string v1, "Security exception for field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 143
    :catch_3
    move-exception p0

    .line 144
    const-string p0, "IndexingUtil"

    const-string v1, "Cannot find field \'SEARCH_INDEX_DATA_PROVIDER\'"

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :goto_0
    nop

    .line 154
    :goto_1
    return-object v0
.end method
