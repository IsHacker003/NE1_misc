.class public Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;
.super Landroid/app/Activity;
.source "TempDataServiceDialogActivity.java"


# instance fields
.field private mDialog:Landroid/app/Dialog;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

.field private mSubReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 62
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 73
    new-instance v0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$1;-><init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    iput-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->dismissTempDataDialog()V

    return-void
.end method

.method static synthetic access$100(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->setDataService(I)V

    return-void
.end method

.method private dismissTempDataDialog()V
    .locals 1

    .line 160
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 164
    :cond_0
    return-void
.end method

.method private displayTempDataDialog()V
    .locals 3

    .line 115
    const-string v0, "TempDataServiceDialogActivity"

    const-string v1, "displayTempDataDialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 117
    const v1, 0x7f12046b    # @string/data_service_prompt 'When non-data SIM is in VoLTE call, it will be used for data service. This will lead to extra data u ...'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 118
    new-instance v1, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$3;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$3;-><init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    const v2, 0x104000a    # @android:string/ok

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    new-instance v1, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$4;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$4;-><init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    const/high16 v2, 0x1040000    # @android:string/cancel

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 135
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 136
    new-instance v1, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$5;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$5;-><init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 144
    new-instance v1, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$6;

    invoke-direct {v1, p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$6;-><init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroid/app/AlertDialog$Builder;

    .line 155
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mDialog:Landroid/app/Dialog;

    .line 156
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mDialog:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 157
    return-void
.end method

.method private setDataService(I)V
    .locals 3

    .line 167
    const-string v0, "TempDataServiceDialogActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDataService, value="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    invoke-virtual {p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "data_service_enabled"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 169
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 85
    const-string v0, "TempDataServiceDialogActivity"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 89
    new-instance p1, Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    .line 90
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    new-instance v0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$2;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity$2;-><init>(Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;)V

    invoke-virtual {p1, v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->registerOnSimHotSwap(Lcom/mediatek/settings/sim/SimHotSwapHandler$OnSimHotSwapListener;)V

    .line 99
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    .line 100
    iget-object p1, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {p0, p1, v0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 102
    invoke-direct {p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->displayTempDataDialog()V

    .line 103
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .line 107
    const-string v0, "TempDataServiceDialogActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mSimHotSwapHandler:Lcom/mediatek/settings/sim/SimHotSwapHandler;

    invoke-virtual {v0}, Lcom/mediatek/settings/sim/SimHotSwapHandler;->unregisterOnSimHotSwap()V

    .line 109
    iget-object v0, p0, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->mSubReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 110
    invoke-direct {p0}, Lcom/mediatek/settings/datausage/TempDataServiceDialogActivity;->dismissTempDataDialog()V

    .line 111
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 112
    return-void
.end method
