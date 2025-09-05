.class public Lcom/android/settings/sim/SimSettings;
.super Lcom/android/settings/RestrictedSettingsFragment;
.source "SimSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimSettings$SimPreference;
    }
.end annotation


# static fields
.field private static final ENG_LOAD:Z

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mAvailableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mIsAirplaneModeOn:Z

.field private mNumSlots:I

.field private final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mRadioController:Lcom/mediatek/settings/sim/RadioPowerController;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSelectableSubInfos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSimCards:Landroid/support/v7/preference/PreferenceScreen;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSimLockPolicy:I

.field private mSimLockSimInserted:[Z

.field private mSimLockSimValid:[I

.field private mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mSubInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 92
    const-string v0, "ro.build.type"

    .line 93
    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "SimSettings"

    const/4 v1, 0x3

    .line 94
    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcom/android/settings/sim/SimSettings;->ENG_LOAD:Z

    .line 689
    new-instance v0, Lcom/android/settings/sim/SimSettings$3;

    invoke-direct {v0}, Lcom/android/settings/sim/SimSettings$3;-><init>()V

    sput-object v0, Lcom/android/settings/sim/SimSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 174
    const-string v0, "no_config_sim"

    invoke-direct {p0, v0}, Lcom/android/settings/RestrictedSettingsFragment;-><init>(Ljava/lang/String;)V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 113
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 114
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 115
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    .line 128
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 133
    iput v1, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    .line 134
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    .line 135
    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimInserted:[Z

    .line 139
    new-instance v0, Lcom/android/settings/sim/SimSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$1;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 215
    new-instance v0, Lcom/android/settings/sim/SimSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimSettings$2;-><init>(Lcom/android/settings/sim/SimSettings;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimSettings;Landroid/content/Intent;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->handleAirplaneModeChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/SimSettings;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->logInEng(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/settings/sim/SimSettings;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/android/settings/sim/SimSettings;)Z
    .locals 0

    .line 89
    iget-boolean p0, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimSettings;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/sim/SimSettings;->mRadioController:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/sim/SimSettings;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->handleRadioPowerSwitchComplete()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimSettings;Landroid/content/Intent;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->handleSimLockStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimSettings;Ljava/lang/String;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    return-void
.end method

.method private getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;
    .locals 2

    .line 677
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 678
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 679
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private handleAirplaneModeChange(Landroid/content/Intent;)V
    .locals 2

    .line 771
    const-string v0, "state"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 772
    const-string p1, "SimSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "airplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 774
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 775
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->removeItemsForTablet()V

    .line 777
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->updatePrefState()V

    .line 778
    return-void
.end method

.method private handleRadioPowerSwitchComplete()V
    .locals 1

    .line 763
    const-string v0, "handleRadioPowerSwitchComplete"

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->logInEng(Ljava/lang/String;)V

    .line 764
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSimSlotValues()V

    .line 765
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 766
    return-void
.end method

.method private handleSimLockStateChange(Landroid/content/Intent;)V
    .locals 4

    .line 786
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 787
    if-nez p1, :cond_0

    .line 788
    const-string p1, "SimSettings"

    const-string v0, "handleSimLockStateChange, extra=null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void

    .line 792
    :cond_0
    const-string v0, "DEVICE_LOCK_POLICY"

    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    .line 796
    const-string v0, "slot"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 798
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 799
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    const-string v2, "SIM_VALID"

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    aget v3, v3, v0

    invoke-virtual {p1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    aput p1, v1, v0

    .line 802
    const-string p1, "SimSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleSimLockStateChange, policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    .line 803
    invoke-static {v2}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", slotId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", simValid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    aget v0, v2, v0

    .line 805
    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimValidString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 802
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 810
    return-void
.end method

.method private initForSimStateChange()V
    .locals 3

    .line 710
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 711
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v1, Lcom/android/settings/sim/SimSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimSettings$4;-><init>(Lcom/android/settings/sim/SimSettings;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 722
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    .line 723
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initForSimStateChange, airplaneMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->logInEng(Ljava/lang/String;)V

    .line 726
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicy()I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    .line 727
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initForSimStateChange, policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    .line 728
    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 727
    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 730
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    .line 731
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimInserted:[Z

    .line 735
    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v0, v1, :cond_0

    .line 736
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimValid(I)I

    move-result v2

    aput v2, v1, v0

    .line 735
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 740
    :cond_0
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 741
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 744
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 745
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 747
    const-string v1, "com.mediatek.intent.action.RADIO_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 749
    const-string v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 751
    const-string v1, "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 752
    const-string v1, "android.telecom.action.PHONE_ACCOUNT_UNREGISTERED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 754
    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 757
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 758
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 1

    .line 683
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    return-void
.end method

.method private logInEng(Ljava/lang/String;)V
    .locals 1

    .line 944
    sget-boolean v0, Lcom/android/settings/sim/SimSettings;->ENG_LOAD:Z

    if-eqz v0, :cond_0

    .line 945
    const-string v0, "SimSettings"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 947
    :cond_0
    return-void
.end method

.method private removeItemsForTablet()V
    .locals 6

    .line 878
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_PRODUCT_IS_TABLET:Z

    if-eqz v0, :cond_2

    .line 879
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 880
    const-string v1, "sim_sms"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 881
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 882
    const-string v3, "sim_activities"

    .line 883
    invoke-virtual {p0, v3}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/support/v7/preference/PreferenceCategory;

    .line 884
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v4

    .line 885
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v5

    if-nez v5, :cond_0

    if-eqz v1, :cond_0

    .line 886
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 888
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v5

    if-nez v5, :cond_1

    if-eqz v2, :cond_1

    if-eqz v1, :cond_1

    .line 889
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 890
    invoke-virtual {v3, v1}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 892
    :cond_1
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v1

    if-nez v1, :cond_2

    if-eqz v0, :cond_2

    .line 893
    invoke-virtual {v3, v0}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 896
    :cond_2
    return-void
.end method

.method private shouldEnableCallPrefForSimLock()Z
    .locals 1

    .line 863
    nop

    .line 865
    const/4 v0, 0x1

    return v0
.end method

.method private shouldEnableCellularDataPrefForSimLock()Z
    .locals 7

    .line 813
    nop

    .line 814
    nop

    .line 816
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    const/4 v4, 0x3

    packed-switch v0, :pswitch_data_0

    .line 853
    move v0, v2

    :cond_0
    move v2, v3

    goto :goto_0

    .line 836
    :pswitch_0
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimInserted:[Z

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    invoke-static {v0, v5, v6}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCase(I[Z[I)I

    move-result v0

    .line 838
    if-eq v0, v4, :cond_0

    const/4 v4, 0x5

    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/16 v1, 0x9

    if-eq v0, v1, :cond_0

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    .line 845
    goto :goto_0

    .line 825
    :pswitch_1
    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimInserted:[Z

    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimValid:[I

    invoke-static {v0, v5, v6}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCase(I[Z[I)I

    move-result v0

    .line 827
    if-eq v0, v4, :cond_0

    if-eq v0, v1, :cond_0

    .line 829
    goto :goto_0

    .line 818
    :cond_1
    nop

    .line 819
    nop

    .line 853
    move v0, v2

    :goto_0
    if-nez v2, :cond_2

    .line 854
    const-string v1, "SimSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Disable data SIM for policy="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mSimLockPolicy:I

    .line 855
    invoke-static {v4}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", case="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 856
    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCaseString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 854
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    :cond_2
    return v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private shouldEnableSimPref(Z)Z
    .locals 10

    .line 914
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->shouldEnableCellularDataPrefForSimLock()Z

    move-result v0

    .line 915
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 916
    return v1

    .line 920
    :cond_0
    const-string v0, "ril.cdma.inecmmode"

    const-string v2, "false"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 921
    nop

    .line 922
    const/4 v2, 0x1

    if-eqz v0, :cond_1

    const-string v3, "true"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 923
    nop

    .line 925
    move v3, v2

    goto :goto_0

    :cond_1
    move v3, v1

    :goto_0
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->isCapabilitySwitching()Z

    move-result v4

    .line 926
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v5

    .line 928
    nop

    .line 929
    const-string v6, "ro.vendor.mtk_non_dsda_rsim_support"

    invoke-static {v6, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v2, :cond_2

    .line 930
    const-string v6, "vendor.gsm.prefered.rsim.slot"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v6

    goto :goto_1

    .line 935
    :cond_2
    move v6, v7

    :goto_1
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "defaultState="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", capSwitching="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", airplaneModeOn="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v9, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", inCall="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, ", ecbMode="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", rsimPhoneId="

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 938
    if-eqz p1, :cond_3

    if-nez v4, :cond_3

    iget-boolean p1, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    if-nez p1, :cond_3

    if-nez v5, :cond_3

    if-nez v3, :cond_3

    if-ne v6, v7, :cond_3

    move v1, v2

    nop

    :cond_3
    return v1
.end method

.method private shouldEnableSmsPrefForSimLock()Z
    .locals 1

    .line 869
    nop

    .line 871
    const/4 v0, 0x1

    return v0
.end method

.method private updateActivitesCategory()V
    .locals 1

    .line 304
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCellularDataValues()V

    .line 305
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateCallValues()V

    .line 306
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSmsValues()V

    .line 309
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->subChangeUpdatePrimarySIM()V

    .line 310
    return-void
.end method

.method private updateCallValues()V
    .locals 7

    .line 404
    const-string v0, "sim_calls"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 406
    const-string v1, ""

    .line 409
    if-nez v0, :cond_0

    .line 410
    return-void

    .line 414
    :cond_0
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v2

    .line 415
    nop

    .line 416
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 417
    nop

    .line 418
    invoke-virtual {v2}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v4

    .line 420
    const v5, 0x7f12035a    # @string/calls_title 'Calls'

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 423
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v5, v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDefaultCallValue(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v3

    .line 425
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateCallValues, PhoneAccountSize="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", phoneAccount="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 429
    if-nez v3, :cond_1

    const/4 v2, 0x0

    goto :goto_0

    .line 430
    :cond_1
    invoke-virtual {v2, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v2

    .line 439
    :goto_0
    if-eqz v2, :cond_5

    .line 440
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    .line 441
    if-lez v3, :cond_4

    .line 442
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v2, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 443
    if-eqz v2, :cond_3

    .line 444
    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 445
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_1

    .line 447
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 450
    :cond_3
    :goto_1
    goto :goto_2

    .line 451
    :cond_4
    invoke-virtual {v2}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 453
    :goto_2
    goto :goto_3

    .line 454
    :cond_5
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120c67    # @string/sim_calls_ask_first_prefs_title 'Ask every time'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 456
    :goto_3
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 459
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->shouldEnableCallPrefForSimLock()Z

    move-result v1

    .line 462
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_6

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_6

    goto :goto_4

    :cond_6
    const/4 v3, 0x0

    :goto_4
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 467
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const-string v2, "sim_calls"

    .line 468
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 467
    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->configSimPreferenceScreen(Landroid/support/v7/preference/Preference;Ljava/lang/String;I)V

    .line 469
    return-void
.end method

.method private updateCellularDataValues()V
    .locals 5

    .line 362
    const-string v0, "sim_cellular_data"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 364
    if-nez v0, :cond_0

    .line 365
    return-void

    .line 369
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 370
    const v2, 0x7f120397    # @string/cellular_data_title 'Mobile data'

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 371
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateCellularDataValues] mSubInfoList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 374
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "default subInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 375
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    const-string v4, "sim_cellular_data"

    invoke-interface {v2, v3, v1, v4}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDefaultSubId(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;Ljava/lang/String;)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 376
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updated subInfo="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 380
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-le v2, v4, :cond_1

    .line 381
    move v2, v4

    goto :goto_0

    .line 380
    :cond_1
    nop

    .line 381
    move v2, v3

    :goto_0
    if-eqz v1, :cond_3

    .line 386
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 387
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 389
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, " ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ") "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 392
    :cond_3
    if-nez v1, :cond_5

    .line 393
    const v1, 0x7f120ca4    # @string/sim_selection_required_pref 'Selection required'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 394
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v4, :cond_4

    .line 396
    move v2, v4

    goto :goto_1

    .line 394
    :cond_4
    nop

    .line 396
    move v2, v3

    :cond_5
    :goto_1
    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->shouldEnableSimPref(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 400
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const-string v2, "sim_cellular_data"

    const/4 v3, -0x1

    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->configSimPreferenceScreen(Landroid/support/v7/preference/Preference;Ljava/lang/String;I)V

    .line 401
    return-void
.end method

.method private updateSimSlotValues()V
    .locals 4

    .line 294
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    .line 295
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 296
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 297
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 298
    check-cast v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {v2}, Lcom/android/settings/sim/SimSettings$SimPreference;->update()V

    .line 295
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    :cond_1
    return-void
.end method

.method private updateSmsValues()V
    .locals 5

    .line 313
    const-string v0, "sim_sms"

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 316
    if-nez v0, :cond_0

    .line 317
    return-void

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 322
    const v2, 0x7f120cc0    # @string/sms_messages_title 'SMS messages'

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 323
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateSmsValues] mSubInfoList="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 325
    if-eqz v1, :cond_2

    .line 326
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "[updateSmsValues] sir = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "mSelectableSubInfos.size = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 338
    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 339
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 341
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0, v1}, Lcom/android/settings/sim/SimSettings;->getPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->createTtsSpannable(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 347
    :cond_2
    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v1, v3, :cond_3

    .line 350
    :goto_1
    move v1, v3

    goto :goto_3

    .line 347
    :cond_3
    nop

    .line 350
    :goto_2
    move v1, v2

    goto :goto_3

    .line 348
    :cond_4
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v3, :cond_5

    goto :goto_1

    :cond_5
    goto :goto_2

    .line 350
    :goto_3
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->shouldEnableSmsPrefForSimLock()Z

    move-result v4

    .line 351
    if-eqz v1, :cond_6

    if-eqz v4, :cond_6

    move v2, v3

    nop

    :cond_6
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 355
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const-string v2, "sim_sms"

    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 356
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 355
    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->configSimPreferenceScreen(Landroid/support/v7/preference/Preference;Ljava/lang/String;I)V

    .line 357
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    const-string v2, "sim_sms"

    invoke-interface {v1, v0, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setPrefSummary(Landroid/support/v7/preference/Preference;Ljava/lang/String;)V

    .line 359
    return-void
.end method

.method private updateSubscriptions()V
    .locals 8

    .line 225
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubInfoList:Ljava/util/List;

    .line 226
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_1

    .line 227
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 228
    instance-of v3, v2, Lcom/android/settings/sim/SimSettings$SimPreference;

    if-eqz v3, :cond_0

    .line 229
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v3, v2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 226
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    :cond_1
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 233
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 235
    move v1, v0

    :goto_1
    iget v2, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    if-ge v1, v2, :cond_7

    .line 236
    iget-object v2, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 237
    invoke-virtual {v2, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v2

    .line 238
    new-instance v3, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, p0, v4, v2, v1}, Lcom/android/settings/sim/SimSettings$SimPreference;-><init>(Lcom/android/settings/sim/SimSettings;Landroid/content/Context;Landroid/telephony/SubscriptionInfo;I)V

    .line 239
    iget v4, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    sub-int v4, v1, v4

    invoke-virtual {v3, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->setOrder(I)V

    .line 242
    const/4 v4, 0x1

    if-eqz v2, :cond_3

    .line 244
    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mSimLockSimInserted:[Z

    aput-boolean v4, v5, v1

    .line 246
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v5

    .line 247
    iget-object v6, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v6

    .line 248
    iget-boolean v7, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/android/settings/sim/SimSettings;->mRadioController:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 249
    invoke-virtual {v7, v5, v6}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(IZ)Z

    move-result v6

    if-eqz v6, :cond_2

    goto :goto_2

    .line 263
    :cond_2
    move v4, v0

    :goto_2
    invoke-virtual {v3, v5, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->bindRadioPowerState(IZ)V

    .line 264
    goto :goto_4

    .line 265
    :cond_3
    iget-boolean v5, p0, Lcom/android/settings/sim/SimSettings;->mIsAirplaneModeOn:Z

    const/4 v6, -0x1

    if-nez v5, :cond_4

    iget-object v5, p0, Lcom/android/settings/sim/SimSettings;->mRadioController:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 266
    invoke-virtual {v5, v6}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(I)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_3

    .line 265
    :cond_4
    move v4, v0

    :goto_3
    invoke-virtual {v3, v6, v4}, Lcom/android/settings/sim/SimSettings$SimPreference;->bindRadioPowerState(IZ)V

    .line 270
    :goto_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addPreference slot="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", subInfo="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 271
    if-nez v2, :cond_5

    const-string v5, "null"

    goto :goto_5

    :cond_5
    move-object v5, v2

    :goto_5
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 270
    invoke-direct {p0, v4}, Lcom/android/settings/sim/SimSettings;->logInEng(Ljava/lang/String;)V

    .line 274
    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 275
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 280
    if-eqz v2, :cond_6

    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    invoke-static {v3, v4}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 282
    iget-object v3, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 235
    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_1

    .line 285
    :cond_7
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateActivitesCategory()V

    .line 286
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 179
    const/16 v0, 0x58

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 952
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "***onActivityResult requestCode="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 953
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "***onActivityResult resultCode="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 954
    nop

    .line 955
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "***onActivityResult test="

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p3, -0x1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 956
    if-ne p2, p3, :cond_0

    .line 957
    const-string p1, "***onActivityResult show"

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 959
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedSettingsFragment;->onCreate(Landroid/os/Bundle;)V

    .line 185
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 187
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/TelephonyManager;

    .line 190
    const v0, 0x7f15009a    # @xml/sim_settings 'res/xml/sim_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimSettings;->addPreferencesFromResource(I)V

    .line 192
    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p1

    iput p1, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    .line 193
    const-string p1, "sim_cards"

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceScreen;

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimCards:Landroid/support/v7/preference/PreferenceScreen;

    .line 194
    new-instance p1, Ljava/util/ArrayList;

    iget v0, p0, Lcom/android/settings/sim/SimSettings;->mNumSlots:I

    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(I)V

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mAvailableSubInfos:Ljava/util/List;

    .line 195
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSelectableSubInfos:Ljava/util/List;

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerController;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mRadioController:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 202
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->initForSimStateChange()V

    .line 205
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 206
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->onCreate()V

    .line 207
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p1, p0}, Lcom/mediatek/settings/ext/ISimManagementExt;->initPlugin(Landroid/support/v14/preference/PreferenceFragment;)V

    .line 210
    const-string p1, "PrimarySim add option"

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->logInEng(Ljava/lang/String;)V

    .line 211
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p1, p0}, Lcom/mediatek/settings/ext/ISimManagementExt;->initPrimarySim(Landroid/support/v14/preference/PreferenceFragment;)V

    .line 213
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 901
    const-string v0, "onDestroy()"

    invoke-direct {p0, v0}, Lcom/android/settings/sim/SimSettings;->logInEng(Ljava/lang/String;)V

    .line 903
    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 905
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 907
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->onDestroy()V

    .line 908
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onDestroy()V

    .line 909
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 489
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onPause()V

    .line 490
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 493
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->onPause()V

    .line 494
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 498
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mContext:Landroid/content/Context;

    .line 499
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 500
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 502
    instance-of v2, p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 507
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/Settings$CustSimPreferenceActivity;

    invoke-direct {v1, v0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 508
    const-string v0, ":settings:show_fragment_as_subsetting"

    invoke-virtual {v1, v0, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 510
    const-string v0, "slot_id"

    check-cast p1, Lcom/android/settings/sim/SimSettings$SimPreference;

    invoke-static {p1}, Lcom/android/settings/sim/SimSettings$SimPreference;->access$900(Lcom/android/settings/sim/SimSettings$SimPreference;)I

    move-result p1

    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->startActivity(Landroid/content/Intent;)V

    .line 512
    goto :goto_0

    :cond_0
    const-string v2, "sim_cellular_data"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 513
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {v1, p1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 518
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 519
    invoke-virtual {p0, v1, v0}, Lcom/android/settings/sim/SimSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 520
    :cond_1
    const-string v2, "sim_calls"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_2

    .line 521
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    invoke-virtual {v1, p1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 522
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 523
    :cond_2
    const-string v2, "sim_sms"

    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    if-ne v2, p1, :cond_3

    .line 524
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v2, 0x2

    invoke-virtual {v1, p1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 525
    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 527
    :cond_3
    const-string v1, "primary_SIM_key"

    invoke-virtual {p0, v1}, Lcom/android/settings/sim/SimSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne v1, p1, :cond_4

    .line 528
    const-string p1, "host onPreferenceTreeClick 1"

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimSettings;->log(Ljava/lang/String;)V

    .line 529
    iget-object p1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->onPreferenceClick(Landroid/content/Context;)V

    .line 530
    return v3

    .line 533
    :cond_4
    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, p0, v0, p1}, Lcom/mediatek/settings/ext/ISimManagementExt;->handleEvent(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/Context;Landroid/support/v7/preference/Preference;)V

    .line 537
    :goto_0
    return v3
.end method

.method public onResume()V
    .locals 2

    .line 473
    invoke-super {p0}, Lcom/android/settings/RestrictedSettingsFragment;->onResume()V

    .line 474
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/sim/SimSettings;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 475
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->updateSubscriptions()V

    .line 481
    invoke-direct {p0}, Lcom/android/settings/sim/SimSettings;->removeItemsForTablet()V

    .line 484
    iget-object v0, p0, Lcom/android/settings/sim/SimSettings;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->onResume(Landroid/content/Context;)V

    .line 485
    return-void
.end method
