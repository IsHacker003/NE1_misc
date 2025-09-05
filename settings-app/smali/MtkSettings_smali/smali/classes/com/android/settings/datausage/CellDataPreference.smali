.class public Lcom/android/settings/datausage/CellDataPreference;
.super Lcom/android/settingslib/CustomDialogPreference;
.source "CellDataPreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/CellDataPreference$CellDataState;,
        Lcom/android/settings/datausage/CellDataPreference$DataStateListener;
    }
.end annotation


# instance fields
.field private mAlertForCdmaCompetition:Z

.field public mChecked:Z

.field private final mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

.field private mIsAirplaneModeOn:Z

.field public mMultiSimDialog:Z

.field final mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field public mSubId:I

.field mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 75
    const v0, 0x7f0401a1    # @attr/switchPreferenceStyle

    const v1, 0x101036d    # @android:attr/switchPreferenceStyle

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settingslib/CustomDialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 67
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 345
    new-instance p1, Lcom/android/settings/datausage/CellDataPreference$2;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/CellDataPreference$2;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    .line 357
    new-instance p1, Lcom/android/settings/datausage/CellDataPreference$3;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/CellDataPreference$3;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 428
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mAlertForCdmaCompetition:Z

    .line 432
    new-instance p1, Lcom/android/settings/datausage/CellDataPreference$4;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/CellDataPreference$4;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateScreenEnableState()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/CellDataPreference;Ljava/lang/String;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/datausage/CellDataPreference;)V
    .locals 0

    .line 63
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    return-void
.end method

