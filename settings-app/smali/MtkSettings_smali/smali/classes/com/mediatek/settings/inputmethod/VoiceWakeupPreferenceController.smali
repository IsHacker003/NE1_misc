.class public Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "VoiceWakeupPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 41
    iput-object p1, p0, Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method private isWakeupSupport(Landroid/content/Context;)Z
    .locals 2

    .line 68
    const-string v0, "audio"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    const-string p1, "VoiceWakeupPreferenceController"

    const-string v1, "isWakeupSupport get audio service is null"

    invoke-static {p1, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return v0

    .line 73
    :cond_0
    const-string v1, "MTK_VOW_SUPPORT"

    invoke-virtual {p1, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    if-eqz p1, :cond_1

    .line 75
    const-string v0, "MTK_VOW_SUPPORT=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 77
    :cond_1
    return v0
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 51
    const-string v0, "voice_ui"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;->isWakeupSupport(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 56
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.mediatek.voicecommand.VOICE_CONTROL_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 57
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 58
    iget-object v1, p0, Lcom/mediatek/settings/inputmethod/VoiceWakeupPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 60
    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 61
    :cond_1
    :goto_0
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 65
    :goto_1
    return-void
.end method
