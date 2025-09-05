.class public Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "AppManagementFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/vpn2/AppManagementFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "CannotConnectFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Lcom/android/settings/vpn2/AppManagementFragment;Ljava/lang/String;)V
    .locals 2

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    const-string v1, "CannotConnect"

    invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;

    move-result-object v0

    if-nez v0, :cond_0

    .line 342
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 343
    const-string v1, "label"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    new-instance p1, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;

    invoke-direct {p1}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;-><init>()V

    .line 346
    invoke-virtual {p1, v0}, Landroid/app/DialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 347
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string v0, "CannotConnect"

    invoke-virtual {p1, p0, v0}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 349
    :cond_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 337
    const/16 v0, 0x223

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 353
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "label"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 354
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 355
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const p1, 0x7f120f52    # @string/vpn_cant_connect_title '%1$s can't connect'

    invoke-virtual {v1, p1, v2}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 356
    invoke-virtual {p0}, Lcom/android/settings/vpn2/AppManagementFragment$CannotConnectFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f120f51    # @string/vpn_cant_connect_message 'This app doesn't support always-on VPN'

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 357
    const v0, 0x7f1209fe    # @string/okay 'OK'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 358
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 354
    return-object p1
.end method
