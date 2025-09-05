.class public Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
.super Ljava/lang/Object;
.source "CachedBluetoothDevice.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;",
        ">;"
    }
.end annotation


# instance fields
.field private final mAudioManager:Landroid/media/AudioManager;

.field private mBtClass:Landroid/bluetooth/BluetoothClass;

.field private final mCallbacks:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private mConnectAttempted:J

.field private final mContext:Landroid/content/Context;

.field private final mDevice:Landroid/bluetooth/BluetoothDevice;

.field private mHiSyncId:J

.field private mIsActiveDeviceA2dp:Z

.field private mIsActiveDeviceHeadset:Z

.field private mIsActiveDeviceHearingAid:Z

.field private mIsConnectingErrorPossible:Z

.field private mJustDiscovered:Z

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mLocalNapRoleConnected:Z

.field private mMessageRejectionCount:I

.field private mName:Ljava/lang/String;

.field private mProfileConnectionState:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private final mProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemovedProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private mRssi:S


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    .line 71
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    .line 81
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 127
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 128
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 188
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    .line 189
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 190
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 191
    const-class p2, Landroid/media/AudioManager;

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/media/AudioManager;

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mAudioManager:Landroid/media/AudioManager;

    .line 192
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 193
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    .line 194
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fillData()V

    .line 195
    const-wide/16 p1, 0x0

    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    .line 196
    return-void
.end method

.method private connectAutoConnectableProfiles()V
    .locals 6

    .line 270
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 271
    return-void

    .line 274
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 276
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 277
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 279
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " setPreferred true and connect"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 282
    :cond_1
    goto :goto_0

    .line 283
    :cond_2
    return-void
.end method

.method private connectWithoutResettingTimer(Z)V
    .locals 6

    .line 237
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    const-string p1, "CachedBluetoothDevice"

    const-string v0, "No profiles. Maybe we will connect later"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return-void

    .line 250
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 252
    const/4 v0, 0x0

    .line 253
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 254
    if-eqz p1, :cond_1

    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_1
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isAutoConnectable()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 255
    :goto_1
    const-string v3, "CachedBluetoothDevice"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " isPreferred : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v2, v3}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 257
    add-int/lit8 v0, v0, 0x1

    .line 258
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 261
    :cond_2
    goto :goto_0

    .line 264
    :cond_3
    if-nez v0, :cond_4

    .line 265
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectAutoConnectableProfiles()V

    .line 267
    :cond_4
    return-void
.end method

.method private describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;
    .locals 2

    .line 136
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 137
    const-string v1, "Address:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 138
    if-eqz p1, :cond_0

    .line 139
    const-string v1, " Profile:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 142
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private dispatchAttributesChanged()V
    .locals 3

    .line 788
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 789
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;

    .line 790
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;->onDeviceAttributesChanged()V

    .line 791
    goto :goto_0

    .line 792
    :cond_0
    monitor-exit v0

    .line 793
    return-void

    .line 792
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private ensurePaired()Z
    .locals 2

    .line 313
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 314
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    .line 315
    const/4 v0, 0x0

    return v0

    .line 317
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private fetchActiveDevices()V
    .locals 2

    .line 667
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 668
    if-eqz v0, :cond_0

    .line 669
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 671
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    .line 672
    if-eqz v0, :cond_1

    .line 673
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getActiveDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 675
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v0

    .line 676
    if-eqz v0, :cond_2

    .line 677
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->getActiveDevices()Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 679
    :cond_2
    return-void
.end method

.method private fetchBtClass()V
    .locals 4

    .line 622
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 623
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-nez v0, :cond_0

    .line 624
    const-string v0, "CachedBluetoothDevice"

    const-string v1, "fetchClass, mBtClass is null"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 626
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getMajorDeviceClass()I

    move-result v0

    .line 627
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "fetchClass, mBtClass is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    :goto_0
    return-void
.end method

.method private fetchMessageRejectionCount()V
    .locals 3

    .line 960
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_reject"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 962
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 963
    return-void
.end method

.method private fetchName()V
    .locals 3

    .line 477
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 478
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchName, AlaisName is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 481
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 484
    :cond_0
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "fetchName, Return Name "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    return-void
.end method

.method private fillData()V
    .locals 0

    .line 387
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 388
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 389
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 390
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 391
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migratePhonebookPermissionChoice()V

    .line 392
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->migrateMessagePermissionChoice()V

    .line 393
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchMessageRejectionCount()V

    .line 395
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 396
    return-void
