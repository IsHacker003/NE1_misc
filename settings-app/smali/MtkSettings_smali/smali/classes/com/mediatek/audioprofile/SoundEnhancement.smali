.class public Lcom/mediatek/audioprofile/SoundEnhancement;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SoundEnhancement.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAncPref:Landroid/support/v14/preference/SwitchPreference;

.field private mAudenhState:Ljava/lang/String;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBesLoudnessPref:Landroid/support/v14/preference/SwitchPreference;

.field private mContext:Landroid/content/Context;

.field private mHifiModePref:Landroid/support/v14/preference/SwitchPreference;

.field private mMusicPlusPrf:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 255
    new-instance v0, Lcom/mediatek/audioprofile/SoundEnhancement$1;

    invoke-direct {v0}, Lcom/mediatek/audioprofile/SoundEnhancement$1;-><init>()V

    sput-object v0, Lcom/mediatek/audioprofile/SoundEnhancement;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 60
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 65
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    .line 112
    iput-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    return-void
.end method

.method private updatePreferenceHierarchy()V
    .locals 4

    .line 163
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    const-string v1, "MTK_AUDENH_SUPPORT=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 164
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "GetMusicPlusStatus"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 165
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get the state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    nop

    .line 167
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 168
    const-string v2, "GetMusicPlusStatus=1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 171
    move v1, v0

    goto :goto_0

    .line 169
    :cond_0
    nop

    .line 171
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 175
    :cond_2
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 176
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "GetBesLoudnessStatus"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get besloudness state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/support/v14/preference/SwitchPreference;

    const-string v2, "GetBesLoudnessStatus=1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 181
    :cond_3
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_ANC_SUPPORT:Z

    if-eqz v0, :cond_4

    .line 182
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "ANC_UI"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 183
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANC state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    const-string v1, "ANC_UI=on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 185
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAncPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 188
    :cond_4
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_HIFI_AUDIO_SUPPORT:Z

    if-eqz v0, :cond_5

    .line 189
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v1, "hifi_dac"

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 190
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "HiFi state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    const-string v1, "hifi_dac=on"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 192
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mHifiModePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 194
    :cond_5
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 274
    const/16 v0, 0x150

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 120
    const-string v0, "@M_SoundEnhancement"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 121
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 122
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mContext:Landroid/content/Context;

    .line 124
    const-string p1, "audio"

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    .line 126
    iget-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    const-string v0, "MTK_AUDENH_SUPPORT"

    invoke-virtual {p1, v0}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    .line 127
    const-string p1, "@M_SoundEnhancement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AudENH state: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    .line 129
    if-eqz p1, :cond_0

    .line 130
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 132
    :cond_0
    const p1, 0x7f15001f    # @xml/audioprofile_sound_enhancement 'res/xml/audioprofile_sound_enhancement.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->addPreferencesFromResource(I)V

    .line 135
    const-string p1, "music_plus"

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/support/v14/preference/SwitchPreference;

    .line 136
    const-string p1, "bes_loudness"

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/support/v14/preference/SwitchPreference;

    .line 137
    const-string p1, "anc_switch"

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAncPref:Landroid/support/v14/preference/SwitchPreference;

    .line 138
    const-string p1, "hifi_mode"

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mHifiModePref:Landroid/support/v14/preference/SwitchPreference;

    .line 140
    iget-object p1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    const-string v0, "MTK_AUDENH_SUPPORT=true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_1

    .line 141
    const-string p1, "@M_SoundEnhancement"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "remove audio enhance preference "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 144
    :cond_1
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    if-nez p1, :cond_2

    .line 145
    const-string p1, "@M_SoundEnhancement"

    const-string v0, "feature option is off, remove BesLoudness preference"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 148
    :cond_2
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_ANC_SUPPORT:Z

    if-nez p1, :cond_3

    .line 149
    const-string p1, "@M_SoundEnhancement"

    const-string v0, "feature option is off, remove ANC preference"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAncPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 152
    :cond_3
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_HIFI_AUDIO_SUPPORT:Z

    if-nez p1, :cond_4

    .line 153
    const-string p1, "@M_SoundEnhancement"

    const-string v0, "feature option is off, remove HiFi preference"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mHifiModePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 156
    :cond_4
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Lcom/mediatek/audioprofile/SoundEnhancement;->setHasOptionsMenu(Z)V

    .line 158
    invoke-virtual {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120cd1    # @string/sound_enhancement_title 'Sound enhancement'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 159
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 216
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudenhState:Ljava/lang/String;

    const-string v1, "MTK_AUDENH_SUPPORT=true"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 217
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mMusicPlusPrf:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 218
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 219
    if-eqz v0, :cond_0

    const-string v0, "SetMusicPlusStatus=1"

    goto :goto_0

    :cond_0
    const-string v0, "SetMusicPlusStatus=0"

    .line 220
    :goto_0
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about music plus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 225
    :cond_1
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_BESLOUDNESS_SUPPORT:Z

    if-eqz v0, :cond_3

    .line 226
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mBesLoudnessPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 227
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 228
    if-eqz v0, :cond_2

    const-string v0, "SetBesLoudnessStatus=1"

    goto :goto_1

    :cond_2
    const-string v0, "SetBesLoudnessStatus=0"

    .line 229
    :goto_1
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about besloudness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 234
    :cond_3
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_ANC_SUPPORT:Z

    if-eqz v0, :cond_5

    .line 235
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAncPref:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_5

    .line 236
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 237
    if-eqz v0, :cond_4

    const-string v0, "ANC_UI=on"

    goto :goto_2

    :cond_4
    const-string v0, "ANC_UI=off"

    .line 238
    :goto_2
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about besloudness: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 243
    :cond_5
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_HIFI_AUDIO_SUPPORT:Z

    if-eqz v0, :cond_7

    .line 244
    iget-object v0, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mHifiModePref:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_7

    .line 245
    move-object v0, p1

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 246
    if-eqz v0, :cond_6

    const-string v0, "hifi_dac=on"

    goto :goto_3

    :cond_6
    const-string v0, "hifi_dac=off"

    .line 247
    :goto_3
    const-string v1, "@M_SoundEnhancement"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " set command about hifi mode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v1, p0, Lcom/mediatek/audioprofile/SoundEnhancement;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->setParameters(Ljava/lang/String;)V

    .line 252
    :cond_7
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 201
    const-string v0, "@M_SoundEnhancement"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 203
    invoke-direct {p0}, Lcom/mediatek/audioprofile/SoundEnhancement;->updatePreferenceHierarchy()V

    .line 204
    return-void
.end method
