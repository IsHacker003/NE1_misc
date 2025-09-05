.class public Lcust/settings/sound/DefaultRingtonePreferenceSIM2;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreferenceSIM2.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcust/settings/sound/DefaultRingtonePreferenceSIM2;->setRingtoneType(I)V

    .line 21
    return-void
.end method


# virtual methods
.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .line 25
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 31
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 32
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 3

    .line 42
    const-string v0, "DefaultRingtonePreferenceSIM2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onRestoreRingtone: getRingtoneType() = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcust/settings/sound/DefaultRingtonePreferenceSIM2;->getRingtoneType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-virtual {p0}, Lcust/settings/sound/DefaultRingtonePreferenceSIM2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcust/settings/sound/DefaultRingtonePreferenceSIM2;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 3

    .line 36
    const-string v0, "DefaultRingtonePreferenceSIM2"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSaveRingtone = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    invoke-virtual {p0}, Lcust/settings/sound/DefaultRingtonePreferenceSIM2;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcust/settings/sound/DefaultRingtonePreferenceSIM2;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 38
    return-void
.end method
