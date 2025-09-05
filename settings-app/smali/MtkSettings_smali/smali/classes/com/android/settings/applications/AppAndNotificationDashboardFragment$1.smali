.class Lcom/android/settings/applications/AppAndNotificationDashboardFragment$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AppAndNotificationDashboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppAndNotificationDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 83
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 95
    const/4 v0, 0x0

    invoke-static {p1, v0, v0}, Lcom/android/settings/applications/AppAndNotificationDashboardFragment;->access$000(Landroid/content/Context;Landroid/app/Application;Landroid/app/Fragment;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
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

    .line 100
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 101
    new-instance v1, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;

    invoke-direct {v1, p1}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;-><init>(Landroid/content/Context;)V

    .line 102
    invoke-virtual {v1}, Lcom/android/settings/applications/SpecialAppAccessPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    .line 101
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    return-object v0
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 87
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 88
    const p1, 0x7f150013    # @xml/app_and_notification 'res/xml/app_and_notification.xml'

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 89
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
