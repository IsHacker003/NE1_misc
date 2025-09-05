.class public Lcom/android/settings/applications/defaultapps/DefaultHomePicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultHomePicker.java"


# instance fields
.field private mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private hasManagedProfile()Z
    .locals 2

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/content/Context;->getUserId()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object v0

    .line 131
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/UserInfo;

    .line 132
    invoke-virtual {v1}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    const/4 v0, 0x1

    return v0

    .line 135
    :cond_0
    goto :goto_0

    .line 136
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z
    .locals 2

    .line 141
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, p1, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 143
    iget p1, p1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->versionNumberAtLeastL(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 144
    :catch_0
    move-exception p1

    .line 145
    return v0
.end method

.method private versionNumberAtLeastL(I)Z
    .locals 1

    .line 150
    const/16 v0, 0x15

    if-lt p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->hasManagedProfile()Z

    move-result v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v10

    .line 64
    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v3, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 66
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 67
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 68
    new-instance v7, Landroid/content/ComponentName;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 69
    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    goto :goto_0

    .line 74
    :cond_0
    const/4 v4, 0x1

    .line 75
    if-eqz v0, :cond_1

    invoke-direct {p0, v3}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->launcherHasManagedProfilesFeature(Landroid/content/pm/ResolveInfo;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f12072f    # @string/home_work_profile_not_supported 'Doesn't support work profiles'

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 77
    const/4 v4, 0x0

    goto :goto_1

    .line 79
    :cond_1
    const/4 v3, 0x0

    .line 81
    :goto_1
    move-object v8, v3

    move v9, v4

    new-instance v11, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v6, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mUserId:I

    move-object v3, v11

    move-object v4, v10

    invoke-direct/range {v3 .. v9}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;Ljava/lang/String;Z)V

    .line 83
    invoke-interface {v1, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    goto :goto_0

    .line 85
    :cond_2
    return-object v1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 91
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v0

    .line 92
    if-eqz v0, :cond_0

    .line 93
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 95
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 55
    const/16 v0, 0x313

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 50
    const v0, 0x7f150044    # @xml/default_home_settings 'res/xml/default_home_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 44
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 45
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPackageName:Ljava/lang/String;

    .line 46
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 6

    .line 100
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 101
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 102
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v2, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 104
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 105
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 106
    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 107
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 109
    goto :goto_0

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v3, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const/high16 v4, 0x100000

    new-array v1, v1, [Landroid/content/ComponentName;

    .line 113
    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/ComponentName;

    .line 110
    invoke-virtual {v0, v3, v4, v1, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->replacePreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultHomePicker;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 119
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 120
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 121
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 122
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 123
    const/4 p1, 0x1

    return p1

    .line 125
    :cond_1
    return v1
.end method