.end method

.method private migrateMessagePermissionChoice()V
    .locals 3

    .line 928
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 930
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 931
    return-void

    .line 934
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v1

    if-nez v1, :cond_2

    .line 935
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 936
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 937
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    goto :goto_0

    .line 938
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 939
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 943
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 944
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 945
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 946
    return-void
.end method

.method private migratePhonebookPermissionChoice()V
    .locals 3

    .line 865
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_phonebook_permission"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 867
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 868
    return-void

    .line 871
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v1

    if-nez v1, :cond_2

    .line 872
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 873
    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 874
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    goto :goto_0

    .line 875
    :cond_1
    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 876
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 880
    :cond_2
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 881
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 882
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 883
    return-void
.end method

.method private processPhonebookAccess()V
    .locals 5

    .line 977
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    return-void

    .line 979
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 980
    sget-object v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;->PBAB_CLIENT_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 983
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    if-nez v0, :cond_3

    .line 984
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x408

    const/4 v2, 0x2

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 986
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v0

    const/16 v1, 0x404

    if-ne v0, v1, :cond_2

    .line 988
    :cond_1
    const v0, 0x534e4554

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "138529441"

    aput-object v4, v1, v3

    const/4 v3, 0x1

    const/4 v4, -0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v3

    const-string v3, ""

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 990
    :cond_2
    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 993
    :cond_3
    return-void
.end method

.method private saveMessageRejectionCount()V
    .locals 3

    .line 966
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    const-string v1, "bluetooth_message_reject"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 967
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 968
    iget v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-nez v1, :cond_0

    .line 969
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 971
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    iget v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 973
    :goto_0
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 974
    return-void
.end method

