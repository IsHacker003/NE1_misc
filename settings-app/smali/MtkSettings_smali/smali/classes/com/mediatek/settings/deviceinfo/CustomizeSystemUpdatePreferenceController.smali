.class public Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "CustomizeSystemUpdatePreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mUm:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/os/UserManager;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p2, p0, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 47
    return-void
.end method

.method public static isCustomizedSystemUpdateAvalible()Z
    .locals 1

    .line 55
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    return v0
.end method

.method private startActivity(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 126
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 127
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 128
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 129
    iget-object p1, p0, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 130
    iget-object p1, p0, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 132
    :cond_0
    const-string p1, "CustSysUpdatePrefContr"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unable to start activity "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :goto_0
    return-void
.end method

.method private systemUpdateEntrance(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 119
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    if-eqz p1, :cond_0

    .line 120
    const-string p1, "com.mediatek.systemupdate"

    const-string v0, "com.mediatek.systemupdate.MainEntry"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->startActivity(Ljava/lang/String;Ljava/lang/String;)V

    .line 123
    :cond_0
    return-void
.end method

.method private updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 5

    .line 74
    invoke-virtual {p2, p3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p3

    .line 75
    if-nez p3, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    nop

    .line 80
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_SYSTEM_UPDATE_SUPPORT:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 82
    const-string v1, "com.mediatek.systemupdate"

    const-string v2, "com.mediatek.systemupdate.MainEntry"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_0

    .line 85
    :cond_1
    move-object v0, v1

    :goto_0
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 88
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 89
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 90
    :goto_1
    if-ge v1, v2, :cond_3

    .line 91
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 92
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_2

    .line 95
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 98
    invoke-virtual {v3, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 99
    invoke-virtual {p3, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 100
    const-string p2, "CustSysUpdatePrefContr"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "KEY_MTK_SYSTEM_UPDATE : "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 90
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 106
    :cond_3
    invoke-virtual {p2, p3}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 107
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 65
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, p1, v1}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->setVisible(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Z)V

    .line 70
    :goto_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "mtk_system_update"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 111
    const-string v0, "mtk_system_update"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 112
    invoke-direct {p0, p1}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->systemUpdateEntrance(Landroid/support/v7/preference/Preference;)V

    .line 113
    const/4 p1, 0x1

    return p1

    .line 115
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/mediatek/settings/deviceinfo/CustomizeSystemUpdatePreferenceController;->isCustomizedSystemUpdateAvalible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
