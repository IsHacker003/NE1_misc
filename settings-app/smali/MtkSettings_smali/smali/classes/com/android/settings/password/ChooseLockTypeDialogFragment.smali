.class public Lcom/android/settings/password/ChooseLockTypeDialogFragment;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ChooseLockTypeDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;,
        Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

.field private mController:Lcom/android/settings/password/ChooseLockGenericController;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 50
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V

    return-void
.end method

.method private static copyBooleanExtra(Landroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Z)V
    .locals 0

    .line 96
    invoke-virtual {p0, p2, p3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p0

    invoke-virtual {p1, p2, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 97
    return-void
.end method

.method public static newInstance(I)Lcom/android/settings/password/ChooseLockTypeDialogFragment;
    .locals 2

    .line 59
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 60
    const-string v1, "userId"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 61
    new-instance p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;

    invoke-direct {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;-><init>()V

    .line 62
    invoke-virtual {p0, v0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 63
    return-object p0
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 141
    const/16 v0, 0x3de

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 109
    nop

    .line 110
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getParentFragment()Landroid/app/Fragment;

    move-result-object p1

    .line 111
    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v0, :cond_0

    .line 112
    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_0

    .line 114
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 115
    instance-of v0, p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    if-eqz v0, :cond_1

    .line 116
    check-cast p1, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;

    goto :goto_0

    .line 119
    :cond_1
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_2

    .line 120
    iget-object v0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {v0, p2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/settings/password/ScreenLockType;

    invoke-interface {p1, p2}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$OnLockTypeSelectedListener;->onLockTypeSelected(Lcom/android/settings/password/ScreenLockType;)V

    .line 122
    :cond_2
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 102
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    const-string v0, "userId"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p1

    .line 104
    new-instance v0, Lcom/android/settings/password/ChooseLockGenericController;

    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/android/settings/password/ChooseLockGenericController;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 105
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 127
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    .line 129
    const/high16 v2, 0x10000

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/settings/password/ChooseLockGenericController;->getVisibleScreenLockTypes(IZ)Ljava/util/List;

    move-result-object v1

    .line 132
    new-instance v2, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    iget-object v3, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mController:Lcom/android/settings/password/ChooseLockGenericController;

    invoke-direct {v2, p1, v1, v3}, Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/password/ChooseLockGenericController;)V

    iput-object v2, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    .line 133
    iget-object p1, p0, Lcom/android/settings/password/ChooseLockTypeDialogFragment;->mAdapter:Lcom/android/settings/password/ChooseLockTypeDialogFragment$ScreenLockAdapter;

    invoke-virtual {v0, p1, p0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 134
    const p1, 0x7f120c3b    # @string/setup_lock_settings_options_dialog_title 'Screen lock options'

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 135
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 136
    return-object p1
.end method
