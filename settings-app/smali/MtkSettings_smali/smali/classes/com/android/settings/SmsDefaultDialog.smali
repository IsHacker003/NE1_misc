.class public final Lcom/android/settings/SmsDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "SmsDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SmsDefaultDialog$AppListAdapter;
    }
.end annotation


# instance fields
.field private mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Ljava/lang/String;)Z
    .locals 6

    .line 107
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 108
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 110
    return v1

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 113
    const v2, 0x7f120cbe    # @string/sms_change_default_dialog_title 'Change SMS app?'

    invoke-virtual {p0, v2}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 114
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 115
    iget-object p1, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    const/4 v2, 0x1

    if-eqz p1, :cond_3

    .line 118
    const/4 p1, 0x0

    .line 119
    invoke-static {p0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v3

    .line 120
    if-eqz v3, :cond_1

    .line 121
    nop

    .line 122
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 121
    invoke-static {p1, p0}, Lcom/android/internal/telephony/SmsApplication;->getSmsApplicationData(Ljava/lang/String;Landroid/content/Context;)Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    move-result-object p1

    .line 123
    iget-object v3, p1, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object v4, v4, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 125
    return v1

    .line 130
    :cond_1
    if-eqz p1, :cond_2

    .line 131
    const v3, 0x7f120cbd    # @string/sms_change_default_dialog_text 'Use %1$s instead of %2$s as your SMS app?'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 132
    invoke-virtual {v5, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 133
    invoke-virtual {p1, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v2

    .line 131
    invoke-virtual {p0, v3, v4}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0

    .line 135
    :cond_2
    const p1, 0x7f120cbf    # @string/sms_change_default_no_previous_dialog_text 'Use %s as your SMS app?'

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 136
    invoke-virtual {v4, p0}, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->getApplicationName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    .line 135
    invoke-virtual {p0, p1, v3}, Lcom/android/settings/SmsDefaultDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 138
    :goto_0
    const p1, 0x7f121138    # @string/yes 'Yes'

    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 139
    const p1, 0x7f12097d    # @string/no 'No'

    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 140
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 141
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 142
    goto :goto_1

    .line 144
    :cond_3
    new-instance p1, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    invoke-direct {p1, p0}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;-><init>(Lcom/android/settings/SmsDefaultDialog;)V

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 145
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 146
    const p1, 0x7f120361    # @string/cancel 'Cancel'

    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 147
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 148
    iget-object p1, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    invoke-interface {p1}, Landroid/widget/ListAdapter;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 150
    return v1

    .line 153
    :cond_4
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->setupAlert()V

    .line 155
    return v2
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2

    .line 84
    const/4 p1, -0x1

    packed-switch p2, :pswitch_data_0

    .line 92
    if-ltz p2, :cond_0

    .line 93
    iget-object v0, p0, Lcom/android/settings/SmsDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    iget-object v0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    check-cast v0, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;

    .line 94
    invoke-virtual {v0, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->isSelected(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 95
    invoke-virtual {v0, p2}, Lcom/android/settings/SmsDefaultDialog$AppListAdapter;->getPackageName(I)Ljava/lang/String;

    move-result-object p2

    .line 96
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-static {p2, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 98
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    goto :goto_0

    .line 86
    :pswitch_0
    iget-object p2, p0, Lcom/android/settings/SmsDefaultDialog;->mNewSmsApplicationData:Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    iget-object p2, p2, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-static {p2, p0}, Lcom/android/internal/telephony/SmsApplication;->setDefaultApplication(Ljava/lang/String;Landroid/content/Context;)V

    .line 87
    invoke-virtual {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 88
    goto :goto_0

    .line 90
    :pswitch_1
    nop

    .line 104
    :cond_0
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 55
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 58
    const-string v0, "package"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 60
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/SmsDefaultDialog;->setResult(I)V

    .line 61
    invoke-direct {p0, p1}, Lcom/android/settings/SmsDefaultDialog;->buildDialog(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->finish()V

    .line 64
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .line 68
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x80000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addPrivateFlags(I)V

    .line 70
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "120484087"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, -0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, ""

    const/4 v2, 0x2

    aput-object v1, v0, v2

    const v1, 0x534e4554

    invoke-static {v1, v0}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 71
    return-void
.end method

.method protected onStop()V
    .locals 4

    .line 75
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 76
    invoke-virtual {p0}, Lcom/android/settings/SmsDefaultDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 77
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v1

    .line 78
    iget v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    const v3, -0x80001

    and-int/2addr v2, v3

    iput v2, v1, Landroid/view/WindowManager$LayoutParams;->privateFlags:I

    .line 79
    invoke-virtual {v0, v1}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    .line 80
    return-void
.end method
