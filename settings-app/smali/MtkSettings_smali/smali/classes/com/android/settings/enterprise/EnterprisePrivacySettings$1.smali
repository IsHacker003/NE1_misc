.class Lcom/android/settings/enterprise/EnterprisePrivacySettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "EnterprisePrivacySettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/enterprise/EnterprisePrivacySettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
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

    .line 118
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->access$000(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    return-object p1
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

    .line 110
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 111
    const p1, 0x7f150059    # @xml/enterprise_privacy_settings 'res/xml/enterprise_privacy_settings.xml'

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 112
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 104
    invoke-static {p1}, Lcom/android/settings/enterprise/EnterprisePrivacySettings;->isPageEnabled(Landroid/content/Context;)Z

    move-result p1

    return p1
.end method
