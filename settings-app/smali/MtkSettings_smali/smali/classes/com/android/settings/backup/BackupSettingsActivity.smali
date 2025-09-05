.class public Lcom/android/settings/backup/BackupSettingsActivity;
.super Landroid/app/Activity;
.source "BackupSettingsActivity.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mFragmentManager:Landroid/app/FragmentManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 93
    new-instance v0, Lcom/android/settings/backup/BackupSettingsActivity$1;

    invoke-direct {v0}, Lcom/android/settings/backup/BackupSettingsActivity$1;-><init>()V

    sput-object v0, Lcom/android/settings/backup/BackupSettingsActivity;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .line 49
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 51
    new-instance p1, Lcom/android/settings/backup/BackupSettingsHelper;

    invoke-direct {p1, p0}, Lcom/android/settings/backup/BackupSettingsHelper;-><init>(Landroid/content/Context;)V

    .line 53
    invoke-virtual {p1}, Lcom/android/settings/backup/BackupSettingsHelper;->isBackupProvidedByManufacturer()Z

    move-result v0

    const/4 v1, 0x3

    if-nez v0, :cond_1

    .line 56
    const-string v0, "BackupSettingsActivity"

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 57
    const-string v0, "BackupSettingsActivity"

    const-string v1, "No manufacturer settings found, launching the backup settings directly"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/backup/BackupSettingsHelper;->getIntentForBackupSettings()Landroid/content/Intent;

    move-result-object p1

    .line 63
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 64
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    .line 63
    invoke-virtual {v1, v2, v0, v0}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 67
    :catch_0
    move-exception v1

    .line 68
    const-string v2, "BackupSettingsActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Trying to enable activity "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " but couldn\'t: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    invoke-virtual {v1}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 68
    invoke-static {v2, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/backup/BackupSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->finish()V

    .line 76
    goto :goto_1

    .line 77
    :cond_1
    const-string p1, "BackupSettingsActivity"

    invoke-static {p1, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 78
    const-string p1, "BackupSettingsActivity"

    const-string v0, "Manufacturer provided backup settings, showing the preference screen"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :cond_2
    iget-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    if-nez p1, :cond_3

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/backup/BackupSettingsActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 84
    :cond_3
    iget-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    invoke-virtual {p1}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object p1

    const v0, 0x1020002    # @android:id/content

    new-instance v1, Lcom/android/settings/backup/BackupSettingsFragment;

    invoke-direct {v1}, Lcom/android/settings/backup/BackupSettingsFragment;-><init>()V

    .line 85
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/app/FragmentTransaction;->commit()I

    .line 88
    :goto_1
    return-void
.end method

.method setFragmentManager(Landroid/app/FragmentManager;)V
    .locals 0

    .line 136
    iput-object p1, p0, Lcom/android/settings/backup/BackupSettingsActivity;->mFragmentManager:Landroid/app/FragmentManager;

    .line 137
    return-void
.end method
