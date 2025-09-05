.class public Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BackupSettingsActivityPreferenceController.java"


# static fields
.field private static final KEY_BACKUP_SETTINGS:Ljava/lang/String; = "backup_settings"

.field private static final TAG:Ljava/lang/String; = "BackupSettingActivityPC"


# instance fields
.field private final mBackupManager:Landroid/app/backup/BackupManager;

.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 35
    const-string v0, "backup_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 36
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mUm:Landroid/os/UserManager;

    .line 37
    new-instance v0, Landroid/app/backup/BackupManager;

    invoke-direct {v0, p1}, Landroid/app/backup/BackupManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mBackupManager:Landroid/app/backup/BackupManager;

    .line 38
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 3

    .line 48
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    .line 49
    const/4 v0, 0x0

    goto :goto_0

    .line 50
    :cond_0
    nop

    .line 51
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 52
    iget-object v2, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 53
    nop

    .line 54
    const-string v0, "BackupSettingActivityPC"

    const-string v2, "BackupSettingsActivity is unavailable for Demo Mode."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    move v0, v1

    :cond_1
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 63
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mBackupManager:Landroid/app/backup/BackupManager;

    invoke-virtual {v0}, Landroid/app/backup/BackupManager;->isBackupEnabled()Z

    move-result v0

    .line 65
    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12004b    # @string/accessibility_feature_state_on 'On'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_0

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/backup/BackupSettingsActivityPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 65
    :goto_0
    return-object v0
.end method
