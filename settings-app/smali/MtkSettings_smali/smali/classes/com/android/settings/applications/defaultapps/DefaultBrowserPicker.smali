.class public Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultBrowserPicker.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
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

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 64
    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v3, Lcom/android/settings/applications/defaultapps/DefaultBrowserPreferenceController;->BROWSE_PROBE:Landroid/content/Intent;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mUserId:I

    const/high16 v5, 0x20000

    invoke-virtual {v2, v3, v5, v4}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentActivitiesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v2

    .line 67
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    .line 68
    new-instance v4, Landroid/util/ArraySet;

    invoke-direct {v4}, Landroid/util/ArraySet;-><init>()V

    .line 69
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v3, :cond_3

    .line 70
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/content/pm/ResolveInfo;

    .line 71
    iget-object v8, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v8, :cond_2

    iget-boolean v8, v7, Landroid/content/pm/ResolveInfo;->handleAllWebDataURI:Z

    if-nez v8, :cond_0

    .line 72
    goto :goto_1

    .line 74
    :cond_0
    iget-object v7, v7, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 75
    invoke-interface {v4, v7}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 76
    goto :goto_1

    .line 79
    :cond_1
    :try_start_0
    new-instance v8, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v9, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v10, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v11, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mUserId:I

    .line 80
    invoke-virtual {v10, v7, v5, v11}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-direct {v8, v1, v9, v10}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    .line 79
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    invoke-interface {v4, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 84
    goto :goto_1

    .line 82
    :catch_0
    move-exception v7

    .line 69
    :cond_2
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 87
    :cond_3
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 46
    const/16 v0, 0x311

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 41
    const v0, 0x7f150042    # @xml/default_browser_settings 'res/xml/default_browser_settings.xml'

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultBrowserPicker;->mUserId:I

    invoke-virtual {v0, p1, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->setDefaultBrowserPackageNameAsUser(Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
