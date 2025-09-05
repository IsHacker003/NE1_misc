.class public Lcom/android/settings/DefaultRingtonePreference;
.super Lcom/android/settings/RingtonePreference;
.source "DefaultRingtonePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RingtonePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    return-void
.end method


# virtual methods
.method public onPrepareRingtonePickerIntent(Landroid/content/Intent;)V
    .locals 2

    .line 35
    invoke-super {p0, p1}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 41
    const-string v0, "android.intent.extra.ringtone.SHOW_DEFAULT"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 42
    return-void
.end method

.method protected onRestoreRingtone()Landroid/net/Uri;
    .locals 2

    .line 51
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method protected onSaveRingtone(Landroid/net/Uri;)V
    .locals 2

    .line 46
    iget-object v0, p0, Lcom/android/settings/DefaultRingtonePreference;->mUserContext:Landroid/content/Context;

    invoke-virtual {p0}, Lcom/android/settings/DefaultRingtonePreference;->getRingtoneType()I

    move-result v1

    invoke-static {v0, v1, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 47
    return-void
.end method
