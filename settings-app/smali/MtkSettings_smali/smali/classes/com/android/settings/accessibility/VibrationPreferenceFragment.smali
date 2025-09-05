.class public abstract Lcom/android/settings/accessibility/VibrationPreferenceFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "VibrationPreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;,
        Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;
    }
.end annotation


# static fields
.field static final KEY_INTENSITY_HIGH:Ljava/lang/String; = "intensity_high"

.field static final KEY_INTENSITY_LOW:Ljava/lang/String; = "intensity_low"

.field static final KEY_INTENSITY_MEDIUM:Ljava/lang/String; = "intensity_medium"

.field static final KEY_INTENSITY_OFF:Ljava/lang/String; = "intensity_off"

.field static final KEY_INTENSITY_ON:Ljava/lang/String; = "intensity_on"


# instance fields
.field private final mCandidates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 65
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    .line 66
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    .line 67
    new-instance v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    .line 68
    return-void
.end method

.method private loadCandidates(Landroid/content/Context;)V
    .locals 5

    .line 80
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f05004a    # @bool/config_vibration_supports_multiple_intensities 'false'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    .line 82
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 83
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v1, "intensity_off"

    new-instance v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v3, "intensity_off"

    const v4, 0x7f120081    # @string/accessibility_vibration_intensity_off 'Off'

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v0, "intensity_low"

    new-instance v1, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v2, "intensity_low"

    const v3, 0x7f12007f    # @string/accessibility_vibration_intensity_low 'Low'

    const/4 v4, 0x1

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v0, "intensity_medium"

    new-instance v1, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v2, "intensity_medium"

    const v3, 0x7f120080    # @string/accessibility_vibration_intensity_medium 'Medium'

    const/4 v4, 0x2

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v0, "intensity_high"

    new-instance v1, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v2, "intensity_high"

    const v3, 0x7f12007e    # @string/accessibility_vibration_intensity_high 'High'

    const/4 v4, 0x3

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 100
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v1, "intensity_off"

    new-instance v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v3, "intensity_off"

    const v4, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-direct {v2, p0, v3, v4, v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    invoke-interface {p1, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    iget-object p1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    const-string v0, "intensity_on"

    new-instance v1, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    const-string v2, "intensity_on"

    const v3, 0x7f120db8    # @string/switch_on_text 'On'

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getDefaultVibrationIntensity()I

    move-result v4

    invoke-direct {v1, p0, v2, v3, v4}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;-><init>(Lcom/android/settings/accessibility/VibrationPreferenceFragment;Ljava/lang/String;II)V

    .line 103
    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    :goto_0
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 151
    sget-object v1, Lcom/android/settings/accessibility/-$$Lambda$_Oh9z60fg9jQX72D1CuzQSHZqtM;->INSTANCE:Lcom/android/settings/accessibility/-$$Lambda$_Oh9z60fg9jQX72D1CuzQSHZqtM;

    .line 152
    invoke-static {v1}, Ljava/util/Comparator;->comparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Comparator;->reversed()Ljava/util/Comparator;

    move-result-object v1

    .line 151
    invoke-interface {v0, v1}, Ljava/util/List;->sort(Ljava/util/Comparator;)V

    .line 153
    return-object v0
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 8

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getDefaultVibrationIntensity()I

    move-result v2

    .line 158
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 160
    iget-object v1, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    .line 161
    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v3, v0, :cond_0

    .line 162
    move v3, v5

    goto :goto_1

    .line 161
    :cond_0
    nop

    .line 162
    move v3, v4

    :goto_1
    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v6

    const-string v7, "intensity_on"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    if-eqz v0, :cond_1

    .line 164
    move v4, v5

    goto :goto_2

    .line 162
    :cond_1
    nop

    .line 164
    :goto_2
    if-nez v3, :cond_3

    if-eqz v4, :cond_2

    goto :goto_3

    .line 167
    :cond_2
    goto :goto_0

    .line 165
    :cond_3
    :goto_3
    invoke-virtual {v2}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 168
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getDefaultVibrationIntensity()I
.end method

.method protected getPreviewVibrationAudioAttributesUsage()I
    .locals 1

    .line 145
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getVibrationIntensitySetting()Ljava/lang/String;
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 72
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onAttach(Landroid/content/Context;)V

    .line 73
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->register()V

    .line 74
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->loadCandidates(Landroid/content/Context;)V

    .line 77
    :cond_0
    return-void
.end method

.method public onDetach()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onDetach()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mSettingsObserver:Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$SettingsObserver;->unregister()V

    .line 113
    return-void
.end method

.method protected onVibrationIntensitySelected(I)V
    .locals 0

    .line 128
    return-void
.end method

.method protected playVibrationPreview()V
    .locals 4

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/Vibrator;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 135
    const/4 v1, 0x0

    invoke-static {v1}, Landroid/os/VibrationEffect;->get(I)Landroid/os/VibrationEffect;

    move-result-object v1

    .line 136
    new-instance v2, Landroid/media/AudioAttributes$Builder;

    invoke-direct {v2}, Landroid/media/AudioAttributes$Builder;-><init>()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getPreviewVibrationAudioAttributesUsage()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/media/AudioAttributes$Builder;->setUsage(I)Landroid/media/AudioAttributes$Builder;

    .line 138
    invoke-virtual {v2}, Landroid/media/AudioAttributes$Builder;->build()Landroid/media/AudioAttributes;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Vibrator;->vibrate(Landroid/os/VibrationEffect;Landroid/media/AudioAttributes;)V

    .line 139
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->mCandidates:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;

    .line 174
    if-nez v0, :cond_0

    .line 175
    const-string v0, "VibrationPreferenceFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Tried to set unknown intensity (key="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ")!"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 p1, 0x0

    return p1

    .line 178
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->getVibrationIntensitySetting()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result v2

    .line 178
    invoke-static {p1, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 180
    invoke-virtual {v0}, Lcom/android/settings/accessibility/VibrationPreferenceFragment$VibrationIntensityCandidateInfo;->getIntensity()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/VibrationPreferenceFragment;->onVibrationIntensitySelected(I)V

    .line 181
    const/4 p1, 0x1

    return p1
.end method
