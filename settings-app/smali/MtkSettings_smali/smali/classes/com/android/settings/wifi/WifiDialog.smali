.class public Lcom/android/settings/wifi/WifiDialog;
.super Landroid/app/AlertDialog;
.source "WifiDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settings/wifi/WifiConfigUiBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;
    }
.end annotation


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

.field private mEnableHideForgetButton:Z

.field private mHideSubmitButton:Z

.field private final mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

.field private final mMode:I

.field private mView:Landroid/view/View;

.field private mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;


# direct methods
.method constructor <init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V
    .locals 0

    .line 78
    invoke-direct {p0, p1, p5}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 36
    const-string p5, "WifiDialog"

    iput-object p5, p0, Lcom/android/settings/wifi/WifiDialog;->TAG:Ljava/lang/String;

    .line 54
    const/4 p5, 0x0

    iput-object p5, p0, Lcom/android/settings/wifi/WifiDialog;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    .line 55
    iput-object p5, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 79
    iput p4, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    .line 80
    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    .line 81
    iput-object p3, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 82
    iput-boolean p6, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    .line 84
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f050055    # @bool/zzz_creq_pkg_enable_preload_carrier_wifi_config 'false'

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p2

    iput-boolean p2, p0, Lcom/android/settings/wifi/WifiDialog;->mEnableHideForgetButton:Z

    .line 86
    const-string p2, "WifiDialog"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "[WIFI_DEBUG] Hide forget button feature: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p4, p0, Lcom/android/settings/wifi/WifiDialog;->mEnableHideForgetButton:Z

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p2, p3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    iget-boolean p2, p0, Lcom/android/settings/wifi/WifiDialog;->mEnableHideForgetButton:Z

    if-eqz p2, :cond_0

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p2, :cond_0

    .line 88
    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 89
    new-instance p2, Lcust/settings/wifi/CustCarrierFeature;

    invoke-direct {p2, p1}, Lcust/settings/wifi/CustCarrierFeature;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    .line 92
    :cond_0
    return-void
.end method

.method public static createFullscreen(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 8

    .line 62
    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    const v5, 0x7f1301df    # @style/Theme.Settings.NoActionBar

    const/4 v6, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v7
.end method

.method public static createModal(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;I)Lcom/android/settings/wifi/WifiDialog;
    .locals 8

    .line 72
    new-instance v7, Lcom/android/settings/wifi/WifiDialog;

    if-nez p3, :cond_0

    const/4 v0, 0x1

    :goto_0
    move v6, v0

    goto :goto_1

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :goto_1
    const/4 v5, 0x0

    move-object v0, v7

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/wifi/WifiDialog;-><init>(Landroid/content/Context;Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;Lcom/android/settingslib/wifi/AccessPoint;IIZ)V

    return-object v7
.end method


# virtual methods
.method public dispatchSubmit()V
    .locals 1

    .line 138
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz v0, :cond_0

    .line 139
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {v0, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    .line 141
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->dismiss()V

    .line 142
    return-void
.end method

.method public getController()Lcom/android/settings/wifi/WifiConfigController;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    return-object v0
.end method

.method public getForgetButton()Landroid/widget/Button;
    .locals 1

    .line 175
    const/4 v0, -0x3

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getSubmitButton()Landroid/widget/Button;
    .locals 1

    .line 170
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 146
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    if-eqz p1, :cond_3

    .line 147
    const/4 p1, -0x3

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onSubmit(Lcom/android/settings/wifi/WifiDialog;)V

    .line 150
    goto :goto_0

    .line 152
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/android/settings/wifi/WifiUtils;->isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 154
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p2

    .line 153
    invoke-static {p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 155
    return-void

    .line 157
    :cond_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mListener:Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/WifiDialog$WifiDialogListener;->onForget(Lcom/android/settings/wifi/WifiDialog;)V

    .line 161
    :cond_3
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .line 101
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d4    # @layout/wifi_dialog 'res/layout/wifi_dialog.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    .line 102
    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setView(Landroid/view/View;)V

    .line 103
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiDialog;->setInverseBackgroundForced(Z)V

    .line 104
    new-instance v0, Lcom/android/settings/wifi/WifiConfigController;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiDialog;->mView:Landroid/view/View;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    iget v3, p0, Lcom/android/settings/wifi/WifiDialog;->mMode:I

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;-><init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 105
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 107
    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->mHideSubmitButton:Z

    if-eqz p1, :cond_0

    .line 108
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hideSubmitButton()V

    goto :goto_0

    .line 112
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 123
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_1

    iget-boolean p1, p0, Lcom/android/settings/wifi/WifiDialog;->mEnableHideForgetButton:Z

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mCustHideButton:Lcust/settings/wifi/CustCarrierFeature;

    iget-object v0, p0, Lcom/android/settings/wifi/WifiDialog;->mWifiConfiguration:Landroid/net/wifi/WifiConfiguration;

    .line 124
    invoke-virtual {p1, v0}, Lcust/settings/wifi/CustCarrierFeature;->hideForgetButton(Landroid/net/wifi/WifiConfiguration;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 125
    :cond_1
    const-string p1, "WifiDialog"

    const-string v0, "[WIFI_DEBUG]<onCreate> Hide Forget Button! "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 126
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->hideForgetButton()V

    .line 129
    :cond_2
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 132
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/wifi/WifiDialog;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->updatePassword()V

    .line 134
    return-void
.end method

.method public setCancelButton(Ljava/lang/CharSequence;)V
    .locals 1

    .line 195
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 196
    return-void
.end method

.method public setForgetButton(Ljava/lang/CharSequence;)V
    .locals 1

    .line 190
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 191
    return-void
.end method

.method public setSubmitButton(Ljava/lang/CharSequence;)V
    .locals 1

    .line 185
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p0}, Lcom/android/settings/wifi/WifiDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 186
    return-void
.end method
