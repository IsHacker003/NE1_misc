.class public Lcom/android/settings/development/WebViewAppPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "WebViewAppPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 45
    new-instance v0, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object v0, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 46
    new-instance p1, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {p1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;-><init>()V

    iput-object p1, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    .line 47
    return-void
.end method

.method private getDefaultAppLabel()Ljava/lang/CharSequence;
    .locals 1

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/development/WebViewAppPreferenceController;->getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v0

    .line 74
    invoke-virtual {v0}, Lcom/android/settingslib/applications/DefaultAppInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 4

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-virtual {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 68
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 69
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :goto_0
    invoke-direct {v1, v2, v3, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    .line 68
    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "select_webview_provider"

    return-object v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/development/WebViewAppPreferenceController;->getDefaultAppLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 57
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 60
    :cond_0
    const-string p1, "WebViewAppPrefCtrl"

    const-string v0, "No default app"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    iget-object p1, p0, Lcom/android/settings/development/WebViewAppPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const v0, 0x7f12012c    # @string/app_list_preference_none 'None'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 63
    :goto_0
    return-void
.end method
