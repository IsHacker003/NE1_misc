.class public Lcust/settings/sound/PhoneRingtoneSIM2PreferenceController;
.super Lcom/android/settings/notification/RingtonePreferenceControllerBase;
.source "PhoneRingtoneSIM2PreferenceController.java"


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
    const-string v0, "ringtone_sim2"

    return-object v0
.end method

.method public getRingtoneType()I
    .locals 1

    .line 45
    const/16 v0, 0x8

    return v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 40
    iget-object v0, p0, Lcust/settings/sound/PhoneRingtoneSIM2PreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/Utils;->isSIM2PhoneRingtoneEnable(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method
