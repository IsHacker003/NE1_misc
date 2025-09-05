.class public Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultBrowserPreferenceController.java"


# static fields
.field static final BROWSE_PROBE:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 40
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    const-string v1, "android.intent.action.VIEW"

    .line 41
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.intent.category.BROWSABLE"

    .line 42
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "http:"

    .line 43
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 47
    return-void
.end method

.method private getCandidates()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 107
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    iget v2, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mUserId:I

    const/high16 v3, 0x20000

    invoke-virtual {v0, v1, v3, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private getOnlyAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .line 126
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 127
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 128
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 129
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 130
    if-nez v0, :cond_0

    .line 131
    move-object v3, v1

    goto :goto_0

    .line 130
    :cond_0
    iget-object v3, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 131
    :goto_0
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 132
    return-object v1

    .line 136
    :cond_1
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v3, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v2
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    nop

    .line 141
    const-string v1, "BrowserPrefCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Getting icon for the only browser app: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    .line 143
    iget v3, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mUserId:I

    invoke-virtual {v1, v0, v2, v3}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    const-string v0, "BrowserPrefCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error getting app info for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    return-object v1

    .line 145
    :cond_2
    return-object v1
.end method

.method private getOnlyAppLabel()Ljava/lang/String;
    .locals 5

    .line 113
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 115
    const/4 v2, 0x0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 116
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 117
    invoke-virtual {v0}, Landroid/content/pm/ResolveInfo;->getComponentInfo()Landroid/content/pm/ComponentInfo;

    move-result-object v0

    .line 118
    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, v0, Landroid/content/pm/ComponentInfo;->packageName:Ljava/lang/String;

    .line 119
    :goto_0
    const-string v0, "BrowserPrefCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting label for the only browser app: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    return-object v2

    .line 122
    :cond_1
    return-object v1
.end method

.method public static hasBrowserPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 152
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 153
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    nop

    .line 155
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 156
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    nop

    :cond_0
    return p1
.end method


# virtual methods
.method public getDefaultAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    const/4 v0, 0x0

    return-object v0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 100
    if-eqz v0, :cond_1

    .line 101
    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 103
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getOnlyAppIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 6

    .line 72
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "BrowserPrefCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Get default browser package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 75
    invoke-virtual {v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    invoke-direct {v1, v2, v3, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    return-object v1

    .line 76
    :catch_0
    move-exception v0

    .line 77
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 2

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 84
    return-object v1

    .line 86
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 87
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v1

    nop

    .line 88
    :cond_1
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 89
    return-object v1

    .line 91
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getOnlyAppLabel()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "default_browser"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getCandidates()Ljava/util/List;

    move-result-object v0

    .line 52
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isBrowserDefault(Ljava/lang/String;I)Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 168
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    const/high16 v1, 0x20000

    invoke-virtual {p1, v0, v1, p2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object p1

    .line 171
    const/4 p2, 0x1

    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 62
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object v0

    .line 64
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 65
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 67
    :cond_0
    return-void
.end method
