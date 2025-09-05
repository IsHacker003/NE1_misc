.class public Lcom/android/settings/PrivacySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PrivacySettings.java"


# static fields
.field static final AUTO_RESTORE:Ljava/lang/String; = "auto_restore"

.field static final BACKUP_DATA:Ljava/lang/String; = "backup_data"

.field static final CONFIGURE_ACCOUNT:Ljava/lang/String; = "configure_account"

.field static final DATA_MANAGEMENT:Ljava/lang/String; = "data_management"


# instance fields
.field private mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

.field private mBackup:Landroid/support/v7/preference/Preference;

.field private mBackupManager:Landroid/app/backup/IBackupManager;

.field private mConfigure:Landroid/support/v7/preference/Preference;

.field private mEnabled:Z

.field private mManageData:Landroid/support/v7/preference/Preference;

.field private preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 53
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 130
    new-instance v0, Lcom/android/settings/PrivacySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/PrivacySettings$1;-><init>(Lcom/android/settings/PrivacySettings;)V

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/PrivacySettings;)Landroid/support/v14/preference/SwitchPreference;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/PrivacySettings;)Landroid/app/backup/IBackupManager;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    return-object p0
.end method

.method private static getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 228
    const-string v0, "backup"

    .line 229
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 228
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    .line 230
    nop

    .line 232
    const/4 v1, 0x0

    :try_start_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-interface {v0, v2}, Landroid/app/backup/IBackupManager;->isBackupServiceActive(I)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 236
    goto :goto_0

    .line 233
    :catch_0
    move-exception v0

    .line 234
    const-string v0, "PrivacySettings"

    const-string v2, "Failed querying backup manager service activity status. Assuming it is inactive."

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const-string v2, "com.google.settings"

    .line 238
    invoke-virtual {p0, v2, v1}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 v1, 0x1

    nop

    .line 239
    :cond_0
    if-nez v1, :cond_1

    if-eqz v0, :cond_2

    .line 240
    :cond_1
    const-string p0, "backup_inactive"

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 242
    :cond_2
    if-nez v1, :cond_3

    if-nez v0, :cond_4

    .line 243
    :cond_3
    const-string p0, "backup_data"

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 244
    const-string p0, "auto_restore"

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 245
    const-string p0, "configure_account"

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 247
    :cond_4
    return-void
.end method

.method private setConfigureSummary(Ljava/lang/String;)V
    .locals 1

    .line 215
    if-eqz p1, :cond_0

    .line 216
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 218
    :cond_0
    iget-object p1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    const v0, 0x7f1201bc    # @string/backup_configure_account_default_summary 'No account is currently storing backed up data'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 220
    :goto_0
    return-void
.end method

