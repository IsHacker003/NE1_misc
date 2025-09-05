.class public Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedCallingOptions.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mEnableLVC:Z

.field private mEnablePlatform:Z

.field private mImsManager:Lcom/android/ims/ImsManager;

.field private final mImsRegListener:Lcom/android/ims/ImsConnectionStateListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mRadioGroup:Landroid/widget/RadioGroup;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mValidListener:Z

.field private mVoiceButton:Landroid/widget/RadioButton;

.field private mVoiceVideoButton:Landroid/widget/RadioButton;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mValidListener:Z

    .line 64
    new-instance v0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$1;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V

    iput-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mImsRegListener:Lcom/android/ims/ImsConnectionStateListener;

    .line 73
    new-instance v0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$2;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V

    iput-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;I[I[I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->handleImsStateChange(I[I[I)V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/Switch;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Landroid/content/Intent;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$300(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/content/Context;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    return p0
.end method

.method static synthetic access$402(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Z)Z
    .locals 0

    .line 45
    iput-boolean p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    return p1
.end method

.method static synthetic access$500(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z
    .locals 0

    .line 45
    iget-boolean p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    return p0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->updateScreen()V

    return-void
.end method

.method static synthetic access$700(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$800(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Landroid/widget/RadioButton;
    .locals 0

    .line 45
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceButton:Landroid/widget/RadioButton;

    return-object p0
.end method

.method static synthetic access$900(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)Z
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->isInternetConnected()Z

    move-result p0

    return p0
.end method

.method private handleImsStateChange(I[I[I)V
    .locals 2

    .line 531
    const/4 p3, 0x1

    if-ne p1, p3, :cond_0

    .line 532
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VoLTE capability changed to :"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    aget p2, p2, v1

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p3}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 535
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "handleImsStateChange: Feature VoLTE is enabled, so enable switch"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :cond_0
    return-void
.end method

.method private isInternetConnected()Z
    .locals 4

    .line 490
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    const-string v1, "connectivity"

    .line 491
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 492
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v2

    .line 493
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v0

    .line 496
    if-eqz v2, :cond_0

    .line 497
    invoke-virtual {v2}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 498
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    const-string v2, "isInternetConnected: Wifi is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    return v1

    .line 502
    :cond_0
    if-eqz v0, :cond_1

    .line 503
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 504
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    const-string v2, "isInternetConnected: Mobile data is connected"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    return v1

    .line 508
    :cond_1
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    const-string v1, "isInternetConnected: Internet not Connected"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    return v3
.end method

.method private registerForImsStateChange()V
    .locals 4

    .line 515
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mImsManager:Lcom/android/ims/ImsManager;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mImsRegListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0, v1, v2}, Lcom/android/ims/ImsManager;->addRegistrationListener(ILcom/android/ims/ImsConnectionStateListener;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 518
    goto :goto_0

    .line 516
    :catch_0
    move-exception v0

    .line 517
    const-string v1, "OP12AdvancedCallingOptionsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addRegistrationListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 519
    :goto_0
    return-void
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 3

    .line 455
    const-string v0, "alertTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 456
    const-string v1, "alertMessage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 458
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 459
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 460
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 461
    const v0, 0x1080027    # @android:drawable/ic_dialog_alert

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 462
    const v0, 0x104000a    # @android:string/ok

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 463
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 464
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 465
    return-void
.end method

.method private unRegisterForImsStateChange()V
    .locals 4

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mImsManager:Lcom/android/ims/ImsManager;

    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mImsRegListener:Lcom/android/ims/ImsConnectionStateListener;

    invoke-virtual {v0, v1}, Lcom/android/ims/ImsManager;->removeRegistrationListener(Lcom/android/ims/ImsConnectionStateListener;)V
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 526
    goto :goto_0

    .line 524
    :catch_0
    move-exception v0

    .line 525
    const-string v1, "OP12AdvancedCallingOptionsFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "removeRegistrationListener: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 527
    :goto_0
    return-void
.end method

.method private updateScreen()V
    .locals 7

    .line 468
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 469
    if-nez v0, :cond_0

    .line 470
    return-void

    .line 472
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    .line 473
    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v2

    .line 474
    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 475
    const/4 v3, 0x1

    xor-int/2addr v0, v3

    const-string v4, "OP12AdvancedCallingOptionsFragment"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "isAdvanceCallingEnabled: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", isCallStateIdle: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 477
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 478
    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    const/4 v4, 0x0

    if-eqz v1, :cond_2

    .line 479
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_1

    move v5, v3

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 481
    :cond_2
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceButton:Landroid/widget/RadioButton;

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    goto :goto_1

    :cond_3
    move v3, v4

    :goto_1
    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setEnabled(Z)V

    .line 482
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 486
    const/16 v0, 0x69

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 108
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 109
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string v0, "onActivityCreated"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 113
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitch:Landroid/widget/Switch;

    .line 114
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 115
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 119
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 120
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    .line 122
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentFilter:Landroid/content/IntentFilter;

    .line 123
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 126
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/ims/ImsManager;->isVtEnabledByPlatform(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    .line 127
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilityPhoneId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mImsManager:Lcom/android/ims/ImsManager;

    .line 129
    :try_start_0
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    .line 130
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v0

    .line 129
    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lcom/android/ims/ImsManager;->getConfigInterface()Lcom/android/ims/ImsConfig;

    move-result-object p1

    .line 131
    const/16 v0, 0xb

    invoke-virtual {p1, v0}, Lcom/android/ims/ImsConfig;->getProvisionedValue(I)I

    move-result p1

    const/4 v0, 0x1

    if-ne v0, p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    .line 133
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "enableLVC:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, "  enablePlatform:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 137
    goto :goto_1

    .line 134
    :catch_0
    move-exception p1

    .line 135
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    const-string v1, "Advanced settings not updated, ImsConfig null"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 136
    invoke-virtual {p1}, Lcom/android/ims/ImsException;->printStackTrace()V

    .line 138
    :goto_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    .line 144
    iget-boolean p3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 145
    const p3, 0x7f0d0043    # @layout/calling_pref_layout 'res/layout/calling_pref_layout.xml'

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 146
    const p2, 0x7f0a0180    # @id/hd_voice_video

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    goto :goto_0

    .line 148
    :cond_0
    const p3, 0x7f0d0044    # @layout/calling_voice_only_pref_layout 'res/layout/calling_voice_only_pref_layout.xml'

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 150
    :goto_0
    const p2, 0x7f0a0181    # @id/hd_voice_video_group

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioGroup;

    iput-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    .line 151
    const p2, 0x7f0a017f    # @id/hd_voice_only

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/RadioButton;

    iput-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceButton:Landroid/widget/RadioButton;

    .line 152
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    new-instance p3, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;

    invoke-direct {p3, p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$3;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;)V

    invoke-virtual {p2, p3}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 265
    return-object p1
.end method

.method public onDestroyView()V
    .locals 1

    .line 335
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 336
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 337
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 323
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 325
    iget-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 326
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mValidListener:Z

    .line 327
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 329
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 330
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->unRegisterForImsStateChange()V

    .line 331
    return-void
.end method

.method public onResume()V
    .locals 7

    .line 270
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 271
    const-string v0, "OP12AdvancedCallingOptionsFragment"

    const-string v1, "On Resume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isVolteEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 274
    iput-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mValidListener:Z

    .line 278
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    .line 279
    const v2, 0x3e4ccccd    # 0.2f

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    if-eqz v0, :cond_5

    .line 280
    move v5, v4

    :goto_0
    iget-object v6, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 281
    iget-object v6, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v6, v5}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 280
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 283
    :cond_1
    iget-boolean v5, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    const v6, 0x7f0a017f    # @id/hd_voice_only

    if-eqz v5, :cond_3

    iget-boolean v5, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-eqz v5, :cond_3

    .line 284
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    invoke-virtual {v2, v3}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 285
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/ims/ImsManager;->isVtEnabledByUser(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 286
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    const v3, 0x7f0a0180    # @id/hd_voice_video

    invoke-virtual {v2, v3}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 288
    :cond_2
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 290
    :cond_3
    iget-boolean v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    if-eqz v3, :cond_4

    iget-boolean v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-nez v3, :cond_4

    .line 291
    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    invoke-virtual {v3, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 292
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 294
    :cond_4
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v6}, Landroid/widget/RadioGroup;->check(I)V

    .line 296
    :goto_1
    move v2, v4

    :goto_2
    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_9

    .line 297
    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v3, v2}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 296
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 300
    :cond_5
    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    if-eqz v1, :cond_6

    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-eqz v1, :cond_6

    .line 301
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v3}, Landroid/widget/RadioButton;->setAlpha(F)V

    goto :goto_3

    .line 302
    :cond_6
    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    if-eqz v1, :cond_7

    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-nez v1, :cond_7

    .line 303
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mVoiceVideoButton:Landroid/widget/RadioButton;

    invoke-virtual {v1, v2}, Landroid/widget/RadioButton;->setAlpha(F)V

    .line 305
    :cond_7
    :goto_3
    move v1, v4

    :goto_4
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 306
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setEnabled(Z)V

    .line 305
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 308
    :cond_8
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 310
    :cond_9
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 311
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->updateScreen()V

    .line 312
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 315
    const-string v1, "alertShow"

    invoke-virtual {v0, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 316
    invoke-direct {p0, v0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->showAlert(Landroid/content/Intent;)V

    .line 318
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->registerForImsStateChange()V

    .line 319
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 9

    .line 344
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string v0, "OnSwitchChanged, disable switchbar"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 346
    const p1, 0x7f0a0180    # @id/hd_voice_video

    const v1, 0x104000a    # @android:string/ok

    const v2, 0x7f120992    # @string/note 'Note'

    const v3, 0x7f0a0316    # @id/skip_box

    const/4 v4, 0x0

    const v5, 0x7f0d014f    # @layout/skip_checkbox 'res/layout/skip_checkbox.xml'

    const/4 v6, 0x1

    if-eqz p2, :cond_4

    .line 347
    const-string v7, "OP12AdvancedCallingOptionsFragment"

    const-string v8, "Switch is checked"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    iget-object v7, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "KEY_ADVANCED_CALLING"

    invoke-static {v7, v8, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 350
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 351
    iget-object v8, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 352
    invoke-virtual {v8, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 353
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 354
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 355
    iget-object v4, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 356
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 357
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    const v4, 0x7f1200c0    # @string/advance_calling_enable_msg 'When using the Verizon Wireless 4G LTE network, the voice portion of a video call will appear on you ...'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$4;

    invoke-direct {v4, p0, v3}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$4;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Landroid/widget/CheckBox;)V

    .line 358
    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 373
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 374
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    const-string v3, "preff_advanced_calling"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 375
    const-string v3, "skipMessage1"

    const-string v4, "NOT checked"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 376
    const-string v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 377
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 379
    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 380
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v2, v1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 382
    :cond_1
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "KEY_CALL_OPTIONS"

    invoke-static {v1, v2, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 384
    iget-boolean v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    if-eqz v2, :cond_2

    iget-boolean v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-eqz v2, :cond_2

    if-ne v1, v6, :cond_2

    .line 385
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->check(I)V

    goto :goto_1

    .line 387
    :cond_2
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    const v1, 0x7f0a017f    # @id/hd_voice_only

    invoke-virtual {p1, v1}, Landroid/widget/RadioGroup;->check(I)V

    .line 389
    :goto_1
    move p1, v0

    :goto_2
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_3

    .line 390
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v6}, Landroid/view/View;->setEnabled(Z)V

    .line 389
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    .line 392
    :cond_3
    goto/16 :goto_5

    .line 393
    :cond_4
    const-string v7, "OP12AdvancedCallingOptionsFragment"

    const-string v8, "Switch is Unchecked"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    iget-object v7, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "KEY_ADVANCED_CALLING"

    invoke-static {v7, v8, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 396
    new-instance v7, Landroid/app/AlertDialog$Builder;

    iget-object v8, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 397
    iget-object v8, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {v8}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v8

    .line 398
    invoke-virtual {v8, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v4

    .line 399
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/CheckBox;

    .line 400
    invoke-virtual {v7, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 401
    iget-object v4, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 402
    invoke-virtual {v7, v0}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 403
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    const v4, 0x7f1200bf    # @string/advance_calling_disable_msg 'Your phone will not be able to make or receive HD voice and video calls when you turn this setting o ...'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v7, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    new-instance v4, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;

    invoke-direct {v4, p0, v3}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions$5;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;Landroid/widget/CheckBox;)V

    .line 404
    invoke-virtual {v2, v1, v4}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 419
    invoke-virtual {v7}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    .line 420
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    const-string v3, "preff_advanced_calling"

    invoke-virtual {v2, v3, v0}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 421
    const-string v3, "skipMessage2"

    const-string v4, "NOT checked"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 422
    const-string v3, "checked"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 423
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 425
    :cond_5
    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-eqz v1, :cond_7

    .line 426
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getCheckedRadioButtonId()I

    move-result v1

    if-ne v1, p1, :cond_6

    .line 427
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "KEY_CALL_OPTIONS"

    invoke-static {p1, v1, v6}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_3

    .line 430
    :cond_6
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "KEY_CALL_OPTIONS"

    invoke-static {p1, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 434
    :cond_7
    :goto_3
    move p1, v0

    :goto_4
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1}, Landroid/widget/RadioGroup;->getChildCount()I

    move-result v1

    if-ge p1, v1, :cond_8

    .line 435
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {v1, p1}, Landroid/widget/RadioGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 434
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 437
    :cond_8
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mRadioGroup:Landroid/widget/RadioGroup;

    invoke-virtual {p1}, Landroid/widget/RadioGroup;->clearCheck()V

    .line 439
    :goto_5
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->setEnhanced4gLteModeSetting(Landroid/content/Context;Z)V

    .line 440
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v1, "KEY_CALL_OPTIONS"

    invoke-static {p1, v1, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 442
    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnablePlatform:Z

    if-eqz v1, :cond_a

    iget-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mEnableLVC:Z

    if-eqz v1, :cond_a

    .line 443
    if-eqz p2, :cond_9

    if-ne p1, v6, :cond_9

    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->isInternetConnected()Z

    move-result p1

    if-eqz p1, :cond_9

    .line 444
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->setVtSetting(Landroid/content/Context;Z)V

    .line 445
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Set VT setting:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 447
    :cond_9
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedCallingOptions;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Lcom/android/ims/ImsManager;->setVtSetting(Landroid/content/Context;Z)V

    .line 448
    const-string p1, "OP12AdvancedCallingOptionsFragment"

    const-string p2, "Set VT setting: false"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 451
    :cond_a
    :goto_6
    return-void
.end method
