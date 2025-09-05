.class public Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;
.super Ljava/lang/Object;
.source "LocalBluetoothProfileManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;,
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;,
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;,
        Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;
    }
.end annotation


# instance fields
.field private mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

.field private mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

.field private final mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

.field private mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

.field private mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

.field private mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

.field private mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

.field private mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

.field private final mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

.field private mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

.field private mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

.field private mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

.field private mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

.field private mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

.field private mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

.field private final mProfileNameMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;"
        }
    .end annotation
.end field

.field private final mServiceListeners:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mUseMapClient:Z

.field private final mUsePbapPce:Z


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/BluetoothEventManager;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 105
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    .line 112
    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    .line 114
    iput-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    .line 115
    iput-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    .line 116
    iput-object p4, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    .line 117
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p3, 0x11200f1    # @android:bool/kg_enable_camera_default_widget

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    .line 119
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mUseMapClient:Z

    .line 121
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 122
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->setProfileManager(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    .line 124
    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object p1

    .line 127
    if-eqz p1, :cond_1

    .line 128
    const-string p2, "LocalBluetoothProfileManager"

    const-string p3, "bluetooth adapter uuid: "

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    array-length p2, p1

    const/4 p3, 0x0

    :goto_0
    if-ge p3, p2, :cond_0

    aget-object p4, p1, p3

    .line 130
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 132
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 177
    :cond_1
    const-string p1, "LocalBluetoothProfileManager"

    const-string p2, "LocalBluetoothProfileManager construction complete"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    return-void
.end method

.method static synthetic access$000(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)Lcom/android/settingslib/bluetooth/BluetoothEventManager;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    return-object p0
.end method

.method private addHeadsetProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 307
    new-instance v0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;

    invoke-direct {v0, p0, p1, p4, p5}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$HeadsetStateChangeHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;I)V

    .line 309
    iget-object p5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p5, p3, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 310
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p3, p4, v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 311
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 312
    return-void
.end method

.method private addPanProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$PanStateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 327
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 328
    return-void
.end method

