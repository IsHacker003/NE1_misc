.class public Lcust/settings/sound/SetRingtone;
.super Landroid/preference/PreferenceActivity;
.source "SetRingtone.java"


# instance fields
.field private mRingtoneSim1:Landroid/preference/Preference;

.field private mRingtoneSim2:Landroid/preference/Preference;

.field private mRingtoneUri:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    return-void
.end method

.method private showAsUIMItem()Z
    .locals 1

    .line 87
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 42
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    :try_start_0
    invoke-virtual {p0}, Lcust/settings/sound/SetRingtone;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "callringUri"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    goto :goto_0

    .line 46
    :catch_0
    move-exception p1

    .line 47
    const-string v0, "SetRingtone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get Uri error: e:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    :goto_0
    const p1, 0x7f150095    # @xml/set_ringtone 'res/xml/set_ringtone.xml'

    invoke-virtual {p0, p1}, Lcust/settings/sound/SetRingtone;->addPreferencesFromResource(I)V

    .line 51
    const-string p1, "ringtone_sim1"

    invoke-virtual {p0, p1}, Lcust/settings/sound/SetRingtone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneSim1:Landroid/preference/Preference;

    .line 52
    invoke-direct {p0}, Lcust/settings/sound/SetRingtone;->showAsUIMItem()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 53
    iget-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneSim1:Landroid/preference/Preference;

    const v0, 0x7f120b58    # @string/ringtone_title_uim1 'UIM1 Phone ringtone'

    invoke-virtual {p1, v0}, Landroid/preference/Preference;->setTitle(I)V

    .line 55
    :cond_0
    const-string p1, "ringtone_sim2"

    invoke-virtual {p0, p1}, Lcust/settings/sound/SetRingtone;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneSim2:Landroid/preference/Preference;

    .line 56
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 2

    .line 60
    invoke-static {}, Lcust/settings/sound/SetRingtoneReceiver;->updateDB()V

    .line 61
    iget-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneSim1:Landroid/preference/Preference;

    const/4 v0, 0x1

    if-ne p2, p1, :cond_0

    .line 62
    const-string p1, "SetRingtone"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM1 Phone ringtone"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    iget-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {p0, v0, p1}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    goto :goto_0

    .line 64
    :cond_0
    iget-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneSim2:Landroid/preference/Preference;

    if-ne p2, p1, :cond_1

    .line 65
    const-string p1, "SetRingtone"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM2 Phone ringtone"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 66
    const/16 p1, 0x8

    iget-object p2, p0, Lcust/settings/sound/SetRingtone;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {p0, p1, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 69
    :cond_1
    :goto_0
    iget-object p1, p0, Lcust/settings/sound/SetRingtone;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {p1}, Lcust/settings/sound/SetRingtoneReceiver;->toastMessage(Landroid/net/Uri;)V

    .line 71
    invoke-virtual {p0}, Lcust/settings/sound/SetRingtone;->finish()V

    .line 72
    return v0
.end method
