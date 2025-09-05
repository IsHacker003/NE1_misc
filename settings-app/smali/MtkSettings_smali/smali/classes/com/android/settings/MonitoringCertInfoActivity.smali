.class public Lcom/android/settings/MonitoringCertInfoActivity;
.super Landroid/app/Activity;
.source "MonitoringCertInfoActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 83
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.settings.TRUSTED_CREDENTIALS_USER"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 84
    const/high16 p2, 0x14000000

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 85
    const-string p2, "ARG_SHOW_NEW_FOR_USER"

    iget v0, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-virtual {p1, p2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p0, p1}, Lcom/android/settings/MonitoringCertInfoActivity;->startActivity(Landroid/content/Intent;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 88
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7

    .line 44
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v0, "android.intent.extra.USER_ID"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    .line 48
    const-class p1, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p0, p1}, Lcom/android/settings/MonitoringCertInfoActivity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    .line 49
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "android.settings.extra.number_of_certificates"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 51
    iget v1, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-static {p0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->getProfileOrDeviceOwner(Landroid/content/Context;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    const v3, 0x7f10003c    # @plurals/ssl_ca_cert_settings_button

    if-eqz v1, :cond_0

    .line 52
    nop

    .line 54
    move v1, v3

    goto :goto_0

    .line 53
    :cond_0
    const v1, 0x7f100039    # @plurals/ssl_ca_cert_dialog_title

    .line 54
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v1, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 55
    invoke-virtual {p0, v1}, Lcom/android/settings/MonitoringCertInfoActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 57
    new-instance v4, Landroid/app/AlertDialog$Builder;

    invoke-direct {v4, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 58
    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 59
    invoke-virtual {v4, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v0}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v4, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 62
    const v1, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v3, 0x0

    invoke-virtual {v4, v1, v3}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 63
    invoke-virtual {v4, p0}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    .line 65
    iget v1, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    invoke-virtual {p1, v1}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerAsUser(I)Landroid/content/ComponentName;

    move-result-object v1

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 66
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f10003a    # @plurals/ssl_ca_cert_info_message

    new-array v2, v2, [Ljava/lang/Object;

    iget v6, p0, Lcom/android/settings/MonitoringCertInfoActivity;->mUserId:I

    .line 67
    invoke-virtual {p1, v6}, Landroid/app/admin/DevicePolicyManager;->getProfileOwnerNameAsUser(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 66
    invoke-virtual {v1, v5, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 68
    :cond_1
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnCallingUser()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v5, 0x7f10003b    # @plurals/ssl_ca_cert_info_message_device_owner

    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    invoke-virtual {p1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerNameOnAnyUser()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v2, v3

    .line 69
    invoke-virtual {v1, v5, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 74
    :cond_2
    const p1, 0x1080078    # @android:drawable/stat_notify_error

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    .line 75
    const p1, 0x7f120ce7    # @string/ssl_ca_cert_warning_message 'A third party is capable of monitoring your network activity, including emails, apps, and secure web ...'

    invoke-virtual {v4, p1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 78
    :goto_1
    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 79
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/MonitoringCertInfoActivity;->finish()V

    .line 93
    return-void
.end method
