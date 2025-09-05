.class public Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "WifiTetherUserListSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiTetherClientFragment"
.end annotation


# static fields
.field private static sClient:Lmediatek/net/wifi/HotspotClient;

.field private static sHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 163
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 164
    return-void
.end method

.method public constructor <init>(Lmediatek/net/wifi/HotspotClient;Lmediatek/net/wifi/WifiHotspotManager;)V
    .locals 0

    .line 167
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 168
    sput-object p1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    .line 169
    sput-object p2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    .line 170
    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 180
    sget-object p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    iget-boolean p0, p0, Lmediatek/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz p0, :cond_0

    .line 181
    const-string p0, "WifiTetherUserListSettings"

    const-string p1, "onClick,client is blocked, unblock now"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    sget-object p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    sget-object p1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    invoke-virtual {p0, p1}, Lmediatek/net/wifi/WifiHotspotManager;->unblockClient(Lmediatek/net/wifi/HotspotClient;)Z

    goto :goto_0

    .line 184
    :cond_0
    const-string p0, "WifiTetherUserListSettings"

    const-string p1, "onClick,client isn\'t blocked, block now"

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    sget-object p0, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    sget-object p1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    invoke-virtual {p0, p1}, Lmediatek/net/wifi/WifiHotspotManager;->blockClient(Lmediatek/net/wifi/HotspotClient;)Z

    .line 187
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 174
    const/16 v0, 0x21e

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 179
    sget-object p1, Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$WifiTetherClientFragment$ubBKc3QGRtkfE96n_twiKWnTTvk;->INSTANCE:Lcom/mediatek/settings/wifi/tether/-$$Lambda$WifiTetherUserListSettings$WifiTetherClientFragment$ubBKc3QGRtkfE96n_twiKWnTTvk;

    .line 189
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 190
    sget-object v1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    iget-boolean v1, v1, Lmediatek/net/wifi/HotspotClient;->isBlocked:Z

    if-eqz v1, :cond_0

    const v1, 0x7f120fcf    # @string/wifi_ap_client_unblock_title 'Unblock'

    goto :goto_0

    .line 191
    :cond_0
    const v1, 0x7f120fcb    # @string/wifi_ap_client_block_title 'Block'

    .line 190
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const/high16 v0, 0x1040000    # @android:string/cancel

    .line 192
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 193
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 194
    invoke-virtual {p0}, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0d01cf    # @layout/wifi_ap_client_dialog 'res/layout/wifi_ap_client_dialog.xml'

    invoke-virtual {v0, v2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 196
    const v1, 0x7f0a01fd    # @id/mac_address

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    iget-object v2, v2, Lmediatek/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    sget-object v1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    iget-boolean v1, v1, Lmediatek/net/wifi/HotspotClient;->isBlocked:Z

    const v2, 0x7f0a01bd    # @id/ip_filed

    if-eqz v1, :cond_1

    .line 198
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 200
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 201
    const v1, 0x7f0a01bb    # @id/ip_address

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    sget-object v2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    sget-object v3, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    iget-object v3, v3, Lmediatek/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    .line 202
    invoke-virtual {v2, v3}, Lmediatek/net/wifi/WifiHotspotManager;->getClientIp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    :goto_1
    sget-object v1, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sHotspotManager:Lmediatek/net/wifi/WifiHotspotManager;

    sget-object v2, Lcom/mediatek/settings/wifi/tether/WifiTetherUserListSettings$WifiTetherClientFragment;->sClient:Lmediatek/net/wifi/HotspotClient;

    iget-object v2, v2, Lmediatek/net/wifi/HotspotClient;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lmediatek/net/wifi/WifiHotspotManager;->getClientDeviceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 205
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 206
    return-object p1
.end method
