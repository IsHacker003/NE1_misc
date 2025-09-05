.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;
.super Ljava/lang/Object;
.source "SimStatusDialogController.java"

# interfaces
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPause;
.implements Lcom/android/settingslib/core/lifecycle/events/OnResume;


# static fields
.field static final CELLULAR_NETWORK_STATE:I = 0x7f0a00f5

.field static final CELL_DATA_NETWORK_TYPE_VALUE_ID:I = 0x7f0a00f1

.field static final CELL_ID_INFO_LABEL_ID:I = 0x7f0a00a5

.field static final CELL_ID_INFO_VALUE_ID:I = 0x7f0a00a6

.field static final CELL_VOICE_NETWORK_TYPE_VALUE_ID:I = 0x7f0a03d2

.field static final EID_INFO_VALUE_ID:I = 0x7f0a0147

.field static final ICCID_INFO_LABEL_ID:I = 0x7f0a0194

.field static final ICCID_INFO_VALUE_ID:I = 0x7f0a0195

.field static final IMS_REGISTRATION_STATE_LABEL_ID:I = 0x7f0a01aa

.field static final IMS_REGISTRATION_STATE_VALUE_ID:I = 0x7f0a01ab

.field static final MCC_MNC_INFO_LABEL_ID:I = 0x7f0a0206

.field static final MCC_MNC_INFO_VALUE_ID:I = 0x7f0a0207

.field static final NETWORK_PROVIDER_VALUE_ID:I = 0x7f0a0249

.field static final OPERATOR_INFO_LABEL_ID:I = 0x7f0a01e3

.field static final OPERATOR_INFO_VALUE_ID:I = 0x7f0a01e4

.field static final PHONE_NUMBER_VALUE_ID:I = 0x7f0a023c

.field static final ROAMING_INFO_VALUE_ID:I = 0x7f0a02ba

.field static final SERVICE_STATE_VALUE_ID:I = 0x7f0a02f7

.field static final SID_NID_INFO_LABEL_ID:I = 0x7f0a0308

.field static final SID_NID_INFO_VALUE_ID:I = 0x7f0a0309

.field static final SIGNAL_STRENGTH_LABEL_ID:I = 0x7f0a030b

.field static final SIGNAL_STRENGTH_VALUE_ID:I = 0x7f0a030c


# instance fields
.field private final mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

.field private final mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

.field private mCdmaSimStatus:Lcom/mediatek/settings/cdma/CdmaSimStatus;

.field private final mContext:Landroid/content/Context;

.field private final mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

.field private final mEuiccManager:Landroid/telephony/euicc/EuiccManager;

.field private mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private final mRes:Landroid/content/res/Resources;

.field private mShowLatestAreaInfo:Z

