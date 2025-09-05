.class public final Lcom/android/settings/users/UserDialogs;
.super Ljava/lang/Object;
.source "UserDialogs.java"


# direct methods
.method public static createEnablePhoneCallsAndSmsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 118
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    const p0, 0x7f120ef9    # @string/user_enable_calling_and_sms_confirm_title 'Turn on phone calls & SMS?'

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 120
    const v0, 0x7f120ef8    # @string/user_enable_calling_and_sms_confirm_message 'Call and SMS history will be shared with this user.'

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 121
    const v0, 0x7f1209fe    # @string/okay 'OK'

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 122
    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 123
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 118
    return-object p0
.end method

.method public static createEnablePhoneCallsDialog(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 1

    .line 133
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 134
    const p0, 0x7f120efb    # @string/user_enable_calling_confirm_title 'Turn on phone calls?'

    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 135
    const v0, 0x7f120efa    # @string/user_enable_calling_confirm_message 'Call history will be shared with this user.'

    invoke-virtual {p0, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 136
    const v0, 0x7f1209fe    # @string/okay 'OK'

    invoke-virtual {p0, v0, p1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 137
    const/high16 p1, 0x1040000    # @android:string/cancel

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p0

    .line 138
    invoke-virtual {p0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    .line 133
    return-object p0
.end method

.method public static createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;
    .locals 3

    .line 53
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 54
    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 55
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 56
    const v2, 0x7f120ee2    # @string/user_delete_button 'Delete'

    invoke-virtual {v1, v2, p2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 57
    const/high16 v1, 0x1040000    # @android:string/cancel

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p2

    .line 58
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 59
    const v0, 0x7f121124    # @string/work_profile_confirm_remove_title 'Remove work profile?'

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 60
    invoke-static {p0, p1}, Lcom/android/settings/users/UserDialogs;->createRemoveManagedUserDialogView(Landroid/content/Context;I)Landroid/view/View;

    move-result-object p0

    .line 61
    if-eqz p0, :cond_0

    .line 62
    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 64
    :cond_0
    const p0, 0x7f121123    # @string/work_profile_confirm_remove_message 'All apps and data in this profile will be deleted if you continue.'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 66
    :goto_0
    goto :goto_1

    :cond_1
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p0

    if-ne p0, p1, :cond_2

    .line 67
    const p0, 0x7f120edb    # @string/user_confirm_remove_self_title 'Delete yourself?'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 68
    const p0, 0x7f120eda    # @string/user_confirm_remove_self_message 'You will lose your space and data on this phone. You can’t undo this action.'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 69
    :cond_2
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p0

    if-eqz p0, :cond_3

    .line 70
    const p0, 0x7f120f0f    # @string/user_profile_confirm_remove_title 'Remove this profile?'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 71
    const p0, 0x7f120f0e    # @string/user_profile_confirm_remove_message 'All apps and data will be deleted.'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    goto :goto_1

    .line 73
    :cond_3
    const p0, 0x7f120edc    # @string/user_confirm_remove_title 'Remove this user?'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 74
    const p0, 0x7f120ed9    # @string/user_confirm_remove_message 'All apps and data will be deleted.'

    invoke-virtual {p2, p0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 76
    :goto_1
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private static createRemoveManagedUserDialogView(Landroid/content/Context;I)Landroid/view/View;
    .locals 5

    .line 83
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 84
    invoke-static {p0, p1}, Lcom/android/settings/Utils;->getAdminApplicationInfo(Landroid/content/Context;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    .line 85
    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 86
    return-object v2

    .line 88
    :cond_0
    const-string v3, "layout_inflater"

    .line 89
    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/LayoutInflater;

    .line 91
    const v3, 0x7f0d007f    # @layout/delete_managed_profile_dialog 'res/layout/delete_managed_profile_dialog.xml'

    invoke-virtual {p0, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p0

    .line 92
    const v2, 0x7f0a0104    # @id/delete_managed_profile_mdm_icon_view

    .line 93
    invoke-virtual {p0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 94
    nop

    .line 95
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    new-instance v4, Landroid/os/UserHandle;

    invoke-direct {v4, p1}, Landroid/os/UserHandle;-><init>(I)V

    .line 94
    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getUserBadgedIcon(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 96
    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 98
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 99
    new-instance v2, Landroid/os/UserHandle;

    invoke-direct {v2, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 101
    const v0, 0x7f0a0103    # @id/delete_managed_profile_device_manager_name

    .line 102
    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 103
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 104
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 105
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 108
    :cond_1
    return-object p0
.end method
