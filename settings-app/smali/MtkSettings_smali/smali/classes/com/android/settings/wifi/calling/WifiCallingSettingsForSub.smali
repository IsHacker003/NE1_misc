.class public Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "WifiCallingSettingsForSub.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mAlertAlreadyShowed:Z

.field private mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

.field private mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

.field private mEditableWfcMode:Z

.field private mEditableWfcRoamingMode:Z

.field private mEmptyView:Landroid/widget/TextView;

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private final mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mRemoveWfcPreferenceMode:Z

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSubId:I

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mUpdateAddress:Landroid/support/v7/preference/Preference;

.field private final mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

.field private mValidListener:Z

.field mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 89
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 116
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 117
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    .line 118
    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    .line 120
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 128
    iput-boolean v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mAlertAlreadyShowed:Z

    .line 134
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$1;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 179
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$2;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    .line 235
    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$3;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/ims/ImsManager;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 89
    iget-object p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)Landroid/content/Intent;
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Intent;)V
    .locals 0

    .line 89
    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)I
    .locals 0

    .line 89
    iget p0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    return p0
.end method

.method static synthetic access$500(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->turnOnWFC()V

    return-void
.end method

.method private getCarrierActivityIntent()Landroid/content/Intent;
    .locals 3

    .line 566
    nop

    .line 567
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 568
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 570
    :cond_0
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 571
    if-nez v0, :cond_1

    return-object v1

    .line 573
    :cond_1
    const-string v2, "wfc_emergency_address_carrier_app_string"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 575
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    return-object v1

    .line 577
    :cond_2
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 578
    if-nez v0, :cond_3

    return-object v1

    .line 581
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->isPackageExist(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 582
    return-object v1

    .line 587
    :cond_4
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 588
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 589
    return-object v1
.end method

.method private getWfcModeSummary(I)I
    .locals 3

    .line 751
    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getWfcModeSummary, wfcMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    nop

    .line 753
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 754
    packed-switch p1, :pswitch_data_0

    .line 765
    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected WFC mode value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 762
    :pswitch_0
    const p1, 0x1041183

    .line 763
    goto :goto_1

    .line 759
    :pswitch_1
    const p1, 0x1041181

    .line 760
    goto :goto_1

    .line 756
    :pswitch_2
    const p1, 0x1041182

    .line 757
    goto :goto_1

    .line 768
    :cond_0
    :goto_0
    const p1, 0x10411a4

    :goto_1
    return p1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private isInSwitchProcess()Z
    .locals 5

    .line 773
    nop

    .line 775
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->getInstance()Lcom/mediatek/ims/internal/MtkImsManagerEx;

    move-result-object v1

    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 776
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .line 775
    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->getImsState(I)I

    move-result v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 779
    nop

    .line 780
    const-string v2, "WifiCallingForSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInSwitchProcess, imsState="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 781
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 777
    :catch_0
    move-exception v1

    .line 778
    return v0
.end method

.method private static isPackageExist(Landroid/content/Context;Landroid/content/ComponentName;)Z
    .locals 1

    .line 801
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    nop

    .line 806
    const-string p0, "WifiCallingForSub"

    const-string p1, "package exists."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 807
    const/4 p0, 0x1

    return p0

    .line 802
    :catch_0
    move-exception p0

    .line 803
    const-string p0, "WifiCallingForSub"

    const-string p1, "package does not exist."

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 804
    return v0
.end method

.method private isVodafone()Z
    .locals 8

    .line 825
    nop

    .line 826
    const-string v0, "23415"

    const-string v1, "26202"

    const-string v2, "26209"

    const-string v3, "23003"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    .line 827
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 828
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 829
    const-string v3, "phone"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 830
    nop

    .line 831
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 832
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/telephony/TelephonyManager;->getNetworkOperator(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 834
    :cond_0
    const/4 v3, 0x0

    :goto_0
    if-eqz v2, :cond_1

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 835
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v3

    .line 837
    :cond_1
    const-string v1, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isVodafone plmn = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 838
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v4, 0x0

    if-nez v1, :cond_3

    .line 839
    array-length v1, v0

    move v5, v4

    move v6, v5

    :goto_1
    if-ge v5, v1, :cond_4

    aget-object v7, v0, v5

    .line 840
    invoke-virtual {v7, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 841
    nop

    .line 839
    move v6, v2

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 845
    :cond_3
    move v6, v4

    :cond_4
    if-eqz v6, :cond_5

    .line 846
    return v2

    .line 848
    :cond_5
    nop

    .line 849
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Landroid/telephony/CarrierConfigManager;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 850
    if-nez v0, :cond_6

    return v4

    .line 851
    :cond_6
    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 852
    if-nez v0, :cond_7

    return v4

    .line 853
    :cond_7
    const-string v1, "oem_key_vf_wifi_calling_notify_bool"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 855
    const-string v1, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isVodafone : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 856
    return v0
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 3

    .line 219
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 221
    const-string v1, "alertTitle"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 222
    const-string v2, "alertMessage"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 224
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 225
    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 226
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 227
    const v0, 0x1080027    # @android:drawable/ic_dialog_alert

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 228
    const v0, 0x104000a    # @android:string/ok

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 229
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 230
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 231
    return-void
.end method

.method private turnOnWFC()V
    .locals 4

    .line 814
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v0

    .line 815
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 816
    const-string v2, "EXTRA_LAUNCH_CARRIER_APP"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 817
    invoke-virtual {p0, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0

    .line 819
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 821
    :goto_0
    return-void
.end method

.method private updateBody()V
    .locals 8

    .line 358
    const-string v0, "carrier_config"

    .line 359
    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/CarrierConfigManager;

    .line 360
    nop

    .line 363
    nop

    .line 365
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 366
    iget v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v0, v3}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 367
    if-eqz v0, :cond_0

    .line 368
    const-string v3, "editable_wfc_mode_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    .line 370
    const-string v3, "editable_wfc_roaming_mode_bool"

    invoke-virtual {v0, v3}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    .line 372
    const-string v3, "carrier_wfc_supports_wifi_only_bool"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    .line 375
    const-string v4, "mtk_wfc_remove_preference_mode_bool"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mRemoveWfcPreferenceMode:Z

    .line 377
    const-string v4, "WifiCallingForSub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateBody, removeWfcPreferenceMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v6, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mRemoveWfcPreferenceMode:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v4, "mtk_key_update_wificalling_by_tty"

    invoke-virtual {v0, v4, v1}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 380
    const-string v4, "WifiCallingForSub"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "[TTY]WFC disableWifiCalling"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 385
    :cond_0
    move v0, v1

    move v3, v2

    :goto_0
    if-nez v3, :cond_1

    .line 386
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0300a9    # @array/wifi_calling_mode_choices_without_wifi_only

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 387
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const v4, 0x7f0300ab    # @array/wifi_calling_mode_values_without_wifi_only

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 388
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    const v5, 0x7f0300a8    # @array/wifi_calling_mode_choices_v2_without_wifi_only

    invoke-virtual {v3, v5}, Landroid/support/v7/preference/ListPreference;->setEntries(I)V

    .line 390
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v3, v4}, Landroid/support/v7/preference/ListPreference;->setEntryValues(I)V

    .line 396
    :cond_1
    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    .line 397
    invoke-virtual {v3}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 398
    move v3, v2

    goto :goto_1

    .line 397
    :cond_2
    nop

    .line 398
    move v3, v1

    :goto_1
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v4, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 399
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    .line 400
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v4

    .line 401
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 402
    iget-object v5, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 403
    invoke-direct {p0, v3, v1, v4}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    .line 406
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateEnabledState()V

    .line 409
    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v4}, Lcom/android/ims/ImsManager;->isNonTtyOrTtyOnVolteEnabled()Z

    move-result v4

    .line 410
    const-string v5, "WifiCallingForSub"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[TTY]isNonTtyOrTtyOnVolteEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v7, " wfcEnabled :"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    if-nez v4, :cond_3

    if-eqz v0, :cond_3

    if-nez v3, :cond_3

    .line 413
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 414
    const v4, 0x7f120e36    # @string/tty_wfc_disable_wfc_setting_message 'Disable TTY to enable Wifi Calling.'

    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 416
    invoke-static {v0, v4, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 421
    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 422
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    .line 421
    invoke-interface {v0, v2, v4, v3, v1}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->updateWfcModePreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/ListPreference;ZI)V

    .line 424
    return-void
.end method

.method private updateButtonWfcMode(ZII)V
    .locals 5

    .line 632
    const-string p3, "WifiCallingForSub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateButtonWfcMode, wfcEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 633
    iget-object p3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)I

    move-result p2

    invoke-virtual {p3, p2}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 634
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz v1, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    move v1, p3

    :goto_0
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 636
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-eqz p1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz v1, :cond_1

    move v1, v0

    goto :goto_1

    :cond_1
    move v1, p3

    :goto_1
    invoke-virtual {p2, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 638
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2

    .line 639
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 641
    move p3, v0

    goto :goto_2

    .line 639
    :cond_2
    nop

    .line 641
    :goto_2
    nop

    .line 642
    const-string v1, "carrier_config"

    .line 643
    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/CarrierConfigManager;

    .line 644
    if-eqz v1, :cond_3

    .line 645
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 646
    if-eqz v1, :cond_3

    .line 647
    const-string v0, "oem_key_wfc_show_roaming_dynamically_bool"

    invoke-virtual {v1, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 651
    :cond_3
    const-string v1, "phone"

    invoke-virtual {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 652
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v1

    .line 653
    const-string v2, "WifiCallingForSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateButtonWfcMode: needConsiderRoamingCondition = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; isRoaming = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; mEditableWfcMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, " ; mEditableWfcRoamingMode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 657
    if-eqz p1, :cond_9

    .line 658
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcMode:Z

    if-eqz p1, :cond_5

    .line 660
    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 661
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 663
    :cond_4
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_3

    .line 670
    :cond_5
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 672
    :goto_3
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-eqz p1, :cond_7

    .line 674
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    .line 675
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    .line 677
    :cond_6
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_4

    .line 685
    :cond_7
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 687
    :goto_4
    if-eqz p3, :cond_8

    .line 688
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_5

    .line 690
    :cond_8
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 693
    :goto_5
    iget-boolean p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mRemoveWfcPreferenceMode:Z

    if-eqz p1, :cond_a

    .line 694
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_6

    .line 698
    :cond_9
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 699
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 700
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 702
    :cond_a
    :goto_6
    return-void
.end method

.method private updateEnabledState()V
    .locals 4

    .line 788
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 789
    const-string v1, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateEnabledState, inCall="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 790
    if-eqz v0, :cond_0

    .line 791
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 792
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 793
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 795
    :cond_0
    return-void
.end method

.method private updateWfcMode(Z)V
    .locals 4

    .line 596
    const-string v0, "WifiCallingForSub"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateWfcMode("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 597
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v0, p1}, Lcom/android/ims/ImsManager;->setWfcSetting(Z)V

    .line 599
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v0

    .line 600
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result v1

    .line 601
    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateButtonWfcMode(ZII)V

    .line 604
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 605
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    .line 604
    invoke-interface {v1, v2, v3, p1, v0}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->updateWfcModePreference(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/ListPreference;ZI)V

    .line 608
    if-eqz p1, :cond_0

    .line 609
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    goto :goto_0

    .line 611
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v1

    const/4 v2, -0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 613
    :goto_0
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 274
    const/4 v0, 0x0

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 268
    const/16 v0, 0x4ce

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 197
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 201
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object v0

    const v1, 0x1020004    # @android:id/empty

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    .line 202
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->setEmptyView(Landroid/view/View;)V

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120fec    # @string/wifi_calling_off_explanation 'When Wi-Fi calling is on, your phone can route calls via Wi-Fi networks or your carrier’s network, d ...'

    invoke-virtual {p1, v1}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    const v1, 0x7f120fed    # @string/wifi_calling_off_explanation_2 ''

    invoke-virtual {p1, v1}, Lcom/android/settings/SettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 205
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x7f0a036f    # @id/switch_bar

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/settings/widget/SwitchBar;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 208
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 209
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitch:Landroid/widget/Switch;

    .line 210
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .line 617
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 619
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    .line 621
    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 622
    const-string p1, "WifiCallingForSub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "WFC emergency address activity result = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    const/4 p1, -0x1

    if-ne p2, p1, :cond_0

    .line 625
    invoke-direct {p0, p3}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 628
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 279
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 281
    const v0, 0x7f1500bf    # @xml/wifi_calling_settings 'res/xml/wifi_calling_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->addPreferencesFromResource(I)V

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getWfcSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWfcSettingsExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    .line 285
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    invoke-interface {v0, p0}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->initPlugin(Landroid/support/v14/preference/PreferenceFragment;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "subId"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "subId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    goto :goto_0

    .line 292
    :cond_0
    if-eqz p1, :cond_1

    .line 293
    const-string v0, "subId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 297
    :cond_1
    :goto_0
    nop

    .line 298
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 297
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    .line 300
    const-string p1, "wifi_calling_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    .line 301
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 303
    const-string p1, "wifi_calling_roaming_mode"

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    .line 304
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 306
    const-string p1, "emergency_address_key"

    invoke-virtual {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    .line 307
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddress:Landroid/support/v7/preference/Preference;

    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mUpdateAddressListener:Landroid/support/v7/preference/Preference$OnPreferenceClickListener;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 310
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    invoke-interface {p1}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->addOtherCustomPreference()V

    .line 312
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    .line 313
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 315
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.telephony.action.CARRIER_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    .line 319
    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->createForSubscriptionId(I)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 323
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 324
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$4;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$4;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 333
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    const/4 v0, 0x2

    invoke-interface {p1, v0}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->onWfcSettingsEvent(I)V

    .line 334
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 346
    const/4 v0, 0x0

    const v1, 0x7f0d01d1    # @layout/wifi_calling_settings_preferences 'res/layout/wifi_calling_settings_preferences.xml'

    invoke-virtual {p1, v1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 349
    const v2, 0x7f0a026e    # @id/prefs_container

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 350
    invoke-static {p2, v1, v2, v0}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 351
    invoke-super {p0, p1, v2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 352
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 354
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .line 482
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 484
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->onWfcSettingsEvent(I)V

    .line 486
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 487
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 214
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 215
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 216
    return-void
.end method

.method public onPause()V
    .locals 4

    .line 460
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 462
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 464
    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    if-eqz v1, :cond_0

    .line 465
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 468
    iget-object v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    invoke-virtual {v2, v3, v1}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 470
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 473
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->onWfcSettingsEvent(I)V

    .line 477
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 4

    .line 706
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_3

    .line 707
    const-string p1, "WifiCallingForSub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange mButtonWfcMode "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 709
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 710
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result p2

    .line 711
    if-eq p1, p2, :cond_0

    .line 712
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p2, p1, v0}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 713
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcMode:Landroid/support/v7/preference/ListPreference;

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getWfcModeSummary(I)I

    move-result v2

    invoke-virtual {p2, v2}, Landroid/support/v7/preference/ListPreference;->setSummary(I)V

    .line 714
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v3

    invoke-virtual {p2, v2, v3, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 717
    :cond_0
    nop

    .line 718
    const-string p2, "carrier_config"

    invoke-virtual {p0, p2}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/CarrierConfigManager;

    .line 719
    if-eqz p2, :cond_1

    .line 720
    iget v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p2, v2}, Landroid/telephony/CarrierConfigManager;->getConfigForSubId(I)Landroid/os/PersistableBundle;

    move-result-object p2

    .line 721
    if-eqz p2, :cond_1

    .line 722
    const-string v0, "oem_key_wfc_roaming_mode_not_follow_home_bool"

    invoke-virtual {p2, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 725
    :cond_1
    const-string p2, "WifiCallingForSub"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onPreferenceChange NotFollowWfcHomeMode "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-boolean p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mEditableWfcRoamingMode:Z

    if-nez p2, :cond_2

    if-nez v0, :cond_2

    .line 731
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p2, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result p2

    .line 732
    if-eq p1, p2, :cond_2

    .line 733
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p2, p1, v1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 737
    :cond_2
    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    if-ne p1, v0, :cond_4

    .line 738
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mButtonWfcRoamingMode:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 739
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 740
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p2, v1}, Lcom/android/ims/ImsManager;->getWfcMode(Z)I

    move-result p2

    .line 741
    if-eq p1, p2, :cond_4

    .line 742
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {p2, p1, v1}, Lcom/android/ims/ImsManager;->setWfcMode(IZ)V

    .line 744
    iget-object p2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getMetricsCategory()I

    move-result v2

    invoke-virtual {p2, v0, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 747
    :cond_4
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 5

    .line 428
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 429
    const-string v0, "WifiCallingForSub"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 431
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 433
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateBody()V

    .line 435
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mImsManager:Lcom/android/ims/ImsManager;

    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 437
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v4, 0x20

    invoke-virtual {v1, v3, v4}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 439
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 441
    iput-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mValidListener:Z

    .line 444
    :cond_0
    iget-object v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 448
    const-string v1, "alertShow"

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mAlertAlreadyShowed:Z

    if-nez v1, :cond_1

    .line 449
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->showAlert(Landroid/content/Intent;)V

    .line 450
    iput-boolean v2, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mAlertAlreadyShowed:Z

    .line 455
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mWfcExt:Lcom/mediatek/settings/ext/IWfcSettingsExt;

    invoke-interface {v0, v3}, Lcom/mediatek/settings/ext/IWfcSettingsExt;->onWfcSettingsEvent(I)V

    .line 456
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 338
    const-string v0, "subId"

    iget v1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSubId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 339
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 340
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 5

    .line 494
    const-string p1, "WifiCallingForSub"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSwitchChanged("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->isInSwitchProcess()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 499
    const-string p1, "WifiCallingForSub"

    const-string v2, "onSwitchChanged, switching process is ongoing."

    invoke-static {p1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v2, 0x7f120001    # @string/Switch_not_in_use_string 'The switch is temporarily unavailable. Please try again later.'

    invoke-static {p1, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 501
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 502
    iget-object p1, p0, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    xor-int/2addr p2, v0

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 503
    return-void

    .line 507
    :cond_0
    if-nez p2, :cond_1

    .line 508
    invoke-direct {p0, v1}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 509
    return-void

    .line 513
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 514
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v2, "wifi_calling_never_show_again"

    invoke-static {p2, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p2

    .line 515
    const-string v2, "WifiCallingForSub"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "neverShowAgain = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->isVodafone()Z

    move-result v2

    if-eqz v2, :cond_3

    if-nez p2, :cond_3

    .line 518
    const-string v2, "layout_inflater"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    .line 519
    const v3, 0x7f0d01f4    # @layout/zzz_wifi_calling_dialog 'res/layout/zzz_wifi_calling_dialog.xml'

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 520
    const v3, 0x7f0a03e2    # @id/wifi_calling_checkbox

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 521
    if-ne p2, v0, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 522
    new-instance p2, Landroid/app/AlertDialog$Builder;

    invoke-direct {p2, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 523
    const v0, 0x7f120fe5    # @string/wifi_calling_dialog_msg 'Emergency calls are not possible via Wi-Fi Calling. The device switches automatically to a cellular  ...'

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x7f120fe6    # @string/wifi_calling_dialog_title 'Emergency calls via Wi-Fi Calling'

    .line 524
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v4, 0x1080027    # @android:drawable/ic_dialog_alert

    .line 525
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 526
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x104000a    # @android:string/ok

    new-instance v4, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;

    invoke-direct {v4, p0, p1, v3}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$5;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;Landroid/content/Context;Landroid/widget/CheckBox;)V

    .line 527
    invoke-virtual {v0, v2, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 534
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 535
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 536
    new-instance p2, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$6;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub$6;-><init>(Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;)V

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 545
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 546
    return-void

    .line 551
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->getCarrierActivityIntent()Landroid/content/Intent;

    move-result-object p1

    .line 552
    if-eqz p1, :cond_4

    .line 553
    const-string p2, "EXTRA_LAUNCH_CARRIER_APP"

    invoke-virtual {p1, p2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 554
    invoke-virtual {p0, p1, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_1

    .line 556
    :cond_4
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/calling/WifiCallingSettingsForSub;->updateWfcMode(Z)V

    .line 558
    :goto_1
    return-void
.end method