.method private updateToggles()V
    .locals 10

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 157
    nop

    .line 158
    nop

    .line 159
    nop

    .line 160
    nop

    .line 161
    nop

    .line 163
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_0
    iget-object v3, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v3}, Landroid/app/backup/IBackupManager;->isBackupEnabled()Z

    move-result v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_5

    .line 164
    :try_start_1
    iget-object v4, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v4}, Landroid/app/backup/IBackupManager;->getCurrentTransport()Ljava/lang/String;

    move-result-object v4

    .line 165
    iget-object v5, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 166
    invoke-interface {v5, v4}, Landroid/app/backup/IBackupManager;->getConfigurationIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    const-string v6, "config"

    .line 165
    invoke-direct {p0, v5, v6}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_4

    .line 167
    :try_start_2
    iget-object v6, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v6, v4}, Landroid/app/backup/IBackupManager;->getDestinationString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 168
    :try_start_3
    iget-object v7, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 169
    invoke-interface {v7, v4}, Landroid/app/backup/IBackupManager;->getDataManagementIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v8, "management"

    .line 168
    invoke-direct {p0, v7, v8}, Lcom/android/settings/PrivacySettings;->validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 170
    :try_start_4
    iget-object v8, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    invoke-interface {v8, v4}, Landroid/app/backup/IBackupManager;->getDataManagementLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1

    .line 172
    :try_start_5
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/Preference;

    if-eqz v3, :cond_0

    .line 173
    const v8, 0x7f12004b    # @string/accessibility_feature_state_on 'On'

    goto :goto_0

    .line 174
    :cond_0
    const v8, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    .line 172
    :goto_0
    invoke-virtual {v1, v8}, Landroid/support/v7/preference/Preference;->setSummary(I)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_0

    .line 178
    goto :goto_3

    .line 175
    :catch_0
    move-exception v1

    goto :goto_2

    :catch_1
    move-exception v4

    move-object v4, v1

    goto :goto_2

    :catch_2
    move-exception v4

    move-object v4, v1

    move-object v7, v4

    goto :goto_2

    :catch_3
    move-exception v4

    move-object v4, v1

    move-object v6, v4

    goto :goto_1

    :catch_4
    move-exception v4

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    :goto_1
    move-object v7, v6

    goto :goto_2

    :catch_5
    move-exception v3

    move-object v4, v1

    move-object v5, v4

    move-object v6, v5

    move-object v7, v6

    move v3, v2

    .line 177
    :goto_2
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 180
    :goto_3
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    const-string v8, "backup_auto_restore"

    const/4 v9, 0x1

    invoke-static {v0, v8, v9}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v9, :cond_1

    move v0, v9

    goto :goto_4

    :cond_1
    move v0, v2

    :goto_4
    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 182
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 184
    if-eqz v5, :cond_2

    if-eqz v3, :cond_2

    .line 185
    move v0, v9

    goto :goto_5

    .line 184
    :cond_2
    nop

    .line 185
    move v0, v2

    :goto_5
    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 187
    invoke-direct {p0, v6}, Lcom/android/settings/PrivacySettings;->setConfigureSummary(Ljava/lang/String;)V

    .line 189
    if-eqz v7, :cond_3

    if-eqz v3, :cond_3

    .line 190
    move v2, v9

    goto :goto_6

    .line 189
    :cond_3
    nop

    .line 190
    :goto_6
    if-eqz v2, :cond_4

    .line 191
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v7}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 192
    if-eqz v4, :cond_5

    .line 193
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_7

    .line 197
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 199
    :cond_5
    :goto_7
    return-void
.end method

.method private validatedActivityIntent(Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3

    .line 202
    if-eqz p1, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 204
    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 205
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 206
    :cond_0
    const/4 p1, 0x0

    .line 207
    const-string v0, "PrivacySettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Backup "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, " intent "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " fails to resolve; ignoring"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    :cond_1
    return-object p1
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 224
    const v0, 0x7f1206f5    # @string/help_url_backup_reset ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 76
    const/16 v0, 0x51

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    .line 85
    iget-boolean p1, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-nez p1, :cond_0

    .line 86
    return-void

    .line 89
    :cond_0
    const p1, 0x7f150089    # @xml/privacy_settings 'res/xml/privacy_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/PrivacySettings;->addPreferencesFromResource(I)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 91
    const-string v0, "backup"

    .line 92
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 91
    invoke-static {v0}, Landroid/app/backup/IBackupManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/backup/IBackupManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackupManager:Landroid/app/backup/IBackupManager;

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/PrivacySettings;->setPreferenceReferences(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 96
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/PrivacySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/android/settings/PrivacySettings;->getNonVisibleKeys(Landroid/content/Context;Ljava/util/Collection;)V

    .line 98
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 99
    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_2

    .line 100
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 101
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 102
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 99
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 106
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 107
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 114
    iget-boolean v0, p0, Lcom/android/settings/PrivacySettings;->mEnabled:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-direct {p0}, Lcom/android/settings/PrivacySettings;->updateToggles()V

    .line 117
    :cond_0
    return-void
.end method

.method setPreferenceReferences(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 121
    const-string v0, "backup_data"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mBackup:Landroid/support/v7/preference/Preference;

    .line 123
    const-string v0, "auto_restore"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    .line 124
    iget-object v0, p0, Lcom/android/settings/PrivacySettings;->mAutoRestore:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/PrivacySettings;->preferenceChangeListener:Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 126
    const-string v0, "configure_account"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/PrivacySettings;->mConfigure:Landroid/support/v7/preference/Preference;

    .line 127
    const-string v0, "data_management"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/PrivacySettings;->mManageData:Landroid/support/v7/preference/Preference;

    .line 128
    return-void
.end method
