.class public Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "NotificationAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FriendlyWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 128
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$0(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 161
    invoke-static {p0, p1}, Lcom/android/settings/notification/NotificationAccessSettings;->access$000(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic lambda$onCreateDialog$1(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 165
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 144
    const/16 v0, 0x228

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 150
    const-string v0, "l"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 151
    const-string v1, "c"

    .line 152
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getTargetFragment()Landroid/app/Fragment;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationAccessSettings;

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    const v0, 0x7f1209b2    # @string/notification_listener_disable_warning_summary 'If you turn off notification access for %1$s, Do Not Disturb access may also be turned off.'

    invoke-virtual {v2, v0, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 157
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 158
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;

    invoke-direct {v2, v1, p1}, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$ND5PkKgvmxdEIdAr9gHIhLyAwTU;-><init>(Lcom/android/settings/notification/NotificationAccessSettings;Landroid/content/ComponentName;)V

    .line 160
    const p1, 0x7f1209b1    # @string/notification_listener_disable_warning_confirm 'Turn off'

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    sget-object v0, Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$dxECkfkY-zLrkSsUm1OLKJMeIiE;->INSTANCE:Lcom/android/settings/notification/-$$Lambda$NotificationAccessSettings$FriendlyWarningDialogFragment$dxECkfkY-zLrkSsUm1OLKJMeIiE;

    .line 162
    const v1, 0x7f1209b0    # @string/notification_listener_disable_warning_cancel 'Cancel'

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 166
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 157
    return-object p1
.end method

.method public setServiceInfo(Landroid/content/ComponentName;Ljava/lang/String;Landroid/app/Fragment;)Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;
    .locals 2

    .line 134
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 135
    const-string v1, "c"

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    const-string p1, "l"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 137
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 138
    const/4 p1, 0x0

    invoke-virtual {p0, p3, p1}, Lcom/android/settings/notification/NotificationAccessSettings$FriendlyWarningDialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 139
    return-object p0
.end method
