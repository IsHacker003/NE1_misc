.class public Lcom/android/settings/RadioInfo;
.super Landroid/app/Activity;
.source "RadioInfo.java"


# static fields
.field private static final mCellInfoRefreshRateLabels:[Ljava/lang/String;

.field private static final mCellInfoRefreshRates:[I

.field private static final mPreferredNetworkLabels:[Ljava/lang/String;


# instance fields
.field private callState:Landroid/widget/TextView;

.field private carrierProvisioningButton:Landroid/widget/Button;

.field private cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

.field private dBm:Landroid/widget/TextView;

.field private dataNetwork:Landroid/widget/TextView;

.field private dnsCheckState:Landroid/widget/TextView;

.field private dnsCheckToggleButton:Landroid/widget/Button;

.field private eabProvisionedSwitch:Landroid/widget/Switch;

.field private gprsState:Landroid/widget/TextView;

.field private gsmState:Landroid/widget/TextView;

.field private imsVolteProvisionedSwitch:Landroid/widget/Switch;

.field private imsVtProvisionedSwitch:Landroid/widget/Switch;

.field private imsWfcProvisionedSwitch:Landroid/widget/Switch;

.field mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field private mCellInfo:Landroid/widget/TextView;

.field mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mCellInfoRefreshRateIndex:I

.field private mCellInfoResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCellLocationResult:Landroid/telephony/CellLocation;

.field private mCfi:Landroid/widget/TextView;

.field private mCfiValue:Z

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDcRtInfoTv:Landroid/widget/TextView;

.field private final mDefaultNetworkRequest:Landroid/net/NetworkRequest;

.field private mDeviceId:Landroid/widget/TextView;

.field mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

.field private mDownlinkKbps:Landroid/widget/TextView;

.field mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mHttpClientTest:Landroid/widget/TextView;

.field private mHttpClientTestResult:Ljava/lang/String;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field private mLocation:Landroid/widget/TextView;

.field private mMwi:Landroid/widget/TextView;

.field private mMwiValue:Z

.field private mNeighboringCellResult:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mNeighboringCids:Landroid/widget/TextView;

.field private final mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPhyChanConfig:Landroid/widget/TextView;

.field mPingButtonHandler:Landroid/view/View$OnClickListener;

.field private mPingHostnameResultV4:Ljava/lang/String;

.field private mPingHostnameResultV6:Ljava/lang/String;

.field private mPingHostnameV4:Landroid/widget/TextView;

.field private mPingHostnameV6:Landroid/widget/TextView;

.field mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mPreferredNetworkTypeResult:I

.field mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

.field mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mSubscriberId:Landroid/widget/TextView;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

.field mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

.field mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

.field private mUplinkKbps:Landroid/widget/TextView;

.field private mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

.field private number:Landroid/widget/TextView;

.field private oemInfoButton:Landroid/widget/Button;

.field private operatorName:Landroid/widget/TextView;

.field private phone:Lcom/android/internal/telephony/Phone;

.field private pingTestButton:Landroid/widget/Button;

.field private preferredNetworkType:Landroid/widget/Spinner;

.field private radioPowerOnSwitch:Landroid/widget/Switch;

.field private received:Landroid/widget/TextView;

.field private refreshSmscButton:Landroid/widget/Button;

.field private roamingState:Landroid/widget/TextView;

.field private sent:Landroid/widget/TextView;

.field private smsc:Landroid/widget/EditText;

.field private triggercarrierProvisioningButton:Landroid/widget/Button;

.field private updateSmscButton:Landroid/widget/Button;

.field private voiceNetwork:Landroid/widget/TextView;


# direct methods
.method static constructor <clinit>()V
    .locals 23

    .line 105
    const-string v0, "WCDMA preferred"

    const-string v1, "GSM only"

    const-string v2, "WCDMA only"

    const-string v3, "GSM auto (PRL)"

    const-string v4, "CDMA auto (PRL)"

    const-string v5, "CDMA only"

    const-string v6, "EvDo only"

    const-string v7, "Global auto (PRL)"

    const-string v8, "LTE/CDMA auto (PRL)"

    const-string v9, "LTE/UMTS auto (PRL)"

    const-string v10, "LTE/CDMA/UMTS auto (PRL)"

    const-string v11, "LTE only"

    const-string v12, "LTE/WCDMA"

    const-string v13, "TD-SCDMA only"

    const-string v14, "TD-SCDMA/WCDMA"

    const-string v15, "LTE/TD-SCDMA"

    const-string v16, "TD-SCDMA/GSM"

    const-string v17, "TD-SCDMA/UMTS"

    const-string v18, "LTE/TD-SCDMA/WCDMA"

    const-string v19, "LTE/TD-SCDMA/UMTS"

    const-string v20, "TD-SCDMA/CDMA/UMTS"

    const-string v21, "Global/TD-SCDMA"

    const-string v22, "Unknown"

    filled-new-array/range {v0 .. v22}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    .line 149
    const-string v0, "Disabled"

    const-string v1, "Immediate"

    const-string v2, "Min 5s"

    const-string v3, "Min 10s"

    const-string v4, "Min 60s"

    filled-new-array {v0, v1, v2, v3, v4}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    .line 158
    const/4 v0, 0x5

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRates:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7fffffff
        0x0
        0x1388
        0x2710
        0xea60
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .line 102
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 229
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 230
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 235
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    .line 236
    iput-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    .line 238
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    .line 239
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    .line 240
    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    .line 245
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    .line 246
    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addTransportType(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 247
    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    .line 248
    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    .line 250
    new-instance v0, Lcom/android/settings/RadioInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$1;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 258
    new-instance v0, Lcom/android/settings/RadioInfo$2;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$2;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 359
    new-instance v0, Lcom/android/settings/RadioInfo$3;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$3;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    .line 1145
    new-instance v0, Lcom/android/settings/RadioInfo$9;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$9;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1160
    new-instance v0, Lcom/android/settings/RadioInfo$10;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$10;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1175
    new-instance v0, Lcom/android/settings/RadioInfo$11;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$11;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1191
    new-instance v0, Lcom/android/settings/RadioInfo$12;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$12;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1225
    new-instance v0, Lcom/android/settings/RadioInfo$13;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$13;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1234
    new-instance v0, Lcom/android/settings/RadioInfo$14;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$14;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 1303
    new-instance v0, Lcom/android/settings/RadioInfo$16;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$16;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1319
    new-instance v0, Lcom/android/settings/RadioInfo$17;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$17;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1334
    new-instance v0, Lcom/android/settings/RadioInfo$18;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$18;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1349
    new-instance v0, Lcom/android/settings/RadioInfo$19;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$19;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1360
    new-instance v0, Lcom/android/settings/RadioInfo$20;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$20;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    .line 1426
    new-instance v0, Lcom/android/settings/RadioInfo$21;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$21;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    .line 1434
    new-instance v0, Lcom/android/settings/RadioInfo$22;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$22;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    .line 1447
    new-instance v0, Lcom/android/settings/RadioInfo$23;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$23;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    .line 1453
    new-instance v0, Lcom/android/settings/RadioInfo$24;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$24;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1461
    new-instance v0, Lcom/android/settings/RadioInfo$25;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$25;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    .line 1467
    new-instance v0, Lcom/android/settings/RadioInfo$26;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$26;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    .line 1477
    new-instance v0, Lcom/android/settings/RadioInfo$27;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$27;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    .line 1487
    new-instance v0, Lcom/android/settings/RadioInfo$28;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$28;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1516
    new-instance v0, Lcom/android/settings/RadioInfo$29;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$29;-><init>(Lcom/android/settings/RadioInfo;)V

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RadioInfo;II)V
    .locals 0

    .line 102
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RadioInfo;->updateBandwidths(II)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/RadioInfo;Ljava/lang/String;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/RadioInfo;)Ljava/util/List;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$1102(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$1200(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/RadioInfo;Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/RadioInfo;Landroid/telephony/SignalStrength;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateSignalStrength(Landroid/telephony/SignalStrength;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/RadioInfo;Landroid/telephony/ServiceState;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateServiceState(Landroid/telephony/ServiceState;)V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateRadioPowerState()V

    return-void
.end method

.method static synthetic access$1700(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsProvisionedState()V

    return-void
.end method

.method static synthetic access$1800(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePhysicalChannelConfiguration(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/android/settings/RadioInfo;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePreferredNetworkType(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    return-void
.end method

.method static synthetic access$2000()[Ljava/lang/String;
    .locals 1

    .line 102
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/android/settings/RadioInfo;)Landroid/widget/EditText;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$2200(Lcom/android/settings/RadioInfo;)Landroid/widget/Button;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$2300(Lcom/android/settings/RadioInfo;)Ljava/util/List;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$2302(Lcom/android/settings/RadioInfo;Ljava/util/List;)Ljava/util/List;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    return-object p1
.end method

.method static synthetic access$2400(Lcom/android/settings/RadioInfo;Ljava/util/List;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$2500(Lcom/android/settings/RadioInfo;)Landroid/telephony/CellLocation;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object p0
.end method

.method static synthetic access$2502(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)Landroid/telephony/CellLocation;
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    return-object p1
.end method

.method static synthetic access$2600(Lcom/android/settings/RadioInfo;)Landroid/telephony/TelephonyManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/android/settings/RadioInfo;)Landroid/os/Handler;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$2800(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2900(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    return-void
.end method

.method static synthetic access$3000(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3100(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3200(Lcom/android/settings/RadioInfo;)Ljava/lang/String;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$3300(Lcom/android/settings/RadioInfo;)Landroid/widget/TextView;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    return-object p0
.end method

.method static synthetic access$3400(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->pingHostname()V

    return-void
.end method

.method static synthetic access$3500(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->httpClientTest()V

    return-void
.end method

.method static synthetic access$3600(Lcom/android/settings/RadioInfo;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$3700(Lcom/android/settings/RadioInfo;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 102
    iget-object p0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$3800(Lcom/android/settings/RadioInfo;)Z
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result p0

    return p0
.end method

.method static synthetic access$3900(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/RadioInfo;I)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updatePhoneState(I)V

    return-void
.end method

.method static synthetic access$4000(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updatePingState()V

    return-void
.end method

.method static synthetic access$4100(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->refreshSmsc()V

    return-void
.end method

.method static synthetic access$4200(Lcom/android/settings/RadioInfo;)I
    .locals 0

    .line 102
    iget p0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return p0
.end method

.method static synthetic access$4202(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 102
    iput p1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    return p1
.end method

.method static synthetic access$4302(Lcom/android/settings/RadioInfo;I)I
    .locals 0

    .line 102
    iput p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    return p1
.end method

.method static synthetic access$4400()[I
    .locals 1

    .line 102
    sget-object v0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRates:[I

    return-object v0
.end method

.method static synthetic access$4500(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateAllCellInfo()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/RadioInfo;Landroid/telephony/CellLocation;)V
    .locals 0

    .line 102
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    return-void
.end method

.method static synthetic access$602(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    return p1
.end method

.method static synthetic access$700(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    return-void
.end method

.method static synthetic access$802(Lcom/android/settings/RadioInfo;Z)Z
    .locals 0

    .line 102
    iput-boolean p1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    return p1
.end method

.method static synthetic access$900(Lcom/android/settings/RadioInfo;)V
    .locals 0

    .line 102
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    return-void
.end method

.method private final buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;
    .locals 5

    .line 767
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellIdentity()Landroid/telephony/CellIdentityCdma;

    move-result-object v0

    .line 768
    invoke-virtual {p1}, Landroid/telephony/CellInfoCdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthCdma;

    move-result-object v1

    .line 770
    const-string v2, "%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    .line 771
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 772
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getSystemId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 773
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getNetworkId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 774
    invoke-virtual {v0}, Landroid/telephony/CellIdentityCdma;->getBasestationId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x3

    aput-object p1, v3, v0

    .line 775
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x4

    aput-object p1, v3, v0

    .line 776
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getCdmaEcio()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x5

    aput-object p1, v3, v0

    .line 777
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v3, v0

    .line 778
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoEcio()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v3, v0

    .line 779
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthCdma;->getEvdoSnr()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    aput-object p1, v3, v0

    .line 770
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final buildCellInfoString(Ljava/util/List;)Ljava/lang/String;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 832
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1}, Ljava/lang/String;-><init>()V

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 834
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 835
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 836
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 838
    if-eqz p1, :cond_8

    .line 839
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/telephony/CellInfo;

    .line 841
    instance-of v8, v7, Landroid/telephony/CellInfoLte;

    if-eqz v8, :cond_0

    .line 842
    check-cast v7, Landroid/telephony/CellInfoLte;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 843
    :cond_0
    instance-of v8, v7, Landroid/telephony/CellInfoWcdma;

    if-eqz v8, :cond_1

    .line 844
    check-cast v7, Landroid/telephony/CellInfoWcdma;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 845
    :cond_1
    instance-of v8, v7, Landroid/telephony/CellInfoGsm;

    if-eqz v8, :cond_2

    .line 846
    check-cast v7, Landroid/telephony/CellInfoGsm;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 847
    :cond_2
    instance-of v8, v7, Landroid/telephony/CellInfoCdma;

    if-eqz v8, :cond_3

    .line 848
    check-cast v7, Landroid/telephony/CellInfoCdma;

    invoke-direct {v0, v7}, Lcom/android/settings/RadioInfo;->buildCdmaInfoString(Landroid/telephony/CellInfoCdma;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 850
    :cond_3
    :goto_1
    goto :goto_0

    .line 851
    :cond_4
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/16 v7, 0x8

    const/4 v8, 0x7

    const/4 v9, 0x6

    const/4 v10, 0x5

    const/4 v11, 0x4

    const/4 v12, 0x3

    const/4 v13, 0x2

    const/4 v14, 0x1

    const/4 v15, 0x0

    if-eqz v0, :cond_5

    .line 852
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "LTE\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    const/16 v6, 0xb

    new-array v6, v6, [Ljava/lang/Object;

    const-string v17, "SRV"

    aput-object v17, v6, v15

    const-string v17, "MCC"

    aput-object v17, v6, v14

    const-string v17, "MNC"

    aput-object v17, v6, v13

    const-string v17, "TAC"

    aput-object v17, v6, v12

    const-string v17, "CID"

    aput-object v17, v6, v11

    const-string v17, "PCI"

    aput-object v17, v6, v10

    const-string v17, "EARFCN"

    aput-object v17, v6, v9

    const-string v17, "BW"

    aput-object v17, v6, v8

    const-string v17, "RSRP"

    aput-object v17, v6, v7

    const-string v17, "RSRQ"

    const/16 v16, 0x9

    aput-object v17, v6, v16

    const/16 v17, 0xa

    const-string v18, "TA"

    aput-object v18, v6, v17

    invoke-static {v1, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 857
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 859
    :cond_5
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_6

    .line 860
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "WCDMA\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v6, "SRV"

    aput-object v6, v4, v15

    const-string v6, "MCC"

    aput-object v6, v4, v14

    const-string v6, "MNC"

    aput-object v6, v4, v13

    const-string v6, "LAC"

    aput-object v6, v4, v12

    const-string v6, "CID"

    aput-object v6, v4, v11

    const-string v6, "UARFCN"

    aput-object v6, v4, v10

    const-string v6, "PSC"

    aput-object v6, v4, v9

    const-string v6, "RSCP"

    aput-object v6, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 865
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_7

    .line 866
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "GSM\n%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    new-array v4, v7, [Ljava/lang/Object;

    const-string v5, "SRV"

    aput-object v5, v4, v15

    const-string v5, "MCC"

    aput-object v5, v4, v14

    const-string v5, "MNC"

    aput-object v5, v4, v13

    const-string v5, "LAC"

    aput-object v5, v4, v12

    const-string v5, "CID"

    aput-object v5, v4, v11

    const-string v5, "ARFCN"

    aput-object v5, v4, v10

    const-string v5, "BSIC"

    aput-object v5, v4, v9

    const-string v5, "RSSI"

    aput-object v5, v4, v8

    invoke-static {v1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 869
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 871
    :cond_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-eqz v0, :cond_9

    .line 872
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "CDMA/EVDO\n%-3.3s %-5.5s %-5.5s %-5.5s %-6.6s %-6.6s %-6.6s %-6.6s %-5.5s\n"

    const/16 v3, 0x9

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "SRV"

    aput-object v4, v3, v15

    const-string v4, "SID"

    aput-object v4, v3, v14

    const-string v4, "NID"

    aput-object v4, v3, v13

    const-string v4, "BSID"

    aput-object v4, v3, v12

    const-string v4, "C-RSSI"

    aput-object v4, v3, v11

    const-string v4, "C-ECIO"

    aput-object v4, v3, v10

    const-string v4, "E-RSSI"

    aput-object v4, v3, v9

    const-string v4, "E-ECIO"

    aput-object v4, v3, v8

    const-string v4, "E-SNR"

    aput-object v4, v3, v7

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 875
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    .line 878
    :cond_8
    const-string v1, "unknown"

    .line 881
    :cond_9
    :goto_2
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final buildGsmInfoString(Landroid/telephony/CellInfoGsm;)Ljava/lang/String;
    .locals 5

    .line 783
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellIdentity()Landroid/telephony/CellIdentityGsm;

    move-result-object v0

    .line 784
    invoke-virtual {p1}, Landroid/telephony/CellInfoGsm;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthGsm;

    move-result-object v1

    .line 786
    const-string v2, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-4.4s %-4.4s\n"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 787
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 788
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 789
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 790
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getLac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    .line 791
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getCid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 792
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getArfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    aput-object p1, v3, v4

    .line 793
    invoke-virtual {v0}, Landroid/telephony/CellIdentityGsm;->getBsic()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v3, v0

    .line 794
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthGsm;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v3, v0

    .line 786
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final buildLteInfoString(Landroid/telephony/CellInfoLte;)Ljava/lang/String;
    .locals 5

    .line 798
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellIdentity()Landroid/telephony/CellIdentityLte;

    move-result-object v0

    .line 799
    invoke-virtual {p1}, Landroid/telephony/CellInfoLte;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthLte;

    move-result-object v1

    .line 801
    const-string v2, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-3.3s %-6.6s %-2.2s %-4.4s %-4.4s %-2.2s\n"

    const/16 v3, 0xb

    new-array v3, v3, [Ljava/lang/Object;

    .line 803
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 804
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 805
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 806
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getTac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    .line 807
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getCi()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 808
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getPci()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    aput-object p1, v3, v4

    .line 809
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getEarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x6

    aput-object p1, v3, v4

    .line 810
    invoke-virtual {v0}, Landroid/telephony/CellIdentityLte;->getBandwidth()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v3, v0

    .line 811
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x8

    aput-object p1, v3, v0

    .line 812
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getRsrq()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x9

    aput-object p1, v3, v0

    .line 813
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthLte;->getTimingAdvance()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0xa

    aput-object p1, v3, v0

    .line 801
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final buildWcdmaInfoString(Landroid/telephony/CellInfoWcdma;)Ljava/lang/String;
    .locals 5

    .line 817
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellIdentity()Landroid/telephony/CellIdentityWcdma;

    move-result-object v0

    .line 818
    invoke-virtual {p1}, Landroid/telephony/CellInfoWcdma;->getCellSignalStrength()Landroid/telephony/CellSignalStrengthWcdma;

    move-result-object v1

    .line 820
    const-string v2, "%-3.3s %-3.3s %-3.3s %-5.5s %-5.5s %-6.6s %-3.3s %-4.4s\n"

    const/16 v3, 0x8

    new-array v3, v3, [Ljava/lang/Object;

    .line 821
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    .line 822
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMcc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x1

    aput-object p1, v3, v4

    .line 823
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getMnc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x2

    aput-object p1, v3, v4

    .line 824
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getLac()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x3

    aput-object p1, v3, v4

    .line 825
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getCid()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x4

    aput-object p1, v3, v4

    .line 826
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getUarfcn()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v4, 0x5

    aput-object p1, v3, v4

    .line 827
    invoke-virtual {v0}, Landroid/telephony/CellIdentityWcdma;->getPsc()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x6

    aput-object p1, v3, v0

    .line 828
    invoke-virtual {v1}, Landroid/telephony/CellSignalStrengthWcdma;->getDbm()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->getCellInfoDisplayString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x7

    aput-object p1, v3, v0

    .line 820
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private final getCellInfoDisplayString(I)Ljava/lang/String;
    .locals 1

    .line 737
    const v0, 0x7fffffff

    if-eq p1, v0, :cond_0

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    return-object p1
.end method

.method private final getConnectionStatusString(Landroid/telephony/CellInfo;)Ljava/lang/String;
    .locals 4

    .line 745
    const-string v0, ""

    .line 746
    const-string v1, ""

    .line 747
    const-string v2, ""

    .line 749
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->isRegistered()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 750
    const-string v0, "R"

    .line 752
    :cond_0
    invoke-virtual {p1}, Landroid/telephony/CellInfo;->getCellConnectionStatus()I

    move-result p1

    const v3, 0x7fffffff

    if-eq p1, v3, :cond_1

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 754
    :pswitch_0
    const-string v1, "S"

    goto :goto_0

    .line 753
    :pswitch_1
    const-string v1, "P"

    goto :goto_0

    .line 755
    :pswitch_2
    const-string v1, "N"

    goto :goto_0

    .line 756
    :cond_1
    nop

    .line 759
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 760
    const-string v2, "+"

    .line 763
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private httpClientTest()V
    .locals 4

    .line 1057
    nop

    .line 1060
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Ljava/net/URL;

    const-string v2, "https://www.google.com"

    invoke-direct {v1, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 1061
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1062
    :try_start_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0

    const/16 v2, 0xc8

    if-ne v0, v2, :cond_0

    .line 1063
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    goto :goto_0

    .line 1065
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fail: Code: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1070
    :goto_0
    if-eqz v1, :cond_1

    .line 1071
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_2

    .line 1070
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 1067
    :catch_0
    move-exception v0

    move-object v0, v1

    goto :goto_1

    .line 1070
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    goto :goto_3

    .line 1067
    :catch_1
    move-exception v1

    .line 1068
    :goto_1
    :try_start_2
    const-string v1, "Fail: IOException"

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1070
    if-eqz v0, :cond_1

    .line 1071
    invoke-virtual {v0}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 1074
    :cond_1
    :goto_2
    return-void

    .line 1070
    :goto_3
    if-eqz v1, :cond_2

    .line 1071
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    throw v0
.end method

.method private static isEabEnabledByPlatform(Landroid/content/Context;)Z
    .locals 1

    .line 1387
    if-eqz p0, :cond_0

    .line 1388
    const-string v0, "carrier_config"

    .line 1389
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 1390
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "use_rcs_presence_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 1392
    const/4 p0, 0x1

    return p0

    .line 1395
    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isEabProvisioned()Z
    .locals 2

    .line 1357
    const/16 v0, 0x19

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/RadioInfo;->isFeatureProvisioned(IZ)Z

    move-result v0

    return v0
.end method

.method private isFeatureProvisioned(IZ)Z
    .locals 3

    .line 1368
    nop

    .line 1369
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_2

    .line 1371
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object v0

    .line 1372
    if-eqz v0, :cond_1

    .line 1373
    nop

    .line 1374
    invoke-virtual {v0, p1}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result v0
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p2, 0x1

    if-ne v0, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 1379
    :cond_1
    :goto_0
    goto :goto_1

    .line 1377
    :catch_0
    move-exception v0

    .line 1378
    const-string v1, "RadioInfo"

    const-string v2, "isFeatureProvisioned() exception:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1382
    :cond_2
    :goto_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "isFeatureProvisioned() featureId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " provisioned="

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1383
    return p2
.end method

.method private isImsVolteProvisioned()Z
    .locals 2

    .line 1312
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 1313
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1314
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1313
    :cond_0
    return v1

    .line 1316
    :cond_1
    return v1
.end method

.method private isImsVtProvisioned()Z
    .locals 2

    .line 1327
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 1328
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1329
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVtProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1328
    :cond_0
    return v1

    .line 1331
    :cond_1
    return v1
.end method

.method private isImsWfcProvisioned()Z
    .locals 2

    .line 1342
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_1

    .line 1343
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1344
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcProvisionedOnDevice(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    nop

    .line 1343
    :cond_0
    return v1

    .line 1346
    :cond_1
    return v1
.end method

.method private isRadioOn()Z
    .locals 2

    .line 1256
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 167
    const-string v0, "RadioInfo"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    return-void
.end method

.method private final pingHostname()V
    .locals 5

    .line 1027
    const/4 v0, 0x0

    const/4 v1, 0x1

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "ping -c 1 www.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1028
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 1029
    if-nez v2, :cond_0

    .line 1030
    const-string v2, "Pass"

    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    goto :goto_0

    .line 1032
    :cond_0
    const-string v3, "Fail(%d)"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1036
    :goto_0
    goto :goto_1

    .line 1048
    :catch_0
    move-exception v0

    goto :goto_4

    .line 1034
    :catch_1
    move-exception v2

    .line 1035
    :try_start_1
    const-string v2, "Fail: IOException"

    iput-object v2, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1038
    :goto_1
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    const-string v3, "ping6 -c 1 www.google.com"

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v2

    .line 1039
    invoke-virtual {v2}, Ljava/lang/Process;->waitFor()I

    move-result v2

    .line 1040
    if-nez v2, :cond_1

    .line 1041
    const-string v0, "Pass"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    goto :goto_2

    .line 1043
    :cond_1
    const-string v3, "Fail(%d)"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-static {v3, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1047
    :goto_2
    goto :goto_3

    .line 1045
    :catch_2
    move-exception v0

    .line 1046
    :try_start_3
    const-string v0, "Fail: IOException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1050
    :goto_3
    goto :goto_5

    .line 1048
    :goto_4
    nop

    .line 1049
    const-string v0, "Fail: InterruptedException"

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1051
    :goto_5
    return-void
.end method

.method private refreshSmsc()V
    .locals 3

    .line 1078
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3ed

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getSmscAddress(Landroid/os/Message;)V

    .line 1079
    return-void
.end method

.method private restoreFromBundle(Landroid/os/Bundle;)V
    .locals 2

    .line 580
    if-nez p1, :cond_0

    .line 581
    return-void

    .line 584
    :cond_0
    const-string v0, "mPingHostnameResultV4"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 585
    const-string v0, "mPingHostnameResultV6"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 586
    const-string v0, "mHttpClientTestResult"

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 588
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 589
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 590
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 592
    const-string v0, "mPreferredNetworkTypeResult"

    sget-object v1, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 595
    const-string v0, "mCellInfoRefreshRateIndex"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 596
    return-void
.end method

.method private final updateAllCellInfo()V
    .locals 2

    .line 1083
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1084
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1085
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1087
    new-instance v0, Lcom/android/settings/RadioInfo$4;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$4;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 1095
    new-instance v1, Lcom/android/settings/RadioInfo$5;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$5;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1105
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1106
    return-void
.end method

.method private updateBandwidths(II)V
    .locals 5

    .line 657
    const/4 v0, -0x1

    const v1, 0x7fffffff

    if-ltz p1, :cond_0

    if-ne p1, v1, :cond_1

    .line 658
    :cond_0
    move p1, v0

    :cond_1
    if-ltz p2, :cond_2

    if-ne p2, v1, :cond_3

    .line 659
    :cond_2
    move p2, v0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    const-string v1, "%-5d"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 660
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    const-string v0, "%-5d"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    aput-object p2, v1, v4

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 661
    return-void
.end method

.method private final updateCallRedirect()V
    .locals 2

    .line 899
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mCfiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 900
    return-void
.end method

.method private final updateCellInfo(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .line 885
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->buildCellInfoString(Ljava/util/List;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 886
    return-void
.end method

.method private final updateDataState()V
    .locals 3

    .line 955
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 956
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 957
    const v2, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 959
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 970
    :pswitch_0
    const v0, 0x7f120acf    # @string/radioInfo_data_suspended 'Suspended'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 961
    :pswitch_1
    const v0, 0x7f120acc    # @string/radioInfo_data_connected 'Connected'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 962
    goto :goto_0

    .line 964
    :pswitch_2
    const v0, 0x7f120acd    # @string/radioInfo_data_connecting 'Connecting'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 965
    goto :goto_0

    .line 967
    :pswitch_3
    const v0, 0x7f120ace    # @string/radioInfo_data_disconnected 'Disconnected'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 968
    nop

    .line 974
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 975
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private final updateDataStats2()V
    .locals 12

    .line 1007
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1009
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxPackets()J

    move-result-wide v1

    .line 1010
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxPackets()J

    move-result-wide v3

    .line 1011
    invoke-static {}, Landroid/net/TrafficStats;->getMobileTxBytes()J

    move-result-wide v5

    .line 1012
    invoke-static {}, Landroid/net/TrafficStats;->getMobileRxBytes()J

    move-result-wide v7

    .line 1014
    const v9, 0x7f120ad3    # @string/radioInfo_display_packets 'pkts'

    invoke-virtual {v0, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v9

    .line 1015
    const v10, 0x7f120ad1    # @string/radioInfo_display_bytes 'bytes'

    invoke-virtual {v0, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1017
    iget-object v10, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1018
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1019
    return-void
.end method

.method private final updateDcRtInfoTv(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 1

    .line 889
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/DataConnectionRealTimeInfo;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 890
    return-void
.end method

.method private updateDnsCheckState()V
    .locals 2

    .line 652
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->isDnsCheckDisabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 653
    const-string v1, "0.0.0.0 allowed"

    goto :goto_0

    :cond_0
    const-string v1, "0.0.0.0 not allowed"

    .line 652
    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 654
    return-void
.end method

.method private updateImsProvisionedState()V
    .locals 3

    .line 1399
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateImsProvisionedState isImsVolteProvisioned()="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 1402
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1403
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVolteProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1404
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1405
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1406
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    .line 1405
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1408
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1409
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsVtProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1410
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1411
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1412
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    .line 1411
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1414
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1415
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isImsWfcProvisioned()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1416
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1417
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 1418
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v2

    .line 1417
    invoke-virtual {v0, v2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1420
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1421
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isEabProvisioned()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1422
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1423
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/RadioInfo;->isEabEnabledByPlatform(Landroid/content/Context;)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 1424
    return-void
.end method

.method private final updateLocation(Landroid/telephony/CellLocation;)V
    .locals 8

    .line 681
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 682
    instance-of v1, p1, Landroid/telephony/gsm/GsmCellLocation;

    const/4 v2, -0x1

    if-eqz v1, :cond_2

    .line 683
    check-cast p1, Landroid/telephony/gsm/GsmCellLocation;

    .line 684
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getLac()I

    move-result v1

    .line 685
    invoke-virtual {p1}, Landroid/telephony/gsm/GsmCellLocation;->getCid()I

    move-result p1

    .line 686
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const v5, 0x7f120ad4    # @string/radioInfo_lac 'LAC'

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 687
    if-ne v1, v2, :cond_0

    const-string v1, "unknown"

    goto :goto_0

    :cond_0
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120acb    # @string/radioInfo_cid 'CID'

    .line 689
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " = "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 690
    if-ne p1, v2, :cond_1

    const-string p1, "unknown"

    goto :goto_1

    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 686
    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 691
    goto/16 :goto_7

    :cond_2
    instance-of v0, p1, Landroid/telephony/cdma/CdmaCellLocation;

    if-eqz v0, :cond_8

    .line 692
    check-cast p1, Landroid/telephony/cdma/CdmaCellLocation;

    .line 693
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationId()I

    move-result v0

    .line 694
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getSystemId()I

    move-result v1

    .line 695
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getNetworkId()I

    move-result v3

    .line 696
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLatitude()I

    move-result v4

    .line 697
    invoke-virtual {p1}, Landroid/telephony/cdma/CdmaCellLocation;->getBaseStationLongitude()I

    move-result p1

    .line 698
    iget-object v5, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "BID = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 699
    if-ne v0, v2, :cond_3

    const-string v0, "unknown"

    goto :goto_2

    :cond_3
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_2
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   SID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 702
    if-ne v1, v2, :cond_4

    const-string v0, "unknown"

    goto :goto_3

    :cond_4
    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_3
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   NID = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 705
    if-ne v3, v2, :cond_5

    const-string v0, "unknown"

    goto :goto_4

    :cond_5
    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_4
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\nLAT = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 708
    if-ne v4, v2, :cond_6

    const-string v0, "unknown"

    goto :goto_5

    :cond_6
    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    :goto_5
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "   LONG = "

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 711
    if-ne p1, v2, :cond_7

    const-string p1, "unknown"

    goto :goto_6

    :cond_7
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 698
    invoke-virtual {v5, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 712
    goto :goto_7

    .line 713
    :cond_8
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 717
    :goto_7
    return-void
.end method

.method private final updateMessageWaiting()V
    .locals 2

    .line 894
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    iget-boolean v1, p0, Lcom/android/settings/RadioInfo;->mMwiValue:Z

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 895
    return-void
.end method

.method private final updateNeighboringCids(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;)V"
        }
    .end annotation

    .line 720
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 722
    if-eqz p1, :cond_1

    .line 723
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 724
    const-string p1, "no neighboring cells"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    .line 726
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/NeighboringCellInfo;

    .line 727
    invoke-virtual {v1}, Landroid/telephony/NeighboringCellInfo;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 728
    goto :goto_0

    .line 731
    :cond_1
    const-string p1, "unknown"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 733
    :cond_2
    :goto_1
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 734
    return-void
.end method

.method private final updateNetworkType()V
    .locals 2

    .line 978
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 979
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    .line 980
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 981
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 980
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 982
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 983
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getServiceState()Landroid/telephony/ServiceState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v1

    .line 982
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 985
    :cond_0
    return-void
.end method

.method private final updatePhoneState(I)V
    .locals 2

    .line 935
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 936
    const v1, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 938
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 946
    :pswitch_0
    const p1, 0x7f120ada    # @string/radioInfo_phone_offhook 'Call in Progress'

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 943
    :pswitch_1
    const p1, 0x7f120adb    # @string/radioInfo_phone_ringing 'Ringing'

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 944
    goto :goto_0

    .line 940
    :pswitch_2
    const p1, 0x7f120ad9    # @string/radioInfo_phone_idle 'Idle'

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 941
    nop

    .line 950
    :goto_0
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 951
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private updatePhysicalChannelConfiguration(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/PhysicalChannelConfig;",
            ">;)V"
        }
    .end annotation

    .line 335
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 336
    const-string v1, ""

    .line 337
    const-string v2, "{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 338
    if-eqz p1, :cond_0

    .line 339
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/PhysicalChannelConfig;

    .line 340
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 341
    const-string v1, ","

    .line 342
    goto :goto_0

    .line 344
    :cond_0
    const-string p1, "}"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 345
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 346
    return-void
.end method

.method private final updatePingState()V
    .locals 2

    .line 1110
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    .line 1111
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    .line 1112
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    .line 1114
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1115
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1116
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1118
    new-instance v0, Lcom/android/settings/RadioInfo$6;

    invoke-direct {v0, p0}, Lcom/android/settings/RadioInfo$6;-><init>(Lcom/android/settings/RadioInfo;)V

    .line 1126
    new-instance v1, Lcom/android/settings/RadioInfo$7;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$7;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1133
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1135
    new-instance v1, Lcom/android/settings/RadioInfo$8;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/RadioInfo$8;-><init>(Lcom/android/settings/RadioInfo;Ljava/lang/Runnable;)V

    .line 1142
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1143
    return-void
.end method

.method private updatePreferredNetworkType(I)V
    .locals 3

    .line 349
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    if-gez p1, :cond_1

    .line 350
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EVENT_QUERY_PREFERRED_TYPE_DONE: unknown type="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 352
    sget-object p1, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length p1, p1

    sub-int/2addr p1, v1

    .line 354
    :cond_1
    iput p1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 356
    iget-object p1, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {p1, v0, v1}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 357
    return-void
.end method

.method private final updateProperties()V
    .locals 4

    .line 990
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 992
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getDeviceId()Ljava/lang/String;

    move-result-object v1

    .line 993
    const v2, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    if-nez v1, :cond_0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 994
    :cond_0
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 996
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 997
    if-nez v1, :cond_1

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 998
    :cond_1
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1001
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getLine1Number()Ljava/lang/String;

    move-result-object v1

    .line 1002
    if-nez v1, :cond_2

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1003
    :cond_2
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1004
    return-void
.end method

.method private updateRadioPowerState()V
    .locals 2

    .line 1262
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1263
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->isRadioOn()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1264
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 1265
    return-void
.end method

.method private final updateServiceState(Landroid/telephony/ServiceState;)V
    .locals 3

    .line 905
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getState()I

    move-result v0

    .line 906
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 907
    const v2, 0x7f120ae2    # @string/radioInfo_unknown 'Unknown'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 909
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 918
    :pswitch_0
    const v0, 0x7f120ae0    # @string/radioInfo_service_off 'Radio Off'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 915
    :pswitch_1
    const v0, 0x7f120ade    # @string/radioInfo_service_emergency 'Emergency Calls Only'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 916
    goto :goto_0

    .line 911
    :pswitch_2
    const v0, 0x7f120adf    # @string/radioInfo_service_in 'In Service'

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 912
    nop

    .line 922
    :goto_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 924
    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v1, 0x7f120adc    # @string/radioInfo_roaming_in 'Roaming'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 927
    :cond_0
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    const v1, 0x7f120add    # @string/radioInfo_roaming_not 'Not Roaming'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 930
    :goto_1
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/telephony/ServiceState;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 931
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

.method private final updateSignalStrength(Landroid/telephony/SignalStrength;)V
    .locals 4

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 668
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getDbm()I

    move-result v1

    .line 670
    invoke-virtual {p1}, Landroid/telephony/SignalStrength;->getAsuLevel()I

    move-result p1

    .line 672
    const/4 v2, -0x1

    if-ne v2, p1, :cond_0

    const/4 p1, 0x0

    .line 674
    :cond_0
    iget-object v2, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v1, 0x7f120ad2    # @string/radioInfo_display_dbm 'dBm'

    .line 675
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "   "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 676
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const p1, 0x7f120ad0    # @string/radioInfo_display_asu 'asu'

    .line 677
    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 674
    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 678
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 404
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 405
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/UserHandle;->isSystem()Z

    move-result v0

    if-nez v0, :cond_0

    .line 406
    const-string p1, "RadioInfo"

    const-string v0, "Not run from system user, don\'t do anything."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->finish()V

    .line 408
    return-void

    .line 411
    :cond_0
    const v0, 0x7f0d0117    # @layout/radio_info 'res/layout/radio_info.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->setContentView(I)V

    .line 413
    const-string v0, "Started onCreate"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 415
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 416
    const-string v0, "connectivity"

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 417
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    .line 421
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 422
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v1

    .line 421
    invoke-static {v0, v1}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    .line 424
    const v0, 0x7f0a01a0    # @id/imei

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDeviceId:Landroid/widget/TextView;

    .line 425
    const v0, 0x7f0a023a    # @id/number

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->number:Landroid/widget/TextView;

    .line 426
    const v0, 0x7f0a01ac    # @id/imsi

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mSubscriberId:Landroid/widget/TextView;

    .line 427
    const v0, 0x7f0a0099    # @id/call

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->callState:Landroid/widget/TextView;

    .line 428
    const v0, 0x7f0a0247    # @id/operator

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->operatorName:Landroid/widget/TextView;

    .line 429
    const v0, 0x7f0a02b8    # @id/roaming

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->roamingState:Landroid/widget/TextView;

    .line 430
    const v0, 0x7f0a017b    # @id/gsm

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->gsmState:Landroid/widget/TextView;

    .line 431
    const v0, 0x7f0a0175    # @id/gprs

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->gprsState:Landroid/widget/TextView;

    .line 432
    const v0, 0x7f0a03d0    # @id/voice_network

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->voiceNetwork:Landroid/widget/TextView;

    .line 433
    const v0, 0x7f0a00ef    # @id/data_network

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dataNetwork:Landroid/widget/TextView;

    .line 434
    const v0, 0x7f0a00fa    # @id/dbm

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dBm:Landroid/widget/TextView;

    .line 435
    const v0, 0x7f0a021e    # @id/mwi

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mMwi:Landroid/widget/TextView;

    .line 436
    const v0, 0x7f0a00b2    # @id/cfi

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCfi:Landroid/widget/TextView;

    .line 437
    const v0, 0x7f0a01f6    # @id/location

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mLocation:Landroid/widget/TextView;

    .line 438
    const v0, 0x7f0a0220    # @id/neighboring

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCids:Landroid/widget/TextView;

    .line 439
    const v0, 0x7f0a00a9    # @id/cellinfo

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    .line 440
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfo:Landroid/widget/TextView;

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 441
    const v0, 0x7f0a00fb    # @id/dcrtinfo

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDcRtInfoTv:Landroid/widget/TextView;

    .line 443
    const v0, 0x7f0a02ef    # @id/sent

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->sent:Landroid/widget/TextView;

    .line 444
    const v0, 0x7f0a029f    # @id/received

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->received:Landroid/widget/TextView;

    .line 445
    const v0, 0x7f0a031c    # @id/smsc

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    .line 446
    const v0, 0x7f0a0118    # @id/dnsCheckState

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->dnsCheckState:Landroid/widget/TextView;

    .line 447
    const v0, 0x7f0a0262    # @id/pingHostnameV4

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    .line 448
    const v0, 0x7f0a0263    # @id/pingHostnameV6

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    .line 449
    const v0, 0x7f0a0193    # @id/httpClientTest

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    .line 451
    const v0, 0x7f0a025f    # @id/phy_chan_config

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mPhyChanConfig:Landroid/widget/TextView;

    .line 453
    const v0, 0x7f0a026d    # @id/preferredNetworkType

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    .line 454
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v1, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    const v2, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v0, p0, v2, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 456
    const v1, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 457
    iget-object v3, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 459
    const v0, 0x7f0a00a7    # @id/cell_info_rate_select

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    .line 460
    new-instance v0, Landroid/widget/ArrayAdapter;

    sget-object v3, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateLabels:[Ljava/lang/String;

    invoke-direct {v0, p0, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 462
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 465
    const v0, 0x7f0a03d3    # @id/volte_provisioned_switch

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    .line 466
    const v0, 0x7f0a03d5    # @id/vt_provisioned_switch

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    .line 467
    const v0, 0x7f0a03da    # @id/wfc_provisioned_switch

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    .line 468
    const v0, 0x7f0a0124    # @id/eab_provisioned_switch

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    .line 470
    const v0, 0x7f0a029d    # @id/radio_power

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    .line 472
    const v0, 0x7f0a0115    # @id/dl_kbps

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mDownlinkKbps:Landroid/widget/TextView;

    .line 473
    const v0, 0x7f0a03ab    # @id/ul_kbps

    invoke-virtual {p0, v0}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/RadioInfo;->mUplinkKbps:Landroid/widget/TextView;

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0}, Lcom/android/settings/RadioInfo;->updateBandwidths(II)V

    .line 476
    const v1, 0x7f0a0264    # @id/ping_test

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    .line 477
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->pingTestButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mPingButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 478
    const v1, 0x7f0a03b1    # @id/update_smsc

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    .line 479
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->updateSmscButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mUpdateSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 480
    const v1, 0x7f0a02a3    # @id/refresh_smsc

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    .line 481
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->refreshSmscButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mRefreshSmscButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 482
    const v1, 0x7f0a0119    # @id/dns_check_toggle

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    .line 483
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->dnsCheckToggleButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mDnsCheckButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 484
    const v1, 0x7f0a00a3    # @id/carrier_provisioning

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->carrierProvisioningButton:Landroid/widget/Button;

    .line 485
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->carrierProvisioningButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 486
    const v1, 0x7f0a039b    # @id/trigger_carrier_provisioning

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->triggercarrierProvisioningButton:Landroid/widget/Button;

    .line 487
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->triggercarrierProvisioningButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mTriggerCarrierProvisioningButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 490
    const v1, 0x7f0a023d    # @id/oem_info

    invoke-virtual {p0, v1}, Lcom/android/settings/RadioInfo;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    .line 491
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mOemInfoButtonHandler:Landroid/view/View$OnClickListener;

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/RadioInfo;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 493
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.settings.OEM_RADIO_INFO"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 494
    invoke-virtual {v1, v2, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 495
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 496
    iget-object v1, p0, Lcom/android/settings/RadioInfo;->oemInfoButton:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 499
    :cond_1
    iput v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    .line 500
    sget-object v0, Lcom/android/settings/RadioInfo;->mPreferredNetworkLabels:[Ljava/lang/String;

    array-length v0, v0

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    .line 503
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x3e8

    .line 504
    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 503
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/Phone;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 506
    invoke-direct {p0, p1}, Lcom/android/settings/RadioInfo;->restoreFromBundle(Landroid/os/Bundle;)V

    .line 507
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 4

    .line 611
    const/4 v0, 0x0

    const v1, 0x7f120ae5    # @string/radio_info_band_mode_label 'Select Radio Band'

    invoke-interface {p1, v0, v0, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mSelectBandCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 612
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    move-result-object v1

    .line 613
    const/16 v2, 0x62

    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    .line 614
    const/4 v1, 0x1

    const v2, 0x7f120ad6    # @string/radioInfo_menu_viewADN 'View SIM Address Book'

    invoke-interface {p1, v1, v1, v0, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewADNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 615
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 616
    const/4 v2, 0x2

    const v3, 0x7f120ad7    # @string/radioInfo_menu_viewFDN 'View Fixed Dialing Numbers'

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewFDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 617
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 618
    const/4 v2, 0x3

    const v3, 0x7f120ad8    # @string/radioInfo_menu_viewSDN 'View Service Dialing Numbers'

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mViewSDNCallback:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 619
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 620
    const/4 v2, 0x4

    const v3, 0x7f120ad5    # @string/radioInfo_menu_getIMS 'IMS Service Status'

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mGetImsStatus:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 621
    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 622
    const/4 v2, 0x5

    const v3, 0x7f120aeb    # @string/radio_info_data_connection_disable 'Disable Data Connection'

    invoke-interface {p1, v1, v2, v0, v3}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mToggleData:Landroid/view/MenuItem$OnMenuItemClickListener;

    .line 623
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    .line 624
    return v1
.end method

.method protected onPause()V
    .locals 3

    .line 569
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 571
    const-string v0, "onPause: unregister phone & data intents"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 573
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 574
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    const v1, 0x7fffffff

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->setCellInfoListRate(I)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 577
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .line 630
    const/4 v0, 0x5

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 631
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataState()I

    move-result v0

    .line 632
    nop

    .line 634
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 643
    const/4 v0, 0x0

    goto :goto_1

    .line 637
    :pswitch_0
    const v0, 0x7f120aeb    # @string/radio_info_data_connection_disable 'Disable Data Connection'

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 638
    goto :goto_0

    .line 640
    :cond_0
    const v0, 0x7f120aec    # @string/radio_info_data_connection_enable 'Enable Data Connection'

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 641
    nop

    .line 646
    :goto_0
    move v0, v1

    :goto_1
    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 647
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected onResume()V
    .locals 4

    .line 511
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 513
    const-string v0, "Started onResume"

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->log(Ljava/lang/String;)V

    .line 515
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateMessageWaiting()V

    .line 516
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateCallRedirect()V

    .line 517
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataState()V

    .line 518
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDataStats2()V

    .line 519
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateRadioPowerState()V

    .line 520
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateImsProvisionedState()V

    .line 521
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateProperties()V

    .line 522
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateDnsCheckState()V

    .line 523
    invoke-direct {p0}, Lcom/android/settings/RadioInfo;->updateNetworkType()V

    .line 525
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mNeighboringCellResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateNeighboringCids(Ljava/util/List;)V

    .line 526
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellLocationResult:Landroid/telephony/CellLocation;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateLocation(Landroid/telephony/CellLocation;)V

    .line 527
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mCellInfoResult:Ljava/util/List;

    invoke-direct {p0, v0}, Lcom/android/settings/RadioInfo;->updateCellInfo(Ljava/util/List;)V

    .line 529
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV4:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mPingHostnameV6:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mHttpClientTest:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 535
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->cellInfoRefreshRateSpinner:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 538
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/widget/Spinner;->setSelection(IZ)V

    .line 539
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->preferredNetworkType:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkHandler:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 541
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->radioPowerOnSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mRadioPowerOnChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 542
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVolteProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsVolteCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 543
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsVtProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsVtCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 544
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->imsWfcProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mImsWfcCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 545
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->eabProvisionedSwitch:Landroid/widget/Switch;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mEabCheckedChangeListener:Landroid/widget/CompoundButton$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 547
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const v2, 0x1005fd

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 561
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mDefaultNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v2, p0, Lcom/android/settings/RadioInfo;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    iget-object v3, p0, Lcom/android/settings/RadioInfo;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/ConnectivityManager;->registerNetworkCallback(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;Landroid/os/Handler;)V

    .line 564
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->smsc:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 565
    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 600
    const-string v0, "mPingHostnameResultV4"

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV4:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 601
    const-string v0, "mPingHostnameResultV6"

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mPingHostnameResultV6:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    const-string v0, "mHttpClientTestResult"

    iget-object v1, p0, Lcom/android/settings/RadioInfo;->mHttpClientTestResult:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 604
    const-string v0, "mPreferredNetworkTypeResult"

    iget v1, p0, Lcom/android/settings/RadioInfo;->mPreferredNetworkTypeResult:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 605
    const-string v0, "mCellInfoRefreshRateIndex"

    iget v1, p0, Lcom/android/settings/RadioInfo;->mCellInfoRefreshRateIndex:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 607
    return-void
.end method

.method setEabProvisionedState(Z)V
    .locals 3

    .line 1283
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setEabProvisioned() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const/16 v0, 0x19

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1285
    return-void
.end method

.method setImsConfigProvisionedState(IZ)V
    .locals 1

    .line 1288
    iget-object v0, p0, Lcom/android/settings/RadioInfo;->phone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/RadioInfo;->mImsManager:Lcom/android/ims/ImsManager;

    if-eqz v0, :cond_0

    .line 1289
    new-instance v0, Lcom/android/settings/RadioInfo$15;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/RadioInfo$15;-><init>(Lcom/android/settings/RadioInfo;IZ)V

    const/4 p1, 0x0

    invoke-static {v0, p1}, Landroid/app/QueuedWork;->queue(Ljava/lang/Runnable;Z)V

    .line 1301
    :cond_0
    return-void
.end method

.method setImsVolteProvisionedState(Z)V
    .locals 3

    .line 1268
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsVolteProvisioned state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1269
    const/16 v0, 0xa

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1270
    return-void
.end method

.method setImsVtProvisionedState(Z)V
    .locals 3

    .line 1273
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsVtProvisioned() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1274
    const/16 v0, 0xb

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1275
    return-void
.end method

.method setImsWfcProvisionedState(Z)V
    .locals 3

    .line 1278
    const-string v0, "RadioInfo"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setImsWfcProvisioned() state: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p1, :cond_0

    const-string v2, "on"

    goto :goto_0

    :cond_0
    const-string v2, "off"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1279
    const/16 v0, 0x1c

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/RadioInfo;->setImsConfigProvisionedState(IZ)V

    .line 1280
    return-void
.end method
