.class public Lcom/android/settings/system/SystemUpdatePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SystemUpdatePreferenceController.java"


# static fields
.field private static final KEY_SYSTEM_UPDATE_SETTINGS:Ljava/lang/String; = "system_update_settings"

.field private static final TAG:Ljava/lang/String; = "SysUpdatePrefContr"


# instance fields
.field private final mUm:Landroid/os/UserManager;

.field private final mUpdateManager:Landroid/os/SystemUpdateManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    const-string v0, "system_update_settings"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 52
    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 53
    const-string v0, "system_update"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/SystemUpdateManager;

    iput-object p1, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUpdateManager:Landroid/os/SystemUpdateManager;

    .line 54
    return-void
.end method

.method private ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V
    .locals 6

    .line 142
    const-string v0, "ci_action_on_sys_update_intent_string"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 144
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 145
    const-string v1, "ci_action_on_sys_update_extra_string"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 147
    const-string v2, "ci_action_on_sys_update_extra_val_string"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 150
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 152
    invoke-virtual {v2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 154
    :cond_0
    const-string v3, "SysUpdatePrefContr"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "ciActionOnSysUpdate: broadcasting intent "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " with extra "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    iget-object p1, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 158
    :cond_1
    return-void
.end method

.method public static synthetic lambda$getSummary$0(Lcom/android/settings/system/SystemUpdatePreferenceController;)Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUpdateManager:Landroid/os/SystemUpdateManager;

    invoke-virtual {v0}, Landroid/os/SystemUpdateManager;->retrieveSystemUpdateInfo()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 81
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 82
    invoke-virtual {p0}, Lcom/android/settings/system/SystemUpdatePreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/system/SystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    .line 83
    invoke-static {v0, p1, v1, v2}, Lcom/android/settings/Utils;->updatePreferenceToSpecificActivityOrRemove(Landroid/content/Context;Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 87
    :cond_0
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 3

    .line 66
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    .line 65
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050038    # @bool/config_show_system_update_settings 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mUm:Landroid/os/UserManager;

    .line 66
    invoke-virtual {v0}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 67
    const/4 v0, 0x0

    goto :goto_0

    .line 68
    :cond_0
    nop

    .line 69
    move v0, v1

    :goto_0
    if-nez v0, :cond_1

    .line 70
    iget-object v2, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcust/settings/CustomizedUtils;->isInDemoMode(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    nop

    .line 72
    const-string v0, "SysUpdatePrefContr"

    const-string v2, "SysUpdatePrefContr is unavailable for Demo Mode."

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    move v0, v1

    :cond_1
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 7

    .line 105
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const v3, 0x7f1200f0    # @string/android_version_summary 'Updated to Android %1$s'

    invoke-virtual {v0, v3, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 107
    new-instance v2, Ljava/util/concurrent/FutureTask;

    new-instance v5, Lcom/android/settings/system/-$$Lambda$SystemUpdatePreferenceController$XHnSEfghEOzLX1wZid9rCEinHuU;

    invoke-direct {v5, p0}, Lcom/android/settings/system/-$$Lambda$SystemUpdatePreferenceController$XHnSEfghEOzLX1wZid9rCEinHuU;-><init>(Lcom/android/settings/system/SystemUpdatePreferenceController;)V

    invoke-direct {v2, v5}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 112
    :try_start_0
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->run()V

    .line 113
    invoke-virtual {v2}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 118
    const-string v5, "status"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v5

    packed-switch v5, :pswitch_data_0

    goto :goto_0

    .line 123
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1200ef    # @string/android_version_pending_update_summary 'Update available'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 124
    goto :goto_0

    .line 126
    :pswitch_1
    const-string v5, "SysUpdatePrefContr"

    const-string v6, "Update statue unknown"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :pswitch_2
    const-string v5, "title"

    invoke-virtual {v2, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 130
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v4

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 135
    :cond_0
    :goto_0
    return-object v0

    .line 114
    :catch_0
    move-exception v1

    .line 115
    const-string v1, "SysUpdatePrefContr"

    const-string v2, "Error getting system update info."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/system/SystemUpdatePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 92
    iget-object p1, p0, Lcom/android/settings/system/SystemUpdatePreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "carrier_config"

    .line 93
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    .line 94
    invoke-virtual {p1}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p1

    .line 95
    if-eqz p1, :cond_0

    const-string v0, "ci_action_on_sys_update_bool"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    invoke-direct {p0, p1}, Lcom/android/settings/system/SystemUpdatePreferenceController;->ciActionOnSysUpdate(Landroid/os/PersistableBundle;)V

    .line 100
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
