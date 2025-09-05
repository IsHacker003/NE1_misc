.class public Lcom/android/settings/MasterClearConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "MasterClearConfirm.java"


# instance fields
.field private mConfigResetBattLimitLvl:I

.field private mContentView:Landroid/view/View;

.field private mEraseEsims:Z

.field private mEraseSdCard:Z

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mResetWarningDialog:Landroid/app/AlertDialog;

.field private mUseResetBatteryLimit:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 61
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mUseResetBatteryLimit:Z

    .line 73
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    .line 82
    new-instance v0, Lcom/android/settings/MasterClearConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/MasterClearConfirm$1;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/android/settings/MasterClearConfirm;->mUseResetBatteryLimit:Z

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/MasterClearConfirm;)Z
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->isBatteryLow()Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->showBatteryLimitDialog()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/MasterClearConfirm;)V
    .locals 0

    .line 61
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->doMasterClear()V

    return-void
.end method

.method private doMasterClear()V
    .locals 3

    .line 156
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.FACTORY_RESET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 157
    const-string v1, "android"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 158
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 159
    const-string v1, "android.intent.extra.REASON"

    const-string v2, "MasterClearConfirm"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 160
    const-string v1, "android.intent.extra.WIPE_EXTERNAL_STORAGE"

    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 161
    const-string v1, "com.android.internal.intent.extra.WIPE_ESIMS"

    iget-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 173
    const-string v0, "sys.shutdown.reason.block"

    const-string v1, "true"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 181
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a014b    # @id/execute_master_clear

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 183
    return-void
.end method

.method private isBatteryLow()Z
    .locals 6

    .line 246
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "batterymanager"

    .line 247
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/BatteryManager;

    .line 248
    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/BatteryManager;->getIntProperty(I)I

    move-result v0

    .line 250
    const-string v1, "MasterClearConfirm"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Current battery level is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, "\nLimit level is: "

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 254
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 255
    return v2

    .line 257
    :cond_0
    const-string v1, "MasterClearConfirm"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "current battery level is: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget v1, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    if-ge v0, v1, :cond_1

    goto :goto_0

    :cond_1
    move v2, v3

    :goto_0
    return v2
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/MasterClearConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    .line 196
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private setAccessibilityTitle()V
    .locals 4

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 208
    iget-object v1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 209
    const v2, 0x7f0a0203    # @id/master_clear_confirm

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 210
    if-eqz v1, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 211
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 212
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v0, v1}, Lcom/android/settings/Utils;->createAccessibleSequence(Ljava/lang/CharSequence;Ljava/lang/String;)Landroid/text/SpannableString;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 215
    :cond_0
    return-void
.end method

.method private showBatteryLimitDialog()V
    .locals 3

    .line 263
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mResetWarningDialog:Landroid/app/AlertDialog;

    if-nez v0, :cond_0

    .line 264
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f12062c    # @string/fih_master_clear_msg 'The battery is less than 10%,factory data reset can't be performed.'

    .line 267
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f12062d    # @string/fih_master_reset_battery_limit_alert_ok 'Confirm'

    new-instance v2, Lcom/android/settings/MasterClearConfirm$2;

    invoke-direct {v2, p0}, Lcom/android/settings/MasterClearConfirm$2;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    .line 269
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 276
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mResetWarningDialog:Landroid/app/AlertDialog;

    .line 277
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mResetWarningDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    .line 278
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mResetWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 280
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mResetWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 281
    iget-object v0, p0, Lcom/android/settings/MasterClearConfirm;->mResetWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 285
    :cond_1
    goto :goto_0

    .line 283
    :catch_0
    move-exception v0

    .line 284
    const-string v1, "MasterClearConfirm"

    const-string v2, "cannot show dialog for battery limit warning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 286
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 241
    const/16 v0, 0x43

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 219
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 221
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 222
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string v2, "erase_sd"

    .line 223
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/android/settings/MasterClearConfirm;->mEraseSdCard:Z

    .line 224
    if-eqz p1, :cond_1

    const-string v2, "erase_esim"

    .line 225
    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/MasterClearConfirm;->mEraseEsims:Z

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0004    # @integer/config_master_clear_battery_lower_limit '10'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    .line 230
    iget p1, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    const/16 v0, 0x64

    if-lt p1, v0, :cond_2

    goto :goto_2

    .line 232
    :cond_2
    iget p1, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    if-nez p1, :cond_4

    .line 234
    iput-boolean v1, p0, Lcom/android/settings/MasterClearConfirm;->mUseResetBatteryLimit:Z

    goto :goto_3

    .line 231
    :cond_3
    :goto_2
    const/16 p1, 0xa

    iput p1, p0, Lcom/android/settings/MasterClearConfirm;->mConfigResetBattLimitLvl:I

    .line 237
    :cond_4
    :goto_3
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 188
    nop

    .line 189
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "no_factory_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 188
    invoke-static {p2, p3, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "no_factory_reset"

    .line 191
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 190
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 192
    const p2, 0x7f0d00bd    # @layout/master_clear_disallowed_screen 'res/layout/master_clear_disallowed_screen.xml'

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 193
    :cond_0
    if-eqz p2, :cond_1

    .line 194
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string p3, "no_factory_reset"

    .line 195
    invoke-virtual {p1, p3, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$MasterClearConfirm$weRgiuD2TQnm7jx9NX_-qHWwsHU;-><init>(Lcom/android/settings/MasterClearConfirm;)V

    .line 196
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 197
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 198
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/MasterClearConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 200
    :cond_1
    const p2, 0x7f0d00bc    # @layout/master_clear_confirm 'res/layout/master_clear_confirm.xml'

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    .line 201
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->establishFinalConfirmationState()V

    .line 202
    invoke-direct {p0}, Lcom/android/settings/MasterClearConfirm;->setAccessibilityTitle()V

    .line 203
    iget-object p1, p0, Lcom/android/settings/MasterClearConfirm;->mContentView:Landroid/view/View;

    return-object p1
.end method
