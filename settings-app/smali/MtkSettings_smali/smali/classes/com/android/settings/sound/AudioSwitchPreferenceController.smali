.class public abstract Lcom/android/settings/sound/AudioSwitchPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "AudioSwitchPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settingslib/bluetooth/BluetoothCallback;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStart;
.implements Lcom/android/settingslib/core/lifecycle/events/OnStop;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;,
        Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;
    }
.end annotation


# static fields
.field private static final INVALID_INDEX:I = -0x1

.field private static final TAG:Ljava/lang/String; = "AudioSwitchPreferenceController"


# instance fields
.field protected final mAudioManager:Landroid/media/AudioManager;

.field private final mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

.field protected mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

.field protected final mConnectedDevices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field protected final mMediaRouter:Landroid/media/MediaRouter;

.field private final mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

.field protected mPreference:Landroid/support/v7/preference/Preference;

.field protected mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

.field protected mSelectedIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 99
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 100
    const-string p2, "audio"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/media/AudioManager;

    iput-object p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    .line 101
    const-string p2, "media_router"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/MediaRouter;

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    .line 102
    new-instance p1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mHandler:Landroid/os/Handler;

    .line 103
    new-instance p1, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    .line 104
    new-instance p1, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    .line 105
    new-instance p1, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    invoke-direct {p1, p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;Lcom/android/settings/sound/AudioSwitchPreferenceController$1;)V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    .line 106
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    .line 107
    new-instance p1, Ljava/util/concurrent/FutureTask;

    new-instance p2, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;

    invoke-direct {p2, p0}, Lcom/android/settings/sound/-$$Lambda$AudioSwitchPreferenceController$GC_sYSWqqCmy3hCGLKM8AEFN_-Y;-><init>(Lcom/android/settings/sound/AudioSwitchPreferenceController;)V

    invoke-direct {p1, p2}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 111
    :try_start_0
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->run()V

    .line 112
    invoke-virtual {p1}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez p1, :cond_0

    .line 118
    const-string p1, "AudioSwitchPreferenceController"

    const-string p2, "Bluetooth is not supported on this device"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    return-void

    .line 121
    :cond_0
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 122
    return-void

    .line 113
    :catch_0
    move-exception p1

    .line 114
    const-string p2, "AudioSwitchPreferenceController"

    const-string v0, "Error getting LocalBluetoothManager."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 115
    return-void
.end method

.method private getConnectedDeviceIndex(Ljava/lang/String;)I
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 380
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    :goto_0
    if-ge v0, v1, :cond_1

    .line 381
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 382
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 383
    return v0

    .line 380
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 387
    :cond_1
    const/4 p1, -0x1

    return p1
.end method

