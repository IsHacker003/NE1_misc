.class public Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "ResetAppPrefPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# instance fields
.field private mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    new-instance v0, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    .line 39
    if-eqz p2, :cond_0

    .line 40
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 42
    :cond_0
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 60
    const-string v0, "reset_app_prefs"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 46
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 47
    const/4 p1, 0x0

    return p1

    .line 49
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->buildResetDialog()V

    .line 50
    const/4 p1, 0x1

    return p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 55
    const/4 v0, 0x1

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 66
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ResetAppPrefPreferenceController;->mResetAppsHelper:Lcom/android/settings/applications/manageapplications/ResetAppsHelper;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/manageapplications/ResetAppsHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 71
    return-void
.end method
