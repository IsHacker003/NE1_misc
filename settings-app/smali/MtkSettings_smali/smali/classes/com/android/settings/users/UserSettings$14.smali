.class Lcom/android/settings/users/UserSettings$14;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "UserSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/UserSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1202
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getNonIndexableKeysFromXml(Landroid/content/Context;I)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1223
    invoke-super {p0, p1, p2}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeysFromXml(Landroid/content/Context;I)Ljava/util/List;

    move-result-object p2

    .line 1224
    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v1, "user_settings_add_users_when_locked"

    const/4 v2, 0x0

    invoke-direct {v0, p1, v1, v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 1226
    invoke-virtual {v0, p2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1227
    new-instance v0, Lcom/android/settings/users/AutoSyncDataPreferenceController;

    invoke-direct {v0, p1, v2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 1228
    invoke-virtual {v0, p2}, Lcom/android/settings/users/AutoSyncDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1229
    new-instance v0, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;

    invoke-direct {v0, p1, v2}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 1230
    invoke-virtual {v0, p2}, Lcom/android/settings/users/AutoSyncPersonalDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1231
    new-instance v0, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;

    invoke-direct {v0, p1, v2}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;-><init>(Landroid/content/Context;Landroid/app/Fragment;)V

    .line 1232
    invoke-virtual {v0, p2}, Lcom/android/settings/users/AutoSyncWorkDataPreferenceController;->updateNonIndexableKeys(Ljava/util/List;)V

    .line 1233
    return-object p2
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

    .line 1213
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 1215
    new-instance v0, Landroid/provider/SearchIndexableResource;

    invoke-direct {v0, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 1216
    const p1, 0x7f1500b3    # @xml/user_settings 'res/xml/user_settings.xml'

    iput p1, v0, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 1217
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1218
    return-object p2
.end method

.method protected isPageSearchEnabled(Landroid/content/Context;)Z
    .locals 0

    .line 1206
    invoke-static {p1}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    .line 1207
    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    return p1
.end method
