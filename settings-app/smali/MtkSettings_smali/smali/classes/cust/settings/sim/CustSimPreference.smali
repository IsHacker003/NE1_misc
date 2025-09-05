.class public Lcust/settings/sim/CustSimPreference;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CustSimPreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcust/settings/CustSimEditTextPreference$Validator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;
    }
.end annotation


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/mediatek/settings/sim/RadioPowerController;

.field private mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

.field private mHandler:Landroid/os/Handler;

.field private mIsChecked:Z

.field private mPhoneCount:I

.field private mPowerState:Z

.field private mProgressDialog:Landroid/app/ProgressDialog;

.field private mSimColorPref:Landroid/support/v7/preference/Preference;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSimNamePref:Lcust/settings/CustSimEditTextPreference;

.field private mSlotId:I

.field private mSubId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field mTelManager:Landroid/telephony/TelephonyManager;

.field private mTintArr:[I

.field private mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

.field private mUiccProvisionStatus:[I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 97
    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 98
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    iput v0, p0, Lcust/settings/sim/CustSimPreference;->mPhoneCount:I

    .line 99
    iget v0, p0, Lcust/settings/sim/CustSimPreference;->mPhoneCount:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mUiccProvisionStatus:[I

    .line 104
    const/4 v0, -0x1

    iput v0, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    .line 499
    new-instance v0, Lcust/settings/sim/CustSimPreference$7;

    invoke-direct {v0, p0}, Lcust/settings/sim/CustSimPreference$7;-><init>(Lcust/settings/sim/CustSimPreference;)V

    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 513
    new-instance v0, Lcust/settings/sim/CustSimPreference$8;

    invoke-direct {v0, p0}, Lcust/settings/sim/CustSimPreference$8;-><init>(Lcust/settings/sim/CustSimPreference;)V

    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$100(Lcust/settings/sim/CustSimPreference;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$1000(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcust/settings/sim/CustSimPreference;->showProgressDialog()V

    return-void
.end method

.method static synthetic access$1100(Lcust/settings/sim/CustSimPreference;II)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcust/settings/sim/CustSimPreference;->processSetUiccDone(II)V

    return-void
.end method

.method static synthetic access$1200(Lcust/settings/sim/CustSimPreference;)Landroid/app/AlertDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$1300(Lcust/settings/sim/CustSimPreference;Landroid/app/Dialog;Z)V
    .locals 0

    .line 64
    invoke-direct {p0, p1, p2}, Lcust/settings/sim/CustSimPreference;->dismissDialog(Landroid/app/Dialog;Z)V

    return-void
.end method

.method static synthetic access$1400(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcust/settings/sim/CustSimPreference;->sendUiccProvisioningRequest()V

    return-void
.end method

.method static synthetic access$1500(Lcust/settings/sim/CustSimPreference;)Landroid/os/Handler;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1600(Lcust/settings/sim/CustSimPreference;)Landroid/app/ProgressDialog;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    return-object p0
.end method

.method static synthetic access$200(Lcust/settings/sim/CustSimPreference;)Lcust/settings/CustSimEditTextPreference;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    return-object p0
.end method

.method static synthetic access$300(Lcust/settings/sim/CustSimPreference;)Z
    .locals 0

    .line 64
    iget-boolean p0, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    return p0
.end method

.method static synthetic access$302(Lcust/settings/sim/CustSimPreference;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    return p1
.end method

.method static synthetic access$400(Lcust/settings/sim/CustSimPreference;)V
    .locals 0

    .line 64
    invoke-direct {p0}, Lcust/settings/sim/CustSimPreference;->handleUserRequest()V

    return-void
.end method

.method static synthetic access$500(Lcust/settings/sim/CustSimPreference;)I
    .locals 0

    .line 64
    iget p0, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    return p0
.end method

.method static synthetic access$600(Lcust/settings/sim/CustSimPreference;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 0

    .line 64
    iget-object p0, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object p0
.end method

.method static synthetic access$702(Lcust/settings/sim/CustSimPreference;Z)Z
    .locals 0

    .line 64
    iput-boolean p1, p0, Lcust/settings/sim/CustSimPreference;->mPowerState:Z

    return p1
.end method

.method static synthetic access$800(Lcust/settings/sim/CustSimPreference;I)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 64
    invoke-direct {p0, p1}, Lcust/settings/sim/CustSimPreference;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    return-object p0
.end method

.method private dismissDialog(Landroid/app/Dialog;Z)V
    .locals 1

    .line 705
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 706
    if-eqz p2, :cond_0

    .line 707
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->update()V

    .line 710
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/app/Dialog;->dismiss()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 711
    nop

    .line 714
    goto :goto_0

    .line 712
    :catch_0
    move-exception p1

    .line 713
    const-string p2, "CustSimPreference"

    const-string v0, "[dismissDialog] IllegalArgumentException = "

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 716
    :cond_1
    :goto_0
    return-void
.end method

.method private declared-synchronized handleUserRequest()V
    .locals 12

    monitor-enter p0

    .line 299
    :try_start_0
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    const-string v0, "SUB"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 300
    :goto_0
    nop

    .line 301
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 303
    move v1, v2

    goto :goto_1

    .line 301
    :cond_1
    nop

    .line 303
    move v1, v3

    :goto_1
    const/4 v4, 0x0

    move v5, v4

    move v6, v5

    :goto_2
    if-ge v5, v1, :cond_5

    .line 304
    iget-object v7, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-virtual {v7, v5}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result v7

    .line 305
    iget-object v8, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v8, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v8

    .line 307
    if-eqz v8, :cond_2

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    goto :goto_3

    :cond_2
    const/4 v8, -0x1

    .line 308
    :goto_3
    if-eqz v7, :cond_3

    iget-object v7, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-static {v8, v7}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 309
    move v7, v3

    goto :goto_4

    .line 308
    :cond_3
    nop

    .line 309
    move v7, v4

    :goto_4
    const-string v9, "CustSimPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "slot = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, " ; radioOn = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " expect = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-virtual {v11, v5}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v11, " finish "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-virtual {v11, v8}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(I)Z

    move-result v8

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v9, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v7, :cond_4

    .line 312
    add-int/lit8 v6, v6, 0x1

    .line 303
    :cond_4
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 316
    :cond_5
    const-string v1, "CustSimPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "activeSubInfoCount = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 317
    const-string v1, "CustSimPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mIsChecked = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string v1, "CustSimPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "mPowerState = "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v7, p0, Lcust/settings/sim/CustSimPreference;->mPowerState:Z

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    iget-boolean v1, p0, Lcust/settings/sim/CustSimPreference;->mPowerState:Z

    iget-boolean v5, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-eq v1, v5, :cond_d

    .line 321
    const v1, 0x104000a    # @android:string/ok

    const v5, 0x7f0800f1    # @drawable/ic_dialog_alert_holo_light 'res/drawable-xhdpi/ic_dialog_alert_holo_light.png'

    if-ge v6, v2, :cond_6

    iget-boolean v6, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-nez v6, :cond_6

    .line 322
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v2

    .line 323
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 324
    iget-object v2, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    const v3, 0x7f120c7d    # @string/sim_enabler_both_inactive 'Error, can't disable all the SIMs'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 325
    new-instance v2, Lcust/settings/sim/CustSimPreference$4;

    invoke-direct {v2, p0}, Lcust/settings/sim/CustSimPreference$4;-><init>(Lcust/settings/sim/CustSimPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 333
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 334
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 335
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 336
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 337
    goto/16 :goto_6

    .line 339
    :cond_6
    iget-object v6, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v6

    .line 340
    iget v7, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    invoke-virtual {p0, v6, v7}, Lcust/settings/sim/CustSimPreference;->getAnotherRadioOnSubId([II)I

    move-result v6

    .line 342
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-static {v7}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v7

    .line 343
    iget-object v8, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v8

    .line 345
    const-string v9, "CustSimPreference"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "dealultDataSubId = "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    iget-boolean v9, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-nez v9, :cond_8

    iget v9, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    if-ne v9, v8, :cond_8

    .line 348
    nop

    .line 350
    const-string v8, "CustSimPreference"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "newDefaultDataSubId = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v6, v8}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 352
    new-instance v8, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-direct {v8, v9}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 353
    invoke-virtual {v8, v5}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    .line 354
    invoke-virtual {v5, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 355
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    const v8, 0x7f120c83    # @string/sim_enabler_need_switch_data_service 'Will disable it and switch to SIM%1$s for data services, are you sure?'

    new-array v3, v3, [Ljava/lang/Object;

    iget v9, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    .line 356
    invoke-static {v9}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v9

    sub-int/2addr v2, v9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v4

    .line 355
    invoke-virtual {v5, v8, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 357
    new-instance v2, Lcust/settings/sim/CustSimPreference$5;

    invoke-direct {v2, p0, v6, v7}, Lcust/settings/sim/CustSimPreference$5;-><init>(Lcust/settings/sim/CustSimPreference;ILandroid/telecom/TelecomManager;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 376
    const v1, 0x1040009    # @android:string/no

    new-instance v2, Lcust/settings/sim/CustSimPreference$6;

    invoke-direct {v2, p0}, Lcust/settings/sim/CustSimPreference$6;-><init>(Lcust/settings/sim/CustSimPreference;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 384
    invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 385
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 386
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 388
    :cond_7
    goto/16 :goto_6

    :cond_8
    iget v0, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    if-eq v0, v8, :cond_a

    .line 389
    const-string v0, "CustSimPreference"

    const-string v1, "mSubId != dealultDataSubId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    iget v1, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    iget-boolean v2, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 391
    iget-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-nez v0, :cond_9

    .line 392
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0, v8}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 393
    invoke-direct {p0, v8}, Lcust/settings/sim/CustSimPreference;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    invoke-virtual {v7, v0}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 395
    :cond_9
    iget-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    iput-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mPowerState:Z

    goto :goto_6

    .line 398
    :cond_a
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    iget v1, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    iget-boolean v4, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    invoke-virtual {v0, v1, v4}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 400
    const-string v0, "CustSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged mPowerState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v2, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    iget-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    iput-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mPowerState:Z

    goto :goto_6

    .line 405
    :cond_b
    const-string v0, "CustSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "set radio power FAIL! mIsChecked = "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v4, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    iget-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    xor-int/2addr v0, v3

    invoke-virtual {p0, v0}, Lcust/settings/sim/CustSimPreference;->setRadioOn(Z)V

    .line 407
    iget-boolean v0, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-eqz v0, :cond_c

    const v0, 0x7f120d94    # @string/sub_activate_failed 'Activation failed.'

    goto :goto_5

    :cond_c
    const v0, 0x7f120d95    # @string/sub_deactivate_failed 'Deactivation failed.'

    .line 408
    :goto_5
    invoke-direct {p0, v2, v0}, Lcust/settings/sim/CustSimPreference;->showAlertDialog(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 414
    :cond_d
    :goto_6
    monitor-exit p0

    return-void

    .line 298
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private installSwitchBarToggleSwitch()V
    .locals 1

    .line 740
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->onInstallSwitchBarToggleSwitch()V

    .line 741
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 742
    return-void
.end method

.method private processSetUiccDone(II)V
    .locals 9

    .line 494
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    const/16 v2, 0x7d0

    invoke-direct {p0, v1, v0, v2}, Lcust/settings/sim/CustSimPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 495
    iget-object v5, p0, Lcust/settings/sim/CustSimPreference;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    const/16 v6, 0x7d0

    move-object v3, p0

    move v7, p1

    move v8, p2

    invoke-direct/range {v3 .. v8}, Lcust/settings/sim/CustSimPreference;->sendMessage(ILandroid/os/Handler;III)V

    .line 497
    return-void
.end method

.method private registHotSwap()V
    .locals 2

    .line 128
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 129
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v1, Lcust/settings/sim/CustSimPreference$1;

    invoke-direct {v1, p0}, Lcust/settings/sim/CustSimPreference$1;-><init>(Lcust/settings/sim/CustSimPreference;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 138
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;I)V
    .locals 2

    .line 658
    invoke-virtual {p2, p1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    .line 659
    int-to-long v0, p3

    invoke-virtual {p2, p1, v0, v1}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 660
    return-void
.end method

.method private sendMessage(ILandroid/os/Handler;III)V
    .locals 0

    .line 662
    invoke-virtual {p2, p1, p4, p5}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    .line 663
    int-to-long p3, p3

    invoke-virtual {p2, p1, p3, p4}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 664
    return-void
.end method

.method private sendUiccProvisioningRequest()V
    .locals 2

    .line 450
    new-instance v0, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;-><init>(Lcust/settings/sim/CustSimPreference;Lcust/settings/sim/CustSimPreference$1;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcust/settings/sim/CustSimPreference$SimEnablerDisabler;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 451
    return-void
.end method

.method private showAlertDialog(II)V
    .locals 3

    .line 560
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mAlertDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcust/settings/sim/CustSimPreference;->dismissDialog(Landroid/app/Dialog;Z)V

    .line 561
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-direct {p0, v0, v1}, Lcust/settings/sim/CustSimPreference;->dismissDialog(Landroid/app/Dialog;Z)V

    .line 564
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 565
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-direct {v0, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 568
    const/4 v2, 0x2

    if-eq p1, v2, :cond_0

    goto :goto_0

    .line 597
    :cond_0
    iget-object v2, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v2, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 598
    const p2, 0x104000a    # @android:string/ok

    iget-object v2, p0, Lcust/settings/sim/CustSimPreference;->mDialogClickListener:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, p2, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 600
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 601
    nop

    .line 615
    :goto_0
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p2

    iput-object p2, p0, Lcust/settings/sim/CustSimPreference;->mAlertDialog:Landroid/app/AlertDialog;

    .line 616
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 619
    :try_start_0
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference;->mAlertDialog:Landroid/app/AlertDialog;

    invoke-virtual {p2}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 622
    goto :goto_1

    .line 620
    :catch_0
    move-exception p2

    .line 621
    const-string v0, "CustSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t show dialog for id("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 625
    :cond_1
    :goto_1
    return-void
.end method

.method private showProgressDialog()V
    .locals 4

    .line 629
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    const-string v0, "SUB"

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 631
    :goto_0
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    iget-boolean v2, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-eqz v2, :cond_1

    const v2, 0x7f120c81    # @string/sim_enabler_enabling 'Activating'

    goto :goto_1

    .line 632
    :cond_1
    const v2, 0x7f120c80    # @string/sim_enabler_disabling 'Deactivating'

    .line 631
    :goto_1
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 633
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 634
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcust/settings/sim/CustSimPreference;->dismissDialog(Landroid/app/Dialog;Z)V

    .line 637
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 638
    new-instance v1, Landroid/app/ProgressDialog;

    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-direct {v1, v3}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 639
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 641
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v1, v0}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 642
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 643
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0, v2}, Landroid/app/ProgressDialog;->setCanceledOnTouchOutside(Z)V

    .line 646
    :try_start_0
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 650
    goto :goto_3

    .line 647
    :catch_0
    move-exception v0

    .line 648
    const-string v1, "CustSimPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t show progress for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 649
    iget-boolean v3, p0, Lcust/settings/sim/CustSimPreference;->mIsChecked:Z

    if-eqz v3, :cond_2

    const-string v3, "enabling"

    goto :goto_2

    :cond_2
    const-string v3, "disabling"

    :goto_2
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 648
    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 653
    :goto_3
    const/4 v0, 0x4

    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x7530

    invoke-direct {p0, v0, v1, v2}, Lcust/settings/sim/CustSimPreference;->sendMessage(ILandroid/os/Handler;I)V

    .line 656
    :cond_3
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6

    .line 427
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 428
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 429
    nop

    .line 430
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 432
    const-string v3, "CustSimPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriptionIdToPhoneAccountHandle phoneAccounts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const-string v3, "CustSimPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriptionIdToPhoneAccountHandle phoneAccounts.hasNext() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 434
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 435
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 436
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 437
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 438
    return-object v3

    .line 440
    :cond_0
    goto :goto_0

    .line 442
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bindRadioPowerState(IZ)V
    .locals 3

    .line 237
    const-string v0, "CustSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++bindRadioPowerState setRadioOn subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    iput p1, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    .line 239
    if-eqz p2, :cond_0

    .line 240
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcust/settings/sim/CustSimPreference;->setRadioOn(Z)V

    goto :goto_0

    .line 244
    :cond_0
    iget-object p2, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcust/settings/sim/CustSimPreference;->setRadioOn(Z)V

    .line 246
    :goto_0
    return-void
.end method

.method protected getAnotherRadioOnSubId([II)I
    .locals 2

    .line 418
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 419
    aget v1, p1, v0

    if-eq v1, p2, :cond_0

    .line 420
    aget p1, p1, v0

    return p1

    .line 418
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 423
    :cond_1
    return p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 109
    const/16 v0, 0x58

    return v0
.end method

.method public isTextValid(Ljava/lang/String;)Z
    .locals 3

    .line 214
    const-string v0, "SimPreferenceDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isTextValid value : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    const/4 p1, 0x1

    return p1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 5

    .line 251
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 253
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 254
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 255
    const v1, 0x7f120c68    # @string/sim_card_number_title 'SIM %1$d'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    iget v3, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    add-int/2addr v3, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    .line 254
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 256
    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 257
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimPreference;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 259
    const-string p1, "CustSimPreference"

    const-string v0, "+++onActivityCreated setRadioOn "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    invoke-virtual {p0, v1}, Lcust/settings/sim/CustSimPreference;->setRadioOn(Z)V

    .line 261
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimPreference;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    .line 267
    invoke-direct {p0}, Lcust/settings/sim/CustSimPreference;->installSwitchBarToggleSwitch()V

    .line 268
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 113
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 115
    const p1, 0x7f1500d5    # @xml/zzz_sim_preference 'res/xml/zzz_sim_preference.xml'

    invoke-virtual {p0, p1}, Lcust/settings/sim/CustSimPreference;->addPreferencesFromResource(I)V

    .line 117
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 118
    const-string v0, "slot_id"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    .line 119
    const-string p1, "CustSimPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "+++mSlotId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget p1, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    .line 121
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    .line 122
    iget-object p1, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerController;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 124
    invoke-direct {p0}, Lcust/settings/sim/CustSimPreference;->registHotSwap()V

    .line 125
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 767
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 768
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 769
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .line 284
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    new-instance v1, Lcust/settings/sim/CustSimPreference$3;

    invoke-direct {v1, p0}, Lcust/settings/sim/CustSimPreference$3;-><init>(Lcust/settings/sim/CustSimPreference;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ToggleSwitch;->setOnBeforeCheckedChangeListener(Lcom/android/settings/widget/ToggleSwitch$OnBeforeCheckedChangeListener;)V

    .line 295
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 746
    const/4 p1, 0x1

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 753
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-class v2, Lcust/settings/sim/CustSimDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 754
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 755
    const-string v1, "sim_color"

    invoke-virtual {p0, v1}, Lcust/settings/sim/CustSimPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    if-ne v1, p1, :cond_0

    .line 756
    const-string v1, "dialog_type"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 757
    const-string v1, "slot_id"

    iget v2, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 758
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 761
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 7

    .line 143
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 144
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 145
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 146
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setHomeButtonEnabled(Z)V

    .line 147
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 148
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v3, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    invoke-virtual {v1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 149
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    .line 150
    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v3

    .line 151
    const/4 v4, 0x0

    if-nez v3, :cond_0

    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-virtual {v3, v1}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    invoke-virtual {p0, v1, v3}, Lcust/settings/sim/CustSimPreference;->bindRadioPowerState(IZ)V

    .line 152
    const-string v3, "CustSimPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/sim/CustSimPreference;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 155
    const-string v1, "persist.radio.vsim.enabled"

    const-string v3, "0"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 156
    const-string v3, "CustSimPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume isRedTeaEnable = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    const-string v3, "CustSimPreference"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onResume mSubId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const-string v3, "sim_color"

    invoke-virtual {p0, v3}, Lcust/settings/sim/CustSimPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcust/settings/sim/CustSimPreference;->mSimColorPref:Landroid/support/v7/preference/Preference;

    .line 160
    const-string v3, "sim_name"

    invoke-virtual {p0, v3}, Lcust/settings/sim/CustSimPreference;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    check-cast v3, Lcust/settings/CustSimEditTextPreference;

    iput-object v3, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    .line 161
    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v3, p0}, Lcust/settings/CustSimEditTextPreference;->setValidator(Lcust/settings/CustSimEditTextPreference$Validator;)V

    .line 162
    const-string v3, ""

    .line 165
    iget-object v5, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v5, :cond_1

    .line 166
    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 169
    :cond_1
    iget-object v5, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v5, v3}, Lcust/settings/CustSimEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 170
    iget-object v5, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v5, v3}, Lcust/settings/CustSimEditTextPreference;->setText(Ljava/lang/String;)V

    .line 173
    const-string v3, "0"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p0, Lcust/settings/sim/CustSimPreference;->mSlotId:I

    add-int/2addr v3, v2

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 174
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v0, v4}, Lcust/settings/CustSimEditTextPreference;->setEnabled(Z)V

    .line 175
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSimColorPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 177
    :cond_2
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    new-instance v2, Lcust/settings/sim/CustSimPreference$2;

    invoke-direct {v2, p0}, Lcust/settings/sim/CustSimPreference$2;-><init>(Lcust/settings/sim/CustSimPreference;)V

    invoke-virtual {v1, v2}, Lcust/settings/CustSimEditTextPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 196
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300c5    # @array/zzz_fih_color_picker

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcust/settings/sim/CustSimPreference;->mColorStrings:[Ljava/lang/String;

    .line 197
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070074    # @android:array/vendor_disallowed_apps_managed_user

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcust/settings/sim/CustSimPreference;->mTintArr:[I

    .line 198
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mColorStrings:[Ljava/lang/String;

    array-length v0, v0

    .line 199
    const-string v1, ""

    .line 200
    :goto_1
    if-ge v4, v0, :cond_4

    .line 201
    iget-object v2, p0, Lcust/settings/sim/CustSimPreference;->mTintArr:[I

    aget v2, v2, v4

    iget-object v3, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v3

    if-ne v2, v3, :cond_3

    .line 202
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mColorStrings:[Ljava/lang/String;

    aget-object v1, v1, v4

    .line 200
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 205
    :cond_4
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSimColorPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 208
    :goto_2
    invoke-virtual {p0}, Lcust/settings/sim/CustSimPreference;->update()V

    .line 209
    return-void
.end method

.method public setMessage()V
    .locals 4

    .line 220
    const-string v0, "SimPreferenceDialog"

    const-string v1, "setMessage "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v0, ""

    .line 222
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-eqz v1, :cond_0

    .line 223
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 226
    :cond_0
    const-string v1, "SimPreferenceDialog"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMessage mMessage = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    iget-object v1, p0, Lcust/settings/sim/CustSimPreference;->mSimNamePref:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v1, v0}, Lcust/settings/CustSimEditTextPreference;->setText(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public setRadioOn(Z)V
    .locals 3

    .line 274
    const-string v0, "CustSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "+++setRadioOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/sim/CustSimPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    const-string v0, "CustSimPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSwitchBar "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/sim/CustSimPreference;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 276
    iput-boolean p1, p0, Lcust/settings/sim/CustSimPreference;->mPowerState:Z

    .line 277
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcust/settings/sim/CustSimPreference;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setCheckedInternal(Z)V

    .line 281
    :cond_0
    return-void
.end method

.method public update()V
    .locals 0

    .line 701
    return-void
.end method
