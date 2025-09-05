.class public Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;
.super Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;
.source "ShortcutManagerThrottlingPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mShortcutService:Landroid/content/pm/IShortcutService;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/development/DeveloperOptionsPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->getShortCutService()Landroid/content/pm/IShortcutService;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    .line 45
    return-void
.end method

.method private getShortCutService()Landroid/content/pm/IShortcutService;
    .locals 1

    .line 76
    :try_start_0
    const-string v0, "shortcut"

    .line 77
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 76
    invoke-static {v0}, Landroid/content/pm/IShortcutService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IShortcutService;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/VerifyError; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 78
    :catch_0
    move-exception v0

    .line 80
    const/4 v0, 0x0

    return-object v0
.end method

.method private resetShortcutManagerThrottling()V
    .locals 3

    .line 62
    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    if-nez v0, :cond_0

    .line 63
    return-void

    .line 66
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mShortcutService:Landroid/content/pm/IShortcutService;

    invoke-interface {v0}, Landroid/content/pm/IShortcutService;->resetThrottling()V

    .line 67
    iget-object v0, p0, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120b34    # @string/reset_shortcut_manager_throttling_complete 'ShortcutManager rate-limiting has been reset'

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 68
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    goto :goto_0

    .line 69
    :catch_0
    move-exception v0

    .line 70
    const-string v1, "ShortcutMgrPrefCtrl"

    const-string v2, "Failed to reset rate limiting"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 72
    :goto_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "reset_shortcut_manager_throttling"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 54
    const-string v0, "reset_shortcut_manager_throttling"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 55
    const/4 p1, 0x0

    return p1

    .line 57
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/development/ShortcutManagerThrottlingPreferenceController;->resetShortcutManagerThrottling()V

    .line 58
    const/4 p1, 0x1

    return p1
.end method
