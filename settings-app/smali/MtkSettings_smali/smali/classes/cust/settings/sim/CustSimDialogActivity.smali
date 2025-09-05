.class public Lcust/settings/sim/CustSimDialogActivity;
.super Landroid/app/Activity;
.source "CustSimDialogActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;
    }
.end annotation


# static fields
.field public static DIALOG_TYPE_KEY:Ljava/lang/String;

.field public static PREFERRED_SIM:Ljava/lang/String;

.field private static TAG:Ljava/lang/String;


# instance fields
.field mAnotherSIM:Ljava/lang/String;

.field private mColorStrings:[Ljava/lang/String;

.field private mDialog:Landroid/app/Dialog;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSlotId:I

.field private mSlotIdAnother:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubInfoRecordAnother:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintInt:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 57
    const-string v0, "CustSimDialogActivity"

    sput-object v0, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    .line 59
    const-string v0, "preferred_sim"

    sput-object v0, Lcust/settings/sim/CustSimDialogActivity;->PREFERRED_SIM:Ljava/lang/String;

    .line 60
    const-string v0, "dialog_type"

    sput-object v0, Lcust/settings/sim/CustSimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 78
    const-string v0, ""

    iput-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mAnotherSIM:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .line 56
    sget-object v0, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 56
    iget-object p0, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 56
    iget-object p0, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubInfoRecordAnother:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$300(Lcust/settings/sim/CustSimDialogActivity;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 56
    iget-object p0, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method private registHotSwap()V
    .locals 2

    .line 108
    new-instance v0, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcust/settings/sim/CustSimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 109
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v1, Lcust/settings/sim/CustSimDialogActivity$1;

    invoke-direct {v1, p0}, Lcust/settings/sim/CustSimDialogActivity$1;-><init>(Lcust/settings/sim/CustSimDialogActivity;)V

    invoke-virtual {v0, v1}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 118
    return-void
.end method


# virtual methods
.method public createDialog(Landroid/content/Context;I)Landroid/app/Dialog;
    .locals 12

    .line 129
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 131
    nop

    .line 132
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v1

    .line 135
    new-instance v2, Lcust/settings/sim/CustSimDialogActivity$2;

    invoke-direct {v2, p0}, Lcust/settings/sim/CustSimDialogActivity$2;-><init>(Lcust/settings/sim/CustSimDialogActivity;)V

    .line 149
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f0300c5    # @array/zzz_fih_color_picker

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    iput-object v4, p0, Lcust/settings/sim/CustSimDialogActivity;->mColorStrings:[Ljava/lang/String;

    .line 151
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x1070074    # @android:array/vendor_disallowed_apps_managed_user

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v4

    iput-object v4, p0, Lcust/settings/sim/CustSimDialogActivity;->mTintInt:[I

    .line 152
    iget-object v4, p0, Lcust/settings/sim/CustSimDialogActivity;->mColorStrings:[Ljava/lang/String;

    array-length v4, v4

    .line 153
    const/4 v5, 0x0

    move v6, v5

    :goto_0
    if-ge v6, v4, :cond_0

    .line 155
    iget-object v7, p0, Lcust/settings/sim/CustSimDialogActivity;->mColorStrings:[Ljava/lang/String;

    aget-object v7, v7, v6

    .line 156
    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 159
    :cond_0
    sget-object v4, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "+++createDialog+++ list = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    new-array v4, v5, [Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 162
    sget-object v4, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "+++createDialog+++ arr = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 165
    new-instance p1, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;

    .line 166
    const/4 v4, 0x1

    if-ne p2, v4, :cond_1

    .line 167
    move-object v6, v3

    goto :goto_1

    :cond_1
    move-object v6, v1

    :goto_1
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v7

    const v8, 0x7f0d0070    # @layout/cust_select_account_list_item 'res/layout/cust_select_account_list_item.xml'

    iget-object v9, p0, Lcust/settings/sim/CustSimDialogActivity;->mColorStrings:[Ljava/lang/String;

    iget-object v10, p0, Lcust/settings/sim/CustSimDialogActivity;->mTintInt:[I

    move-object v4, p1

    move-object v5, p0

    move v11, p2

    invoke-direct/range {v4 .. v11}, Lcust/settings/sim/CustSimDialogActivity$SelectAccountListAdapter;-><init>(Lcust/settings/sim/CustSimDialogActivity;Ljava/util/List;Landroid/content/Context;I[Ljava/lang/String;[II)V

    .line 171
    const v1, 0x7f1203cb    # @string/color_title 'Color'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 173
    invoke-virtual {p0}, Lcust/settings/sim/CustSimDialogActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v3, Lcust/settings/sim/CustSimDialogActivity$3;

    invoke-direct {v3, p0}, Lcust/settings/sim/CustSimDialogActivity$3;-><init>(Lcust/settings/sim/CustSimDialogActivity;)V

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 178
    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 180
    new-instance v0, Lcust/settings/sim/CustSimDialogActivity$4;

    invoke-direct {v0, p0, p2}, Lcust/settings/sim/CustSimDialogActivity$4;-><init>(Lcust/settings/sim/CustSimDialogActivity;I)V

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 188
    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 191
    return-object p1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 82
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcust/settings/sim/CustSimDialogActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    .line 84
    sget-object v0, Lcust/settings/sim/CustSimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 85
    const-string v2, "slot_id"

    invoke-virtual {p1, v2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotId:I

    .line 86
    sget-object p1, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mSlotId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 88
    invoke-virtual {p0}, Lcust/settings/sim/CustSimDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 89
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotId:I

    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 90
    iget p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotId:I

    const/4 v1, 0x1

    if-nez p1, :cond_0

    .line 91
    iput v1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotIdAnother:I

    goto :goto_0

    .line 92
    :cond_0
    iget p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotId:I

    if-ne p1, v1, :cond_1

    .line 93
    const/4 p1, 0x0

    iput p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotIdAnother:I

    .line 95
    :cond_1
    :goto_0
    invoke-direct {p0}, Lcust/settings/sim/CustSimDialogActivity;->registHotSwap()V

    .line 96
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSlotIdAnother:I

    invoke-virtual {p1, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubInfoRecordAnother:Landroid/telephony/SubscriptionInfo;

    .line 97
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubInfoRecordAnother:Landroid/telephony/SubscriptionInfo;

    if-eqz p1, :cond_2

    .line 98
    iget-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mSubInfoRecordAnother:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcust/settings/sim/CustSimDialogActivity;->mAnotherSIM:Ljava/lang/String;

    .line 101
    :cond_2
    invoke-virtual {p0, p0, v0}, Lcust/settings/sim/CustSimDialogActivity;->createDialog(Landroid/content/Context;I)Landroid/app/Dialog;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 105
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 123
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 124
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 125
    return-void
.end method

.method public onPause()V
    .locals 3

    .line 197
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 199
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    sget-object v0, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPause: mDialog.isShowing, isFinishing = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 201
    invoke-virtual {p0}, Lcust/settings/sim/CustSimDialogActivity;->isFinishing()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isDestroyed = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcust/settings/sim/CustSimDialogActivity;->isDestroyed()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 200
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    goto :goto_0

    .line 204
    :cond_0
    iget-object v0, p0, Lcust/settings/sim/CustSimDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_1

    .line 205
    sget-object v0, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause: dialog not showing"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 207
    :cond_1
    sget-object v0, Lcust/settings/sim/CustSimDialogActivity;->TAG:Ljava/lang/String;

    const-string v1, "onPause: dialog is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    :goto_0
    return-void
.end method
