.class public Lcom/android/settings/notification/SoundSettings;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "SoundSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

.field static final STOP_SAMPLE:I = 0x1


# instance fields
.field private mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

.field final mHandler:Landroid/os/Handler;

.field private mHfpOutputControllerKey:Ljava/lang/String;

.field private mMediaOutputControllerKey:Ljava/lang/String;

.field private mRequestPreference:Lcom/android/settings/RingtonePreference;

.field final mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 296
    new-instance v0, Lcom/android/settings/notification/SoundSettings$2;

    invoke-direct {v0}, Lcom/android/settings/notification/SoundSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/notification/SoundSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/BaseSearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 53
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 64
    new-instance v0, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    .line 66
    new-instance v0, Lcom/android/settings/notification/SoundSettings$1;

    .line 67
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/notification/SoundSettings$1;-><init>(Lcom/android/settings/notification/SoundSettings;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHandler:Landroid/os/Handler;

    .line 66
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 0

    .line 53
    invoke-static {p0, p1, p2}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/android/settings/notification/SoundSettings;",
            "Lcom/android/settingslib/core/lifecycle/Lifecycle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 236
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 237
    new-instance v1, Lcom/android/settings/notification/ZenModePreferenceController;

    const-string v2, "zen_mode"

    invoke-direct {v1, p0, p2, v2}, Lcom/android/settings/notification/ZenModePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 242
    new-instance v1, Lcom/android/settings/notification/PhoneRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/PhoneRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 243
    new-instance v1, Lcust/settings/sound/PhoneRingtoneSIM2PreferenceController;

    invoke-direct {v1, p0}, Lcust/settings/sound/PhoneRingtoneSIM2PreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 244
    new-instance v1, Lcom/android/settings/notification/AlarmRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/AlarmRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 245
    new-instance v1, Lcom/android/settings/notification/NotificationRingtonePreferenceController;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/NotificationRingtonePreferenceController;-><init>(Landroid/content/Context;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 248
    new-instance v1, Lcom/android/settings/notification/WorkSoundPreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/WorkSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    new-instance v1, Lcom/android/settings/notification/DialPadTonePreferenceController;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/settings/notification/DialPadTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 253
    new-instance v2, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;

    invoke-direct {v2, p0, p1, p2}, Lcom/android/settings/notification/ScreenLockSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 255
    new-instance v3, Lcom/android/settings/notification/ChargingSoundPreferenceController;

    invoke-direct {v3, p0, p1, p2}, Lcom/android/settings/notification/ChargingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 257
    new-instance v4, Lcom/android/settings/notification/DockingSoundPreferenceController;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/settings/notification/DockingSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 259
    new-instance v5, Lcom/android/settings/notification/TouchSoundPreferenceController;

    invoke-direct {v5, p0, p1, p2}, Lcom/android/settings/notification/TouchSoundPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 261
    new-instance v6, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;

    invoke-direct {v6, p0, p1, p2}, Lcom/android/settings/notification/VibrateOnTouchPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 263
    new-instance v7, Lcom/android/settings/notification/DockAudioMediaPreferenceController;

    invoke-direct {v7, p0, p1, p2}, Lcom/android/settings/notification/DockAudioMediaPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 265
    new-instance v8, Lcom/android/settings/notification/BootSoundPreferenceController;

    invoke-direct {v8, p0}, Lcom/android/settings/notification/BootSoundPreferenceController;-><init>(Landroid/content/Context;)V

    .line 267
    new-instance v9, Lcom/android/settings/notification/EmergencyTonePreferenceController;

    invoke-direct {v9, p0, p1, p2}, Lcom/android/settings/notification/EmergencyTonePreferenceController;-><init>(Landroid/content/Context;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 270
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 271
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 272
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 273
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 274
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 275
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 276
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 277
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 278
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 279
    new-instance p1, Lcom/android/settings/widget/PreferenceCategoryController;

    const-string p2, "other_sounds_and_vibrations_category"

    invoke-direct {p1, p0, p2}, Lcom/android/settings/widget/PreferenceCategoryController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/16 p0, 0x9

    new-array p0, p0, [Lcom/android/settingslib/core/AbstractPreferenceController;

    const/4 p2, 0x0

    aput-object v1, p0, p2

    const/4 p2, 0x1

    aput-object v2, p0, p2

    const/4 p2, 0x2

    aput-object v3, p0, p2

    const/4 p2, 0x3

    aput-object v4, p0, p2

    const/4 p2, 0x4

    aput-object v5, p0, p2

    const/4 p2, 0x5

    aput-object v6, p0, p2

    const/4 p2, 0x6

    aput-object v7, p0, p2

    const/4 p2, 0x7

    aput-object v8, p0, p2

    const/16 p2, 0x8

    aput-object v9, p0, p2

    .line 281
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    .line 280
    invoke-virtual {p1, p0}, Lcom/android/settings/widget/PreferenceCategoryController;->setChildren(Ljava/util/List;)Lcom/android/settings/widget/PreferenceCategoryController;

    move-result-object p0

    .line 279
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 291
    return-object v0
.end method

.method public static synthetic lambda$onAttach$0(Lcom/android/settings/notification/SoundSettings;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    .line 189
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method public static synthetic lambda$onAttach$1(Lcom/android/settings/notification/SoundSettings;Landroid/support/v7/preference/ListPreference;)V
    .locals 0

    .line 192
    invoke-direct {p0, p1}, Lcom/android/settings/notification/SoundSettings;->onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V

    return-void
.end method

.method private onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V
    .locals 1

    .line 334
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->onListPreferenceUpdated(Landroid/support/v7/preference/ListPreference;)V

    .line 337
    :cond_0
    return-void
.end method


# virtual methods
.method protected createPreferenceControllers(Landroid/content/Context;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settingslib/core/AbstractPreferenceController;",
            ">;"
        }
    .end annotation

    .line 159
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/android/settings/notification/SoundSettings;->buildPreferenceControllers(Landroid/content/Context;Lcom/android/settings/notification/SoundSettings;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method enableWorkSync()V
    .locals 1

    .line 326
    const-class v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 327
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/WorkSoundPreferenceController;

    .line 328
    if-eqz v0, :cond_0

    .line 329
    invoke-virtual {v0}, Lcom/android/settings/notification/WorkSoundPreferenceController;->enableWorkSync()V

    .line 331
    :cond_0
    return-void
.end method

.method public getHelpResource()I
    .locals 1

    .line 106
    const v0, 0x7f120714    # @string/help_url_sound ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 149
    const-string v0, "SoundSettings"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 85
    const/16 v0, 0x150

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 154
    const v0, 0x7f15009d    # @xml/sound_settings 'res/xml/sound_settings.xml'

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/RingtonePreference;->onActivityResult(IILandroid/content/Intent;)Z

    .line 166
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 168
    :cond_0
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 180
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 181
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 182
    const-class v0, Lcom/android/settings/notification/AlarmVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 183
    const-class v0, Lcom/android/settings/notification/MediaVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    const-class v0, Lcom/android/settings/notification/RingVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 185
    const-class v0, Lcom/android/settings/notification/NotificationVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 186
    const-class v0, Lcom/android/settings/notification/CallVolumePreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 188
    const-class v0, Lcom/android/settings/sound/MediaOutputPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/MediaOutputPreferenceController;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$jhjL65jex6M9bCQGfPcGogvuH7o;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/MediaOutputPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V

    .line 190
    const-class v0, Lcom/android/settings/sound/MediaOutputPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/MediaOutputPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/sound/MediaOutputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mMediaOutputControllerKey:Ljava/lang/String;

    .line 191
    const-class v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    new-instance v1, Lcom/android/settings/notification/-$$Lambda$SoundSettings$P7n4dsft5tPdi8YUFcItX8K9whw;

    invoke-direct {v1, p0}, Lcom/android/settings/notification/-$$Lambda$SoundSettings$P7n4dsft5tPdi8YUFcItX8K9whw;-><init>(Lcom/android/settings/notification/SoundSettings;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V

    .line 193
    const-class v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    .line 194
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/SoundSettings;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object v0

    check-cast v0, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/sound/HandsFreeProfileOutputPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;

    .line 197
    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0, v1}, Lcom/android/settings/notification/VolumeSeekBarPreferenceController;->setCallback(Lcom/android/settings/notification/VolumeSeekBarPreference$Callback;)V

    .line 198
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 199
    goto :goto_0

    .line 200
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onCreate(Landroid/os/Bundle;)V

    .line 91
    if-eqz p1, :cond_1

    .line 92
    const-string v0, "selected_preference"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 93
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/SoundSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 97
    :cond_0
    nop

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v0, "SoundSettings"

    .line 99
    invoke-virtual {p1, v0}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 100
    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 102
    :cond_1
    return-void
.end method

.method public onDisplayPreferenceDialog(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 133
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mHfpOutputControllerKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 134
    const/16 v0, 0x588

    goto :goto_0

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mMediaOutputControllerKey:Ljava/lang/String;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 136
    const/16 v0, 0x587

    goto :goto_0

    .line 138
    :cond_1
    nop

    .line 141
    move v0, v1

    .line 142
    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->newInstance(Ljava/lang/String;I)Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    .line 143
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p1, p0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 144
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mDialogFragment:Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;

    invoke-virtual {p0}, Lcom/android/settings/notification/SoundSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "SoundSettings"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/widget/UpdatableListPreferenceDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 145
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 111
    invoke-super {p0}, Lcom/android/settings/dashboard/DashboardFragment;->onPause()V

    .line 112
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mVolumeCallback:Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;

    invoke-virtual {v0}, Lcom/android/settings/notification/SoundSettings$VolumePreferenceCallback;->stopSample()V

    .line 113
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 117
    instance-of v0, p1, Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 118
    check-cast p1, Lcom/android/settings/RingtonePreference;

    iput-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 119
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v0}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/RingtonePreference;->onPrepareRingtonePickerIntent(Landroid/content/Intent;)V

    .line 120
    iget-object p1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 121
    invoke-virtual {p1}, Lcom/android/settings/RingtonePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const/16 v0, 0xc8

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    .line 124
    invoke-virtual {v2}, Lcom/android/settings/RingtonePreference;->getUserId()I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v2

    .line 120
    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/android/settings/notification/SoundSettings;->startActivityForResultAsUser(Landroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)V

    .line 125
    const/4 p1, 0x1

    return p1

    .line 127
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 173
    iget-object v0, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    if-eqz v0, :cond_0

    .line 174
    const-string v0, "selected_preference"

    iget-object v1, p0, Lcom/android/settings/notification/SoundSettings;->mRequestPreference:Lcom/android/settings/RingtonePreference;

    invoke-virtual {v1}, Lcom/android/settings/RingtonePreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method
