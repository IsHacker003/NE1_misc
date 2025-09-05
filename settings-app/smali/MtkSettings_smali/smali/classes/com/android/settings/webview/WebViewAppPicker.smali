.class public Lcom/android/settings/webview/WebViewAppPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "WebViewAppPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;
    }
.end annotation


# instance fields
.field private mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    return-void
.end method

.method private createDefaultWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .locals 1

    .line 107
    new-instance v0, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    invoke-direct {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;-><init>()V

    return-object v0
.end method

.method private getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;
    .locals 1

    .line 45
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    if-nez v0, :cond_0

    .line 46
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->createDefaultWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/webview/WebViewAppPicker;->setWebViewUpdateServiceWrapper(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    return-object v0
.end method


# virtual methods
.method createDefaultAppInfo(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;)Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 7

    .line 142
    new-instance v6, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;

    .line 143
    invoke-static {p4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/webview/WebViewAppPicker$WebViewAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;Z)V

    .line 142
    return-object v6
.end method

.method protected getCandidates()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 69
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v2

    .line 70
    nop

    .line 71
    invoke-virtual {v2, v1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getValidWebViewApplicationInfos(Landroid/content/Context;)Ljava/util/List;

    move-result-object v3

    .line 72
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ApplicationInfo;

    .line 73
    iget-object v5, p0, Lcom/android/settings/webview/WebViewAppPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v6, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 74
    invoke-virtual {p0, v2, v1, v6}, Lcom/android/settings/webview/WebViewAppPicker;->getDisabledReason(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 73
    invoke-virtual {p0, v1, v5, v4, v6}, Lcom/android/settings/webview/WebViewAppPicker;->createDefaultAppInfo(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;Ljava/lang/String;)Lcom/android/settingslib/applications/DefaultAppInfo;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 75
    goto :goto_0

    .line 76
    :cond_0
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getCurrentWebViewPackage()Landroid/content/pm/PackageInfo;

    move-result-object v0

    .line 82
    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0
.end method

.method getDisabledReason(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .line 153
    nop

    .line 154
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->getPackageInfosAllUsers(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 155
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/webkit/UserPackage;

    .line 156
    invoke-virtual {p3}, Landroid/webkit/UserPackage;->isInstalledPackage()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_0

    .line 158
    const p1, 0x7f120fa3    # @string/webview_uninstalled_for_user '(uninstalled for user %s)'

    new-array v0, v2, [Ljava/lang/Object;

    .line 159
    invoke-virtual {p3}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object p3, v0, v1

    .line 158
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 160
    :cond_0
    invoke-virtual {p3}, Landroid/webkit/UserPackage;->isEnabledPackage()Z

    move-result v0

    if-nez v0, :cond_1

    .line 162
    const p1, 0x7f120fa1    # @string/webview_disabled_for_user '(disabled for user %s)'

    new-array v0, v2, [Ljava/lang/Object;

    .line 163
    invoke-virtual {p3}, Landroid/webkit/UserPackage;->getUserInfo()Landroid/content/pm/UserInfo;

    move-result-object p3

    iget-object p3, p3, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object p3, v0, v1

    .line 162
    invoke-virtual {p2, p1, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 165
    :cond_1
    goto :goto_0

    .line 166
    :cond_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 117
    const/16 v0, 0x195

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 62
    const v0, 0x7f1500bb    # @xml/webview_app_settings 'res/xml/webview_app_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 55
    iget-object p1, p0, Lcom/android/settings/webview/WebViewAppPicker;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    if-nez p1, :cond_0

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 58
    :cond_0
    return-void
.end method

.method protected onSelectionPerformed(Z)V
    .locals 1

    .line 92
    if-eqz p1, :cond_2

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 94
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 95
    :goto_0
    if-eqz p1, :cond_1

    const-string v0, "android.settings.WEBVIEW_SETTINGS"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 100
    :cond_1
    goto :goto_1

    .line 101
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->showInvalidChoiceToast(Landroid/content/Context;)V

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/webview/WebViewAppPicker;->updateCandidates()V

    .line 104
    :goto_1
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 1

    .line 86
    invoke-direct {p0}, Lcom/android/settings/webview/WebViewAppPicker;->getWebViewUpdateServiceWrapper()Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/settings/webview/WebViewUpdateServiceWrapper;->setWebViewProvider(Ljava/lang/String;)Z

    move-result p1

    .line 87
    return p1
.end method

.method setWebViewUpdateServiceWrapper(Lcom/android/settings/webview/WebViewUpdateServiceWrapper;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/android/settings/webview/WebViewAppPicker;->mWebViewUpdateServiceWrapper:Lcom/android/settings/webview/WebViewUpdateServiceWrapper;

    .line 113
    return-void
.end method
