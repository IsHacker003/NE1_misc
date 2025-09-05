.class public Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultHomePreferenceController.java"


# static fields
.field static final HOME_FILTER:Landroid/content/IntentFilter;


# instance fields
.field private final mPackageName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 41
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    .line 42
    sget-object v0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 43
    sget-object v0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->HOME_FILTER:Landroid/content/IntentFilter;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageName:Ljava/lang/String;

    .line 49
    return-void
.end method

.method private getOnlyAppInfo(Ljava/util/List;)Landroid/content/pm/ActivityInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)",
            "Landroid/content/pm/ActivityInfo;"
        }
    .end annotation

    .line 77
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 79
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 80
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 81
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 82
    iget-object v2, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 83
    goto :goto_0

    .line 85
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 86
    goto :goto_0

    .line 87
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    const/4 v1, 0x1

    if-ne p1, v1, :cond_2

    .line 88
    const/4 p1, 0x0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/pm/ActivityInfo;

    goto :goto_1

    .line 89
    :cond_2
    const/4 p1, 0x0

    .line 87
    :goto_1
    return-object p1
.end method

.method public static hasHomePreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 3

    .line 113
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 114
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/pm/PackageManager;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    .line 116
    const/4 p1, 0x0

    move v1, p1

    :goto_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 117
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 118
    const/4 p0, 0x1

    return p0

    .line 116
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 121
    :cond_1
    return p1
.end method

.method public static isHomeDefault(Ljava/lang/String;Lcom/android/settingslib/wrapper/PackageManagerWrapper;)Z
    .locals 1

    .line 125
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 126
    invoke-virtual {p1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object p1

    .line 128
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 5

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 64
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getHomeActivities(Ljava/util/List;)Landroid/content/ComponentName;

    move-result-object v1

    .line 65
    if-eqz v1, :cond_0

    .line 66
    new-instance v0, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mUserId:I

    invoke-direct {v0, v2, v3, v4, v1}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    return-object v0

    .line 68
    :cond_0
    invoke-direct {p0, v0}, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->getOnlyAppInfo(Ljava/util/List;)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 69
    if-eqz v0, :cond_1

    .line 70
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mUserId:I

    .line 71
    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    .line 70
    return-object v1

    .line 73
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 53
    const-string v0, "default_home"

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 3

    .line 94
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 95
    return-object v0

    .line 98
    :cond_0
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 99
    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    if-eqz v1, :cond_3

    .line 101
    iget-object p1, p1, Lcom/android/settingslib/applications/DefaultAppInfo;->packageItemInfo:Landroid/content/pm/PackageItemInfo;

    iget-object p1, p1, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 106
    :goto_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.APPLICATION_PREFERENCES"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 107
    invoke-virtual {v1, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const v1, 0x10008000

    .line 108
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    .line 109
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v0

    :goto_1
    return-object p1

    .line 103
    :cond_3
    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 58
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultHomePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05001f    # @bool/config_show_default_home 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
