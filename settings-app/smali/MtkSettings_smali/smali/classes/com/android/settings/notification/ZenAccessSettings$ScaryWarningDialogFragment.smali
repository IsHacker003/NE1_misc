.class public Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenAccessSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/ZenAccessSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ScaryWarningDialogFragment"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 238
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 244
    const/16 v0, 0x22a

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 257
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 259
    const-string v0, "p"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 260
    const-string v1, "l"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const p1, 0x7f12113e    # @string/zen_access_warning_dialog_title 'Allow access to Do Not Disturb for %1$s?'

    invoke-virtual {v1, p1, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 264
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 265
    const v3, 0x7f12113d    # @string/zen_access_warning_dialog_summary 'The app will be able to turn on/off Do Not Disturb and make changes to related settings.'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 266
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 267
    invoke-virtual {v3, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    .line 268
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 269
    invoke-virtual {p1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v1, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$2;-><init>(Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;Ljava/lang/String;)V

    .line 270
    const v0, 0x7f1200d1    # @string/allow 'Allow'

    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment$1;-><init>(Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;)V

    .line 276
    const v1, 0x7f120515    # @string/deny 'Deny'

    invoke-virtual {p1, v1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 282
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 266
    return-object p1
.end method

.method public setPkgInfo(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;
    .locals 3

    .line 248
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 249
    const-string v1, "p"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    const-string v1, "l"

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 251
    invoke-virtual {p0, v0}, Lcom/android/settings/notification/ZenAccessSettings$ScaryWarningDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 252
    return-object p0
.end method
