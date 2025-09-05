.class Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "AutomaticStorageManagerSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 164
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 0
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

    .line 173
    invoke-static {p1}, Lcom/android/settings/deletionhelper/AutomaticStorageManagerSettings;->access$000(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 167
    const/4 p1, 0x0

    return p1
.end method
