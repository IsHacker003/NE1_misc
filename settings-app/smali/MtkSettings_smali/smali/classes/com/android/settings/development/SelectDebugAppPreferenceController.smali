.class public Lcom/android/settings/development/SelectDebugAppPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "SelectDebugAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settings/development/OnActivityResultListener;


# instance fields
.field private final mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    iput-object p2, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    .line 48
    new-instance p1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object p2, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 49
    return-void
.end method

.method private getAppLabel(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 107
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/16 v1, 0x200

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 109
    iget-object v1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 110
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object p1, v0

    :cond_0
    return-object p1

    .line 111
    :catch_0
    move-exception v0

    .line 112
    return-object p1
.end method

.method private updatePreferenceSummary()V
    .locals 6

    .line 95
    iget-object v0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    .line 96
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "debug_app"

    .line 95
    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1204ed    # @string/debug_app_set 'Debugging application: %1$s'

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 99
    invoke-direct {p0, v0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->getAppLabel(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    .line 98
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204ec    # @string/debug_app_not_set 'No debug application set'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 103
    :goto_0
    return-void
.end method


# virtual methods
.method getActivityStartIntent()Landroid/content/Intent;
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    const-class v2, Lcom/android/settings/development/AppPicker;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "debug_app"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 58
    const-string v0, "debug_app"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->getActivityStartIntent()Landroid/content/Intent;

    move-result-object p1

    .line 60
    const-string v0, "com.android.settings.extra.DEBUGGABLE"

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 61
    iget-object v0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mFragment:Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/development/DevelopmentSettingsDashboardFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 62
    return v1

    .line 64
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onActivityResult(IILandroid/content/Intent;)Z
    .locals 1

    .line 74
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 77
    :cond_0
    iget-object p1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "debug_app"

    .line 78
    invoke-virtual {p3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    .line 77
    invoke-static {p1, p2, p3}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 79
    invoke-direct {p0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->updatePreferenceSummary()V

    .line 80
    return v0

    .line 75
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method protected onDeveloperOptionsSwitchDisabled()V
    .locals 3

    .line 85
    invoke-super {p0}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;->onDeveloperOptionsSwitchDisabled()V

    .line 86
    iget-object v0, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/development/SelectDebugAppPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1204ec    # @string/debug_app_not_set 'No debug application set'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/development/SelectDebugAppPreferenceController;->updatePreferenceSummary()V

    .line 70
    return-void
.end method