.field private final mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$1;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    .line 167
    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    .line 168
    invoke-virtual {p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    .line 169
    invoke-direct {p0, p3}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 170
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string p3, "carrier_config"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/CarrierConfigManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 172
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string p3, "euicc"

    invoke-virtual {p1, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/euicc/EuiccManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    .line 174
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    .line 176
    if-eqz p2, :cond_0

    .line 177
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 183
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p2

    .line 182
    invoke-virtual {p1, p2}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    goto :goto_0

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 191
    :goto_0
    new-instance p1, Lcom/mediatek/settings/cdma/CdmaSimStatus;

    iget-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object p3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-direct {p1, p2, p3}, Lcom/mediatek/settings/cdma/CdmaSimStatus;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;Landroid/telephony/SubscriptionInfo;)V

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCdmaSimStatus:Lcom/mediatek/settings/cdma/CdmaSimStatus;

    .line 194
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getMiscPlugin(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISettingsMiscExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    .line 195
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;
    .locals 0

    .line 69
    iget-object p0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;I)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateDataState(I)V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;)V
    .locals 0

    .line 69
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$600(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 69
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateCdmaStatus(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method private getPhoneSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 4

    .line 529
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 530
    invoke-virtual {v0, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 531
    const-string v1, "SimStatusDialogCtrl"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getPhoneSubscriptionInfo, slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", subInfo="

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 532
    if-nez v0, :cond_0

    const-string p1, "null"

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 531
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    return-object v0
.end method

.method private removeCdmaStatus()V
    .locals 2

    .line 638
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0206    # @id/mcc_mnc_id_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 639
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0207    # @id/mcc_mnc_id_value

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 640
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0308    # @id/sid_nid_id_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 641
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0309    # @id/sid_nid_id_value

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 642
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a00a5    # @id/cell_id_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 643
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a00a6    # @id/cell_id_value

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 644
    return-void
.end method

.method private resetSignalStrength()V
    .locals 3

    .line 399
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const-string v1, "0"

    const v2, 0x7f0a030c    # @id/signal_strength_value

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 400
    return-void
.end method

.method private updateCdmaStatus(Landroid/telephony/ServiceState;)V
    .locals 5

    .line 620
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 621
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v1

    .line 622
    const-string v2, "SimStatusDialogCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCdmaStatus, subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", phoneType="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 v0, 0x2

    if-ne v1, v0, :cond_0

    .line 626
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateMccMnc()V

    .line 628
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSidNid(Landroid/telephony/ServiceState;)V

    .line 630
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateCellId()V

    goto :goto_0

    .line 632
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->removeCdmaStatus()V

    .line 634
    :goto_0
    return-void
.end method

.method private updateCellId()V
    .locals 5

    .line 683
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    .line 684
    instance-of v1, v0, Landroid/telephony/cdma/CdmaCellLocation;

    const v2, 0x7f0a00a6    # @id/cell_id_value

    if-eqz v1, :cond_0

    .line 685
    check-cast v0, Landroid/telephony/cdma/CdmaCellLocation;

    .line 686
    invoke-virtual {v0}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 685
    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 687
    const-string v1, "SimStatusDialogCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCellId, cellId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 688
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 689
    goto :goto_0

    .line 690
    :cond_0
    const-string v0, "SimStatusDialogCtrl"

    const-string v1, "updateCellId, not CDMA cell location."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 694
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a00a5    # @id/cell_id_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->isSettingOnScreen(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 695
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->addSettingToScreen(I)V

    .line 696
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->addSettingToScreen(I)V

    .line 698
    :cond_1
    return-void
.end method

.method private updateDataState(I)V
    .locals 2

    .line 287
    packed-switch p1, :pswitch_data_0

    .line 301
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 292
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120acf    # @string/radioInfo_data_suspended 'Suspended'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 293
    goto :goto_0

    .line 289
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120acc    # @string/radioInfo_data_connected 'Connected'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 290
    goto :goto_0

    .line 295
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120acd    # @string/radioInfo_data_connecting 'Connecting'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 296
    goto :goto_0

    .line 298
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f120ace    # @string/radioInfo_data_disconnected 'Disconnected'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 299
    nop

    .line 305
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a00f5    # @id/data_state_value

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 306
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateEid()V
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mEuiccManager:Landroid/telephony/euicc/EuiccManager;

    invoke-virtual {v1}, Landroid/telephony/euicc/EuiccManager;->getEid()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a0147    # @id/esim_id_value

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 509
    return-void
.end method

.method private updateIccidNumber()V
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 491
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 492
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 494
    nop

    .line 495
    if-eqz v1, :cond_0

    .line 496
    const-string v2, "show_iccid_in_sim_status_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    goto :goto_0

    .line 499
    :cond_0
    const/4 v1, 0x0

    :goto_0
    const v2, 0x7f0a0195    # @id/icc_id_value

    if-nez v1, :cond_1

    .line 500
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0194    # @id/icc_id_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 501
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    goto :goto_1

    .line 503
    :cond_1
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 505
    :goto_1
    return-void
.end method

.method private updateImsRegistrationState()V
    .locals 4

    .line 512
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 513
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 514
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 515
    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 516
    :cond_0
    const-string v2, "show_ims_registration_status_bool"

    invoke-virtual {v1, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 517
    :goto_0
    const v2, 0x7f0a01ab    # @id/ims_reg_state_value

    if-eqz v1, :cond_2

    .line 518
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->isImsRegistered(I)Z

    move-result v0

    .line 519
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    if-eqz v0, :cond_1

    .line 520
    const v0, 0x7f12073e    # @string/ims_reg_status_registered 'Registered'

    goto :goto_1

    :cond_1
    const v0, 0x7f12073d    # @string/ims_reg_status_not_registered 'Not registered'

    .line 519
    :goto_1
    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 521
    goto :goto_2

    .line 522
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a01aa    # @id/ims_reg_state_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 523
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 525
    :goto_2
    return-void
.end method

.method private updateLatestAreaInfo()V
    .locals 2

    .line 310
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11200a0    # @android:bool/config_single_volume

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 312
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    .line 314
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-nez v0, :cond_1

    .line 315
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a01e3    # @id/latest_area_info_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 316
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a01e4    # @id/latest_area_info_value

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 318
    :cond_1
    return-void
.end method

.method private updateMccMnc()V
    .locals 5

    .line 647
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 648
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v1

    .line 649
    const-string v2, "SimStatusDialogCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMccMnc, subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", numeric="

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const v2, 0x7f0a0207    # @id/mcc_mnc_id_value

    const/4 v3, 0x3

    if-le v0, v3, :cond_0

    .line 652
    const/4 v0, 0x0

    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 653
    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 654
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 655
    const-string v1, "SimStatusDialogCtrl"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateMccMnc, mccmnc="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 657
    goto :goto_0

    .line 658
    :cond_0
    const-string v0, "SimStatusDialogCtrl"

    const-string v1, "updateMccMnc, numeric is too short."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 662
    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0206    # @id/mcc_mnc_id_label

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->isSettingOnScreen(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 663
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->addSettingToScreen(I)V

    .line 664
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {v0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->addSettingToScreen(I)V

    .line 666
    :cond_1
    return-void
.end method

.method private updateNetworkProvider(Landroid/telephony/ServiceState;)V
    .locals 2

    .line 274
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlpha()Ljava/lang/String;

    move-result-object p1

    const v1, 0x7f0a0249    # @id/operator_name_value

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 276
    return-void
.end method

.method private updateNetworkType()V
    .locals 8

    .line 404
    nop

    .line 405
    nop

    .line 406
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 407
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v1

    .line 408
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v2

    .line 409
    const-string v3, "SimStatusDialogCtrl"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateNetworkType, dataType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", voiceType="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 413
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 415
    :cond_0
    move-object v1, v3

    :goto_0
    if-eqz v2, :cond_1

    .line 416
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v3

    .line 441
    :cond_1
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    if-eqz v2, :cond_5

    .line 442
    const/4 v2, 0x0

    .line 444
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    iget-object v5, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 449
    const-string v5, "oem_key_rat_name_of_4g_int"

    invoke-virtual {v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 452
    nop

    .line 453
    move v2, v4

    goto :goto_1

    .line 450
    :catch_0
    move-exception v4

    .line 451
    const-string v5, "SimStatusDialogCtrl"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MobileNetworkSettings: unable to access carrier config servicei e = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v5, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 453
    :goto_1
    const-string v4, "SimStatusDialogCtrl"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateNetworkType dataNetworkTypeName = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " voiceNetworkTypeName="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " ratName4GLTE="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const/4 v4, 0x2

    if-ne v2, v4, :cond_3

    .line 455
    const-string v2, "4G"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 456
    const-string v1, "LTE"

    .line 458
    :cond_2
    const-string v2, "4G"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 459
    const-string v3, "LTE"

    goto :goto_2

    .line 461
    :cond_3
    const/4 v4, 0x1

    if-ne v2, v4, :cond_5

    .line 462
    const-string v2, "LTE"

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 463
    const-string v1, "4G"

    .line 465
    :cond_4
    const-string v2, "LTE"

    invoke-static {v3, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 466
    const-string v3, "4G"

    .line 473
    :cond_5
    :goto_2
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v2, v1, v0}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->getNetworktypeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 474
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mMiscExt:Lcom/mediatek/settings/ext/ISettingsMiscExt;

    invoke-interface {v2, v3, v0}, Lcom/mediatek/settings/ext/ISettingsMiscExt;->getNetworktypeString(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    .line 477
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v3, 0x7f0a03d2    # @id/voice_network_type_value

    invoke-virtual {v2, v3, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 478
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f0a00f1    # @id/data_network_type_value

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 479
    return-void
.end method

.method private updatePhoneNumber()V
    .locals 4

    .line 280
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 281
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneNumber()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    .line 280
    invoke-virtual {v1, v2, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0a023c    # @id/number_value

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 282
    return-void
.end method

.method private updateRoamingStatus(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 482
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result p1

    const v0, 0x7f0a02ba    # @id/roaming_state_value

    if-eqz p1, :cond_0

    .line 483
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120adc    # @string/radioInfo_roaming_in 'Roaming'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    goto :goto_0

    .line 485
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v2, 0x7f120add    # @string/radioInfo_roaming_not 'Not Roaming'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 487
    :goto_0
    return-void
.end method

.method private updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 321
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateServiceState, serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 323
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 324
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->resetSignalStrength()V

    .line 329
    :cond_1
    packed-switch v0, :pswitch_data_0

    .line 345
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 342
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120ae0    # @string/radioInfo_service_off 'Radio Off'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 343
    goto :goto_0

    .line 339
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120ae1    # @string/radioInfo_service_out 'Out of Service'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 340
    goto :goto_0

    .line 331
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120adf    # @string/radioInfo_service_in 'In Service'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 333
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 334
    nop

    .line 349
    :goto_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v2, 0x7f0a02f7    # @id/service_state_value

    invoke-virtual {v1, v2, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 352
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCdmaSimStatus:Lcom/mediatek/settings/cdma/CdmaSimStatus;

    invoke-virtual {v0, p1}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->setServiceState(Landroid/telephony/ServiceState;)V

    .line 353
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updateSidNid(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 669
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSidNid, serviceState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 670
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaSystemId()I

    move-result v0

    .line 671
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getCdmaNetworkId()I

    move-result p1

    .line 672
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ","

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 673
    const-string v0, "SimStatusDialogCtrl"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSidNid, sidnid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v1, 0x7f0a0309    # @id/sid_nid_id_value

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 676
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v0, 0x7f0a0308    # @id/sid_nid_id_label

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->isSettingOnScreen(I)Z

    move-result p1

    if-nez p1, :cond_0

    .line 677
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->addSettingToScreen(I)V

    .line 678
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p1, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->addSettingToScreen(I)V

    .line 680
    :cond_0
    return-void
.end method

.method private updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 10

    .line 356
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 357
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCarrierConfigManager:Landroid/telephony/CarrierConfigManager;

    .line 358
    invoke-virtual {v1, v0}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 360
    nop

    .line 361
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 362
    const-string v2, "show_signal_strength_in_sim_status_bool"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0

    .line 365
    :cond_0
    move v0, v1

    :goto_0
    const v2, 0x7f0a030c    # @id/signal_strength_value

    if-nez v0, :cond_1

    .line 366
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    const v0, 0x7f0a030b    # @id/signal_strength_label

    invoke-virtual {p1, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 367
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    invoke-virtual {p1, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->removeSettingFromScreen(I)V

    .line 368
    return-void

    .line 371
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 373
    if-eq v1, v0, :cond_5

    const/4 v3, 0x3

    if-ne v3, v0, :cond_2

    goto :goto_1

    .line 378
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getDbm(Landroid/telephony/SignalStrength;)I

    move-result v0

    .line 379
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getAsuLevel(Landroid/telephony/SignalStrength;)I

    move-result v3

    .line 381
    const/4 v4, -0x1

    const/4 v5, 0x0

    if-ne v0, v4, :cond_3

    .line 382
    nop

    .line 385
    move v0, v5

    :cond_3
    if-ne v3, v4, :cond_4

    .line 386
    nop

    .line 389
    move v3, v5

    :cond_4
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mDialog:Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    const/4 v7, 0x2

    new-array v8, v7, [Ljava/lang/Object;

    .line 390
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v1

    .line 389
    const v9, 0x7f120ca8    # @string/sim_signal_strength '%1$d dBm %2$d asu'

    invoke-virtual {v6, v9, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v2, v6}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->setText(ILjava/lang/CharSequence;)V

    .line 393
    iget-object v4, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mCdmaSimStatus:Lcom/mediatek/settings/cdma/CdmaSimStatus;

    iget-object v6, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mRes:Landroid/content/res/Resources;

    new-array v7, v7, [Ljava/lang/Object;

    .line 394
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v5

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v7, v1

    invoke-virtual {v6, v9, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 393
    invoke-virtual {v4, p1, v2, v0}, Lcom/mediatek/settings/cdma/CdmaSimStatus;->updateSignalStrength(Landroid/telephony/SignalStrength;ILjava/lang/String;)V

    .line 396
    return-void

    .line 375
    :cond_5
    :goto_1
    return-void
.end method


# virtual methods
.method getAsuLevel(Landroid/telephony/SignalStrength;)I
    .locals 0

    .line 550
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    return p1
.end method

.method getCurrentServiceState()Landroid/telephony/ServiceState;
    .locals 2

    .line 539
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 540
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 539
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getServiceStateForSubscriber(I)Landroid/telephony/ServiceState;

    move-result-object v0

    return-object v0
.end method

.method getDbm(Landroid/telephony/SignalStrength;)I
    .locals 0

    .line 545
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result p1

    return p1
.end method

.method getPhoneNumber()Ljava/lang/String;
    .locals 2

    .line 605
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    invoke-static {v0, v1}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPhoneStateListener()Landroid/telephony/PhoneStateListener;
    .locals 2

    .line 555
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    .line 556
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController$2;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;Ljava/lang/Integer;)V

    .line 555
    return-object v0
.end method

.method getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 1

    .line 610
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v0

    return-object v0
.end method

.method getSimSerialNumber(I)Ljava/lang/String;
    .locals 1

    .line 615
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public initialize()V
    .locals 2

    .line 198
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateEid()V

    .line 200
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 202
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->removeCdmaStatus()V

    .line 203
    return-void

    .line 206
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getPhoneStateListener()Landroid/telephony/PhoneStateListener;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 209
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    .line 210
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updatePhoneNumber()V

    .line 211
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateLatestAreaInfo()V

    .line 212
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 214
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    .line 215
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    .line 216
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateIccidNumber()V

    .line 217
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateImsRegistrationState()V

    .line 220
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateCdmaStatus(Landroid/telephony/ServiceState;)V

    .line 221
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 259
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 260
    return-void

    .line 263
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 266
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 267
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 269
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 5

    .line 225
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mSubscriptionInfo:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 226
    return-void

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateDataState(I)V

    .line 231
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getCurrentServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    .line 232
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkProvider(Landroid/telephony/ServiceState;)V

    .line 233
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateServiceState(Landroid/telephony/ServiceState;)V

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->getSignalStrength()Landroid/telephony/SignalStrength;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    .line 235
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateNetworkType()V

    .line 236
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateRoamingStatus(Landroid/telephony/ServiceState;)V

    .line 237
    invoke-direct {p0, v0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->updateCdmaStatus(Landroid/telephony/ServiceState;)V

    .line 240
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x141

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mShowLatestAreaInfo:Z

    if-eqz v0, :cond_1

    .line 246
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mAreaInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.android.cellbroadcastreceiver.CB_AREA_INFO_RECEIVED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 250
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.android.cellbroadcastreceiver.GET_LATEST_CB_AREA_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 251
    const-string v1, "com.android.cellbroadcastreceiver"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 252
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogController;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_EMERGENCY_BROADCAST"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 255
    :cond_1
    return-void
.end method
