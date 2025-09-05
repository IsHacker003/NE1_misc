.class public Lcom/mediatek/settings/sim/RadioPowerController;
.super Ljava/lang/Object;
.source "RadioPowerController.java"


# static fields
.field private static final ENG_LOAD:Z

.field private static sInstance:Lcom/mediatek/settings/sim/RadioPowerController;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mTelEx:Lcom/mediatek/telephony/MtkTelephonyManagerEx;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 65
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const-string v0, "RadioPowerController"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    :goto_0
    sput-boolean v0, Lcom/mediatek/settings/sim/RadioPowerController;->ENG_LOAD:Z

    .line 65
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    .line 77
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 79
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mTelEx:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    .line 80
    return-void
.end method

.method private static declared-synchronized createInstance(Landroid/content/Context;)V
    .locals 2

    const-class v0, Lcom/mediatek/settings/sim/RadioPowerController;

    monitor-enter v0

    .line 83
    :try_start_0
    sget-object v1, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    if-nez v1, :cond_0

    .line 84
    new-instance v1, Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/sim/RadioPowerController;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 86
    :cond_0
    monitor-exit v0

    return-void

    .line 82
    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 1

    .line 89
    sget-object v0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    if-nez v0, :cond_0

    .line 90
    invoke-static {p0}, Lcom/mediatek/settings/sim/RadioPowerController;->createInstance(Landroid/content/Context;)V

    .line 92
    :cond_0
    sget-object p0, Lcom/mediatek/settings/sim/RadioPowerController;->sInstance:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object p0
.end method

.method private logInEng(Ljava/lang/String;)V
    .locals 1

    .line 205
    sget-boolean v0, Lcom/mediatek/settings/sim/RadioPowerController;->ENG_LOAD:Z

    if-eqz v0, :cond_0

    .line 206
    const-string v0, "RadioPowerController"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    return-void
.end method

.method private updateRadioMsimDb(IZ)V
    .locals 3

    .line 139
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "msim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 141
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioMsimDb, the current msim_mode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", subId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 144
    nop

    .line 145
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    .line 146
    const/4 v1, 0x1

    shl-int p1, v1, p1

    .line 147
    and-int v2, v0, p1

    if-lez v2, :cond_0

    .line 148
    not-int p1, p1

    and-int/2addr p1, v0

    .line 149
    goto :goto_0

    .line 151
    :cond_0
    or-int/2addr p1, v0

    .line 152
    const/4 v1, 0x0

    .line 155
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateRadioMsimDb, currentSimMode="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", isPriviousRadioOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", turnOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 157
    if-eq p2, v1, :cond_1

    .line 158
    iget-object p2, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "msim_mode_setting"

    invoke-static {p2, v0, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 161
    :cond_1
    const-string p1, "updateRadioMsimDb, quickly click don\'t allow."

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 163
    :goto_1
    return-void
.end method


# virtual methods
.method public isExpectedRadioStateOn(I)Z
    .locals 3

    .line 196
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "msim_mode_setting"

    const/4 v2, -0x1

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 198
    const/4 v1, 0x1

    shl-int v2, v1, p1

    and-int/2addr v0, v2

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 199
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isExpectedRadioStateOn, slot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", expectedRadioOn="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 201
    return v1
.end method

.method public isRadioSwitchComplete(I)Z
    .locals 1

    .line 169
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    const/4 p1, 0x0

    return p1

    .line 173
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v0

    .line 175
    invoke-virtual {p0, p1, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(IZ)Z

    move-result p1

    return p1
.end method

.method public isRadioSwitchComplete(IZ)Z
    .locals 3

    .line 182
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 183
    return v1

    .line 185
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRadioSwitchComplete, slot="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", radioOn="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 188
    if-eqz p2, :cond_2

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result p1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    goto :goto_0

    .line 192
    :cond_1
    return v1

    .line 189
    :cond_2
    :goto_0
    const-string p1, "isRadioSwitchComplete, done."

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 190
    const/4 p1, 0x1

    return p1
.end method

.method public setRadionOn(IZ)Z
    .locals 3

    .line 96
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setRadioOn, turnOn="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 97
    nop

    .line 99
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 100
    return v1

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mTelEx:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isEccInProgress()Z

    move-result v0

    .line 107
    if-nez p2, :cond_1

    if-eqz v0, :cond_1

    .line 108
    const-string p1, "RadioPowerController"

    const-string p2, "Not allow to operate radio power during emergency call"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    iget-object p1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f120b0f    # @string/radio_off_during_emergency_call 'Cannot turn off SIM card during an emergency call.'

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 110
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 111
    return v1

    .line 114
    :cond_1
    const-string v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 116
    if-eqz v0, :cond_4

    .line 118
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mContext:Landroid/content/Context;

    .line 119
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 118
    invoke-interface {v0, p1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result v2

    if-eq v2, p2, :cond_3

    .line 120
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setRadioForSubscriber(IZ)Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 121
    if-eqz v0, :cond_2

    .line 122
    :try_start_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/RadioPowerController;->updateRadioMsimDb(IZ)V

    .line 124
    iget-object v1, p0, Lcom/mediatek/settings/sim/RadioPowerController;->mExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, p1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setRadioPowerState(IZ)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 127
    :catch_0
    move-exception p1

    move v1, v0

    goto :goto_1

    .line 129
    :cond_2
    :goto_0
    move v1, v0

    goto :goto_2

    .line 127
    :catch_1
    move-exception p1

    .line 128
    :goto_1
    const-string p2, "RadioPowerController"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadionOn, RemoteException="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 129
    :cond_3
    :goto_2
    goto :goto_3

    .line 131
    :cond_4
    const-string p1, "telephony is null."

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 134
    :goto_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setRadionOn, isSuccessful="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->logInEng(Ljava/lang/String;)V

    .line 135
    return v1
.end method
