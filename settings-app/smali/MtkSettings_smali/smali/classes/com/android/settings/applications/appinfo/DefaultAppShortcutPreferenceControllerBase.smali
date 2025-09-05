.class public abstract Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;
.super Lcom/android/settings/core/BasePreferenceController;
.source "DefaultAppShortcutPreferenceControllerBase.java"


# instance fields
.field protected final mPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPackageName:Ljava/lang/String;

    .line 42
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserManager;->isManagedProfile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    const/4 v0, 0x3

    return v0

    .line 49
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->hasAppCapability()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 2

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->isDefaultApp()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f121138    # @string/yes 'Yes'

    goto :goto_0

    :cond_0
    const v0, 0x7f12097d    # @string/no 'No'

    .line 55
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 60
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 61
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, ":settings:fragment_args_key"

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/DefaultAppShortcutPreferenceControllerBase;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/applications/DefaultAppSettings;

    .line 64
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 65
    invoke-virtual {v1, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const v1, 0x7f1203f6    # @string/configure_apps 'Configure apps'

    .line 66
    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 67
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 68
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 69
    const/4 p1, 0x1

    return p1

    .line 71
    :cond_0
    return v0
.end method

.method protected abstract hasAppCapability()Z
.end method

.method protected abstract isDefaultApp()Z
.end method
