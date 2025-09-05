.class public Lcom/mediatek/settings/sim/SmartCallFwdFragment;
.super Landroid/preference/PreferenceFragment;
.source "SmartCallFwdFragment.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;,
        Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;
    }
.end annotation


# instance fields
.field private final CF_REASON_NOT_REACHABLE:I

.field private final DUAL_SIM:I

.field private final MSG_GET_CF_REQ:I

.field private final MSG_GET_CF_RES:I

.field private final MSG_SET_CF_REQ:I

.field private final MSG_SET_CF_RES:I

.field private final MSG_TYPE_DATA:I

.field private final MSG_TYPE_DEREGISTER:I

.field private final MSG_TYPE_REGISTER:I

.field private final READ:I

.field private final SIM1:I

.field private final SIM1_TO_SIM2:I

.field private final SIM2:I

.field private final SIM2_TO_SIM1:I

.field private final TOTAL_SIM:I

.field private final WRITE:I

.field private mActionString:[Ljava/lang/String;

.field private mAlertDialog:Landroid/app/AlertDialog;

.field mBound:Z

.field private mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

.field private mConnection:Landroid/content/ServiceConnection;

.field private mContext:Landroid/content/Context;

.field private mCurrSelectedMode:I

.field private mFlag:Z

.field private mMessenger:Landroid/os/Messenger;

.field private mNewSim1Inserted:Z

.field private mNewSim2Inserted:Z

.field private mPrevSelectedMode:I

.field private mPrevSwitchState:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mReadProgress:Z

.field mService:Landroid/os/Messenger;

.field private mSharedPreferences:Landroid/content/SharedPreferences;

.field private mSim1Pref:Landroid/preference/EditTextPreference;

.field private mSim1num:Ljava/lang/String;

.field private mSim2Pref:Landroid/preference/EditTextPreference;

.field private mSim2num:Ljava/lang/String;

.field private mSmartCallFwdModePref:Landroid/preference/ListPreference;

.field private mSummary:[Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mSwitchState:Z

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTelephonyManagerEx:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

.field private mValidListener:Z

.field private mWriteProgress:Z

.field private simPrefValue:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 7

    .line 64
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    .line 82
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_TYPE_DATA:I

    .line 83
    const/4 v1, 0x1

    iput v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_TYPE_REGISTER:I

    .line 84
    const/4 v2, 0x2

    iput v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_GET_CF_REQ:I

    .line 85
    const/4 v3, 0x3

    iput v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_SET_CF_REQ:I

    .line 86
    const/4 v4, 0x4

    iput v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_GET_CF_RES:I

    .line 87
    const/4 v4, 0x5

    iput v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_SET_CF_RES:I

    .line 88
    const/4 v4, 0x6

    iput v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->MSG_TYPE_DEREGISTER:I

    .line 90
    iput v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->CF_REASON_NOT_REACHABLE:I

    .line 91
    iput v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->SIM1:I

    .line 92
    iput v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->SIM2:I

    .line 93
    iput v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->TOTAL_SIM:I

    .line 94
    iput v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->READ:I

    .line 95
    iput v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->WRITE:I

    .line 97
    iput v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->SIM1_TO_SIM2:I

    .line 98
    iput v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->SIM2_TO_SIM1:I

    .line 99
    iput v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->DUAL_SIM:I

    .line 103
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    .line 108
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mValidListener:Z

    .line 113
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 114
    new-instance v5, Landroid/os/Messenger;

    new-instance v6, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$IncomingHandler;-><init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V

    invoke-direct {v5, v6}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    iput-object v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mMessenger:Landroid/os/Messenger;

    .line 115
    new-array v5, v2, [Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    new-instance v6, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;-><init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V

    aput-object v6, v5, v0

    new-instance v6, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    invoke-direct {v6, p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;-><init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V

    aput-object v6, v5, v1

    iput-object v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    .line 117
    const-string v1, "SIM1 TO SIM2"

    const-string v5, "SIM2 TO SIM1"

    const-string v6, "DUAL SIM"

    filled-new-array {v1, v5, v6}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSummary:[Ljava/lang/String;

    .line 122
    const-string v1, "Disabling"

    const-string v5, "Enabling"

    filled-new-array {v1, v5}, [Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mActionString:[Ljava/lang/String;

    .line 126
    new-array v1, v2, [Ljava/lang/String;

    iput-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    .line 128
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mReadProgress:Z

    .line 129
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mWriteProgress:Z

    .line 130
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mFlag:Z

    .line 135
    iput-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    .line 136
    iput-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    .line 137
    iput v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    .line 138
    iput v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSelectedMode:I

    .line 139
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSwitchState:Z

    .line 140
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim1Inserted:Z

    .line 141
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim2Inserted:Z

    .line 514
    iput-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    .line 522
    new-instance v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$1;-><init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mConnection:Landroid/content/ServiceConnection;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/os/Messenger;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mMessenger:Landroid/os/Messenger;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/sim/SmartCallFwdFragment;I)V
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getCallForwardStatus(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSummary:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSwitchState:Z

    return p0
.end method

.method static synthetic access$1202(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mFlag:Z

    return p1
.end method

.method static synthetic access$1300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$1600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/app/ProgressDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$1602(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Landroid/app/ProgressDialog;)Landroid/app/ProgressDialog;
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p1
.end method

.method static synthetic access$1700(Lcom/mediatek/settings/sim/SmartCallFwdFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->updateGetCfStatus()V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    return p0
.end method

.method static synthetic access$202(Lcom/mediatek/settings/sim/SmartCallFwdFragment;I)I
    .locals 0

    .line 64
    iput p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    return p1
.end method

.method static synthetic access$300(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/sim/SmartCallFwdFragment;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setCallForwardStatus(II)V

    return-void
.end method

.method static synthetic access$500(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)[Ljava/lang/String;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mActionString:[Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/EditTextPreference;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/EditTextPreference;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)I
    .locals 0

    .line 64
    iget p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSelectedMode:I

    return p0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)Landroid/preference/ListPreference;
    .locals 0

    .line 64
    iget-object p0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    return-object p0
.end method

.method public static createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .line 832
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "createExplicitFromImplicitIntent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 835
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 838
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    goto :goto_0

    .line 843
    :cond_0
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/ResolveInfo;

    .line 844
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v0, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 845
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object p0, p0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    .line 846
    new-instance v1, Landroid/content/ComponentName;

    invoke-direct {v1, v0, p0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 849
    new-instance p0, Landroid/content/Intent;

    invoke-direct {p0, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 852
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 853
    return-object p0

    .line 839
    :cond_1
    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method private detectSimChange()V
    .locals 10

    .line 287
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 288
    nop

    .line 289
    const-string v1, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "detectSimChange : numSlots = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_3

    .line 291
    nop

    .line 292
    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 293
    invoke-virtual {v3, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 294
    const-string v4, "SmartCallFwdFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "sir = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, "for slot"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim_slot_"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 296
    invoke-direct {p0, v4}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getLastSimImsi(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 297
    const/4 v6, 0x1

    if-eqz v3, :cond_1

    .line 298
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    .line 299
    iget-object v7, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v7, v3}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v3

    .line 300
    const-string v7, "SmartCallFwdFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "lastSimImsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v9, " currentSimImsi = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    if-eqz v7, :cond_0

    .line 302
    invoke-virtual {v5, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 303
    invoke-direct {p0, v4, v3}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setLastSimImsi(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    goto :goto_1

    .line 307
    :cond_0
    invoke-direct {p0, v4, v3}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setLastSimImsi(Ljava/lang/String;Ljava/lang/String;)V

    .line 308
    goto :goto_1

    .line 311
    :cond_1
    move v6, v1

    :goto_1
    if-nez v2, :cond_2

    .line 312
    iput-boolean v6, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim1Inserted:Z

    .line 313
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detectSimChange : mNewSim1Inserted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim1Inserted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 315
    :cond_2
    iput-boolean v6, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim2Inserted:Z

    .line 316
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "detectSimChange : mNewSim2Inserted = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim2Inserted:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 319
    :cond_3
    return-void
.end method

.method private disableSmartCallForward()V
    .locals 4

    .line 481
    nop

    .line 482
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "disableSmartCallForward for mCurrSelectedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 483
    iget v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 484
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    goto :goto_0

    .line 485
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 486
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 487
    goto :goto_1

    .line 489
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 490
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 492
    :goto_0
    move v1, v2

    :goto_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setCallForwardStatus(II)V

    .line 493
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ab3    # @string/progress_dlg_writing 'Updating settings...'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 494
    return-void
.end method

.method private enableSmartCallForward()V
    .locals 4

    .line 497
    nop

    .line 498
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enableSmartCallForward for mCurrSelectedMode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 500
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    goto :goto_0

    .line 501
    :cond_0
    iget v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_1

    .line 502
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 503
    nop

    .line 509
    move v1, v2

    goto :goto_0

    .line 505
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v1

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 506
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v2

    iput v2, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 509
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v0, v0, v1

    iget v0, v0, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    invoke-direct {p0, v1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setCallForwardStatus(II)V

    .line 510
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120ab3    # @string/progress_dlg_writing 'Updating settings...'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 511
    return-void
.end method

.method private getCallForwardStatus(I)V
    .locals 3

    .line 550
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 551
    const-string p1, "SmartCallFwdFragment"

    const-string v0, "service not started yet"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    return-void

    .line 554
    :cond_0
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallForwardStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mReadProgress:Z

    .line 556
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {v0, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 557
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 558
    const-string v2, "simId"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 559
    const-string p1, "act"

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 560
    invoke-virtual {v0, v1}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 562
    :try_start_0
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    invoke-virtual {p1, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    goto :goto_0

    .line 563
    :catch_0
    move-exception p1

    .line 564
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 566
    :goto_0
    return-void
.end method

.method private getLastSimImsi(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 322
    const-string v0, ""

    .line 324
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 328
    nop

    .line 329
    move-object v0, v1

    goto :goto_0

    .line 325
    :catch_0
    move-exception v1

    .line 326
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 327
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 329
    :goto_0
    const-string v1, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLastSubId strSlotId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", imsi = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return-object v0
.end method

.method private getPreviousPrefValue()V
    .locals 3

    .line 940
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "getPreviousPrefValues"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    const-string v1, "smart_sim1_pref"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getSimPrefValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 942
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    const-string v1, "smart_sim2_pref"

    invoke-direct {p0, v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getSimPrefValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 943
    return-void
.end method

.method private getSimPrefValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 911
    const-string v0, ""

    .line 913
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v2, ""

    invoke-interface {v1, p1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 917
    nop

    .line 918
    move-object v0, v1

    goto :goto_0

    .line 914
    :catch_0
    move-exception v1

    .line 915
    invoke-virtual {v1}, Ljava/lang/ClassCastException;->printStackTrace()V

    .line 916
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 918
    :goto_0
    const-string v1, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getSimPrefValue simPref = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", value = "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 919
    return-object v0
.end method

.method private isPhoneNumberSet()Z
    .locals 2

    .line 467
    const-string v0, "unknown"

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "unknown"

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    .line 468
    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    .line 469
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    .line 470
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    .line 471
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_2

    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    .line 472
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 476
    :cond_1
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "Phone number/ numbers present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    const/4 v0, 0x1

    return v0

    .line 473
    :cond_2
    :goto_0
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "Phone number/ numbers not present"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method private setCallForwardStatus(II)V
    .locals 5

    .line 569
    nop

    .line 570
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    if-nez v0, :cond_0

    .line 571
    const-string p1, "SmartCallFwdFragment"

    const-string p2, "service not started yet"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    return-void

    .line 574
    :cond_0
    if-nez p1, :cond_1

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    :goto_0
    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    goto :goto_0

    .line 575
    :goto_1
    const-string v1, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setCallForward to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mWriteProgress:Z

    .line 577
    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v2

    .line 578
    new-instance v3, Landroid/os/Bundle;

    invoke-direct {v3}, Landroid/os/Bundle;-><init>()V

    .line 579
    const-string v4, "simId"

    invoke-virtual {v3, v4, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 580
    const-string p1, "act"

    invoke-virtual {v3, p1, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 581
    const-string p1, "phnum"

    invoke-virtual {v3, p1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 582
    const-string p1, "action"

    invoke-virtual {v3, p1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 583
    invoke-virtual {v2, v3}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 585
    :try_start_0
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    invoke-virtual {p1, v2}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    goto :goto_2

    .line 586
    :catch_0
    move-exception p1

    .line 587
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    .line 589
    :goto_2
    return-void
.end method

.method private setLastSimImsi(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 334
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setLastSubId: strSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 336
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 337
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 338
    return-void
.end method

.method private setSimPrefValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 929
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSimPrefValue: simPref = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", value = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 931
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 932
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 933
    return-void
.end method

.method private setSmartCallFwdMode(IZ)V
    .locals 3

    .line 393
    nop

    .line 394
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSmartCallFwdMode:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    iget v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSelectedMode:I

    iget v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    if-ne v0, v1, :cond_0

    .line 396
    const-string p1, "Already Set"

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showToast(Ljava/lang/String;)V

    goto :goto_1

    .line 398
    :cond_0
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p1, v1, :cond_1

    .line 400
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v0

    iput v1, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 401
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v1

    iput v0, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    goto :goto_0

    .line 402
    :cond_1
    const/4 v2, 0x2

    if-ne p1, v2, :cond_2

    .line 404
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v0

    iput v0, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 405
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v1

    iput v1, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    goto :goto_0

    .line 407
    :cond_2
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v0

    iput v1, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 408
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v1

    iput v1, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 413
    :goto_0
    if-eqz p2, :cond_3

    .line 414
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object p1, p1, v0

    iget p1, p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    invoke-direct {p0, v0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setCallForwardStatus(II)V

    .line 415
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f120ab3    # @string/progress_dlg_writing 'Updating settings...'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 419
    :cond_3
    :goto_1
    return-void
.end method

.method private setSmartCallFwdProperty(Z)V
    .locals 3

    .line 458
    nop

    .line 459
    if-eqz p1, :cond_0

    .line 460
    iget p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    goto :goto_0

    .line 462
    :cond_0
    const/4 p1, 0x0

    :goto_0
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SetSystem property to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "smartcallmode"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 464
    return-void
.end method

.method private showAlertDialog(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 881
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "showAlertDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 882
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 883
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 884
    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 885
    new-instance p1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;

    invoke-direct {p1, p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment$2;-><init>(Lcom/mediatek/settings/sim/SmartCallFwdFragment;)V

    const p2, 0x104000a    # @android:string/ok

    invoke-virtual {v0, p2, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 896
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 897
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mAlertDialog:Landroid/app/AlertDialog;

    .line 898
    return-void
.end method

.method private showProgressDialog(Ljava/lang/String;)V
    .locals 2

    .line 236
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "showProgressDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 238
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 239
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 240
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 241
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 242
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f120ab2    # @string/progress_dlg_title 'Dual SIM always on'

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setTitle(I)V

    .line 243
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 244
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {p1}, Landroid/app/ProgressDialog;->show()V

    .line 245
    return-void
.end method

.method private showToast(Ljava/lang/String;)V
    .locals 2

    .line 901
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 902
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 903
    return-void
.end method

.method private startService()V
    .locals 4

    .line 806
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string v2, "mediatek.settings.SMART_CALL_FWD_SERVICE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->createExplicitFromImplicitIntent(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 808
    if-eqz v0, :cond_0

    .line 809
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mConnection:Landroid/content/ServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    goto :goto_0

    .line 811
    :cond_0
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "null explicit intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    :goto_0
    return-void
.end method

.method private stopService()V
    .locals 3

    .line 816
    iget-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mBound:Z

    if-eqz v0, :cond_0

    .line 817
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-static {v1, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v0

    .line 819
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mService:Landroid/os/Messenger;

    invoke-virtual {v2, v0}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 822
    goto :goto_0

    .line 820
    :catch_0
    move-exception v0

    .line 821
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 823
    :goto_0
    iput-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mMessenger:Landroid/os/Messenger;

    .line 824
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 826
    :cond_0
    return-void
.end method

.method private updateGetCfStatus()V
    .locals 8

    .line 745
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    .line 746
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v1

    .line 747
    const-string v2, ""

    .line 748
    nop

    .line 749
    const-string v3, "SmartCallFwdFragment"

    const-string v4, "updateGetCfStatus"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sim1Num: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", sim2Num: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 751
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCfInfoArr[SIM1] phnum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    const/4 v6, 0x0

    aget-object v5, v5, v6

    iget-object v5, v5, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCfInfoArr[SIM2] phnum:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    const/4 v7, 0x1

    aget-object v5, v5, v7

    iget-object v5, v5, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCfInfoArr[SIM1] callwait:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v5, v5, v6

    iget v5, v5, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const-string v3, "SmartCallFwdFragment"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "mCfInfoArr[SIM2] callwait:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v5, v5, v7

    iget v5, v5, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 756
    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    const/4 v4, 0x0

    const/4 v5, -0x1

    if-eq v3, v5, :cond_9

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->error:I

    if-ne v3, v5, :cond_0

    goto/16 :goto_7

    .line 765
    :cond_0
    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->status:I

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v6

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    if-ne v3, v7, :cond_1

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v6

    iget-object v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    .line 766
    invoke-static {v1, v3}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 767
    nop

    .line 769
    move v1, v7

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_0
    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->status:I

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v7

    iget v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    if-ne v3, v7, :cond_2

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v7

    iget-object v3, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->phnum:Ljava/lang/String;

    .line 770
    invoke-static {v0, v3}, Landroid/telephony/PhoneNumberUtils;->compareLoosely(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 771
    or-int/lit8 v0, v1, 0x2

    goto :goto_1

    .line 774
    :cond_2
    move v0, v1

    :goto_1
    const/4 v1, 0x2

    if-ne v0, v7, :cond_3

    .line 775
    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v7

    iput v6, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 776
    iput v7, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    goto :goto_2

    .line 777
    :cond_3
    if-ne v0, v1, :cond_4

    .line 778
    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v3, v3, v6

    iput v6, v3, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->action:I

    .line 779
    iput v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    goto :goto_2

    .line 781
    :cond_4
    const/4 v3, 0x3

    iput v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    .line 783
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "[SIM1]:\n CallForwarding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 784
    and-int/lit8 v2, v0, 0x1

    if-ne v2, v7, :cond_5

    const-string v2, "enabled"

    goto :goto_3

    :cond_5
    const-string v2, "disabled"

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 785
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n CallWaiting: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 786
    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v2, v2, v6

    iget v2, v2, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    if-ne v2, v7, :cond_6

    const-string v2, "enabled"

    goto :goto_4

    :cond_6
    const-string v2, "disabled"

    :goto_4
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 787
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\n[SIM2]:\n CallForwarding: "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 788
    and-int/lit8 v2, v0, 0x2

    if-ne v2, v1, :cond_7

    const-string v1, "enabled"

    goto :goto_5

    :cond_7
    const-string v1, "disabled"

    :goto_5
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 789
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\n CallWaiting: "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 790
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCfInfoArr:[Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;

    aget-object v1, v1, v7

    iget v1, v1, Lcom/mediatek/settings/sim/SmartCallFwdFragment$CFInfo;->callwait:I

    if-ne v1, v7, :cond_8

    const-string v1, "enabled"

    goto :goto_6

    :cond_8
    const-string v1, "disabled"

    :goto_6
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    .line 757
    :cond_9
    :goto_7
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 758
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_a

    .line 759
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 760
    iput-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 762
    :cond_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120930    # @string/network_error 'Network or Sim card reading error'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 763
    invoke-direct {p0, v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showToast(Ljava/lang/String;)V

    .line 792
    move v0, v6

    :goto_8
    invoke-direct {p0, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->updatePreference(I)V

    .line 793
    const-string v2, "SmartCallFwdFragment"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "cfStatus:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    const-string v0, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "statusMsg: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_b

    .line 796
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "Reading complete:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 798
    iput-object v4, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 802
    :cond_b
    return-void
.end method

.method private updatePreference(I)V
    .locals 3

    .line 248
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "updatePreference"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    const/4 v0, 0x1

    if-eqz p1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    .line 250
    if-lez p1, :cond_1

    .line 251
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 252
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    iget-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSummary:[Ljava/lang/String;

    sub-int/2addr p1, v0

    aget-object p1, v2, p1

    invoke-virtual {v1, p1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 254
    :cond_1
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 255
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSummary:[Ljava/lang/String;

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-virtual {p1, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 257
    :goto_1
    const-string p1, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwitchState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 259
    iget-boolean p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_2

    .line 260
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mFlag:Z

    .line 262
    :cond_2
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 263
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 264
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 265
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    xor-int/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 267
    :cond_3
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 268
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchState:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 270
    :cond_4
    iget-boolean p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim1Inserted:Z

    if-nez p1, :cond_6

    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    .line 271
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_5

    goto :goto_2

    .line 275
    :cond_5
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 272
    :cond_6
    :goto_2
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 273
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 277
    :goto_3
    iget-boolean p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mNewSim2Inserted:Z

    if-nez p1, :cond_8

    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_8

    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    .line 278
    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    if-nez p1, :cond_7

    goto :goto_4

    .line 282
    :cond_7
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {v0}, Landroid/preference/EditTextPreference;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 279
    :cond_8
    :goto_4
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    const-string v0, "unknown"

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 280
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    const-string v0, ""

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 284
    :goto_5
    return-void
.end method


# virtual methods
.method public getLine1Number(I)Ljava/lang/String;
    .locals 4

    .line 946
    invoke-static {p1}, Lcom/mediatek/internal/telephony/MtkSubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v0

    .line 947
    const-string v1, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getLine1Number with simId "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " ,subId "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4

    .line 182
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 183
    const-string p1, "SmartCallFwdFragment"

    const-string v0, "onActivityCreated:"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    const-string v0, "sim_id"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 186
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 187
    if-nez p1, :cond_0

    .line 188
    return-void

    .line 190
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 191
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 192
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 193
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 195
    const-string p1, "smart_sim1_pref"

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    .line 196
    const-string p1, "smart_sim2_pref"

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/EditTextPreference;

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    .line 199
    invoke-virtual {p0, v1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getLine1Number(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    .line 200
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getLine1Number(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    .line 201
    const-string v0, "SmartCallFwdFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSim1num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", mSim2num: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getPreviousPrefValue()V

    .line 205
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 206
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mSim1num.length():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 210
    :cond_1
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    aget-object v0, v0, v1

    if-eqz v0, :cond_2

    .line 211
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    iget-object v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    aget-object v1, v3, v1

    invoke-virtual {v0, v1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 213
    :cond_2
    iput-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    .line 215
    :goto_0
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_3

    .line 216
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 217
    const-string p1, "SmartCallFwdFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "mSim2num.length():"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 220
    :cond_3
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    aget-object v0, v0, p1

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->simPrefValue:[Ljava/lang/String;

    aget-object p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/preference/EditTextPreference;->setText(Ljava/lang/String;)V

    .line 223
    :cond_4
    iput-object v2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    .line 225
    :goto_1
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->detectSimChange()V

    .line 226
    const-string p1, "smart_call_fwd_modes"

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/preference/ListPreference;

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    .line 227
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 228
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, p0}, Landroid/preference/EditTextPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 229
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/preference/Preference$OnPreferenceChangeListener;)V

    .line 230
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 231
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSummary:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f120ab1    # @string/progress_dlg_reading 'Reading settings...'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showProgressDialog(Ljava/lang/String;)V

    .line 233
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .line 172
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 173
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "onAttach:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    invoke-virtual {p1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    .line 175
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mTelephonyManagerEx:Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    .line 176
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mContext:Landroid/content/Context;

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    iput-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 177
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->startService()V

    .line 178
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 145
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const p1, 0x7f15009c    # @xml/smart_call_fwd_settings 'res/xml/smart_call_fwd_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->addPreferencesFromResource(I)V

    .line 147
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 162
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroy()V

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->stopService()V

    .line 166
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 342
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onDestroyView()V

    .line 343
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 344
    return-void
.end method

.method public onPause()V
    .locals 0

    .line 157
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 158
    return-void
.end method

.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 348
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->getActivity()Landroid/app/Activity;

    .line 349
    nop

    .line 351
    const-string v0, "SmartCallFwdFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange:preference ="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", newValue: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    check-cast p2, Ljava/lang/String;

    .line 353
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 354
    const-string v0, "unknown"

    goto :goto_0

    .line 355
    :cond_0
    move-object v0, p2

    :goto_0
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    const/4 v2, 0x1

    if-ne p1, v1, :cond_2

    .line 356
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 358
    const-string p1, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 359
    const-string p1, "smart_sim1_pref"

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setSimPrefValue(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 362
    :cond_1
    const-string p1, "smart_sim1_pref"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setSimPrefValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 366
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    if-ne p1, v1, :cond_4

    .line 367
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 369
    const-string p1, "unknown"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 370
    const-string p1, "smart_sim2_pref"

    const-string p2, ""

    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setSimPrefValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 373
    :cond_3
    const-string p1, "smart_sim2_pref"

    invoke-direct {p0, p1, v0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setSimPrefValue(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 376
    :cond_4
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    if-ne p1, v0, :cond_6

    .line 377
    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 378
    const-string p2, "SmartCallFwdFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "selected mode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iget p2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    iput p2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSelectedMode:I

    .line 380
    iput p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    .line 381
    iget-object p2, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result p2

    if-nez p2, :cond_5

    .line 382
    const-string p2, "SmartCallFwdFragment"

    const-string v0, "switch is off: don\'t update"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const/4 p2, 0x0

    .line 384
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    iget-object v1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSummary:[Ljava/lang/String;

    iget v3, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mCurrSelectedMode:I

    sub-int/2addr v3, v2

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Landroid/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 387
    :cond_5
    move p2, v2

    :goto_1
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setSmartCallFwdMode(IZ)V

    .line 389
    :cond_6
    :goto_2
    return v2
.end method

.method public onResume()V
    .locals 2

    .line 151
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 152
    const-string v0, "SmartCallFwdFragment"

    const-string v1, "onResume:"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 2

    .line 426
    const-string p1, "SmartCallFwdFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "OnSwitchChanged: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->isPhoneNumberSet()Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 428
    const-string p1, "Set phone numbers for both SIMs first"

    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->showToast(Ljava/lang/String;)V

    .line 429
    if-eqz p2, :cond_0

    .line 430
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 432
    :cond_0
    return-void

    .line 434
    :cond_1
    invoke-direct {p0, p2}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->setSmartCallFwdProperty(Z)V

    .line 435
    xor-int/lit8 p1, p2, 0x1

    iput-boolean p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mPrevSwitchState:Z

    .line 436
    iget-boolean p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mFlag:Z

    if-eqz p1, :cond_2

    .line 437
    iput-boolean v0, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mFlag:Z

    .line 438
    const-string p1, "SmartCallFwdFragment"

    const-string p2, "Not triggered from user"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    return-void

    .line 442
    :cond_2
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 443
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1num:Ljava/lang/String;

    if-nez p1, :cond_3

    .line 444
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim1Pref:Landroid/preference/EditTextPreference;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 446
    :cond_3
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2num:Ljava/lang/String;

    if-nez p1, :cond_4

    .line 447
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSim2Pref:Landroid/preference/EditTextPreference;

    xor-int/lit8 v0, p2, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/EditTextPreference;->setEnabled(Z)V

    .line 449
    :cond_4
    iget-object p1, p0, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->mSmartCallFwdModePref:Landroid/preference/ListPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/preference/ListPreference;->setEnabled(Z)V

    .line 450
    if-nez p2, :cond_5

    .line 451
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->disableSmartCallForward()V

    goto :goto_0

    .line 453
    :cond_5
    invoke-direct {p0}, Lcom/mediatek/settings/sim/SmartCallFwdFragment;->enableSmartCallForward()V

    .line 455
    :goto_0
    return-void
.end method
