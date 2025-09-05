.class public interface abstract Lcom/android/settings/search/SearchFeatureProvider;
.super Ljava/lang/Object;
.source "SearchFeatureProvider.java"


# static fields
.field public static final SEARCH_UI_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 35
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.settings.action.SETTINGS_SEARCH"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public static synthetic lambda$initSearchToolbar$0(Lcom/android/settings/search/SearchFeatureProvider;Landroid/app/Activity;Landroid/view/View;)V
    .locals 2

    .line 71
    invoke-static {}, Lcom/android/settings/Utils;->isMonkeyRunning()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 72
    const-string p1, "SearchFeatureProvider"

    const-string p2, "Monkey running, dont click searchbar, Simply return"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return-void

    .line 75
    :cond_0
    sget-object p2, Lcom/android/settings/search/SearchFeatureProvider;->SEARCH_UI_INTENT:Landroid/content/Intent;

    .line 76
    invoke-interface {p0}, Lcom/android/settings/search/SearchFeatureProvider;->getSettingsIntelligencePkgName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 78
    nop

    .line 79
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 78
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSlicesFeatureProvider()Lcom/android/settings/slices/SlicesFeatureProvider;

    move-result-object v0

    .line 80
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/settings/slices/SlicesFeatureProvider;->indexSliceDataAsync(Landroid/content/Context;)V

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 82
    return-void
.end method


# virtual methods
.method public abstract getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;
.end method

.method public getSettingsIntelligencePkgName()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "com.android.settings.intelligence"

    return-object v0
.end method

.method public initSearchToolbar(Landroid/app/Activity;Landroid/widget/Toolbar;)V
    .locals 1

    .line 66
    if-eqz p1, :cond_1

    if-nez p2, :cond_0

    goto :goto_0

    .line 69
    :cond_0
    new-instance v0, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$7ZGLG3tZpGqHgt7m_jMbwikwfJM;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/search/-$$Lambda$SearchFeatureProvider$7ZGLG3tZpGqHgt7m_jMbwikwfJM;-><init>(Lcom/android/settings/search/SearchFeatureProvider;Landroid/app/Activity;)V

    invoke-virtual {p2, v0}, Landroid/widget/Toolbar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    return-void

    .line 67
    :cond_1
    :goto_0
    return-void
.end method

.method public abstract verifyLaunchSearchResultPageCaller(Landroid/content/Context;Landroid/content/ComponentName;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation
.end method
