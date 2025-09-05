.class public Lcom/android/settings/notification/ZenRuleNameDialog;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "ZenRuleNameDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;
    }
.end annotation


# static fields
.field protected static mPositiveClickListener:Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 36
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settings/notification/ZenRuleNameDialog;->trimmedText(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getTitleResource(Landroid/net/Uri;Z)I
    .locals 1

    .line 113
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidEventConditionId(Landroid/net/Uri;)Z

    move-result v0

    .line 114
    invoke-static {p1}, Landroid/service/notification/ZenModeConfig;->isValidScheduleConditionId(Landroid/net/Uri;)Z

    move-result p1

    .line 115
    nop

    .line 116
    if-eqz p2, :cond_1

    .line 117
    if-eqz v0, :cond_0

    .line 118
    const p1, 0x7f12114b    # @string/zen_mode_add_event_rule 'Add event rule'

    goto :goto_0

    .line 119
    :cond_0
    if-eqz p1, :cond_1

    .line 120
    const p1, 0x7f12114d    # @string/zen_mode_add_time_rule 'Add time rule'

    goto :goto_0

    .line 123
    :cond_1
    const p1, 0x7f1211af    # @string/zen_mode_rule_name 'Rule name'

    :goto_0
    return p1
.end method

.method public static show(Landroid/app/Fragment;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;)V
    .locals 2

    .line 56
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 57
    const-string v1, "zen_rule_name"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 58
    const-string p1, "extra_zen_condition_id"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 59
    sput-object p3, Lcom/android/settings/notification/ZenRuleNameDialog;->mPositiveClickListener:Lcom/android/settings/notification/ZenRuleNameDialog$PositiveClickListener;

    .line 61
    new-instance p1, Lcom/android/settings/notification/ZenRuleNameDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/ZenRuleNameDialog;-><init>()V

    .line 62
    invoke-virtual {p1, v0}, Lcom/android/settings/notification/ZenRuleNameDialog;->setArguments(Landroid/os/Bundle;)V

    .line 63
    const/4 p2, 0x0

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenRuleNameDialog;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 64
    invoke-virtual {p0}, Landroid/app/Fragment;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p0

    const-string p2, "ZenRuleNameDialog"

    invoke-virtual {p1, p0, p2}, Lcom/android/settings/notification/ZenRuleNameDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 65
    return-void
.end method

.method private trimmedText(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .line 109
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 44
    const/16 v0, 0x4f5

    return v0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 8

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 70
    const-string v0, "extra_zen_condition_id"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 71
    const-string v1, "zen_rule_name"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 73
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_0

    .line 74
    move v3, v2

    goto :goto_0

    .line 73
    :cond_0
    nop

    .line 74
    move v3, v1

    .line 75
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenRuleNameDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 76
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f0d01e7    # @layout/zen_rule_name 'res/layout/zen_rule_name.xml'

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 78
    const v5, 0x7f0a03f7    # @id/zen_mode_rule_name

    invoke-virtual {v1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/EditText;

    .line 79
    if-nez v3, :cond_1

    .line 81
    invoke-virtual {v5, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v6

    invoke-interface {v6}, Landroid/text/Editable;->length()I

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setSelection(I)V

    .line 85
    :cond_1
    invoke-virtual {v5, v2}, Landroid/widget/EditText;->setSelectAllOnFocus(Z)V

    .line 86
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-direct {v2, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    invoke-direct {p0, v0, v3}, Lcom/android/settings/notification/ZenRuleNameDialog;->getTitleResource(Landroid/net/Uri;Z)I

    move-result v0

    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    if-eqz v3, :cond_2

    const v1, 0x7f12114a    # @string/zen_mode_add 'Add'

    goto :goto_1

    :cond_2
    const v1, 0x7f1209fe    # @string/okay 'OK'

    :goto_1
    new-instance v2, Lcom/android/settings/notification/ZenRuleNameDialog$1;

    invoke-direct {v2, p0, v5, v3, p1}, Lcom/android/settings/notification/ZenRuleNameDialog$1;-><init>(Lcom/android/settings/notification/ZenRuleNameDialog;Landroid/widget/EditText;ZLjava/lang/CharSequence;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120361    # @string/cancel 'Cancel'

    .line 104
    invoke-virtual {p1, v0, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 86
    return-object p1
.end method
