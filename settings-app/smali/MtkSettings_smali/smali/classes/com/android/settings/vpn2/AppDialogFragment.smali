.class public Lcom/android/settings/vpn2/AppDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppDialogFragment.java"

# interfaces
.implements Lcom/android/settings/vpn2/AppDialog$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/AppDialogFragment$Listener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

.field private mPackageInfo:Landroid/content/pm/PackageInfo;

.field private final mService:Landroid/net/IConnectivityManager;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    .line 54
    const-string v0, "connectivity"

    .line 55
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 54
    invoke-static {v0}, Landroid/net/IConnectivityManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/IConnectivityManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/vpn2/AppDialogFragment;Landroid/content/DialogInterface;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V

    return-void
.end method

.method private getUserId()I
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    return v0
.end method

.method private isUiRestricted()Z
    .locals 3

    .line 176
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 177
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mUserManager:Landroid/os/UserManager;

    const-string v2, "no_config_vpn"

    invoke-virtual {v1, v2, v0}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v0

    return v0
.end method

.method private onDisconnect(Landroid/content/DialogInterface;)V
    .locals 4

    .line 160
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 161
    return-void

    .line 163
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result p1

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    invoke-static {v1, p1}, Lcom/android/settings/vpn2/VpnUtils;->getConnectedPackage(Landroid/net/IConnectivityManager;I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 166
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Landroid/net/IConnectivityManager;->setAlwaysOnVpnPackage(ILjava/lang/String;Z)Z

    .line 167
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const-string v2, "[Legacy VPN]"

    invoke-interface {v0, v1, v2, p1}, Landroid/net/IConnectivityManager;->prepareVpn(Ljava/lang/String;Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :cond_1
    goto :goto_0

    .line 169
    :catch_0
    move-exception v0

    .line 170
    const-string v1, "AppDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to disconnect package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 173
    :goto_0
    return-void
.end method

.method public static show(Landroid/app/Fragment;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 6

    .line 69
    if-nez p3, :cond_0

    if-nez p4, :cond_0

    .line 71
    return-void

    .line 73
    :cond_0
    const/4 v1, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-static/range {v0 .. v5}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroid/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V

    .line 74
    return-void
.end method

.method public static show(Landroid/app/Fragment;Lcom/android/settings/vpn2/AppDialogFragment$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;ZZ)V
    .locals 2

    .line 78
    invoke-virtual {p0}, Landroid/app/Fragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    return-void

    .line 82
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 83
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 84
    const-string p2, "label"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 85
    const-string p2, "managing"

    invoke-virtual {v0, p2, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 86
    const-string p2, "connected"

    invoke-virtual {v0, p2, p5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 88
    new-instance p2, Lcom/android/settings/vpn2/AppDialogFragment;

    invoke-direct {p2}, Lcom/android/settings/vpn2/AppDialogFragment;-><init>()V

    .line 89
    iput-object p1, p2, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    .line 90
    invoke-virtual {p2, v0}, Lcom/android/settings/vpn2/AppDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 91
    const/4 p1, 0x0

    invoke-virtual {p2, p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 92
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p1, "vpnappdialog"

    invoke-virtual {p2, p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 93
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 59
    const/16 v0, 0x222

    return v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .line 133
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->dismiss()V

    .line 134
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    invoke-interface {v0}, Lcom/android/settings/vpn2/AppDialogFragment$Listener;->onCancel()V

    .line 137
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 138
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 97
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mUserManager:Landroid/os/UserManager;

    .line 99
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 104
    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 105
    const-string v1, "managing"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 106
    const-string v2, "connected"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    .line 107
    const-string v3, "package"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/pm/PackageInfo;

    iput-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 109
    if-eqz v1, :cond_0

    .line 110
    new-instance p1, Lcom/android/settings/vpn2/AppDialog;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    invoke-direct {p1, v1, p0, v2, v0}, Lcom/android/settings/vpn2/AppDialog;-><init>(Landroid/content/Context;Lcom/android/settings/vpn2/AppDialog$Listener;Landroid/content/pm/PackageInfo;Ljava/lang/String;)V

    return-object p1

    .line 113
    :cond_0
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 114
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 115
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120f57    # @string/vpn_disconnect_confirm 'Disconnect this VPN?'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120f50    # @string/vpn_cancel 'Cancel'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 118
    if-eqz v2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120f56    # @string/vpn_disconnect 'Disconnect'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/android/settings/vpn2/AppDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/android/settings/vpn2/AppDialogFragment$1;-><init>(Lcom/android/settings/vpn2/AppDialogFragment;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 127
    :cond_1
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1
.end method

.method public onForget(Landroid/content/DialogInterface;)V
    .locals 4

    .line 142
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->isUiRestricted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    return-void

    .line 145
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/AppDialogFragment;->getUserId()I

    move-result v0

    .line 147
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mService:Landroid/net/IConnectivityManager;

    iget-object v2, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v0, v3}, Landroid/net/IConnectivityManager;->setVpnPackageAuthorization(Ljava/lang/String;IZ)V

    .line 148
    invoke-direct {p0, p1}, Lcom/android/settings/vpn2/AppDialogFragment;->onDisconnect(Landroid/content/DialogInterface;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    goto :goto_0

    .line 149
    :catch_0
    move-exception p1

    .line 150
    const-string v1, "AppDialogFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to forget authorization of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " for user "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :goto_0
    iget-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    if-eqz p1, :cond_1

    .line 155
    iget-object p1, p0, Lcom/android/settings/vpn2/AppDialogFragment;->mListener:Lcom/android/settings/vpn2/AppDialogFragment$Listener;

    invoke-interface {p1}, Lcom/android/settings/vpn2/AppDialogFragment$Listener;->onForget()V

    .line 157
    :cond_1
    return-void
.end method
