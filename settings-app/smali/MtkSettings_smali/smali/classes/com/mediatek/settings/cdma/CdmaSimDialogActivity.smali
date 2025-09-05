.class public Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;
.super Landroid/app/Activity;
.source "CdmaSimDialogActivity.java"


# instance fields
.field private mActionType:I

.field private mDialog:Landroid/app/Dialog;

.field private mDialogType:I

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;

.field private mTargetSubId:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 30
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 41
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 42
    iput v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    .line 45
    iput v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialogType:I

    .line 49
    new-instance v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$1;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)I
    .locals 0

    .line 30
    iget p0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    return p0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;Landroid/content/Context;I)V
    .locals 0

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->setDefaultDataSubId(Landroid/content/Context;I)V

    return-void
.end method

.method private displayAlertCdmaDialog()V
    .locals 7

    .line 154
    const-string v0, "CdmaSimDialogActivity"

    const-string v1, "displayAlertCdmaDialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    nop

    .line 156
    nop

    .line 157
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v0

    .line 158
    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v4, v3

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget v5, v0, v3

    .line 159
    iget v6, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    if-eq v5, v6, :cond_0

    .line 160
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v4

    invoke-virtual {v4, v5}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 158
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 164
    :cond_1
    if-eqz v4, :cond_2

    .line 165
    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120505    # @string/default_data_switch_msg '%1$s may not work temporarily.'

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    .line 166
    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v4

    aput-object v4, v3, v2

    .line 165
    invoke-virtual {v0, v1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 171
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 172
    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 173
    const v0, 0x104000a    # @android:string/ok

    new-instance v2, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$6;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 184
    const/high16 v0, 0x1040000    # @android:string/cancel

    new-instance v2, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;

    invoke-direct {v2, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$7;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 194
    new-instance v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$8;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 203
    new-instance v0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$9;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 209
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 210
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 211
    return-void

    .line 168
    :cond_2
    const-string v0, "CdmaSimDialogActivity"

    const-string v1, "no need to show the alert dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-void
.end method

.method private displayDualCdmaDialog()V
    .locals 3

    .line 117
    const-string v0, "CdmaSimDialogActivity"

    const-string v1, "displayDualCdmaDialog..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    const v1, 0x7f120e38    # @string/two_cdma_dialog_msg 'Slots 1 and 2 cannot support CDMA simultaneously.'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 120
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$3;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    const v2, 0x104000a    # @android:string/ok

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$4;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 140
    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$5;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 149
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 150
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 151
    return-void
.end method

.method private init()V
    .locals 2

    .line 60
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 61
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v1, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity$2;-><init>(Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 69
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 71
    return-void
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 1

    .line 214
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 215
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 216
    iget p2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    if-nez p2, :cond_0

    .line 217
    const p2, 0x7f12046f    # @string/data_switch_started 'Switching data SIM, this may take up to a minute...'

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 219
    :cond_0
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 75
    const-string v0, "CdmaSimDialogActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 78
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->init()V

    .line 79
    if-eqz p1, :cond_0

    .line 80
    const-string v0, "dialog_type"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 81
    const-string v2, "target_subid"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    .line 83
    const-string v2, "action_type"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    .line 84
    iput v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialogType:I

    .line 85
    const-string p1, "CdmaSimDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialogType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", targetSubId="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mTargetSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", actionType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mActionType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    packed-switch v0, :pswitch_data_0

    .line 95
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog type "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " sent."

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :pswitch_0
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayAlertCdmaDialog()V

    .line 93
    goto :goto_0

    .line 89
    :pswitch_1
    invoke-direct {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->displayDualCdmaDialog()V

    .line 90
    nop

    .line 98
    :goto_0
    goto :goto_1

    .line 99
    :cond_0
    const-string p1, "CdmaSimDialogActivity"

    const-string v0, "unexpect happend"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->finish()V

    .line 102
    :goto_1
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onDestroy()V
    .locals 1

    .line 106
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 107
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 109
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 110
    iget-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/cdma/CdmaSimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 113
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 114
    return-void
.end method
