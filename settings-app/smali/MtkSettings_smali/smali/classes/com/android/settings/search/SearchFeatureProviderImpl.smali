.class public Lcom/android/settings/search/SearchFeatureProviderImpl;
.super Ljava/lang/Object;
.source "SearchFeatureProviderImpl.java"

# interfaces
.implements Lcom/android/settings/search/SearchFeatureProvider;


# instance fields
.field private mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method cleanQuery(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 95
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const/4 p1, 0x0

    return-object p1

    .line 98
    :cond_0
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sget-object v1, Ljava/util/Locale;->JAPAN:Ljava/util/Locale;

    invoke-virtual {v0, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 99
    invoke-static {p1}, Lcom/android/settings/search/indexing/IndexData;->normalizeJapaneseString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 101
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;
    .locals 1

    .line 78
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    if-nez v0, :cond_0

    .line 79
    new-instance v0, Lcom/android/settings/search/SearchIndexableResourcesImpl;

    invoke-direct {v0}, Lcom/android/settings/search/SearchIndexableResourcesImpl;-><init>()V

    iput-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    .line 81
    :cond_0
    iget-object v0, p0, Lcom/android/settings/search/SearchFeatureProviderImpl;->mSearchIndexableResources:Lcom/android/settings/search/SearchIndexableResources;

    return-object v0
.end method

.method protected isSignatureWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 85
    const/4 p1, 0x0

    return p1
.end method

.method public verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    .locals 2

    .line 43
    if-eqz p2, :cond_4

    .line 47
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/search/SearchFeatureProviderImpl;->getSettingsIntelligencePkgName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 50
    :goto_1
    nop

    .line 51
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/search/SearchFeatureProviderImpl;->isSignatureWhitelisted(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    .line 52
    if-nez v0, :cond_3

    if-eqz p1, :cond_2

    goto :goto_2

    .line 55
    :cond_2
    new-instance p1, Ljava/lang/SecurityException;

    const-string p2, "Search result intents must be called with from a whitelisted package."

    invoke-direct {p1, p2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 53
    :cond_3
    :goto_2
    return-void

    .line 44
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "ExternalSettingsTrampoline intents must be called with startActivityForResult"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
