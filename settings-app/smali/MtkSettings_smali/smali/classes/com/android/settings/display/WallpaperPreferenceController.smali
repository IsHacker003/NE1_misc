.class public Lcom/android/settings/display/WallpaperPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "WallpaperPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mWallpaperClass:Ljava/lang/String;

.field private final mWallpaperPackage:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 48
    iget-object p1, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1203f4    # @string/config_wallpaper_picker_package 'com.google.android.apps.wallpaper'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    .line 49
    iget-object p1, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f1203f3    # @string/config_wallpaper_picker_class 'com.google.android.apps.wallpaper.picker.CategoryPickerActivity'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    .line 50
    return-void
.end method

.method private disablePreferenceIfManaged(Lcom/android/settingslib/RestrictedPreference;)V
    .locals 3

    .line 80
    if-eqz p1, :cond_1

    .line 81
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 82
    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "no_set_wallpaper"

    .line 83
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 82
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 86
    :cond_0
    const-string v0, "no_set_wallpaper"

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;)V

    .line 89
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 70
    const-string v0, "wallpaper"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 4

    .line 54
    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    new-instance v0, Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperPackage:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mWallpaperClass:Ljava/lang/String;

    invoke-direct {v0, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    iget-object v2, p0, Lcom/android/settings/display/WallpaperPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 61
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 62
    invoke-virtual {v3, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 63
    nop

    .line 64
    invoke-virtual {v2, v3, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 65
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 55
    :cond_2
    :goto_0
    const-string v0, "WallpaperPrefController"

    const-string v2, "No Wallpaper picker specified!"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    return v1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 75
    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/display/WallpaperPreferenceController;->disablePreferenceIfManaged(Lcom/android/settingslib/RestrictedPreference;)V

    .line 76
    return-void
.end method
