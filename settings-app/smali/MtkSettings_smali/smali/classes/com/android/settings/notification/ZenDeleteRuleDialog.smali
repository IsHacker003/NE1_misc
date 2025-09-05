.class public Lcom/android/settings/notification/ZenDeleteRuleDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenDeleteRuleDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field protected static mPositiveClickListener:Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Ljava/lang/String;Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;)V
    .locals 2

    .line 45
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 46
    const-string v1, "zen_rule_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 47
    const-string p1, "zen_rule_id"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 48
    sput-object p3, Lcom/android/settings/notification/ZenDeleteRuleDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenDeleteRuleDialog$PositiveClickListener;

    .line 50
    new-instance p1, Lcom/android/settings/notification/ZenDeleteRuleDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenDeleteRuleDialog;-><init>()V

    .line 51
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->setArguments(Landroid/os/Bundle;)V

    .line 52
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 53
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ZenDeleteRuleDialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 54
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 58
    const/16 v0, 0x4f2

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 64
    const-string v0, "zen_rule_name"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "zen_rule_id"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 67
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    .line 68
    const v0, 0x7f12117b    # @string/zen_mode_delete_rule_confirmation 'Delete “%1$s” rule?'

    invoke-virtual {p0, v0, v3}, Lcom/android/settings/notification/ZenDeleteRuleDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 69
    const v2, 0x7f120361    # @string/cancel 'Cancel'

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v2, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;

    invoke-direct {v2, p0, p1, v1}, Lcom/android/settings/notification/ZenDeleteRuleDialog$1;-><init>(Lcom/android/settings/notification/ZenDeleteRuleDialog;Landroid/os/Bundle;Ljava/lang/String;)V

    .line 70
    const p1, 0x7f12117a    # @string/zen_mode_delete_rule_button 'Delete'

    invoke-virtual {v0, p1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 79
    const v0, 0x102000b    # @android:id/message

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/view/View;->setTextDirection(I)V

    .line 83
    :cond_0
    return-object p1
.end method
