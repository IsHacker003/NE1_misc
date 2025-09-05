.class public Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;
.super Ljava/lang/Object;
.source "ActionDisabledByAdminDialogHelper.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActivity:Landroid/app/Activity;

.field private mDialogView:Landroid/view/ViewGroup;

.field private mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private mRestriction:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    const-class v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/app/Activity;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 58
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 59
    return-void
.end method

.method private initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V
    .locals 3

    .line 93
    if-nez p2, :cond_0

    .line 94
    return-void

    .line 96
    :cond_0
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-static {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 97
    invoke-static {v0, p3}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 101
    invoke-static {v0}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    .line 102
    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 103
    invoke-virtual {p2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 100
    invoke-static {v0, v1, v2, p3}, Lcom/android/settings/Utils;->getBadgedIcon(Landroid/util/IconDrawableFactory;Landroid/content/pm/PackageManager;Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 105
    const v1, 0x7f0a003a    # @id/admin_support_icon

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 98
    :cond_2
    :goto_0
    const/4 p2, 0x0

    .line 108
    :goto_1
    invoke-virtual {p0, p1, p4}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V

    .line 109
    iget-object p4, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    new-instance v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-direct {v0, p2, p3}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;-><init>(Landroid/content/ComponentName;I)V

    invoke-virtual {p0, p4, p1, v0}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 110
    return-void
.end method

.method public static synthetic lambda$prepareDialogBuilder$0(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 75
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 77
    return-void
.end method


# virtual methods
.method public prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;
    .locals 4

    .line 63
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 64
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 66
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mActivity:Landroid/app/Activity;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 67
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const/4 v0, 0x0

    const v1, 0x7f0d002b    # @layout/admin_support_details_dialog 'res/layout/admin_support_details_dialog.xml'

    invoke-virtual {p2, v1, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/view/ViewGroup;

    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 69
    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object v1, v1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v2, v2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget-object v3, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, p2, v1, v2, v3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 71
    nop

    .line 72
    const p2, 0x7f1209fe    # @string/okay 'OK'

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$1vfAOqcacTgM-c2XJLB5Z1-4lQ4;

    invoke-direct {p2, p0}, Lcom/android/settings/enterprise/-$$Lambda$ActionDisabledByAdminDialogHelper$1vfAOqcacTgM-c2XJLB5Z1-4lQ4;-><init>(Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;)V

    .line 73
    const v0, 0x7f1207da    # @string/learn_more 'Learn more'

    invoke-virtual {p1, v0, p2}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    .line 78
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 71
    return-object p1
.end method

.method setAdminSupportDetails(Landroid/app/Activity;Landroid/view/View;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 3

    .line 153
    if-eqz p3, :cond_6

    iget-object v0, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-nez v0, :cond_0

    goto :goto_2

    .line 156
    :cond_0
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 158
    iget-object v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isAdminInCurrentUserOrProfile(Landroid/content/Context;Landroid/content/ComponentName;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    iget v1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 159
    invoke-static {p1, v1}, Lcom/android/settingslib/RestrictedLockUtils;->isCurrentUserOrProfile(Landroid/content/Context;I)Z

    move-result p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 163
    :cond_1
    iget p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    const/16 v1, -0x2710

    if-ne p1, v1, :cond_2

    .line 164
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    iput p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    .line 166
    :cond_2
    nop

    .line 167
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result p1

    const/16 v1, 0x3e8

    invoke-static {p1, v1}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 168
    iget-object p1, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget p3, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-virtual {v0, p1, p3}, Landroid/app/admin/DevicePolicyManager;->getShortSupportMessageForUser(Landroid/content/ComponentName;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 171
    :cond_3
    if-eqz v2, :cond_5

    .line 172
    const p1, 0x7f0a003c    # @id/admin_support_msg

    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 173
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 161
    :cond_4
    :goto_0
    iput-object v2, p3, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    .line 176
    :cond_5
    :goto_1
    return-void

    .line 154
    :cond_6
    :goto_2
    return-void
.end method

.method setAdminSupportTitle(Landroid/view/View;Ljava/lang/String;)V
    .locals 3

    .line 114
    const v0, 0x7f0a0039    # @id/admin_support_dialog_title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 115
    if-nez p1, :cond_0

    .line 116
    return-void

    .line 118
    :cond_0
    const v0, 0x7f120552    # @string/disabled_by_policy_title 'Action not allowed'

    if-nez p2, :cond_1

    .line 119
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 120
    return-void

    .line 122
    :cond_1
    const/4 v1, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    goto :goto_0

    :sswitch_0
    const-string v2, "no_adjust_volume"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x0

    goto :goto_0

    :sswitch_1
    const-string v2, "policy_mandatory_backups"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x5

    goto :goto_0

    :sswitch_2
    const-string v2, "no_outgoing_calls"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    goto :goto_0

    :sswitch_3
    const-string v2, "policy_suspend_packages"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x6

    goto :goto_0

    :sswitch_4
    const-string v2, "policy_disable_screen_capture"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_5
    const-string v2, "policy_disable_camera"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x3

    goto :goto_0

    :sswitch_6
    const-string v2, "no_sms"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 v1, 0x2

    :cond_2
    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 146
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 142
    :pswitch_0
    const p2, 0x7f120558    # @string/disabled_by_policy_title_suspend_packages 'Can’t open this app'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 143
    goto :goto_1

    .line 139
    :pswitch_1
    const p2, 0x7f120559    # @string/disabled_by_policy_title_turn_off_backups 'Can’t turn off backups'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 140
    goto :goto_1

    .line 136
    :pswitch_2
    const p2, 0x7f120556    # @string/disabled_by_policy_title_screen_capture 'Screenshot not allowed'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 137
    goto :goto_1

    .line 133
    :pswitch_3
    const p2, 0x7f120554    # @string/disabled_by_policy_title_camera 'Camera not allowed'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 134
    goto :goto_1

    .line 130
    :pswitch_4
    const p2, 0x7f120557    # @string/disabled_by_policy_title_sms 'SMS not allowed'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 131
    goto :goto_1

    .line 127
    :pswitch_5
    const p2, 0x7f120555    # @string/disabled_by_policy_title_outgoing_calls 'Calling not allowed'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 128
    goto :goto_1

    .line 124
    :pswitch_6
    const p2, 0x7f120553    # @string/disabled_by_policy_title_adjust_volume 'Can’t change volume'

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 125
    nop

    .line 148
    :goto_1
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x3e01ce25 -> :sswitch_6
        -0x379078f7 -> :sswitch_5
        0x24f9a257 -> :sswitch_4
        0x546cf0fd -> :sswitch_3
        0x74422d80 -> :sswitch_2
        0x7a5410be -> :sswitch_1
        0x7f4c17cc -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method showAdminPolicies(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;Landroid/app/Activity;)V
    .locals 3

    .line 180
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 181
    iget-object v1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    if-eqz v1, :cond_0

    .line 182
    const-class v1, Lcom/android/settings/DeviceAdminAdd;

    invoke-virtual {v0, p2, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 183
    const-string v1, "android.app.extra.DEVICE_ADMIN"

    iget-object v2, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 185
    const-string v1, "android.app.extra.CALLED_FROM_SUPPORT_DIALOG"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 187
    new-instance v1, Landroid/os/UserHandle;

    iget p1, p1, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    invoke-direct {v1, p1}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p2, v0, v1}, Landroid/app/Activity;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_0

    .line 190
    :cond_0
    const-class p1, Lcom/android/settings/Settings$DeviceAdminSettingsActivity;

    invoke-virtual {v0, p2, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 191
    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 194
    invoke-virtual {p2, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    .line 196
    :goto_0
    return-void
.end method

.method public updateDialog(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 2

    .line 82
    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v0, p2}, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-static {v0, p1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    return-void

    .line 85
    :cond_0
    iput-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 86
    iput-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    .line 87
    iget-object p1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mDialogView:Landroid/view/ViewGroup;

    iget-object p2, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget-object p2, p2, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->component:Landroid/content/ComponentName;

    iget-object v0, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    iget v0, v0, Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;->userId:I

    iget-object v1, p0, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->mRestriction:Ljava/lang/String;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->initializeDialogViews(Landroid/view/View;Landroid/content/ComponentName;ILjava/lang/String;)V

    .line 89
    return-void
.end method
