.class public Lcom/android/settings/wallpaper/WallpaperTypeSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WallpaperTypeSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 92
    new-instance v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings$1;

    invoke-direct {v0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings$1;-><init>()V

    sput-object v0, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private populateWallpaperTypes()V
    .locals 10

    .line 60
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SET_WALLPAPER"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 62
    const/high16 v2, 0x10000

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 65
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v3

    .line 66
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/PreferenceScreen;->setOrderingAsAdded(Z)V

    .line 68
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    .line 69
    new-instance v5, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 70
    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const/high16 v7, 0x2000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 71
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v8, v8, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v9, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v9, v9, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 73
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 74
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 75
    if-nez v6, :cond_0

    iget-object v6, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 76
    :cond_0
    invoke-virtual {v5, v6}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v4, v1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 78
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 79
    goto :goto_0

    .line 80
    :cond_1
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 47
    const v0, 0x7f1206eb    # @string/help_uri_wallpaper ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 42
    const/16 v0, 0x65

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 52
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    const p1, 0x7f1500ba    # @xml/wallpaper_settings 'res/xml/wallpaper_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->addPreferencesFromResource(I)V

    .line 55
    invoke-direct {p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->populateWallpaperTypes()V

    .line 56
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 84
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    .line 85
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1

    .line 87
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->startActivity(Landroid/content/Intent;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/wallpaper/WallpaperTypeSettings;->finish()V

    .line 89
    const/4 p1, 0x1

    return p1
.end method