.method static synthetic access$302(Lcom/android/settings/datausage/CellDataPreference;Z)Z
    .locals 0

    .line 63
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/settings/datausage/CellDataPreference;Landroid/content/Intent;)V
    .locals 0

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->onCdmaCompetitionHandled(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/datausage/CellDataPreference;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    return-object p0
.end method

.method private disableDataForOtherSubscriptions(I)V
    .locals 4

    .line 308
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 309
    if-eqz v0, :cond_1

    .line 310
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 311
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    if-eq v2, p1, :cond_0

    .line 312
    iget-object v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 314
    :cond_0
    goto :goto_0

    .line 316
    :cond_1
    return-void
.end method

.method private log(Ljava/lang/String;)V
    .locals 2

    .line 543
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CellDataPreference["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    return-void
.end method

.method private onCdmaCompetitionHandled(Landroid/content/Intent;)V
    .locals 2

    .line 460
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "defaultDataSubId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " mAlertForCdmaCompetition: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mAlertForCdmaCompetition:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 464
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mAlertForCdmaCompetition:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne p1, v0, :cond_1

    .line 465
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 466
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->isAllowDataDisableForOtherSubscription()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 467
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    .line 469
    :cond_0
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mAlertForCdmaCompetition:Z

    .line 471
    :cond_1
    return-void
.end method

.method private setChecked(Z)V
    .locals 2

    .line 244
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setChecked "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 245
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-ne v0, p1, :cond_0

    return-void

    .line 246
    :cond_0
    iput-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 247
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    .line 248
    return-void
.end method

.method private setMobileDataEnabled(Z)V
    .locals 2

    .line 239
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 240
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    .line 241
    return-void
.end method

.method private showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 283
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 284
    const v1, 0x7f12048b    # @string/data_usage_disable_mobile 'Turn off mobile data?'

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 285
    const v1, 0x104000a    # @android:string/ok

    invoke-virtual {p1, v1, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 286
    const/high16 p2, 0x1040000    # @android:string/cancel

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 287
    return-void
.end method

.method private showMultiSimDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 7

    .line 291
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 292
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 294
    if-nez v1, :cond_0

    .line 295
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120ca4    # @string/sim_selection_required_pref 'Selection required'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 296
    :cond_0
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 298
    :goto_0
    const v2, 0x7f120c6f    # @string/sim_change_data_title 'Change data SIM?'

    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 299
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f120c6e    # @string/sim_change_data_message 'Use %1$s instead of %2$s for mobile data?'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 300
    const/4 v6, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v6

    :goto_1
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, v5

    const/4 v0, 0x1

    aput-object v1, v4, v0

    .line 299
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 303
    const v0, 0x7f1209fe    # @string/okay 'OK'

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 304
    const p2, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {p1, p2, v6}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 305
    return-void
.end method

.method private updateChecked()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setChecked(Z)V

    .line 182
    return-void
.end method

.method private updateScreenEnableState()V
    .locals 7

    .line 474
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->isCapabilitySwitching()Z

    move-result v0

    .line 483
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v1

    .line 484
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateScreenEnableState, mIsAirplaneModeOn = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", isCapabilitySwitching = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", defaultDataSubId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 488
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getParent()Landroid/support/v7/preference/PreferenceGroup;

    move-result-object v2

    .line 489
    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, -0x1

    if-le v1, v5, :cond_4

    .line 490
    iget-boolean v5, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    if-nez v5, :cond_0

    iget v5, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_0

    move v5, v4

    goto :goto_0

    :cond_0
    move v5, v3

    :goto_0
    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 491
    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    if-nez v2, :cond_1

    if-nez v0, :cond_1

    .line 492
    move v0, v4

    goto :goto_1

    .line 491
    :cond_1
    nop

    .line 492
    move v0, v3

    :goto_1
    iget-object v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    if-eqz v2, :cond_3

    .line 493
    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    iget v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-interface {v0, v2}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->isAllowDataEnable(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne v1, v0, :cond_2

    .line 495
    move v0, v4

    goto :goto_2

    .line 493
    :cond_2
    nop

    .line 495
    move v0, v3

    :goto_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 497
    :cond_3
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setEnabled(Z)V

    .line 498
    goto :goto_5

    .line 499
    :cond_4
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    xor-int/2addr v1, v4

    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 500
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    if-nez v1, :cond_5

    if-nez v0, :cond_5

    .line 501
    move v0, v4

    goto :goto_3

    .line 500
    :cond_5
    nop

    .line 501
    move v0, v3

    :goto_3
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    if-eqz v1, :cond_7

    .line 502
    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->isAllowDataEnable(I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 503
    move v0, v4

    goto :goto_4

    .line 502
    :cond_6
    nop

    .line 503
    move v0, v3

    :goto_4
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "enabled = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 505
    :cond_7
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->setEnabled(Z)V

    .line 506
    :goto_5
    return-void
.end method


# virtual methods
.method public onAttached()V
    .locals 4

    .line 105
    const-string v0, "onAttached..."

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 106
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onAttached()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 108
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 109
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 113
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 114
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 113
    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getDataUsageSummaryExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 116
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 118
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mIsAirplaneModeOn:Z

    .line 121
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 123
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 124
    const-string v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 125
    const-string v1, "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->customReceiver(Landroid/content/IntentFilter;)V

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 139
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateScreenEnableState()V

    .line 142
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    if-eqz v0, :cond_1

    .line 143
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {v0, p0}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->setPreferenceSummary(Landroid/support/v7/preference/Preference;)V

    .line 145
    :cond_1
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 3

    .line 252
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 253
    const v0, 0x1020040    # @android:id/switch_widget

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 254
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setClickable(Z)V

    .line 255
    check-cast v0, Landroid/widget/Checkable;

    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    invoke-interface {v0, v1}, Landroid/widget/Checkable;->setChecked(Z)V

    .line 258
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object p1, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/android/settings/datausage/CellDataPreference$1;

    invoke-direct {v2, p0}, Lcom/android/settings/datausage/CellDataPreference$1;-><init>(Lcom/android/settings/datausage/CellDataPreference;)V

    invoke-interface {v0, v1, p1, v2}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->onBindViewHolder(Landroid/content/Context;Landroid/view/View;Landroid/view/View$OnClickListener;)V

    .line 266
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 320
    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    .line 321
    return-void

    .line 323
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "onClick, mMultiSimDialog = "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 324
    iget-boolean p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    const/4 p2, 0x0

    if-eqz p1, :cond_2

    .line 326
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120504    # @string/default_data_switch_err_msg1 'Can not switch preferred SIM for cellular data during the call.'

    invoke-static {p1, v0, p2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 328
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 329
    const-string p1, "in Call, RETURN!"

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 330
    return-void

    .line 334
    :cond_1
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 335
    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 336
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->isAllowDataDisableForOtherSubscription()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 337
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    goto :goto_0

    .line 341
    :cond_2
    invoke-direct {p0, p2}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 343
    :cond_3
    :goto_0
    return-void
.end method

.method public onDetached()V
    .locals 4

    .line 149
    const-string v0, "onDetached..."

    invoke-direct {p0, v0}, Lcom/android/settings/datausage/CellDataPreference;->log(Ljava/lang/String;)V

    .line 150
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataStateListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 151
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 155
    :cond_0
    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onDetached()V

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 159
    iput-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mAlertForCdmaCompetition:Z

    .line 160
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .line 271
    iget-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    if-eqz v0, :cond_0

    .line 272
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->showMultiSimDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_0

    .line 275
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-interface {v0, v1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->onDisablingData(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 276
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/CellDataPreference;->showDisableDialog(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 279
    :cond_1
    :goto_0
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2

    .line 82
    check-cast p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    .line 83
    invoke-virtual {p1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v0

    invoke-super {p0, v0}, Lcom/android/settingslib/CustomDialogPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 85
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 86
    iget-boolean v0, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    iput-boolean v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    .line 87
    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 88
    iget p1, p1, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    iput p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 89
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 91
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->notifyChanged()V

    .line 92
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .line 96
    new-instance v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;

    invoke-super {p0}, Lcom/android/settingslib/CustomDialogPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings/datausage/CellDataPreference$CellDataState;-><init>(Landroid/os/Parcelable;)V

    .line 97
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mChecked:Z

    .line 98
    iget-boolean v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    iput-boolean v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mMultiSimDialog:Z

    .line 99
    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    iput v1, v0, Lcom/android/settings/datausage/CellDataPreference$CellDataState;->mSubId:I

    .line 100
    return-object v0
.end method

.method protected performClick(Landroid/view/View;)V
    .locals 6

    .line 192
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 193
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    .line 194
    const/4 v3, 0x1

    xor-int/2addr v2, v3

    const/16 v4, 0xb2

    invoke-virtual {v1, v0, v4, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;IZ)V

    .line 195
    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    .line 197
    iget-object v1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionInfo()Landroid/telephony/SubscriptionInfo;

    move-result-object v1

    .line 198
    const-string v2, "CellDataPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "performClick, currentSir="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", nextSir="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v2, p0, Lcom/android/settings/datausage/CellDataPreference;->mChecked:Z

    if-eqz v2, :cond_3

    .line 202
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 204
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v2

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    if-ne v2, v4, :cond_0

    goto :goto_0

    .line 215
    :cond_0
    iput-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    .line 216
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->performClick(Landroid/view/View;)V

    goto :goto_1

    .line 205
    :cond_1
    :goto_0
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 206
    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    .line 207
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    if-ne p1, v0, :cond_2

    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    .line 208
    invoke-interface {p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->isAllowDataDisableForOtherSubscription()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 209
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    .line 211
    :cond_2
    return-void

    .line 219
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->showSimCardTile(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 220
    iput-boolean v3, p0, Lcom/android/settings/datausage/CellDataPreference;->mMultiSimDialog:Z

    .line 221
    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 222
    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    if-ne v0, v1, :cond_5

    .line 223
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 224
    iget-object p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mDataUsageSummaryExt:Lcom/mediatek/settings/ext/IDataUsageSummaryExt;

    invoke-interface {p1}, Lcom/mediatek/settings/ext/IDataUsageSummaryExt;->isAllowDataDisableForOtherSubscription()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 225
    iget p1, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    invoke-direct {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->disableDataForOtherSubscriptions(I)V

    .line 227
    :cond_4
    return-void

    .line 229
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomDialogPreference;->performClick(Landroid/view/View;)V

    goto :goto_1

    .line 231
    :cond_6
    invoke-direct {p0, v3}, Lcom/android/settings/datausage/CellDataPreference;->setMobileDataEnabled(Z)V

    .line 234
    :goto_1
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 1

    .line 164
    const/4 p1, -0x1

    if-eq p2, p1, :cond_1

    .line 167
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 168
    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-static {p3}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/datausage/CellDataPreference;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 170
    iget-object p3, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/datausage/CellDataPreference;->mOnSubscriptionsChangeListener:Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;

    invoke-virtual {p3, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 172
    iget p3, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    if-ne p3, p1, :cond_0

    .line 173
    iput p2, p0, Lcom/android/settings/datausage/CellDataPreference;->mSubId:I

    .line 174
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/settings/datausage/CellDataPreference;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/CellDataPreference;->setKey(Ljava/lang/String;)V

    .line 176
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateScreenEnableState()V

    .line 177
    invoke-direct {p0}, Lcom/android/settings/datausage/CellDataPreference;->updateChecked()V

    .line 178
    return-void

    .line 165
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "CellDataPreference needs a SubscriptionInfo"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
