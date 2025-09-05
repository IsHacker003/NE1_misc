.class Lcom/android/settings/backup/BackupSettingsActivity$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "BackupSettingsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/backup/BackupSettingsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 94
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method


# virtual methods
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

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    .line 123
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_1

    .line 124
    const-string v0, "BackupSettingsActivity"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    const-string v0, "BackupSettingsActivity"

    const-string v1, "Not a system user, not indexing the screen"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    :cond_0
    const-string v0, "backup"

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    :cond_1
    return-object p1
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 101
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 104
    new-instance v0, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v0, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 105
    const v1, 0x7f120a91    # @string/privacy_settings_title 'Backup'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 106
    const v1, 0x7f120c29    # @string/settings_label 'Settings'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 107
    const v1, 0x7f12078a    # @string/keywords_backup 'backup, back up'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/settings/search/SearchIndexableRaw;->keywords:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetPackage:Ljava/lang/String;

    .line 109
    const-class p1, Lcom/android/settings/backup/BackupSettingsActivity;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentTargetClass:Ljava/lang/String;

    .line 110
    const-string p1, "android.intent.action.MAIN"

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->intentAction:Ljava/lang/String;

    .line 111
    const-string p1, "backup"

    iput-object p1, v0, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 112
    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 114
    return-object p2
.end method
