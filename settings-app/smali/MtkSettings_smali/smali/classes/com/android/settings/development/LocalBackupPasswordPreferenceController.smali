.class public Lcom/android/settings/development/LocalBackupPasswordPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "LocalBackupPasswordPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mBackupManager:Landroid/app/backup/IBackupManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 42
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 43
    const-string p1, "backup"

    .line 44
    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 43
    invoke-static {p1}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 45
    return-void
.end method

.method private updatePasswordSummary(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 58
    invoke-virtual {p0}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 59
    iget-object v0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    if-nez v0, :cond_1

    .line 60
    return-void

    .line 63
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v0}, Landroid/app/backup/IBackupManager;->hasBackupPassword()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 64
    const v0, 0x7f1207e3    # @string/local_backup_password_summary_change 'Tap to change or remove the password for desktop full backups'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_1

    .line 66
    :cond_2
    const v0, 0x7f1207e4    # @string/local_backup_password_summary_none 'Desktop full backups aren’t currently protected'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    :goto_1
    goto :goto_2

    .line 68
    :catch_0
    move-exception p1

    .line 71
    :goto_2
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "local_backup_password"

    return-object v0
.end method

.method isAdminUser()Z
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/android/settings/development/LocalBackupPasswordPreferenceController;->updatePasswordSummary(Landroid/support/v7/preference/Preference;)V

    .line 55
    return-void
.end method
