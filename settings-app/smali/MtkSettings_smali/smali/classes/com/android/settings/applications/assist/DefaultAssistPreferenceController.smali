.class public Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultAssistPreferenceController.java"


# instance fields
.field private final mAssistUtils:Lcom/android/internal/app/AssistUtils;

.field private final mPrefKey:Ljava/lang/String;

.field private final mShowSetting:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 44
    iput-object p2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPrefKey:Ljava/lang/String;

    .line 45
    iput-boolean p3, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mShowSetting:Z

    .line 46
    new-instance p2, Lcom/android/internal/app/AssistUtils;

    invoke-direct {p2, p1}, Lcom/android/internal/app/AssistUtils;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    .line 47
    return-void
.end method


# virtual methods
.method getAssistSettingsActivity(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;
    .locals 0

    .line 96
    new-instance p1, Landroid/service/voice/VoiceInteractionServiceInfo;

    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    invoke-direct {p1, p3, p2}, Landroid/service/voice/VoiceInteractionServiceInfo;-><init>(Landroid/content/pm/PackageManager;Landroid/content/pm/ServiceInfo;)V

    .line 98
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSupportsAssist()Z

    move-result p2

    if-nez p2, :cond_0

    .line 99
    const/4 p1, 0x0

    return-object p1

    .line 101
    :cond_0
    invoke-virtual {p1}, Landroid/service/voice/VoiceInteractionServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 5

    .line 87
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object v0

    .line 88
    if-nez v0, :cond_0

    .line 89
    const/4 v0, 0x0

    return-object v0

    .line 91
    :cond_0
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mUserId:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    return-object v1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 82
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPrefKey:Ljava/lang/String;

    return-object v0
.end method

.method protected getSettingIntent(Lcom/android/settingslib/applications/DefaultAppInfo;)Landroid/content/Intent;
    .locals 4

    .line 51
    iget-boolean p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mShowSetting:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 52
    return-object v0

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mAssistUtils:Lcom/android/internal/app/AssistUtils;

    iget v1, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mUserId:I

    invoke-virtual {p1, v1}, Lcom/android/internal/app/AssistUtils;->getAssistComponentForUser(I)Landroid/content/ComponentName;

    move-result-object p1

    .line 55
    if-nez p1, :cond_1

    .line 56
    return-object v0

    .line 58
    :cond_1
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.service.voice.VoiceInteractionService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 59
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 61
    iget-object v2, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v2}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 62
    const/16 v3, 0x80

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 64
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    .line 67
    :cond_2
    const/4 v3, 0x0

    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, v1, v2}, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->getAssistSettingsActivity(Landroid/content/ComponentName;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v1

    .line 68
    if-nez v1, :cond_3

    .line 69
    return-object v0

    .line 71
    :cond_3
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v2, Landroid/content/ComponentName;

    .line 72
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v2, p1, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p1

    .line 71
    return-object p1

    .line 65
    :cond_4
    :goto_0
    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 77
    iget-object v0, p0, Lcom/android/settings/applications/assist/DefaultAssistPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050018    # @bool/config_show_assist_and_voice_input 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method
