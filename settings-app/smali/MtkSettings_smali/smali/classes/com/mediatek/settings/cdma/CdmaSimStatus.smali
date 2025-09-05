.class public Lcom/mediatek/settings/cdma/CdmaSimStatus;
.super Ljava/lang/Object;
.source "CdmaSimStatus.java"


# instance fields
.field private mFragment:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

.field private mServiceState:Landroid/telephony/ServiceState;

.field private mSubInfo:Landroid/telephony/SubscriptionInfo;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Landroid/telephony/SubscriptionInfo;)V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mFragment:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    .line 26
    iput-object p2, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    .line 27
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "phone"

    .line 28
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 29
    return-void
.end method

.method private getCdmaSignalStrength(Landroid/telephony/SignalStrength;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 71
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 72
    const-string v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCdmaSignalStrength, serviceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v0, :cond_2

    .line 75
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getVoiceNetworkType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 76
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaDbm()I

    move-result p2

    .line 77
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getCdmaAsuLevel()I

    move-result p1

    .line 79
    const/4 v0, -0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 80
    nop

    .line 83
    move p2, v1

    :cond_0
    if-ne p1, v0, :cond_1

    .line 84
    nop

    .line 87
    move p1, v1

    :cond_1
    const-string v0, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCdmaSignalStrength, 1xRTT signalDbm="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", signalAsu="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mFragment:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f120ca8    # @string/sim_signal_strength '%1$d dBm %2$d asu'

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    .line 90
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v3, v1

    const/4 p2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, p2

    .line 89
    invoke-virtual {v0, v2, v3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 93
    :cond_2
    return-object p2
.end method

.method private getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .line 97
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mServiceState:Landroid/telephony/ServiceState;

    return-object v0
.end method

.method private isRegisterUnderLteNetwork()Z
    .locals 4

    .line 101
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 102
    const-string v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRegisterUnderLteNetwork, serviceState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    nop

    .line 105
    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataNetworkType()I

    move-result v1

    const/16 v2, 0xd

    if-ne v1, v2, :cond_0

    .line 107
    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    if-nez v0, :cond_0

    .line 108
    const/4 v0, 0x1

    goto :goto_0

    .line 111
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CdmaSimStatus"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRegisterUnderLteNetwork, lteNetwork="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return v0
.end method

.method private setSummaryText(ILjava/lang/String;)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mFragment:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, p1, p2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 117
    return-void
.end method


# virtual methods
.method public setServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 32
    const-string v0, "CdmaSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setServiceState, serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    iput-object p1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mServiceState:Landroid/telephony/ServiceState;

    .line 34
    return-void
.end method

.method public updateSignalStrength(Landroid/telephony/SignalStrength;ILjava/lang/String;)V
    .locals 6

    .line 37
    const-string v0, "CdmaSimStatus"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSignalStrength, signalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 38
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mSubInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isSupportCdma(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 39
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->isGsm()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->isRegisterUnderLteNetwork()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-direct {p0, p1, p3}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->getCdmaSignalStrength(Landroid/telephony/SignalStrength;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    .line 45
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteDbm()I

    move-result v0

    .line 46
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getLteAsuLevel()I

    move-result p1

    .line 48
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 49
    nop

    .line 52
    move v0, v2

    :cond_0
    if-ne p1, v1, :cond_1

    .line 53
    nop

    .line 56
    move p1, v2

    :cond_1
    const-string v1, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateSignalStrength, lteSignalDbm="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", lteSignalAsu="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mFragment:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v3, 0x7f120ca8    # @string/sim_signal_strength '%1$d dBm %2$d asu'

    const/4 v4, 0x2

    new-array v5, v4, [Ljava/lang/Object;

    .line 59
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v5, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v0, 0x1

    aput-object p1, v5, v0

    .line 58
    invoke-virtual {v1, v3, v5}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 60
    const-string v1, "CdmaSimStatus"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateSignalStrength, cdmaSignal="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", lteSignal="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimStatus;->mFragment:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v3, 0x7f120cee    # @string/status_cdma_signal_strength 'CDMA'

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p3, v4, v2

    aput-object p1, v4, v0

    invoke-virtual {v1, v3, v4}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 64
    const-string p3, "CdmaSimStatus"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateSignalStrength, summary="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-direct {p0, p2, p1}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setSummaryText(ILjava/lang/String;)V

    .line 68
    :cond_2
    return-void
.end method
