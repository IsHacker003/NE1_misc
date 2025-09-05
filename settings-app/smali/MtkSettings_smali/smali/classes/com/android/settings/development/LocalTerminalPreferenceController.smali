.class public Lcom/android/settings/development/LocalTerminalPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "LocalTerminalPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# static fields
.field static final TERMINAL_APP_PACKAGE:Ljava/lang/String; = "com.android.terminal"


# instance fields
.field private mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 27
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 29
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 30
    return-void
.end method

.method private isEnabled()Z
    .locals 1

    .line 98
    iget-object v0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    return v0
.end method

.method private isPackageInstalled(Ljava/lang/String;)Z
    .locals 2

    .line 91
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    nop

    :cond_0
    return v0

    .line 92
    :catch_0
    move-exception p1

    .line 93
    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 44
    invoke-super {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->getPackageManagerWrapper()Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isAvailable()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_0

    .line 49
    iget-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 51
    :cond_0
    return-void
.end method

.method getPackageManagerWrapper()Lcom/android/settingslib/wrapper/PackageManagerWrapper;
    .locals 2

    .line 86
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 39
    const-string v0, "enable_terminal"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 34
    const-string v0, "com.android.terminal"

    invoke-direct {p0, v0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 78
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 79
    iget-object v0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const-string v1, "com.android.terminal"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 81
    iget-object v0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 82
    return-void
.end method

.method protected onDeveloperOptionsSwitchEnabled()V
    .locals 2

    .line 71
    invoke-direct {p0}, Lcom/android/settings/development/LocalTerminalPreferenceController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 74
    :cond_0
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 55
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 56
    iget-object p2, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const-string v0, "com.android.terminal"

    .line 57
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    .line 58
    move p1, v2

    goto :goto_0

    :cond_0
    move p1, v1

    .line 56
    :goto_0
    invoke-virtual {p2, v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->setApplicationEnabledSetting(Ljava/lang/String;II)V

    .line 59
    return v2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 64
    iget-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const-string v0, "com.android.terminal"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationEnabledSetting(Ljava/lang/String;)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 66
    :goto_0
    iget-object p1, p0, Lcom/android/settings/development/LocalTerminalPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 67
    return-void
.end method
