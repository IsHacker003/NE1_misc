.class public Lcom/android/settings/vpn2/ConfigDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfigDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnShowListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUnlocking:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 56
    const-string v0, "connectivity"

    .line 57
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 56
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    return-void
.end method

.method private connect(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 1

    .line 232
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V

    .line 236
    iget-object p2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 237
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 239
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-interface {p2, p1}, Landroid/net/IConnectivityManager;->startLegacyVpn(Lcom/android/internal/net/VpnProfile;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 242
    :catch_0
    move-exception p1

    .line 243
    const-string p2, "ConfigDialogFragment"

    const-string v0, "Failed to connect"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 240
    :catch_1
    move-exception p1

    .line 241
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f120f70    # @string/vpn_no_network 'There is no network connection. Please try again later.'

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 244
    :goto_0
    nop

    .line 246
    :cond_0
    :goto_1
    return-void
.end method

.method private disconnect(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2

    .line 256
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 257
    const/4 p1, 0x1

    return p1

    .line 259
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/vpn2/VpnUtils;->disconnectLegacyVpn(Landroid/content/Context;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 260
    :catch_0
    move-exception p1

    .line 261
    const-string v0, "ConfigDialogFragment"

    const-string v1, "Failed to disconnect"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 262
    const/4 p1, 0x0

    return p1
.end method

.method private isConnected(Lcom/android/internal/net/VpnProfile;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 267
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-interface {v0, v1}, Landroid/net/IConnectivityManager;->getLegacyVpnInfo(I)Lcom/android/internal/net/LegacyVpnInfo;

    move-result-object v0

    .line 268
    if-eqz v0, :cond_0

    iget-object p1, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    iget-object v0, v0, Lcom/android/internal/net/LegacyVpnInfo;->key:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private save(Lcom/android/internal/net/VpnProfile;Z)V
    .locals 5

    .line 221
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VPN_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/net/VpnProfile;->encode()[B

    move-result-object v2

    const/4 v3, -0x1

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/security/KeyStore;->put(Ljava/lang/String;[BII)Z

    .line 225
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    .line 228
    invoke-direct {p0, p2, p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 229
    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/VpnSettings;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 72
    const-string v1, "profile"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 73
    const-string p1, "editing"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 74
    const-string p1, "exists"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 76
    new-instance p1, Lcom/android/settings/vpn2/ConfigDialogFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/ConfigDialogFragment;-><init>()V

    .line 77
    invoke-virtual {p1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 78
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/vpn2/VpnSettings;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "vpnconfigdialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V
    .locals 3

    .line 200
    if-eqz p1, :cond_1

    .line 202
    invoke-virtual {p2}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result p1

    if-nez p1, :cond_0

    .line 203
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    const p2, 0x7f120f66    # @string/vpn_lockdown_config_error 'Always-on VPN requires an IP address for both server and DNS.'

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 204
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 205
    return-void

    .line 208
    :cond_0
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object p1

    .line 209
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v1, v2}, Landroid/net/ConnectivityManager;->setAlwaysOnVpnPackageForUser(ILjava/lang/String;Z)Z

    .line 211
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    iget-object p2, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p1, p2}, Lcom/android/settings/vpn2/VpnUtils;->setLockdownVpn(Landroid/content/Context;Ljava/lang/String;)V

    .line 212
    goto :goto_0

    .line 214
    :cond_1
    iget-object p1, p2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {p1}, Lcom/android/settings/vpn2/VpnUtils;->isVpnLockdown(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 215
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/vpn2/VpnUtils;->clearLockdownVpn(Landroid/content/Context;)V

    .line 218
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 65
    const/16 v0, 0x221

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 84
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onAttach(Landroid/content/Context;)V

    .line 85
    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    .line 86
    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 0

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 195
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 196
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 9

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/ConfigDialog;

    .line 153
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 155
    const/4 v1, -0x1

    const/4 v2, 0x0

    if-ne p2, v1, :cond_4

    .line 157
    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->isVpnAlwaysOn()Z

    move-result v7

    .line 158
    if-nez v7, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/vpn2/ConfigDialog;->isEditing()Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 159
    :cond_0
    move p1, v2

    goto :goto_1

    .line 158
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 159
    :goto_1
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isAnyLockdownActive(Landroid/content/Context;)Z

    move-result v6

    .line 161
    :try_start_0
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-static {p2}, Lcom/android/settings/vpn2/VpnUtils;->isVpnActive(Landroid/content/Context;)Z

    move-result v4

    .line 162
    if-eqz p1, :cond_2

    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->isConnected(Lcom/android/internal/net/VpnProfile;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 163
    invoke-static {v4, v6, v7}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->shouldShow(ZZZ)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 164
    new-instance v8, Landroid/os/Bundle;

    invoke-direct {v8}, Landroid/os/Bundle;-><init>()V

    .line 165
    const-string p1, "profile"

    invoke-virtual {v8, p1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 166
    move-object v3, p0

    move v5, v7

    invoke-static/range {v3 .. v8}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V

    .line 168
    goto :goto_2

    :cond_2
    if-eqz p1, :cond_3

    .line 169
    invoke-direct {p0, v0, v7}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    goto :goto_2

    .line 171
    :cond_3
    invoke-direct {p0, v0, v2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->save(Lcom/android/internal/net/VpnProfile;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_2
    goto :goto_3

    .line 173
    :catch_0
    move-exception p1

    .line 174
    const-string p2, "ConfigDialogFragment"

    const-string v0, "Failed to check active VPN state. Skipping."

    invoke-static {p2, v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 176
    :goto_3
    goto :goto_4

    :cond_4
    const/4 p1, -0x3

    if-ne p2, p1, :cond_6

    .line 178
    invoke-direct {p0, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->disconnect(Lcom/android/internal/net/VpnProfile;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 179
    const-string p1, "ConfigDialogFragment"

    const-string p2, "Failed to disconnect VPN. Leaving profile in keystore."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-void

    .line 184
    :cond_5
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    .line 185
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "VPN_"

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-virtual {p2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2, v1}, Landroid/security/KeyStore;->delete(Ljava/lang/String;I)Z

    .line 187
    invoke-direct {p0, v2, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->updateLockdownVpn(ZLcom/android/internal/net/VpnProfile;)V

    .line 189
    :cond_6
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 190
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 140
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    const/4 v0, -0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->onClick(Landroid/content/DialogInterface;I)V

    .line 141
    return-void
.end method

.method public onConfirmLockdown(Landroid/os/Bundle;ZZ)V
    .locals 0

    .line 145
    const-string p3, "profile"

    invoke-virtual {p1, p3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/android/internal/net/VpnProfile;

    .line 146
    invoke-direct {p0, p1, p2}, Lcom/android/settings/vpn2/ConfigDialogFragment;->connect(Lcom/android/internal/net/VpnProfile;Z)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 148
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 7

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 112
    const-string v0, "profile"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Lcom/android/internal/net/VpnProfile;

    .line 113
    const-string v0, "editing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    .line 114
    const-string v0, "exists"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    .line 116
    new-instance p1, Lcom/android/settings/vpn2/ConfigDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    move-object v1, p1

    move-object v3, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/vpn2/ConfigDialog;-><init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V

    .line 117
    invoke-virtual {p1, p0}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    .line 118
    return-object p1
.end method

.method public onResume()V
    .locals 2

    .line 90
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 93
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    invoke-virtual {v0}, Landroid/security/KeyStore;->isUnlocked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 94
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    if-nez v0, :cond_0

    .line 96
    invoke-static {}, Landroid/security/Credentials;->getInstance()Landroid/security/Credentials;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/security/Credentials;->unlock(Landroid/content/Context;)V

    goto :goto_0

    .line 99
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 101
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 102
    return-void

    .line 106
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialogFragment;->mUnlocking:Z

    .line 107
    return-void
.end method

.method public onShow(Landroid/content/DialogInterface;)V
    .locals 1

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object p1

    check-cast p1, Landroid/app/AlertDialog;

    .line 130
    if-nez p1, :cond_0

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialogFragment;->dismiss()V

    .line 132
    return-void

    .line 134
    :cond_0
    const/4 v0, -0x1

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 136
    return-void
.end method