.method private updateProfiles()Z
    .locals 8

    .line 632
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v2

    .line 633
    const/4 v0, 0x0

    if-nez v2, :cond_0

    .line 634
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "Bluetooth device get uuid is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    return v0

    .line 638
    :cond_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v3

    .line 639
    if-nez v3, :cond_1

    .line 640
    const-string v1, "CachedBluetoothDevice"

    const-string v2, "Bluetooth Adapter get uuid is null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 641
    return v0

    .line 647
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->processPhonebookAccess()V

    .line 649
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " update profiles"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    iget-object v4, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    iget-boolean v6, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    iget-object v7, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual/range {v1 .. v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V

    .line 663
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public checkAndIncreaseMessageRejectionCount()Z
    .locals 3

    .line 952
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    if-ge v0, v2, :cond_0

    .line 953
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 954
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 956
    :cond_0
    iget v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    if-lt v0, v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public clearProfileConnectionState()V
    .locals 4

    .line 378
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " Clearing all connection state for dev:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 381
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    goto :goto_0

    .line 383
    :cond_0
    return-void
.end method

.method public compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I
    .locals 5

    .line 818
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v0

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v1

    sub-int/2addr v0, v1

    .line 819
    if-eqz v0, :cond_0

    return v0

    .line 822
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0xc

    if-ne v0, v3, :cond_1

    .line 823
    move v0, v2

    goto :goto_0

    .line 822
    :cond_1
    nop

    .line 823
    move v0, v1

    :goto_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v4

    if-ne v4, v3, :cond_2

    move v1, v2

    nop

    :cond_2
    sub-int/2addr v0, v1

    .line 824
    if-eqz v0, :cond_3

    return v0

    .line 827
    :cond_3
    iget-boolean v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    iget-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    sub-int/2addr v0, v1

    .line 828
    if-eqz v0, :cond_4

    return v0

    .line 831
    :cond_4
    iget-short v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    iget-short v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    sub-int/2addr v0, v1

    .line 832
    if-eqz v0, :cond_5

    return v0

    .line 835
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 49
    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p1

    return p1
.end method

.method public connect(Z)V
    .locals 2

    .line 221
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    return-void

    .line 225
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 226
    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 227
    return-void
.end method

.method declared-synchronized connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    monitor-enter p0

    .line 300
    :try_start_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->ensurePaired()Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 301
    monitor-exit p0

    return-void

    .line 303
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->connect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 305
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:CONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    monitor-exit p0

    return-void

    .line 309
    :cond_1
    :try_start_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to connect "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " to "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 310
    monitor-exit p0

    return-void

    .line 299
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 2

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    .line 293
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsConnectingErrorPossible:Z

    .line 294
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectInt(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 296
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 297
    return-void
.end method

.method public disconnect()V
    .locals 3

    .line 199
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 200
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 201
    goto :goto_0

    .line 205
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 206
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 208
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    .line 210
    :cond_1
    return-void
.end method

.method public disconnect(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 3

    .line 213
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->disconnect(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:DISCONNECT "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 802
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v0, :cond_0

    goto :goto_0

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    check-cast p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    iget-object p1, p1, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 803
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getAddress()Ljava/lang/String;
    .locals 1

    .line 408
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getBatteryLevel()I
    .locals 1

    .line 500
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBatteryLevel()I

    move-result v0

    return v0
.end method

.method public getBondState()I
    .locals 1

    .line 515
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v0

    return v0
.end method

.method public getBtClass()Landroid/bluetooth/BluetoothClass;
    .locals 1

    .line 751
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    return-object v0
.end method

.method public getConnectableProfiles()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 759
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mprofile size is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 760
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 762
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 763
    invoke-interface {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isConnectable()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 764
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 766
    :cond_0
    goto :goto_0

    .line 767
    :cond_1
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " conectable profile size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-object v0
.end method

.method public getConnectionSummary()Ljava/lang/String;
    .locals 12

    .line 1012
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " getConnectionSummary"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1013
    nop

    .line 1014
    nop

    .line 1015
    nop

    .line 1016
    nop

    .line 1018
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    move v4, v1

    move v5, v4

    move v6, v5

    move v3, v2

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 1019
    invoke-virtual {p0, v7}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v8

    .line 1020
    if-eqz v7, :cond_0

    .line 1021
    const-string v9, "CachedBluetoothDevice"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "profile name is "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ": "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1024
    :cond_0
    packed-switch v8, :pswitch_data_0

    goto :goto_3

    .line 1030
    :pswitch_0
    const-string v3, "CachedBluetoothDevice"

    const-string v7, "profileConnected = true"

    invoke-static {v3, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    nop

    .line 1032
    nop

    .line 1048
    move v3, v1

    goto :goto_3

    .line 1027
    :pswitch_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v8}, Lcom/android/settingslib/bluetooth/Utils;->getConnectionStateSummary(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1035
    :pswitch_2
    invoke-interface {v7}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isProfileReady()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1036
    instance-of v8, v7, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v8, :cond_4

    instance-of v8, v7, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-eqz v8, :cond_1

    goto :goto_2

    .line 1039
    :cond_1
    instance-of v8, v7, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-nez v8, :cond_3

    instance-of v8, v7, Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-eqz v8, :cond_2

    goto :goto_1

    .line 1042
    :cond_2
    instance-of v7, v7, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz v7, :cond_5

    .line 1043
    nop

    .line 1048
    move v6, v2

    goto :goto_3

    .line 1041
    :cond_3
    :goto_1
    nop

    .line 1048
    move v5, v2

    goto :goto_3

    .line 1038
    :cond_4
    :goto_2
    nop

    .line 1048
    move v4, v2

    :cond_5
    :goto_3
    goto :goto_0

    .line 1050
    :cond_6
    nop

    .line 1055
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBatteryLevel()I

    move-result v0

    .line 1056
    const/4 v7, -0x1

    const/4 v8, 0x0

    if-eq v0, v7, :cond_7

    .line 1058
    nop

    .line 1059
    invoke-static {v0}, Lcom/android/settingslib/Utils;->formatPercentage(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 1062
    :cond_7
    move-object v0, v8

    :goto_4
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_pairing:I

    .line 1064
    if-eqz v3, :cond_11

    .line 1065
    if-nez v4, :cond_9

    if-nez v5, :cond_9

    if-eqz v6, :cond_8

    goto :goto_5

    .line 1096
    :cond_8
    if-eqz v0, :cond_11

    .line 1097
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_battery_level:I

    goto :goto_7

    .line 1067
    :cond_9
    :goto_5
    if-eqz v0, :cond_e

    .line 1069
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1070
    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eqz v3, :cond_a

    .line 1071
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_active_battery_level:I

    goto :goto_7

    .line 1073
    :cond_a
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_battery_level:I

    goto :goto_7

    .line 1077
    :cond_b
    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-nez v3, :cond_d

    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eqz v3, :cond_c

    goto :goto_6

    .line 1080
    :cond_c
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_battery_level:I

    goto :goto_7

    .line 1078
    :cond_d
    :goto_6
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_active_battery_level:I

    goto :goto_7

    .line 1085
    :cond_e
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/settingslib/Utils;->isAudioModeOngoingCall(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_f

    .line 1086
    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eqz v3, :cond_11

    .line 1087
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_active_no_battery_level:I

    goto :goto_7

    .line 1090
    :cond_f
    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-nez v3, :cond_10

    iget-boolean v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eqz v3, :cond_11

    .line 1091
    :cond_10
    sget v7, Lcom/android/settingslib/R$string;->bluetooth_active_no_battery_level:I

    .line 1102
    :cond_11
    :goto_7
    sget v3, Lcom/android/settingslib/R$string;->bluetooth_pairing:I

    if-ne v7, v3, :cond_13

    .line 1103
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    const/16 v4, 0xb

    if-ne v3, v4, :cond_12

    goto :goto_8

    .line 1105
    :cond_12
    goto :goto_9

    .line 1104
    :cond_13
    :goto_8
    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mContext:Landroid/content/Context;

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {v3, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 1102
    :goto_9
    return-object v8

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 1

    .line 399
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getHiSyncId()J
    .locals 2

    .line 103
    iget-wide v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    return-wide v0
.end method

.method public getMessagePermissionChoice()I
    .locals 2

    .line 886
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getMessageAccessPermission()I

    move-result v0

    .line 887
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 888
    return v1

    .line 889
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 890
    return v1

    .line 892
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhonebookPermissionChoice()I
    .locals 2

    .line 843
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getPhonebookAccessPermission()I

    move-result v0

    .line 844
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 845
    return v1

    .line 846
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 847
    return v1

    .line 849
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I
    .locals 4

    .line 366
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    .line 369
    const-string v1, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-direct {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " state : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1
.end method

.method public getProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 755
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getRemovedProfiles()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    return-object v0
.end method

.method public getSimPermissionChoice()I
    .locals 2

    .line 906
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getSimAccessPermission()I

    move-result v0

    .line 907
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 908
    return v1

    .line 909
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 910
    return v1

    .line 912
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public hasHumanReadableName()Z
    .locals 1

    .line 492
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAliasName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 810
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public isA2dpDevice()Z
    .locals 2

    .line 1222
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isActiveDevice(I)Z
    .locals 3

    .line 563
    const/16 v0, 0x15

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    .line 571
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getActiveDevice: unknown profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 574
    const/4 p1, 0x0

    return p1

    .line 565
    :pswitch_0
    iget-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    return p1

    .line 567
    :pswitch_1
    iget-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    return p1

    .line 569
    :cond_0
    iget-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public isBusy()Z
    .locals 4

    .line 607
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 608
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    .line 609
    if-eq v1, v2, :cond_1

    const/4 v3, 0x3

    if-ne v1, v3, :cond_0

    goto :goto_1

    .line 613
    :cond_0
    goto :goto_0

    .line 611
    :cond_1
    :goto_1
    return v2

    .line 614
    :cond_2
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " bond state is "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 615
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xb

    if-ne v0, v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v2, 0x0

    :goto_2
    return v2
.end method

.method public isConnected()Z
    .locals 3

    .line 590
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 591
    invoke-virtual {p0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result v1

    .line 592
    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 593
    const/4 v0, 0x1

    return v0

    .line 595
    :cond_0
    goto :goto_0

    .line 597
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z
    .locals 1

    .line 601
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getProfileConnectionState(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)I

    move-result p1

    .line 602
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public isHfpDevice()Z
    .locals 2

    .line 1230
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onActiveDeviceChanged(ZI)V
    .locals 4

    .line 525
    nop

    .line 526
    const/16 v0, 0x15

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq p2, v0, :cond_2

    packed-switch p2, :pswitch_data_0

    .line 540
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onActiveDeviceChanged: unknown profile "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, " isActive "

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 528
    :pswitch_0
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    if-eq p2, p1, :cond_0

    .line 529
    move v2, v1

    goto :goto_0

    .line 528
    :cond_0
    nop

    .line 529
    :goto_0
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceA2dp:Z

    .line 530
    goto :goto_3

    .line 532
    :pswitch_1
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    if-eq p2, p1, :cond_1

    .line 533
    move v2, v1

    goto :goto_1

    .line 532
    :cond_1
    nop

    .line 533
    :goto_1
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHeadset:Z

    .line 534
    goto :goto_3

    .line 536
    :cond_2
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    if-eq p2, p1, :cond_3

    .line 537
    move v2, v1

    goto :goto_2

    .line 536
    :cond_3
    nop

    .line 537
    :goto_2
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mIsActiveDeviceHearingAid:Z

    .line 538
    nop

    .line 544
    :goto_3
    if-eqz v2, :cond_4

    .line 545
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 547
    :cond_4
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method onAudioModeChanged()V
    .locals 0

    .line 553
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 554
    return-void
.end method

.method onBondingDockConnect()V
    .locals 1

    .line 232
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 233
    return-void
.end method

.method onBondingStateChanged(I)V
    .locals 3

    .line 720
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBondingStateChanged to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const/4 v0, 0x0

    const/16 v1, 0xa

    if-ne p1, v1, :cond_0

    .line 722
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 723
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 724
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 725
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setSimPermissionChoice(I)V

    .line 726
    iput v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mMessageRejectionCount:I

    .line 727
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->saveMessageRejectionCount()V

    .line 730
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    .line 732
    const/16 v1, 0xc

    if-ne p1, v1, :cond_2

    .line 733
    const-string p1, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bond state changed to bonded, mDevice.isBondingInitiatedLocally() is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 734
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 733
    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBluetoothDock()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 736
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->onBondingDockConnect()V

    goto :goto_0

    .line 737
    :cond_1
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->isBondingInitiatedLocally()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 738
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    .line 741
    :cond_2
    :goto_0
    return-void
.end method

.method onProfileStateChanged(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;I)V
    .locals 3

    .line 147
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onProfileStateChanged: profile "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " newProfileState "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getBluetoothState()I

    move-result v0

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 152
    const-string p1, "CachedBluetoothDevice"

    const-string p2, " BT Turninig Off...Profile conn state change ignored..."

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void

    .line 155
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileConnectionState:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    const/4 v0, 0x2

    if-ne p2, v0, :cond_2

    .line 157
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 158
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 160
    :cond_1
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 161
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 162
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
    instance-of p2, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz p2, :cond_4

    check-cast p1, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 164
    invoke-virtual {p1, p2}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 166
    iput-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    goto :goto_0

    .line 169
    :cond_2
    instance-of v0, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    if-nez p2, :cond_3

    .line 171
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-interface {p1, p2, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 172
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->refresh()V

    goto :goto_0

    .line 173
    :cond_3
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    if-eqz v0, :cond_4

    instance-of v0, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v0, :cond_4

    move-object v0, p1

    check-cast v0, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 174
    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/PanProfile;->isLocalRoleNap(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez p2, :cond_4

    .line 176
    const-string p2, "CachedBluetoothDevice"

    const-string v0, "Removing PanProfile from device after NAP disconnect"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 178
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRemovedProfiles:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 179
    iput-boolean v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalNapRoleConnected:Z

    .line 181
    :cond_4
    :goto_0
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchActiveDevices()V

    .line 182
    return-void
.end method

.method onUuidChanged()V
    .locals 4

    .line 694
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->updateProfiles()Z

    .line 695
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 697
    nop

    .line 698
    sget-object v1, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    invoke-static {v0, v1}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 699
    const-wide/16 v0, 0x7530

    goto :goto_0

    .line 711
    :cond_0
    const-wide/16 v0, 0x1388

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfiles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    iget-wide v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mConnectAttempted:J

    add-long/2addr v2, v0

    .line 712
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    cmp-long v0, v2, v0

    if-lez v0, :cond_1

    .line 713
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectWithoutResettingTimer(Z)V

    .line 716
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 717
    return-void
.end method

.method refresh()V
    .locals 0

    .line 504
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 505
    return-void
.end method

.method refreshBtClass()V
    .locals 0

    .line 686
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchBtClass()V

    .line 687
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 688
    return-void
.end method

.method refreshName()V
    .locals 0

    .line 472
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->fetchName()V

    .line 473
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 474
    return-void
.end method

.method public registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .line 776
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 777
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 778
    monitor-exit v0

    .line 779
    return-void

    .line 778
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setActive()Z
    .locals 4

    .line 446
    nop

    .line 447
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;

    move-result-object v0

    .line 448
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 449
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 450
    const-string v0, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPreferenceClickListener: A2DP active device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    nop

    .line 454
    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;

    move-result-object v2

    .line 455
    if-eqz v2, :cond_1

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/HeadsetProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    const-string v0, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPreferenceClickListener: Headset active device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    nop

    .line 461
    move v0, v1

    :cond_1
    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;

    move-result-object v2

    .line 462
    if-eqz v2, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnectedProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 463
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settingslib/bluetooth/HearingAidProfile;->setActiveDevice(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 464
    const-string v0, "CachedBluetoothDevice"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "OnPreferenceClickListener: Hearing Aid active device="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    nop

    .line 468
    move v0, v1

    :cond_2
    return v0
.end method

.method setBtClass(Landroid/bluetooth/BluetoothClass;)V
    .locals 1

    .line 744
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    if-eq v0, p1, :cond_0

    .line 745
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mBtClass:Landroid/bluetooth/BluetoothClass;

    .line 746
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 748
    :cond_0
    return-void
.end method

.method public setHiSyncId(J)V
    .locals 3

    .line 108
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setHiSyncId: mDevice "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", id "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    iput-wide p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mHiSyncId:J

    .line 111
    return-void
.end method

.method public setJustDiscovered(Z)V
    .locals 1

    .line 508
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    if-eq v0, p1, :cond_0

    .line 509
    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mJustDiscovered:Z

    .line 510
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 512
    :cond_0
    return-void
.end method

.method public setMessagePermissionChoice(I)V
    .locals 2

    .line 896
    nop

    .line 897
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 898
    nop

    .line 902
    move v0, v1

    goto :goto_0

    .line 899
    :cond_0
    if-ne p1, v0, :cond_1

    .line 900
    goto :goto_0

    .line 902
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setMessageAccessPermission(I)Z

    .line 903
    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 1

    .line 434
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 435
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 436
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0, p1}, Landroid/bluetooth/BluetoothDevice;->setAlias(Ljava/lang/String;)Z

    .line 437
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 439
    :cond_0
    return-void
.end method

.method setNewName(Ljava/lang/String;)V
    .locals 1

    .line 419
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 420
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 421
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 422
    :cond_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mName:Ljava/lang/String;

    .line 424
    :cond_1
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 426
    :cond_2
    return-void
.end method

.method public setPhonebookPermissionChoice(I)V
    .locals 2

    .line 853
    nop

    .line 854
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 855
    nop

    .line 859
    move v0, v1

    goto :goto_0

    .line 856
    :cond_0
    if-ne p1, v0, :cond_1

    .line 857
    goto :goto_0

    .line 859
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setPhonebookAccessPermission(I)Z

    .line 860
    return-void
.end method

.method setRssi(S)V
    .locals 1

    .line 578
    iget-short v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    if-eq v0, p1, :cond_0

    .line 579
    iput-short p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mRssi:S

    .line 580
    invoke-direct {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->dispatchAttributesChanged()V

    .line 582
    :cond_0
    return-void
.end method

.method setSimPermissionChoice(I)V
    .locals 2

    .line 916
    nop

    .line 917
    const/4 v0, 0x2

    const/4 v1, 0x1

    if-ne p1, v1, :cond_0

    .line 918
    nop

    .line 922
    move v0, v1

    goto :goto_0

    .line 919
    :cond_0
    if-ne p1, v0, :cond_1

    .line 920
    goto :goto_0

    .line 922
    :cond_1
    const/4 v0, 0x0

    :goto_0
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0}, Landroid/bluetooth/BluetoothDevice;->setSimAccessPermission(I)Z

    .line 923
    return-void
.end method

.method public startPairing()Z
    .locals 1

    .line 323
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->isDiscovering()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 324
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->cancelDiscovery()V

    .line 327
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->createBond()Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const/4 v0, 0x0

    return v0

    .line 331
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 797
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unpair()V
    .locals 3

    .line 343
    invoke-virtual {p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    .line 345
    const/16 v1, 0xb

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->cancelBondProcess()Z

    .line 349
    :cond_0
    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mDevice:Landroid/bluetooth/BluetoothDevice;

    .line 351
    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->removeBond()Z

    move-result v0

    .line 353
    if-eqz v0, :cond_1

    .line 355
    const-string v0, "CachedBluetoothDevice"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Command sent successfully:REMOVE_BOND "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v2, 0x0

    invoke-direct {p0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->describe(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_1
    return-void
.end method

.method public unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V
    .locals 2

    .line 782
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    monitor-enter v0

    .line 783
    :try_start_0
    iget-object v1, p0, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->mCallbacks:Ljava/util/Collection;

    invoke-interface {v1, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 784
    monitor-exit v0

    .line 785
    return-void

    .line 784
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