.method private addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 319
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    new-instance v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;

    invoke-direct {v1, p0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$StateChangedHandler;-><init>(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    invoke-virtual {v0, p3, v1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->addProfileHandler(Ljava/lang/String;Lcom/android/settingslib/bluetooth/BluetoothEventManager$Handler;)V

    .line 320
    iget-object p3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 321
    return-void
.end method


# virtual methods
.method public addServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    .line 483
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 484
    return-void
.end method

.method callServiceConnectedListeners()V
    .locals 2

    .line 493
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 494
    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceConnected()V

    .line 495
    goto :goto_0

    .line 496
    :cond_0
    return-void
.end method

.method callServiceDisconnectedListeners()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;

    .line 501
    invoke-interface {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;->onServiceDisconnected()V

    .line 502
    goto :goto_0

    .line 503
    :cond_0
    return-void
.end method

.method public getA2dpProfile()Lcom/android/settingslib/bluetooth/A2dpProfile;
    .locals 1

    .line 525
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    return-object v0
.end method

.method public getA2dpSinkProfile()Lcom/android/settingslib/bluetooth/A2dpSinkProfile;
    .locals 1

    .line 529
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->isProfileReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    return-object v0

    .line 532
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHeadsetProfile()Lcom/android/settingslib/bluetooth/HeadsetProfile;
    .locals 1

    .line 537
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    return-object v0
.end method

.method public getHearingAidProfile()Lcom/android/settingslib/bluetooth/HearingAidProfile;
    .locals 1

    .line 565
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    return-object v0
.end method

.method getHidDeviceProfile()Lcom/android/settingslib/bluetooth/HidDeviceProfile;
    .locals 1

    .line 575
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    return-object v0
.end method

.method getHidProfile()Lcom/android/settingslib/bluetooth/HidProfile;
    .locals 1

    .line 570
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    return-object v0
.end method

.method public getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;
    .locals 1

    .line 557
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    return-object v0
.end method

.method public getPbapClientProfile()Lcom/android/settingslib/bluetooth/PbapClientProfile;
    .locals 1

    .line 549
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    return-object v0
.end method

.method public getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    return-object v0
.end method

.method public getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    return-object p1
.end method

.method public removeServiceListener(Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager$ServiceListener;)V
    .locals 1

    .line 488
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mServiceListeners:Ljava/util/Collection;

    invoke-interface {v0, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 489
    return-void
.end method

.method setBluetoothStateOn()V
    .locals 4

    .line 336
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    if-nez v0, :cond_0

    .line 337
    new-instance v0, Lcom/android/settingslib/bluetooth/HidProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/HidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    .line 338
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    const-string v1, "HID"

    const-string v2, "android.bluetooth.input.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez v0, :cond_1

    .line 342
    new-instance v0, Lcom/android/settingslib/bluetooth/PanProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-direct {v0, v1, v2}, Lcom/android/settingslib/bluetooth/PanProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    .line 343
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    const-string v1, "PAN"

    const-string v2, "android.bluetooth.pan.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addPanProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 346
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    if-nez v0, :cond_2

    .line 347
    new-instance v0, Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    .line 348
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    const-string v1, "HID DEVICE"

    const-string v2, "android.bluetooth.hiddevice.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 351
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v0, :cond_4

    .line 352
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local MAP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mUseMapClient:Z

    if-eqz v0, :cond_3

    .line 354
    new-instance v0, Lcom/android/settingslib/bluetooth/MapClientProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/MapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 355
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const-string v1, "MAP Client"

    const-string v2, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_3
    new-instance v0, Lcom/android/settingslib/bluetooth/MapProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/MapProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 359
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    const-string v1, "MAP"

    const-string v2, "android.bluetooth.map.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v0, :cond_5

    .line 365
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local PBAP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    new-instance v0, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/settingslib/bluetooth/PbapServerProfile;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 368
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    const-string v1, "PBAP Server"

    const-string v2, "android.bluetooth.pbap.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 372
    :cond_5
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez v0, :cond_6

    .line 373
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getSupportedProfiles()Ljava/util/List;

    move-result-object v0

    .line 374
    const/16 v1, 0x15

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 375
    new-instance v0, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 377
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const-string v1, "HearingAid"

    const-string v2, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    .line 381
    :cond_6
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getUuids()[Landroid/os/ParcelUuid;

    move-result-object v0

    .line 382
    if-eqz v0, :cond_7

    .line 383
    invoke-virtual {p0, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->updateLocalProfiles([Landroid/os/ParcelUuid;)V

    .line 385
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->readPairedDevices()Z

    .line 386
    return-void
.end method

.method updateLocalProfiles([Landroid/os/ParcelUuid;)V
    .locals 10

    .line 189
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSource:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-nez v0, :cond_1

    .line 191
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP SRC profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    new-instance v0, Lcom/android/settingslib/bluetooth/A2dpProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/A2dpProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 193
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    const-string v1, "A2DP"

    const-string v2, "android.bluetooth.a2dp.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v0, :cond_1

    .line 197
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :cond_1
    :goto_0
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->AudioSink:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 202
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-nez v0, :cond_3

    .line 203
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local A2DP Sink profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    new-instance v0, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    .line 205
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    const-string v1, "A2DPSink"

    const-string v2, "android.bluetooth.a2dp-sink.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-eqz v0, :cond_3

    .line 209
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: A2DP Sink profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    :cond_3
    :goto_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    .line 214
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    goto :goto_2

    .line 224
    :cond_4
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_6

    .line 225
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: HEADSET profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 215
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-nez v0, :cond_6

    .line 216
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HEADSET profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    new-instance v0, Lcom/android/settingslib/bluetooth/HeadsetProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/HeadsetProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    .line 219
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    const-string v6, "HEADSET"

    const-string v7, "android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED"

    const-string v8, "android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED"

    const/16 v9, 0xa

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addHeadsetProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 229
    :cond_6
    :goto_3
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 230
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-nez v0, :cond_9

    .line 231
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local HfpClient profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    new-instance v0, Lcom/android/settingslib/bluetooth/HfpClientProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/HfpClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    .line 234
    iget-object v5, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    const-string v6, "HEADSET_CLIENT"

    const-string v7, "android.bluetooth.headsetclient.profile.action.CONNECTION_STATE_CHANGED"

    const-string v8, "android.bluetooth.headsetclient.profile.action.AUDIO_STATE_CHANGED"

    const/4 v9, 0x0

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addHeadsetProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    .line 239
    :cond_7
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_8

    .line 240
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: Hfp Client profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 243
    :cond_8
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Handsfree Uuid not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_9
    :goto_4
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->MNS:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 248
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    if-nez v0, :cond_c

    .line 249
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local Map Client profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    new-instance v0, Lcom/android/settingslib/bluetooth/MapClientProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/MapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    .line 252
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    const-string v1, "MAP Client"

    const-string v2, "android.bluetooth.mapmce.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 255
    :cond_a
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    if-eqz v0, :cond_b

    .line 256
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: MAP Client profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 259
    :cond_b
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "MAP Client Uuid not found."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    :cond_c
    :goto_5
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 264
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    if-nez v0, :cond_e

    .line 265
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local OPP profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-direct {v0}, Lcom/android/settingslib/bluetooth/OppProfile;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    .line 268
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mProfileNameMap:Ljava/util/Map;

    const-string v1, "OPP"

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_6

    .line 270
    :cond_d
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    if-eqz v0, :cond_e

    .line 271
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: OPP profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    :cond_e
    :goto_6
    iget-boolean v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    if-eqz v0, :cond_f

    .line 276
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    if-nez v0, :cond_10

    .line 277
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Adding local PBAP Client profile"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    new-instance v0, Lcom/android/settingslib/bluetooth/PbapClientProfile;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v3, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {v0, v1, v2, v3, p0}, Lcom/android/settingslib/bluetooth/PbapClientProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    .line 280
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    const-string v1, "PbapClient"

    const-string v2, "android.bluetooth.pbapclient.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 283
    :cond_f
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    if-eqz v0, :cond_10

    .line 284
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Warning: PBAP Client profile was previously added but the UUID is now missing."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_10
    :goto_7
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_11

    .line 290
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-nez p1, :cond_12

    .line 291
    const-string p1, "LocalBluetoothProfileManager"

    const-string v0, "Adding local Hearing Aid profile"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    new-instance p1, Lcom/android/settingslib/bluetooth/HearingAidProfile;

    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mLocalAdapter:Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    iget-object v2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mDeviceManager:Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    invoke-direct {p1, v0, v1, v2, p0}, Lcom/android/settingslib/bluetooth/HearingAidProfile;-><init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;)V

    iput-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    .line 293
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    const-string v0, "HearingAid"

    const-string v1, "android.bluetooth.hearingaid.profile.action.CONNECTION_STATE_CHANGED"

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->addProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_8

    .line 296
    :cond_11
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p1, :cond_12

    .line 297
    const-string p1, "LocalBluetoothProfileManager"

    const-string v0, "Warning: Hearing Aid profile was previously added but the UUID is now missing."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    :cond_12
    :goto_8
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mEventManager:Lcom/android/settingslib/bluetooth/BluetoothEventManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/BluetoothEventManager;->registerProfileIntentReceiver()V

    .line 303
    return-void
.end method

.method declared-synchronized updateProfiles([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;Ljava/util/Collection;Ljava/util/Collection;ZLandroid/bluetooth/BluetoothDevice;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Landroid/os/ParcelUuid;",
            "[",
            "Landroid/os/ParcelUuid;",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;",
            "Ljava/util/Collection<",
            "Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;",
            ">;Z",
            "Landroid/bluetooth/BluetoothDevice;",
            ")V"
        }
    .end annotation

    monitor-enter p0

    .line 592
    :try_start_0
    invoke-interface {p4}, Ljava/util/Collection;->clear()V

    .line 593
    invoke-interface {p4, p3}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 595
    const-string v0, "LocalBluetoothProfileManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Current Profiles"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    invoke-interface {p3}, Ljava/util/Collection;->clear()V

    .line 598
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "update profiles"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    if-nez p1, :cond_0

    .line 600
    const-string p1, "LocalBluetoothProfileManager"

    const-string p2, "remote device uuid is null"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    monitor-exit p0

    return-void

    .line 604
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    if-eqz v0, :cond_3

    .line 605
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP_AG:Landroid/os/ParcelUuid;

    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->HSP:Landroid/os/ParcelUuid;

    .line 606
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 607
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 608
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 609
    :cond_2
    const-string v0, "LocalBluetoothProfileManager"

    const-string v1, "Add HeadsetProfile to connectable profile list"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 610
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-interface {p3, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 611
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHeadsetProfile:Lcom/android/settingslib/bluetooth/HeadsetProfile;

    invoke-interface {p4, v0}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 615
    :cond_3
    iget-object v0, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree_AG:Landroid/os/ParcelUuid;

    .line 616
    invoke-static {p1, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result v0

    if-eqz v0, :cond_4

    sget-object v0, Landroid/bluetooth/BluetoothUuid;->Handsfree:Landroid/os/ParcelUuid;

    .line 617
    invoke-static {p2, v0}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 618
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 619
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHfpClientProfile:Lcom/android/settingslib/bluetooth/HfpClientProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 622
    :cond_4
    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpProfile;->SINK_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p2, :cond_5

    .line 624
    const-string p2, "LocalBluetoothProfileManager"

    const-string v0, "Add A2dpProfile to connectable profile list"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 626
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpProfile:Lcom/android/settingslib/bluetooth/A2dpProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 629
    :cond_5
    sget-object p2, Lcom/android/settingslib/bluetooth/A2dpSinkProfile;->SRC_UUIDS:[Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->containsAnyUuid([Landroid/os/ParcelUuid;[Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    if-eqz p2, :cond_6

    .line 631
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 632
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mA2dpSinkProfile:Lcom/android/settingslib/bluetooth/A2dpSinkProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 635
    :cond_6
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->ObexObjectPush:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    if-eqz p2, :cond_7

    .line 637
    const-string p2, "LocalBluetoothProfileManager"

    const-string v0, "Add OppProfile to connectable profile list"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 638
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 639
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mOppProfile:Lcom/android/settingslib/bluetooth/OppProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 642
    :cond_7
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->Hid:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Landroid/bluetooth/BluetoothUuid;->Hogp:Landroid/os/ParcelUuid;

    .line 643
    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_9

    :cond_8
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    if-eqz p2, :cond_9

    .line 645
    const-string p2, "LocalBluetoothProfileManager"

    const-string v0, "Add HidProfile to connectable profile list"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 647
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidProfile:Lcom/android/settingslib/bluetooth/HidProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 650
    :cond_9
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    if-eqz p2, :cond_a

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/HidDeviceProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-eqz p2, :cond_a

    .line 652
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 653
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHidDeviceProfile:Lcom/android/settingslib/bluetooth/HidDeviceProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 656
    :cond_a
    if-eqz p5, :cond_b

    .line 657
    const-string p2, "LocalBluetoothProfileManager"

    const-string v0, "Valid PAN-NAP connection exists."

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    :cond_b
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->NAP:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p2

    if-eqz p2, :cond_c

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    if-nez p2, :cond_d

    :cond_c
    if-eqz p5, :cond_e

    .line 660
    :cond_d
    const-string p2, "LocalBluetoothProfileManager"

    const-string p5, "Add PanProfile to connectable profile list"

    invoke-static {p2, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 662
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPanProfile:Lcom/android/settingslib/bluetooth/PanProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 665
    :cond_e
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 p5, 0x1

    const/4 v0, 0x2

    if-eqz p2, :cond_f

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    .line 666
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/MapProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v0, :cond_f

    .line 667
    const-string p2, "LocalBluetoothProfileManager"

    const-string v1, "Add MapProfile to connectable profile list"

    invoke-static {p2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 668
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 669
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 670
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapProfile:Lcom/android/settingslib/bluetooth/MapProfile;

    invoke-virtual {p2, p6, p5}, Lcom/android/settingslib/bluetooth/MapProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 673
    :cond_f
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz p2, :cond_10

    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    .line 674
    invoke-virtual {p2, p6}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result p2

    if-ne p2, v0, :cond_10

    .line 675
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 676
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 677
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapProfile:Lcom/android/settingslib/bluetooth/PbapServerProfile;

    invoke-virtual {p2, p6, p5}, Lcom/android/settingslib/bluetooth/PbapServerProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 680
    :cond_10
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    if-eqz p2, :cond_11

    .line 681
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 682
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mMapClientProfile:Lcom/android/settingslib/bluetooth/MapClientProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 685
    :cond_11
    iget-boolean p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mUsePbapPce:Z

    if-eqz p2, :cond_12

    .line 686
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-interface {p3, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 687
    iget-object p2, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mPbapClientProfile:Lcom/android/settingslib/bluetooth/PbapClientProfile;

    invoke-interface {p4, p2}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 690
    :cond_12
    sget-object p2, Landroid/bluetooth/BluetoothUuid;->HearingAid:Landroid/os/ParcelUuid;

    invoke-static {p1, p2}, Landroid/bluetooth/BluetoothUuid;->isUuidPresent([Landroid/os/ParcelUuid;Landroid/os/ParcelUuid;)Z

    move-result p1

    if-eqz p1, :cond_13

    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    if-eqz p1, :cond_13

    .line 692
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-interface {p3, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object p1, p0, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->mHearingAidProfile:Lcom/android/settingslib/bluetooth/HearingAidProfile;

    invoke-interface {p4, p1}, Ljava/util/Collection;->remove(Ljava/lang/Object;)Z

    .line 697
    :cond_13
    const-string p1, "LocalBluetoothProfileManager"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "New Profiles"

    invoke-virtual {p2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 699
    monitor-exit p0

    return-void

    .line 591
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
