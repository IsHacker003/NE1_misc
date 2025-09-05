.class public Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiTetherResetPreferenceController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ResetNetworkFragment"
.end annotation


# static fields
.field private static sListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 89
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 90
    return-void
.end method

.method public constructor <init>(Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 94
    sput-object p1, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;->sListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    .line 95
    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 105
    sget-object p0, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;->sListener:Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;

    invoke-interface {p0}, Lcom/android/settings/wifi/tether/WifiTetherBasePreferenceController$OnTetherConfigUpdateListener;->onNetworkReset()V

    .line 106
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 99
    const/16 v0, 0x21e

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .line 104
    sget-object p1, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$ResetNetworkFragment$TLRVfJsPOAiLfdkMhgnEvyCRCv8;->INSTANCE:Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherResetPreferenceController$ResetNetworkFragment$TLRVfJsPOAiLfdkMhgnEvyCRCv8;

    .line 108
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 109
    const v1, 0x7f120fd4    # @string/wifi_ap_reset_OOB 'Reset OOB'

    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 111
    const/high16 v0, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 113
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setTitle(I)V

    .line 114
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherResetPreferenceController$ResetNetworkFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120fd5    # @string/wifi_ap_reset_OOB_title 'Reset network SSID, security and password to default ( out-of-box configuration for WPS )'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 115
    return-object p1
.end method
