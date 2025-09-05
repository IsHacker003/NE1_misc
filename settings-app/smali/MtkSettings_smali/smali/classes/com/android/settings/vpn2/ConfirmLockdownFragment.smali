.class public Lcom/android/settings/vpn2/ConfirmLockdownFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ConfirmLockdownFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 29
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static shouldShow(ZZZ)Z
    .locals 0

    .line 52
    if-nez p0, :cond_1

    if-eqz p2, :cond_0

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static show(Landroid/app/Fragment;ZZZZLandroid/os/Bundle;)V
    .locals 2

    .line 57
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "ConfirmLockdown"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 59
    return-void

    .line 61
    :cond_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 62
    const-string v1, "replacing"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 63
    const-string p1, "always_on"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 64
    const-string p1, "lockdown_old"

    invoke-virtual {v0, p1, p3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 65
    const-string p1, "lockdown_new"

    invoke-virtual {v0, p1, p4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    const-string p1, "options"

    invoke-virtual {v0, p1, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    new-instance p1, Lcom/android/settings/vpn2/ConfirmLockdownFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;-><init>()V

    .line 69
    invoke-virtual {p1, v0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setArguments(Landroid/os/Bundle;)V

    .line 70
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 71
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ConfirmLockdown"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 72
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 39
    const/16 v0, 0x224

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    instance-of p1, p1, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;

    if-eqz p1, :cond_0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object p1

    check-cast p1, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p2

    const-string v0, "options"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p2

    check-cast p2, Landroid/os/Bundle;

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "always_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lockdown_new"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 108
    invoke-interface {p1, p2, v0, v1}, Lcom/android/settings/vpn2/ConfirmLockdownFragment$ConfirmLockdownListener;->onConfirmLockdown(Landroid/os/Bundle;ZZ)V

    .line 113
    :cond_0
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "replacing"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    .line 77
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "always_on"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "lockdown_old"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "lockdown_new"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    .line 81
    if-eqz v1, :cond_0

    const v2, 0x7f120f7b    # @string/vpn_require_connection_title 'Require VPN connection?'

    goto :goto_0

    .line 82
    :cond_0
    if-eqz p1, :cond_1

    const v2, 0x7f120f79    # @string/vpn_replace_vpn_title 'Replace existing VPN?'

    goto :goto_0

    :cond_1
    const v2, 0x7f120f81    # @string/vpn_set_vpn_title 'Set always-on VPN?'

    .line 84
    :goto_0
    if-eqz p1, :cond_2

    const v3, 0x7f120f75    # @string/vpn_replace 'Replace'

    goto :goto_1

    .line 85
    :cond_2
    if-eqz v1, :cond_3

    const v3, 0x7f120f86    # @string/vpn_turn_on 'Turn on'

    goto :goto_1

    :cond_3
    const v3, 0x7f1209fe    # @string/okay 'OK'

    .line 87
    :goto_1
    if-eqz v1, :cond_5

    .line 88
    if-eqz p1, :cond_4

    .line 89
    const p1, 0x7f120f77    # @string/vpn_replace_always_on_vpn_enable_message 'Your existing VPN will be replaced, and you won't have an internet connection until the VPN successf ...'

    goto :goto_2

    .line 90
    :cond_4
    const p1, 0x7f120f5d    # @string/vpn_first_always_on_vpn_message 'When this setting is on, you won't have an internet connection until the VPN successfully connects'

    goto :goto_2

    .line 92
    :cond_5
    if-eqz v0, :cond_6

    .line 93
    const p1, 0x7f120f76    # @string/vpn_replace_always_on_vpn_disable_message 'You're already connected to an always-on VPN. If you connect to a different one, your existing VPN w ...'

    goto :goto_2

    .line 94
    :cond_6
    const p1, 0x7f120f78    # @string/vpn_replace_vpn_message 'You're already connected to a VPN. If you connect to a different one, your existing VPN will be repl ...'

    .line 97
    :goto_2
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfirmLockdownFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 99
    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 101
    invoke-virtual {p1, v3, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 97
    return-object p1
.end method
