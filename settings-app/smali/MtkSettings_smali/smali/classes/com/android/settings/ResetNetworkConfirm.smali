.class public Lcom/android/settings/ResetNetworkConfirm;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetworkConfirm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;
    }
.end annotation


# instance fields
.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field mEraseEsim:Z

.field mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

.field private mFinalClickListener:Landroid/view/View$OnClickListener;

.field private mSubId:I

.field private resetTask:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 76
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 80
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->resetTask:Landroid/os/AsyncTask;

    .line 81
    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    .line 120
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetworkConfirm$1;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetworkConfirm;)Landroid/os/AsyncTask;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->resetTask:Landroid/os/AsyncTask;

    return-object p0
.end method

.method static synthetic access$002(Lcom/android/settings/ResetNetworkConfirm;Landroid/os/AsyncTask;)Landroid/os/AsyncTask;
    .locals 0

    .line 71
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->resetTask:Landroid/os/AsyncTask;

    return-object p1
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetworkConfirm;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/ResetNetworkConfirm;)I
    .locals 0

    .line 71
    iget p0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    return p0
.end method

.method static synthetic access$300(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;I)V
    .locals 0

    .line 71
    invoke-direct {p0, p1, p2}, Lcom/android/settings/ResetNetworkConfirm;->resetImsNetwork(Landroid/content/Context;I)V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->restoreDefaultApn(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetworkConfirm;->cleanUpSmsRawTable(Landroid/content/Context;)V

    return-void
.end method

.method private cleanUpSmsRawTable(Landroid/content/Context;)V
    .locals 2

    .line 260
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 261
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw/permanentDelete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 262
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 263
    return-void
.end method

.method private establishFinalConfirmationState()V
    .locals 2

    .line 303
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    const v1, 0x7f0a014c    # @id/execute_reset_network

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mFinalClickListener:Landroid/view/View$OnClickListener;

    .line 304
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/ResetNetworkConfirm;Landroid/content/DialogInterface;)V
    .locals 0

    .line 318
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private resetImsNetwork(Landroid/content/Context;I)V
    .locals 1

    .line 250
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 251
    const/4 p2, 0x0

    goto :goto_0

    .line 253
    :cond_0
    iget p2, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p2

    .line 255
    :goto_0
    invoke-static {p1, p2}, Lcom/mediatek/ims/internal/MtkImsManager;->factoryReset(Landroid/content/Context;I)V

    .line 256
    return-void
.end method

.method private restoreDefaultApn(Landroid/content/Context;)V
    .locals 3

    .line 289
    const-string v0, "content://telephony/carriers/restore"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 291
    iget v1, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {v1}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 292
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "subId/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 295
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 296
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 297
    return-void
.end method


# virtual methods
.method esimFactoryReset(Landroid/content/Context;Ljava/lang/String;)V
    .locals 2

    .line 268
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 269
    new-instance v0, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    invoke-direct {v0, p1, p2}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    .line 270
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    new-array p2, v1, [Ljava/lang/Void;

    invoke-virtual {p1, p2}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0

    .line 272
    :cond_0
    const p2, 0x7f120b2d    # @string/reset_network_complete_toast 'Network settings have been reset'

    invoke-static {p1, p2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 273
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 275
    :goto_0
    return-void
.end method

.method esimFactoryResetEx(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .line 278
    nop

    .line 279
    iget-boolean v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    if-eqz v0, :cond_0

    .line 280
    invoke-static {p1, p2}, Landroid/os/RecoverySystem;->wipeEuiccData(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    goto :goto_0

    .line 282
    :cond_0
    const/4 p1, 0x1

    :goto_0
    return p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 356
    const/16 v0, 0x54

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 2

    .line 349
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onAttach(Landroid/content/Context;)V

    .line 350
    const-string v0, "ResetNetwork"

    const-string v1, "onAttach called"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContext:Landroid/content/Context;

    .line 352
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 329
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 332
    if-eqz p1, :cond_0

    .line 333
    const-string v0, "subscription"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mSubId:I

    .line 335
    const-string v0, "erase_esim"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsim:Z

    .line 337
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 310
    nop

    .line 311
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string p3, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 310
    invoke-static {p2, p3, v0}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 312
    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "no_network_reset"

    .line 313
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 312
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p3

    const/4 v0, 0x0

    if-eqz p3, :cond_0

    .line 314
    const p2, 0x7f0d00bf    # @layout/network_reset_disallowed_screen 'res/layout/network_reset_disallowed_screen.xml'

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 315
    :cond_0
    if-eqz p2, :cond_1

    .line 316
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getActivity()Landroid/app/Activity;

    move-result-object p3

    invoke-direct {p1, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string p3, "no_network_reset"

    .line 317
    invoke-virtual {p1, p3, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$YTG2-gTxf5vyFkKGLAaR8nzFOxo;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$ResetNetworkConfirm$YTG2-gTxf5vyFkKGLAaR8nzFOxo;-><init>(Lcom/android/settings/ResetNetworkConfirm;)V

    .line 318
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 319
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 320
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetworkConfirm;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 322
    :cond_1
    const p2, 0x7f0d0123    # @layout/reset_network_confirm 'res/layout/reset_network_confirm.xml'

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    .line 323
    invoke-direct {p0}, Lcom/android/settings/ResetNetworkConfirm;->establishFinalConfirmationState()V

    .line 324
    iget-object p1, p0, Lcom/android/settings/ResetNetworkConfirm;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 341
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    if-eqz v0, :cond_0

    .line 342
    iget-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;->cancel(Z)Z

    .line 343
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/ResetNetworkConfirm;->mEraseEsimTask:Lcom/android/settings/ResetNetworkConfirm$EraseEsimAsyncTask;

    .line 345
    :cond_0
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedFragment;->onDestroy()V

    .line 346
    return-void
.end method
