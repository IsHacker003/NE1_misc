.class public Lcom/android/settings/sim/SimDialogActivity;
.super Landroid/app/Activity;
.source "SimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;

.field private static mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mNewDataSubId:I

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 72
    const-string v0, "SimDialogActivity"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    .line 74
    const-string v0, "preferred_sim"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 75
    const-string v0, "dialog_type"

    sput-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 88
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mNewDataSubId:I

    .line 91
    new-instance v0, Lcom/android/settings/sim/SimDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimDialogActivity$1;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimDialogActivity;)V
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissSimDialog()V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/sim/SimDialogActivity;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setCellularDataValue(I)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimDialogActivity;I)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimDialogActivity;Landroid/content/Context;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Landroid/content/Context;I)V
    .locals 0

    .line 71
    invoke-static {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultSmsSubId(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/sim/SimDialogActivity;Landroid/telecom/PhoneAccountHandle;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    return-void
.end method

.method static synthetic access$600()Lcom/mediatek/settings/ext/ISimManagementExt;
    .locals 1

    .line 71
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;I)I
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/sim/SimDialogActivity;->getPickSmsDefaultSub(Ljava/util/List;I)I

    move-result p0

    return p0
.end method

.method static synthetic access$800(Lcom/android/settings/sim/SimDialogActivity;)I
    .locals 0

    .line 71
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->getCallvalue()I

    move-result p0

    return p0
.end method

.method private dismissSimDialog()V
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 924
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 925
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 927
    :cond_0
    return-void
.end method

.method private displayPreferredDialog(I)V
    .locals 7

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    .line 156
    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 157
    invoke-virtual {v2, p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 159
    if-eqz p1, :cond_0

    .line 160
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 161
    const v3, 0x7f120ca0    # @string/sim_preferred_title 'Update preferred SIM card?'

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 162
    const v3, 0x7f120c9f    # @string/sim_preferred_message '%1$s is the only SIM in your device. Do you want to use this SIM for mobile data, calls, and SMS mes ...'

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 163
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v4, v5

    .line 162
    invoke-virtual {v0, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 165
    const v0, 0x7f121138    # @string/yes 'Yes'

    new-instance v3, Lcom/android/settings/sim/SimDialogActivity$2;

    invoke-direct {v3, p0, p1, v1}, Lcom/android/settings/sim/SimDialogActivity$2;-><init>(Lcom/android/settings/sim/SimDialogActivity;Landroid/telephony/SubscriptionInfo;Landroid/content/Context;)V

    invoke-virtual {v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    const p1, 0x7f12097d    # @string/no 'No'

    new-instance v0, Lcom/android/settings/sim/SimDialogActivity$3;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimDialogActivity$3;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 195
    new-instance p1, Lcom/android/settings/sim/SimDialogActivity$4;

    invoke-direct {p1, p0}, Lcom/android/settings/sim/SimDialogActivity$4;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 205
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 206
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 207
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show preferred dialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    goto :goto_0

    .line 210
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 212
    :goto_0
    return-void
.end method

.method private getAdapterData(ILjava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation

    .line 902
    nop

    .line 903
    packed-switch p1, :pswitch_data_0

    .line 914
    sget-object p2, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Invalid dialog type="

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 917
    const/4 p2, 0x0

    goto :goto_0

    .line 911
    :pswitch_0
    nop

    .line 912
    nop

    .line 917
    move-object p2, p4

    goto :goto_0

    .line 908
    :pswitch_1
    nop

    .line 909
    nop

    .line 917
    move-object p2, p3

    goto :goto_0

    .line 905
    :pswitch_2
    nop

    .line 906
    nop

    .line 917
    :goto_0
    return-object p2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getCallvalue()I
    .locals 5

    .line 932
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    .line 934
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 935
    nop

    .line 936
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v1

    .line 938
    nop

    .line 940
    const-string v2, "phone"

    .line 941
    invoke-virtual {p0, v2}, Lcom/android/settings/sim/SimDialogActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 942
    const/4 v3, -0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 944
    nop

    .line 945
    if-eqz v2, :cond_0

    .line 946
    nop

    .line 947
    invoke-virtual {v0, v1}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v0

    .line 946
    invoke-virtual {v2, v0}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v0

    goto :goto_0

    .line 949
    :cond_0
    move v0, v3

    :goto_0
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCallvalue: phoneAccountSubId = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 951
    if-eq v0, v3, :cond_1

    .line 952
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v3

    .line 953
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getCallvalue: slotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 957
    :cond_1
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "getCallvalue: invalid phone account subId"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    :cond_2
    :goto_1
    return v3
.end method

.method private getPickSmsDefaultSub(Ljava/util/List;I)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I)I"
        }
    .end annotation

    .line 850
    nop

    .line 851
    const/4 v0, 0x1

    if-ge p2, v0, :cond_2

    .line 852
    if-nez p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 853
    :goto_0
    if-ne v1, v0, :cond_1

    .line 854
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    goto :goto_1

    .line 856
    :cond_1
    nop

    .line 858
    :goto_1
    goto :goto_2

    :cond_2
    if-lt p2, v0, :cond_3

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v1, v0

    if-ge p2, v1, :cond_3

    .line 859
    add-int/lit8 v0, p2, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    .line 862
    :cond_3
    :goto_2
    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v0}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v0

    .line 864
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v1, p1, p2, v0}, Lcom/mediatek/settings/ext/ISimManagementExt;->getDefaultSmsClickContentExt(Ljava/util/List;II)I

    move-result p1

    .line 865
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPickSmsDefaultSub, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", subId="

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return p1
.end method

.method private setCellularDataValue(I)V
    .locals 4

    .line 966
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 967
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 968
    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionInfo;

    .line 970
    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    :goto_0
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 972
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetionForData(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 973
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 974
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "currnt default Id is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " ,target Id: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 975
    if-eq v0, p1, :cond_1

    .line 976
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 977
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120504    # @string/default_data_switch_err_msg1 'Can not switch preferred SIM for cellular data during the call.'

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 980
    :cond_1
    goto :goto_1

    .line 981
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    .line 983
    :goto_1
    return-void
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3

    .line 215
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataSubId, sub="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 220
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataState(I)V

    .line 223
    invoke-virtual {p1, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 227
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataStateEnable(I)V

    .line 232
    iput p2, p0, Lcom/android/settings/sim/SimDialogActivity;->mNewDataSubId:I

    .line 234
    return-void
.end method

.method private static setDefaultSmsSubId(Landroid/content/Context;I)V
    .locals 3

    .line 237
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultSmsSubId, sub="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p0

    .line 239
    invoke-virtual {p0, p1}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 240
    return-void
.end method

.method private setSimStateCheck()V
    .locals 2

    .line 797
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 798
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$9;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimDialogActivity$9;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 808
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 809
    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/sim/SimDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 810
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 243
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserSelectedOutgoingPhoneAccount, phoneAccount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 245
    invoke-virtual {v0, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 246
    return-void
.end method

.method private setupSmsSubInfoList(Ljava/util/ArrayList;Ljava/util/List;ILjava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;I",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;)V"
        }
    .end annotation

    .line 874
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v0, p1, p4, p3}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 884
    const/4 v0, 0x0

    :goto_0
    if-ge v0, p3, :cond_1

    .line 885
    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 886
    invoke-virtual {p4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 887
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    .line 888
    if-nez v1, :cond_0

    .line 889
    const-string v1, ""

    .line 891
    :cond_0
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 884
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 895
    :cond_1
    sget-object p2, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {p2, p1, p4}, Lcom/mediatek/settings/ext/ISimManagementExt;->initAutoItemForSms(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 896
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 9

    .line 249
    invoke-static {p0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 250
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 251
    nop

    .line 252
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 254
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Match phone account, subId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", phone account list exist="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 255
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 254
    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 258
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 259
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 260
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v5

    .line 261
    sget-object v6, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Match phone account, phoneAccountSubId="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", phoneAccount="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v6, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-ne p1, v5, :cond_0

    .line 264
    return-object v3

    .line 266
    :cond_0
    goto :goto_0

    .line 268
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private unsetSimStateCheck()V
    .locals 1

    .line 814
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 817
    iget-object v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/sim/SimDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 818
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 272
    move/from16 v8, p2

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 273
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    .line 274
    nop

    .line 275
    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v2

    .line 276
    if-nez v2, :cond_0

    .line 278
    const/4 v4, 0x0

    goto :goto_0

    .line 276
    :cond_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    .line 278
    :goto_0
    new-instance v9, Lcom/android/settings/sim/SimDialogActivity$5;

    invoke-direct {v9, v7, v8, v0, v2}, Lcom/android/settings/sim/SimDialogActivity$5;-><init>(Lcom/android/settings/sim/SimDialogActivity;ILandroid/content/Context;Ljava/util/List;)V

    .line 364
    new-instance v10, Lcom/android/settings/sim/SimDialogActivity$6;

    invoke-direct {v10, v7}, Lcom/android/settings/sim/SimDialogActivity$6;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    .line 375
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 378
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 380
    const/4 v11, 0x1

    if-ne v8, v11, :cond_5

    .line 381
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v4

    .line 382
    invoke-static/range {p1 .. p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v12

    .line 383
    nop

    .line 384
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v13

    .line 387
    invoke-virtual {v4}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v14

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v14

    .line 388
    sget-object v15, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    invoke-interface {v15, v1, v5, v14}, Lcom/mediatek/settings/ext/ISimManagementExt;->updateList(Ljava/util/ArrayList;Ljava/util/ArrayList;I)V

    .line 389
    sget-object v15, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "phone account size="

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v3, 0x0

    const/4 v11, 0x1

    if-le v14, v11, :cond_1

    .line 392
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v14, 0x7f120c67    # @string/sim_calls_ask_first_prefs_title 'Ask every time'

    invoke-virtual {v11, v14}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 393
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    :cond_1
    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 398
    nop

    .line 399
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telecom/PhoneAccountHandle;

    invoke-virtual {v4, v11}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v11

    .line 403
    if-nez v11, :cond_2

    .line 404
    sget-object v11, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v14, "phoneAccount is null"

    invoke-static {v11, v14}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    goto :goto_1

    .line 409
    :cond_2
    invoke-virtual {v11}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 410
    invoke-virtual {v12, v11}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v14

    .line 411
    sget-object v15, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v4

    const-string v4, "phoneAccount label="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Landroid/telecom/PhoneAccount;->getLabel()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ", subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/4 v3, -0x1

    if-eq v14, v3, :cond_3

    .line 415
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v3

    .line 416
    invoke-virtual {v3, v14}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v3

    .line 417
    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    nop

    .line 421
    const/4 v3, 0x0

    goto :goto_2

    .line 419
    :cond_3
    const/4 v3, 0x0

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 421
    :goto_2
    nop

    .line 397
    move-object/from16 v4, v16

    goto :goto_1

    .line 422
    :cond_4
    sget-object v3, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "callsSubInfoList="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v11, ", list="

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 424
    goto :goto_4

    :cond_5
    const/4 v3, 0x2

    if-ne v8, v3, :cond_6

    .line 425
    invoke-direct {v7, v1, v2, v4, v6}, Lcom/android/settings/sim/SimDialogActivity;->setupSmsSubInfoList(Ljava/util/ArrayList;Ljava/util/List;ILjava/util/ArrayList;)V

    goto :goto_4

    .line 428
    :cond_6
    const/4 v3, 0x0

    :goto_3
    if-ge v3, v4, :cond_8

    .line 429
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/telephony/SubscriptionInfo;

    .line 430
    invoke-virtual {v11}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v11

    .line 431
    if-nez v11, :cond_7

    .line 432
    const-string v11, ""

    .line 434
    :cond_7
    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 428
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 438
    :cond_8
    :goto_4
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    move-object v11, v1

    check-cast v11, [Ljava/lang/String;

    .line 440
    new-instance v12, Landroid/app/AlertDialog$Builder;

    invoke-direct {v12, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 442
    new-instance v13, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;

    .line 444
    invoke-direct {v7, v8, v2, v5, v6}, Lcom/android/settings/sim/SimDialogActivity;->getAdapterData(ILjava/util/List;Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/List;

    move-result-object v2

    .line 446
    invoke-virtual {v12}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v3

    const v4, 0x7f0d0070    # @layout/cust_select_account_list_item 'res/layout/cust_select_account_list_item.xml'

    move-object v0, v13

    move-object v1, v7

    move-object v5, v11

    move v6, v8

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/sim/SimDialogActivity$SelectAccountListAdapter;-><init>(Lcom/android/settings/sim/SimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;I)V

    .line 455
    packed-switch v8, :pswitch_data_0

    .line 466
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " in SIM dialog."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 463
    :pswitch_0
    const v0, 0x7f120c69    # @string/sim_card_select_title 'Select SIM card'

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 464
    goto :goto_5

    .line 460
    :pswitch_1
    const v0, 0x7f120c10    # @string/select_sim_for_calls 'Call with'

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 461
    goto :goto_5

    .line 457
    :pswitch_2
    const v0, 0x7f120c11    # @string/select_sim_for_data 'Select a SIM for data'

    invoke-virtual {v12, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 458
    nop

    .line 470
    :goto_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/sim/SimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$7;

    invoke-direct {v1, v7}, Lcom/android/settings/sim/SimDialogActivity$7;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v12, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 475
    invoke-virtual {v12, v13, v9}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 476
    invoke-virtual {v0, v10}, Landroid/app/Dialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 478
    new-instance v1, Lcom/android/settings/sim/SimDialogActivity$8;

    invoke-direct {v1, v7}, Lcom/android/settings/sim/SimDialogActivity$8;-><init>(Lcom/android/settings/sim/SimDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 485
    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 104
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 107
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->setSimStateCheck()V

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p1

    sput-object p1, Lcom/android/settings/sim/SimDialogActivity;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 114
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCreate, dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    packed-switch p1, :pswitch_data_0

    .line 148
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " sent."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 136
    :pswitch_0
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object p1

    .line 138
    if-eqz p1, :cond_1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->displayPreferredDialog(I)V

    .line 146
    goto :goto_1

    .line 139
    :cond_1
    :goto_0
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v0, "Subscription count is not 1, skip preferred SIM dialog"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->finish()V

    .line 141
    return-void

    .line 121
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/sim/SimDialogActivity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 122
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "Activity is finishing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    :cond_2
    invoke-virtual {p0, p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 129
    iget-object p1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 130
    sget-object p1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "show selection dialog="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/sim/SimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    nop

    .line 151
    :goto_1
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 2

    .line 832
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->unsetSimStateCheck()V

    .line 837
    invoke-direct {p0}, Lcom/android/settings/sim/SimDialogActivity;->dismissSimDialog()V

    .line 840
    iget v0, p0, Lcom/android/settings/sim/SimDialogActivity;->mNewDataSubId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 841
    const v0, 0x7f12046f    # @string/data_switch_started 'Switching data SIM, this may take up to a minute...'

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 845
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 846
    return-void
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .line 824
    sget-object v0, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 825
    sget-object v1, Lcom/android/settings/sim/SimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onNewIntent, dialogType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 826
    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimDialogActivity;->setIntent(Landroid/content/Intent;)V

    .line 827
    return-void
.end method
