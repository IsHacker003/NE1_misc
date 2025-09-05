.class public Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiScanModeActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/wifi/WifiScanModeActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlertDialogFragment"
.end annotation


# instance fields
.field private final mApp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 122
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 123
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    .line 124
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    .line 119
    return-void
.end method

.method static newInstance(Ljava/lang/String;)Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;
    .locals 1

    .line 111
    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;-><init>(Ljava/lang/String;)V

    .line 112
    return-object v0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 128
    const/16 v0, 0x21f

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/wifi/WifiScanModeActivity;

    invoke-static {p1}, Lcom/android/settings/wifi/WifiScanModeActivity;->access$000(Lcom/android/settings/wifi/WifiScanModeActivity;)V

    .line 154
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 133
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->mApp:Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 134
    const v1, 0x7f12109d    # @string/wifi_scan_always_turnon_message 'To improve location accuracy and for other purposes, %1$s wants to turn on network scanning, even wh ...'

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$2;-><init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    .line 135
    const v1, 0x7f12109a    # @string/wifi_scan_always_confirm_allow 'Allow'

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment$1;-><init>(Lcom/android/settings/wifi/WifiScanModeActivity$AlertDialogFragment;)V

    .line 142
    const v1, 0x7f12109b    # @string/wifi_scan_always_confirm_deny 'Deny'

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 149
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 133
    return-object p1
.end method
