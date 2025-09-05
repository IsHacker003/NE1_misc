.class public Lcom/android/settings/IccLockSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "IccLockSettings.java"

# interfaces
.implements Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# instance fields
.field private mDialogState:I

.field private mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

.field private mError:Ljava/lang/String;

.field private mHandler:Landroid/os/Handler;

.field private mIsAirplaneModeOn:Z

.field private mListView:Landroid/widget/ListView;

.field private mNewPin:Ljava/lang/String;

.field private mOldPin:Ljava/lang/String;

.field private mPhone:Lcom/android/internal/telephony/Phone;

.field private mPin:Ljava/lang/String;

.field private mPinDialog:Lcom/android/settings/EditPinPreference;

.field private mPinToggle:Landroid/support/v14/preference/SwitchPreference;

.field private mRes:Landroid/content/res/Resources;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSimLockPolicy:I

.field private mSimLockSimCapa:I

.field private final mSimStateReceiver:Landroid/content/BroadcastReceiver;

.field private mTabHost:Landroid/widget/TabHost;

.field private mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabWidget:Landroid/widget/TabWidget;

.field private mToState:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 113
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 134
    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    .line 140
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 141
    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    .line 150
    new-instance v0, Lcom/android/settings/IccLockSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$1;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    .line 171
    new-instance v0, Lcom/android/settings/IccLockSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$2;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    .line 698
    new-instance v0, Lcom/android/settings/IccLockSettings$4;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$4;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 719
    new-instance v0, Lcom/android/settings/IccLockSettings$5;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$5;-><init>(Lcom/android/settings/IccLockSettings;)V

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/IccLockSettings;->iccLockChanged(Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/IccLockSettings;Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/IccLockSettings;->iccPinChanged(Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/IccLockSettings;)Landroid/widget/TabHost;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/IccLockSettings;)Landroid/os/Handler;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/IccLockSettings;)Z
    .locals 0

    .line 80
    iget-boolean p0, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/IccLockSettings;Z)Z
    .locals 0

    .line 80
    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/IccLockSettings;)Lcom/android/settings/EditPinPreference;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/IccLockSettings;)V
    .locals 0

    .line 80
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/IccLockSettings;Landroid/content/Intent;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->handleSimLockStateChange(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/IccLockSettings;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 80
    iget-object p0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method static synthetic access$802(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)Lcom/android/internal/telephony/Phone;
    .locals 0

    .line 80
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p1
.end method

.method static synthetic access$900(Lcom/android/settings/IccLockSettings;Lcom/android/internal/telephony/Phone;)V
    .locals 0

    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->updateSimCapabilityForSimLock(Lcom/android/internal/telephony/Phone;)V

    return-void
.end method

.method private buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 1

    .line 727
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mEmptyTabContent:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object p1

    return-object p1
.end method

.method private getPinPasswordErrorMessage(ILjava/lang/Throwable;)Ljava/lang/String;
    .locals 4

    .line 661
    instance-of v0, p2, Lcom/android/internal/telephony/CommandException;

    const v1, 0x7f120a2a    # @string/pin_failed 'SIM PIN operation failed!'

    if-eqz v0, :cond_1

    check-cast p2, Lcom/android/internal/telephony/CommandException;

    .line 662
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/CommandException$Error;->GENERIC_FAILURE:Lcom/android/internal/telephony/CommandException$Error;

    if-eq v0, v2, :cond_0

    .line 664
    invoke-virtual {p2}, Lcom/android/internal/telephony/CommandException;->getCommandError()Lcom/android/internal/telephony/CommandException$Error;

    move-result-object p2

    sget-object v0, Lcom/android/internal/telephony/CommandException$Error;->SIM_ERR:Lcom/android/internal/telephony/CommandException$Error;

    if-ne p2, v0, :cond_1

    .line 666
    :cond_0
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 668
    :cond_1
    if-nez p1, :cond_2

    .line 669
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f121137    # @string/wrong_pin_code_pukked 'Incorrect SIM PIN code you must now contact your carrier to unlock your device.'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 670
    :cond_2
    if-lez p1, :cond_3

    .line 671
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v0, 0x7f100042    # @plurals/wrong_pin_code

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 673
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 672
    invoke-virtual {p2, v0, p1, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 675
    :cond_3
    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 677
    :goto_0
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPinPasswordErrorMessage: attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " displayMessage="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    return-object p2
.end method

.method private handleSimLockStateChange(Landroid/content/Intent;)V
    .locals 4

    .line 746
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 747
    if-nez p1, :cond_0

    .line 748
    const-string p1, "IccLockSettings"

    const-string v0, "handleSimLockStateChange, extra=null"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    return-void

    .line 752
    :cond_0
    const-string v0, "DEVICE_LOCK_POLICY"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 756
    const-string v0, "slot"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 758
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isValidSlotIndex(I)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 759
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    if-ne v1, v0, :cond_1

    .line 760
    const-string v1, "SIM_SERVICE_CAPABILITY"

    iget v2, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    invoke-virtual {p1, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    .line 763
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handleSimLockStateChange, policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 764
    invoke-static {v3}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", prevCapa="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    .line 766
    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimCapabilityString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", currCapa="

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 768
    invoke-static {p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimCapabilityString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 763
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->updateScreenForSimLock(I)V

    .line 772
    :cond_1
    return-void
.end method

.method private iccLockChanged(Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V
    .locals 6

    .line 582
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccLockChanged, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 586
    move v2, v1

    goto :goto_0

    .line 584
    :cond_0
    nop

    .line 586
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 587
    move v0, v1

    goto :goto_1

    .line 586
    :cond_1
    nop

    .line 587
    :goto_1
    const-string v3, "IccLockSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "iccLockChanged, success="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", matched="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", currentPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 588
    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v5, :cond_2

    const-string v5, "null"

    goto :goto_2

    :cond_2
    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_2
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v5, ", oldPhone="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 587
    invoke-static {v3, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 592
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 594
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimRoamingExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimRoamingExt;

    move-result-object p1

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-interface {p1, p2}, Lcom/mediatek/settings/ext/ISimRoamingExt;->showPinToast(Z)V

    goto :goto_3

    .line 595
    :cond_3
    if-nez v2, :cond_4

    .line 597
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p3

    if-eqz p3, :cond_4

    .line 599
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p2, p1}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 600
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 604
    :cond_4
    :goto_3
    if-nez v0, :cond_5

    .line 605
    return-void

    .line 608
    :cond_5
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean p2, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 609
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 610
    return-void
.end method

.method private iccPinChanged(Ljava/lang/Throwable;ILcom/android/internal/telephony/Phone;)V
    .locals 7

    .line 615
    const-string v0, "IccLockSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "iccPinChanged, exception="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ", attemptsRemaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 619
    move v2, v1

    goto :goto_0

    .line 617
    :cond_0
    nop

    .line 619
    move v2, v0

    :goto_0
    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 620
    move v3, v1

    goto :goto_1

    .line 619
    :cond_1
    nop

    .line 620
    move v3, v0

    :goto_1
    const-string v4, "IccLockSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "iccPinChanged, success="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", matched="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", currPhone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 621
    iget-object v6, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v6, :cond_2

    const-string v6, "null"

    goto :goto_2

    :cond_2
    iget-object v6, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_2
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, ", oldPhone="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 620
    invoke-static {v4, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 624
    if-nez v2, :cond_3

    .line 625
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-direct {p0, p2, p1}, Lcom/android/settings/IccLockSettings;->getPinPasswordErrorMessage(ILjava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 626
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 628
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const p3, 0x7f120c72    # @string/sim_change_succeeded 'SIM PIN changed successfully'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    .line 630
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 633
    :goto_3
    if-nez v3, :cond_4

    .line 634
    return-void

    .line 637
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 638
    return-void
.end method

.method private reasonablePin(Ljava/lang/String;)Z
    .locals 2

    .line 683
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x4

    if-lt v0, v1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x8

    if-le p1, v0, :cond_0

    goto :goto_0

    .line 686
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 684
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method private resetDialogState()V
    .locals 1

    .line 691
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 692
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 693
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 694
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 695
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 696
    return-void
.end method

.method private setDialogValues()V
    .locals 4

    .line 468
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings/EditPinPreference;->setText(Ljava/lang/String;)V

    .line 469
    const-string v0, ""

    .line 470
    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const v2, 0x7f120c71    # @string/sim_change_pin 'SIM PIN'

    packed-switch v1, :pswitch_data_0

    goto :goto_1

    .line 486
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120ca1    # @string/sim_reenter_new 'Re‑type new PIN'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 487
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 482
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120c87    # @string/sim_enter_new 'New SIM PIN'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 483
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 484
    goto :goto_1

    .line 478
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120c89    # @string/sim_enter_old 'Old SIM PIN'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 479
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 480
    goto :goto_1

    .line 472
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120c8a    # @string/sim_enter_pin 'SIM PIN'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 473
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    if-eqz v2, :cond_0

    .line 474
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f120c7c    # @string/sim_enable_sim_lock 'Lock SIM card'

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    .line 475
    :cond_0
    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v3, 0x7f120c75    # @string/sim_disable_sim_lock 'Unlock SIM card'

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 473
    :goto_0
    invoke-virtual {v1, v2}, Lcom/android/settings/EditPinPreference;->setDialogTitle(Ljava/lang/CharSequence;)V

    .line 476
    nop

    .line 490
    :goto_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 491
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 492
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 494
    :cond_1
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setDialogValues, dialogState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1, v0}, Lcom/android/settings/EditPinPreference;->setDialogMessage(Ljava/lang/CharSequence;)V

    .line 496
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private shouldEnableScreenForSimLock(I)Z
    .locals 4

    .line 798
    nop

    .line 799
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 807
    :pswitch_0
    packed-switch p1, :pswitch_data_1

    .line 814
    const/4 v0, 0x0

    .line 815
    goto :goto_1

    .line 811
    :pswitch_1
    nop

    .line 823
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_0

    .line 824
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "shouldEnableScreenForSimLock, policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 825
    invoke-static {v3}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", capa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 826
    invoke-static {p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimCapabilityString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 824
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    :cond_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private showPinDialog()V
    .locals 2

    .line 454
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-nez v0, :cond_0

    .line 455
    return-void

    .line 457
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->setDialogValues()V

    .line 459
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->showPinDialog()V

    .line 461
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    .line 462
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 463
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 465
    :cond_1
    return-void
.end method

.method private tryChangeIccLockState()V
    .locals 4

    .line 569
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    const/16 v2, 0x64

    invoke-static {v0, v2, v1}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 571
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    .line 572
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "tryChangeIccLockState, toState="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 575
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 578
    :cond_0
    return-void
.end method

.method private tryChangePin()V
    .locals 4

    .line 643
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-static {v0, v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 646
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/internal/telephony/IccCard;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 648
    const-string v0, "IccLockSettings"

    const-string v1, "tryChangePin, change pin."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 651
    :cond_0
    return-void
.end method

.method private updatePreferences()V
    .locals 5

    .line 336
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->shouldEnableScreenForSimLock(I)Z

    move-result v0

    .line 338
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_1

    .line 340
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_0

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    if-nez v4, :cond_0

    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Lcom/android/settings/EditPinPreference;->setEnabled(Z)V

    .line 342
    :cond_1
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    if-eqz v1, :cond_3

    .line 344
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-object v4, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v4, :cond_2

    iget-boolean v4, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    if-nez v4, :cond_2

    if-eqz v0, :cond_2

    move v2, v3

    nop

    :cond_2
    invoke-virtual {v1, v2}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3

    .line 347
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getIccCard()Lcom/android/internal/telephony/IccCard;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/IccCard;->getIccLockEnabled()Z

    move-result v0

    .line 348
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "iccLockEnabled="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 352
    :cond_3
    return-void
.end method

.method private updateScreenForSimLock(I)V
    .locals 2

    .line 833
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    if-ne v0, p1, :cond_0

    .line 834
    return-void

    .line 837
    :cond_0
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->shouldEnableScreenForSimLock(I)Z

    move-result v0

    .line 838
    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->shouldEnableScreenForSimLock(I)Z

    move-result v1

    .line 840
    if-eq v0, v1, :cond_2

    .line 841
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    .line 842
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_2

    .line 843
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 844
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 845
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 847
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 851
    :cond_2
    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    .line 852
    return-void
.end method

.method private updateSimCapabilityForSimLock(Lcom/android/internal/telephony/Phone;)V
    .locals 1

    .line 775
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    packed-switch v0, :pswitch_data_0

    .line 792
    const/4 p1, 0x0

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    goto :goto_0

    .line 783
    :pswitch_0
    if-eqz p1, :cond_0

    .line 784
    nop

    .line 785
    invoke-virtual {p1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result p1

    .line 784
    invoke-static {p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimCapability(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    goto :goto_0

    .line 787
    :cond_0
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    .line 789
    nop

    .line 795
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 412
    const v0, 0x7f120705    # @string/help_url_icc_lock ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 356
    const/16 v0, 0x38

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 217
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 222
    const v0, 0x7f150099    # @xml/sim_lock_settings 'res/xml/sim_lock_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->addPreferencesFromResource(I)V

    .line 224
    const-string v0, "sim_pin"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/EditPinPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    .line 225
    const-string v0, "sim_toggle"

    invoke-virtual {p0, v0}, Lcom/android/settings/IccLockSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    .line 226
    if-eqz p1, :cond_0

    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    const-string v0, "dialogState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 228
    const-string v0, "dialogPin"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 229
    const-string v0, "dialogError"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 230
    const-string v0, "enableState"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 233
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 239
    :pswitch_0
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 240
    const-string v0, "newPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 241
    goto :goto_0

    .line 235
    :pswitch_1
    const-string v0, "oldPinCode"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 236
    nop

    .line 250
    :cond_0
    :goto_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/EditPinPreference;->setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->setPersistent(Z)V

    .line 255
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    .line 261
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicy()I

    move-result p1

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 262
    const-string p1, "IccLockSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate, policy="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 263
    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 262
    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 268
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/android/settings/IccLockSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/IccLockSettings$3;-><init>(Lcom/android/settings/IccLockSettings;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 276
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 282
    nop

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "phone"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 284
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v0

    .line 285
    const/4 v1, 0x1

    if-le v0, v1, :cond_5

    .line 286
    const v2, 0x7f0d00a9    # @layout/icc_lock_tabs 'res/layout/icc_lock_tabs.xml'

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 287
    const v4, 0x7f0a026e    # @id/prefs_container

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/view/ViewGroup;

    .line 288
    invoke-static {p2, v2, v4, v3}, Lcom/android/settings/Utils;->prepareCustomPreferencesList(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 289
    invoke-super {p0, p1, v4, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 290
    invoke-virtual {v4, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 292
    const p1, 0x1020012    # @android:id/tabhost

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabHost;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    .line 293
    const p1, 0x1020013    # @android:id/tabs

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TabWidget;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabWidget:Landroid/widget/TabWidget;

    .line 294
    const p1, 0x102000a    # @android:id/list

    invoke-virtual {v2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ListView;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mListView:Landroid/widget/ListView;

    .line 296
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->setup()V

    .line 297
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    iget-object p2, p0, Lcom/android/settings/IccLockSettings;->mTabListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 298
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {p1}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 301
    move p2, v3

    :goto_0
    if-ge p2, v0, :cond_1

    .line 302
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 303
    iget-object v5, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    .line 304
    if-nez v4, :cond_0

    .line 305
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    const v7, 0x7f120c7b    # @string/sim_editor_title 'SIM slot %1$d'

    new-array v8, v1, [Ljava/lang/Object;

    add-int/lit8 v9, p2, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v3

    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    goto :goto_1

    .line 306
    :cond_0
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    .line 304
    :goto_1
    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 303
    invoke-direct {p0, v6, v4}, Lcom/android/settings/IccLockSettings;->buildTabSpec(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 301
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 308
    :cond_1
    invoke-virtual {p1, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 310
    if-nez p1, :cond_2

    const/4 p1, 0x0

    goto :goto_2

    .line 311
    :cond_2
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p1

    invoke-static {p1}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p1

    :goto_2
    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 312
    const-string p1, "IccLockSettings"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCreateView, phone="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-nez v0, :cond_3

    const-string v0, "null"

    goto :goto_3

    :cond_3
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    :goto_3
    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->updateSimCapabilityForSimLock(Lcom/android/internal/telephony/Phone;)V

    .line 316
    if-eqz p3, :cond_4

    const-string p1, "currentTab"

    invoke-virtual {p3, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 317
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    const-string p2, "currentTab"

    invoke-virtual {p3, p2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    .line 319
    :cond_4
    return-object v2

    .line 321
    :cond_5
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 323
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->updateSimCapabilityForSimLock(Lcom/android/internal/telephony/Phone;)V

    .line 324
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onDestroy()V
    .locals 1

    .line 734
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 738
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 739
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 406
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 408
    return-void
.end method

.method public onPinEntered(Lcom/android/settings/EditPinPreference;Z)V
    .locals 2

    .line 500
    if-nez p2, :cond_0

    .line 501
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 502
    return-void

    .line 505
    :cond_0
    invoke-virtual {p1}, Lcom/android/settings/EditPinPreference;->getText()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 506
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/android/settings/IccLockSettings;->reasonablePin(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 508
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const p2, 0x7f120c64    # @string/sim_bad_pin 'Incorrect PIN'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 511
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->isResumed()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 512
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 515
    :cond_1
    return-void

    .line 517
    :cond_2
    iget p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    const/4 p2, 0x3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 535
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    .line 536
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mRes:Landroid/content/res/Resources;

    const v1, 0x7f120c9d    # @string/sim_pins_dont_match 'PINs don’t match'

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 537
    iput p2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 538
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 539
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 541
    :cond_3
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 542
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangePin()V

    goto :goto_0

    .line 529
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    .line 530
    const/4 p1, 0x4

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 531
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 532
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 533
    goto :goto_0

    .line 522
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    .line 523
    iput p2, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 524
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    .line 525
    iput-object v0, p0, Lcom/android/settings/IccLockSettings;->mPin:Ljava/lang/String;

    .line 526
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    .line 527
    goto :goto_0

    .line 519
    :pswitch_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->tryChangeIccLockState()V

    .line 520
    nop

    .line 546
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 550
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 552
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    .line 554
    iget-object p1, p0, Lcom/android/settings/IccLockSettings;->mPinToggle:Landroid/support/v14/preference/SwitchPreference;

    iget-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 555
    iput v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 556
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 557
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-ne p1, v0, :cond_1

    .line 558
    const/4 p1, 0x2

    iput p1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    .line 559
    const/4 p1, 0x0

    return p1

    .line 561
    :cond_1
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 4

    .line 361
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 365
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 368
    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 370
    const-string v1, "com.mediatek.phone.ACTION_SIM_SLOT_LOCK_POLICY_INFORMATION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 372
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/IccLockSettings;->mSimStateReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 375
    invoke-virtual {p0}, Lcom/android/settings/IccLockSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    .line 377
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicy()I

    move-result v0

    iput v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 378
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->updateSimCapabilityForSimLock(Lcom/android/internal/telephony/Phone;)V

    .line 379
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    invoke-direct {p0, v0}, Lcom/android/settings/IccLockSettings;->shouldEnableScreenForSimLock(I)Z

    move-result v0

    .line 380
    const-string v1, "IccLockSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onResume, phone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ", airplaneMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", policy="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mSimLockPolicy:I

    .line 381
    invoke-static {v3}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", capa="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, p0, Lcom/android/settings/IccLockSettings;->mSimLockSimCapa:I

    .line 382
    invoke-static {v3}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimCapabilityString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 380
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mIsAirplaneModeOn:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_2

    .line 384
    :cond_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    if-eqz v0, :cond_2

    .line 385
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 386
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 387
    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 389
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    .line 396
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    if-eqz v0, :cond_3

    .line 397
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->showPinDialog()V

    goto :goto_0

    .line 400
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->resetDialogState()V

    .line 402
    :goto_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 422
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v0}, Lcom/android/settings/EditPinPreference;->isDialogOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 423
    const-string v0, "dialogState"

    iget v1, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 424
    const-string v0, "dialogPin"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mPinDialog:Lcom/android/settings/EditPinPreference;

    invoke-virtual {v1}, Lcom/android/settings/EditPinPreference;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v0, "dialogError"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mError:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    const-string v0, "enableState"

    iget-boolean v1, p0, Lcom/android/settings/IccLockSettings;->mToState:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 429
    iget v0, p0, Lcom/android/settings/IccLockSettings;->mDialogState:I

    packed-switch v0, :pswitch_data_0

    .line 442
    goto :goto_0

    .line 435
    :pswitch_0
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    const-string v0, "newPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mNewPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    goto :goto_0

    .line 431
    :pswitch_1
    const-string v0, "oldPinCode"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mOldPin:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    goto :goto_0

    .line 445
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 448
    :goto_0
    iget-object v0, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    if-eqz v0, :cond_1

    .line 449
    const-string v0, "currentTab"

    iget-object v1, p0, Lcom/android/settings/IccLockSettings;->mTabHost:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    :cond_1
    return-void

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 330
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 331
    invoke-direct {p0}, Lcom/android/settings/IccLockSettings;->updatePreferences()V

    .line 332
    return-void
.end method
