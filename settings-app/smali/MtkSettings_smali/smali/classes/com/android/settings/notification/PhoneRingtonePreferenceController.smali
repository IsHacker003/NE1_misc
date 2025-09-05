.class public Lcom/android/settings/notification/PhoneRingtonePreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "PhoneRingtonePreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;-><init>(Landroid/content/Context;)V

    .line 31
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 35
    const-string v0, "ringtone"

    return-object v0
.end method

.method public getRingtoneType()I
    .locals 1

    .line 45
    const/4 v0, 0x1

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/notification/PhoneRingtonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 50
    invoke-super {p0, p1}, Lcom/android/settings/notification/RingtonePreferenceControllerBase;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 52
    iget-object v0, p0, Lcom/android/settings/notification/PhoneRingtonePreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSIM2PhoneRingtoneEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    const v0, 0x7f120b53    # @string/ringtone_sim1_title 'Phone ringtone (SIM1)'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 56
    :cond_0
    return-void
.end method