.method public static synthetic lambda$new$0(Lcom/android/settings/sound/AudioSwitchPreferenceController;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 109
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object v0

    return-object v0
.end method

.method private register()V
    .locals 3

    .line 391
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2}, Landroid/media/AudioManager;->registerAudioDeviceCallback(Landroid/media/AudioDeviceCallback;Landroid/os/Handler;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    const/4 v2, 0x4

    invoke-virtual {v0, v2, v1}, Landroid/media/MediaRouter;->addCallback(ILandroid/media/MediaRouter$Callback;)V

    .line 396
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.HEADSET_PLUG"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 397
    const-string v1, "android.media.STREAM_DEVICES_CHANGED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 398
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    return-void
.end method

.method private unregister()V
    .locals 2

    .line 402
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getEventManager()Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->unregisterCallback(Lcom/android/settingslib/bluetooth/BluetoothCallback;)V

    .line 403
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManagerAudioDeviceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioManagerAudioDeviceCallback;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->unregisterAudioDeviceCallback(Landroid/media/AudioDeviceCallback;)V

    .line 404
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouter:Landroid/media/MediaRouter;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mMediaRouterCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$MediaRouterCallback;

    invoke-virtual {v0, v1}, Landroid/media/MediaRouter;->removeCallback(Landroid/media/MediaRouter$Callback;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mReceiver:Lcom/android/settings/sound/AudioSwitchPreferenceController$WiredHeadsetBroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 406
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 166
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 167
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreferenceKey:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 168
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setVisible(Z)V

    .line 169
    return-void
.end method

.method protected findActiveDevice(I)Landroid/bluetooth/BluetoothDevice;
    .locals 3

    .line 320
    const/4 v0, 0x0

    const/4 v1, 0x3

    if-eq p1, v1, :cond_0

    if-eqz p1, :cond_0

    .line 321
    return-object v0

    .line 323
    :cond_0
    const/16 v2, 0x380

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 324
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 325
    :cond_1
    const/4 v1, 0x0

    const/16 v2, 0x70

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 326
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object p1

    return-object p1

    .line 327
    :cond_2
    const/high16 v1, 0x8000000

    invoke-virtual {p0, p1, v1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->isStreamFromOutputDevice(II)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 331
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 332
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object p1

    .line 333
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 334
    if-eqz v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 337
    return-object v1

    .line 339
    :cond_3
    goto :goto_0

    .line 341
    :cond_4
    return-object v0
.end method

.method public final getAvailabilityStatus()I
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_audio_switcher"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    .line 131
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.bluetooth"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 132
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 130
    :goto_0
    return v0
.end method

.method protected getConnectedA2dpDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 273
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 274
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v1

    .line 275
    if-nez v1, :cond_0

    .line 276
    return-object v0

    .line 278
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 279
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 280
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 281
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    :cond_1
    goto :goto_0

    .line 284
    :cond_2
    return-object v0
.end method

.method protected getConnectedHearingAidDevices()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 291
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 292
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v1

    .line 293
    if-nez v1, :cond_0

    .line 294
    return-object v0

    .line 296
    :cond_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 297
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v3

    .line 298
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/bluetooth/BluetoothDevice;

    .line 299
    invoke-virtual {v1, v4}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getHiSyncId(Landroid/bluetooth/BluetoothDevice;)J

    move-result-wide v5

    .line 302
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1

    invoke-virtual {v4}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 303
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 304
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 306
    :cond_1
    goto :goto_0

    .line 307
    :cond_2
    return-object v0
.end method

.method protected getConnectedHfpDevices()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/bluetooth/BluetoothDevice;",
            ">;"
        }
    .end annotation

    .line 255
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 256
    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v1

    .line 257
    if-nez v1, :cond_0

    .line 258
    return-object v0

    .line 260
    :cond_0
    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectedDevices()Ljava/util/List;

    move-result-object v1

    .line 261
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 262
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 263
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    :cond_1
    goto :goto_0

    .line 266
    :cond_2
    return-object v0
.end method

.method getDefaultDeviceIndex()I
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected isStreamFromOutputDevice(II)Z
    .locals 1

    .line 248
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p1}, Landroid/media/AudioManager;->getDevicesForStream(I)I

    move-result p1

    and-int/2addr p1, p2

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public onActiveDeviceChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 201
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 202
    return-void
.end method

.method public onAudioModeChanged()V
    .locals 1

    .line 206
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 207
    return-void
.end method

.method public onBluetoothStateChanged(I)V
    .locals 0

    .line 217
    return-void
.end method

.method public onConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 197
    return-void
.end method

.method public onDeviceAdded(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 232
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 233
    return-void
.end method

.method public onDeviceBondStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;I)V
    .locals 0

    .line 241
    return-void
.end method

.method public onDeviceDeleted(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)V
    .locals 0

    .line 237
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 137
    check-cast p2, Ljava/lang/String;

    .line 138
    instance-of v0, p1, Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 139
    return v1

    .line 142
    :cond_0
    check-cast p1, Landroid/support/v7/preference/ListPreference;

    .line 143
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1208c3    # @string/media_output_default_summary 'This device'

    invoke-virtual {v0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getDefaultDeviceIndex()I

    move-result p2

    iput p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 146
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 147
    iget-object p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 150
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getConnectedDeviceIndex(Ljava/lang/String;)I

    move-result p2

    .line 151
    const/4 v0, -0x1

    if-ne p2, v0, :cond_2

    .line 152
    return v1

    .line 154
    :cond_2
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    .line 155
    iput p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 156
    invoke-virtual {p0, v0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V

    .line 157
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public onProfileConnectionStateChanged(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;II)V
    .locals 0

    .line 212
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 213
    return-void
.end method

.method public onScanningStateChanged(Z)V
    .locals 0

    .line 224
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 173
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 174
    const-string v0, "AudioSwitchPreferenceController"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    return-void

    .line 177
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 178
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->register()V

    .line 179
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 183
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    if-nez v0, :cond_0

    .line 184
    const-string v0, "AudioSwitchPreferenceController"

    const-string v1, "Bluetooth is not supported on this device"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    return-void

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mLocalBluetoothManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 188
    invoke-direct {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->unregister()V

    .line 189
    return-void
.end method

.method public abstract setActiveBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
.end method

.method public setCallback(Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;)V
    .locals 0

    .line 244
    iput-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    .line 245
    return-void
.end method

.method setPreference([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 370
    check-cast p3, Landroid/support/v7/preference/ListPreference;

    .line 371
    invoke-virtual {p3, p1}, Landroid/support/v7/preference/ListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 372
    invoke-virtual {p3, p2}, Landroid/support/v7/preference/ListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 373
    iget p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    invoke-virtual {p3, p2}, Landroid/support/v7/preference/ListPreference;->setValueIndex(I)V

    .line 374
    iget p2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    aget-object p1, p1, p2

    invoke-virtual {p3, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 375
    iget-object p1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mAudioSwitchPreferenceCallback:Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;

    invoke-interface {p1, p3}, Lcom/android/settings/sound/AudioSwitchPreferenceController$AudioSwitchCallback;->onPreferenceDataChanged(Landroid/support/v7/preference/ListPreference;)V

    .line 376
    return-void
.end method

.method setupPreferenceEntries([Ljava/lang/CharSequence;[Ljava/lang/CharSequence;Landroid/bluetooth/BluetoothDevice;)V
    .locals 4

    .line 352
    invoke-virtual {p0}, Lcom/android/settings/sound/AudioSwitchPreferenceController;->getDefaultDeviceIndex()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 354
    iget v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f1208c3    # @string/media_output_default_summary 'This device'

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p1, v0

    .line 356
    iget v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    iget-object v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    aput-object v1, p2, v0

    .line 357
    iget-object v0, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 358
    iget-object v2, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mConnectedDevices:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/bluetooth/BluetoothDevice;

    .line 359
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p1, v1

    .line 360
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v1

    .line 361
    invoke-virtual {v2, p3}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 363
    iput v1, p0, Lcom/android/settings/sound/AudioSwitchPreferenceController;->mSelectedIndex:I

    .line 357
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 366
    :cond_1
    return-void
.end method
