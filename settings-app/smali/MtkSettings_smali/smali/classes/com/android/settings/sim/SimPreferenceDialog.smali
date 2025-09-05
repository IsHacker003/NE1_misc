.class public Lcom/android/settings/sim/SimPreferenceDialog;
.super Landroid/app/Activity;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
    }
.end annotation


# instance fields
.field private final SIM_NAME:Ljava/lang/String;

.field private final TINT_POS:Ljava/lang/String;

.field mBuilder:Landroid/app/AlertDialog$Builder;

.field private mColorStrings:[Ljava/lang/String;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field mDialogLayout:Landroid/view/View;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

.field private mSlotId:I

.field private mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private mTintArr:[I

.field private mTintSelectorPos:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 63
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 76
    const-string v0, "sim_name"

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->SIM_NAME:Ljava/lang/String;

    .line 77
    const-string v0, "tint_pos"

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->TINT_POS:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I
    .locals 0

    .line 63
    iget p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p0
.end method

.method static synthetic access$002(Lcom/android/settings/sim/SimPreferenceDialog;I)I
    .locals 0

    .line 63
    iput p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    return p1
.end method

.method static synthetic access$100(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionInfo;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/sim/SimPreferenceDialog;)Landroid/telephony/SubscriptionManager;
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I
    .locals 0

    .line 63
    iget-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    return-object p0
.end method

.method private createEditDialog(Landroid/os/Bundle;)V
    .locals 7

    .line 159
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 160
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a030f    # @id/sim_name

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 161
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 162
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 163
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a0326    # @id/spinner

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 164
    new-instance v1, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;

    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    const v4, 0x7f0d0141    # @layout/settings_color_picker_item 'res/layout/settings_color_picker_item.xml'

    invoke-direct {v1, p0, v2, v4, v3}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V

    .line 166
    const v2, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v1, v2}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->setDropDownViewResource(I)V

    .line 167
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 169
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    array-length v3, v3

    if-ge v2, v3, :cond_1

    .line 170
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    aget v3, v3, v2

    iget-object v4, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getIconTint()I

    move-result v4

    if-ne v3, v4, :cond_0

    .line 171
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 172
    iput v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 173
    goto :goto_1

    .line 169
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 177
    :cond_1
    :goto_1
    new-instance v2, Lcom/android/settings/sim/SimPreferenceDialog$2;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/sim/SimPreferenceDialog$2;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 190
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 192
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0a023a    # @id/number

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 193
    iget-object v4, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v4

    invoke-virtual {v2, v4}, Landroid/telephony/TelephonyManager;->getLine1Number(I)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    const v6, 0x104000e    # @android:string/unknownName

    if-eqz v5, :cond_2

    .line 195
    invoke-virtual {p1, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 197
    :cond_2
    invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_2
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimOperatorName(I)Ljava/lang/String;

    move-result-object v2

    .line 201
    iget-object v3, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v4, 0x7f0a00a1    # @id/carrier

    invoke-virtual {v3, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 202
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_3

    .line 203
    :cond_3
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 202
    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 205
    iget-object v2, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v3, 0x7f120c7b    # @string/sim_editor_title 'SIM slot %1$d'

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 206
    invoke-virtual {v5}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v5

    add-int/2addr v5, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v1

    .line 205
    invoke-static {p1, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 208
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v1, 0x7f1209fe    # @string/okay 'OK'

    new-instance v2, Lcom/android/settings/sim/SimPreferenceDialog$3;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/sim/SimPreferenceDialog$3;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/widget/Spinner;)V

    invoke-virtual {p1, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 228
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    const v0, 0x7f120361    # @string/cancel 'Cancel'

    new-instance v1, Lcom/android/settings/sim/SimPreferenceDialog$4;

    invoke-direct {v1, p0}, Lcom/android/settings/sim/SimPreferenceDialog$4;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 236
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/sim/SimPreferenceDialog$5;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimPreferenceDialog$5;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 247
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/sim/SimPreferenceDialog$6;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimPreferenceDialog$6;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 255
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    new-instance v0, Lcom/android/settings/sim/SimPreferenceDialog$7;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimPreferenceDialog$7;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 263
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0, v1}, Lcom/mediatek/settings/ext/ISimManagementExt;->hideSimEditorView(Landroid/view/View;Landroid/content/Context;)V

    .line 266
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialog:Landroid/app/Dialog;

    .line 267
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 269
    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 90
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 91
    iput-object p0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 93
    const-string v1, "slot_id"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    .line 94
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 95
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSlotId:I

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    .line 98
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSubInfoRecord:Landroid/telephony/SubscriptionInfo;

    if-nez v0, :cond_0

    .line 99
    const-string p1, "SimPreferenceDialog"

    const-string v0, "Sub info record is null, finish the activity."

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->finish()V

    .line 101
    return-void

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070074    # @android:array/vendor_disallowed_apps_managed_user

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getIntArray(I)[I

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintArr:[I

    .line 107
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0300c5    # @array/zzz_fih_color_picker

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mColorStrings:[Ljava/lang/String;

    .line 108
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    .line 111
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    .line 112
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 113
    const v1, 0x7f0d00be    # @layout/multi_sim_dialog 'res/layout/multi_sim_dialog.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    .line 114
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mBuilder:Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSimManagementExt:Lcom/mediatek/settings/ext/ISimManagementExt;

    .line 119
    invoke-direct {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog;->createEditDialog(Landroid/os/Bundle;)V

    .line 122
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/android/settings/sim/SimPreferenceDialog;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 123
    iget-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/android/settings/sim/SimPreferenceDialog$1;

    invoke-direct {v0, p0}, Lcom/android/settings/sim/SimPreferenceDialog$1;-><init>(Lcom/android/settings/sim/SimPreferenceDialog;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 131
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .line 342
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 343
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 344
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialog:Landroid/app/Dialog;

    .line 349
    :cond_0
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    if-eqz v0, :cond_1

    .line 350
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 354
    :cond_1
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 355
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3

    .line 146
    invoke-super {p0, p1}, Landroid/app/Activity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 148
    const-string v0, "tint_pos"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 149
    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v2, 0x7f0a0326    # @id/spinner

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    .line 150
    invoke-virtual {v1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 151
    iput v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    .line 153
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a030f    # @id/sim_name

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 154
    const-string v1, "sim_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 155
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 156
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 135
    const-string v0, "tint_pos"

    iget v1, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mTintSelectorPos:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog;->mDialogLayout:Landroid/view/View;

    const v1, 0x7f0a030f    # @id/sim_name

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 138
    const-string v1, "sim_name"

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    invoke-super {p0, p1}, Landroid/app/Activity;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 142
    return-void
.end method
