.class public final Lcom/android/settings/nfc/PaymentDefaultDialog;
.super Lcom/android/internal/app/AlertActivity;
.source "PaymentDefaultDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field private mBackend:Lcom/android/settings/nfc/PaymentBackend;

.field private mNewDefault:Landroid/content/ComponentName;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method

.method private buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z
    .locals 5

    .line 71
    const/4 v0, 0x0

    if-eqz p1, :cond_8

    if-nez p2, :cond_0

    goto/16 :goto_2

    .line 76
    :cond_0
    const-string v1, "payment"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 77
    const-string p1, "PaymentDefaultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Don\'t support defaults for category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return v0

    .line 82
    :cond_1
    nop

    .line 83
    nop

    .line 85
    iget-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p2}, Lcom/android/settings/nfc/PaymentBackend;->getPaymentAppInfos()Ljava/util/List;

    move-result-object p2

    .line 86
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    move-object v2, v1

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;

    .line 87
    iget-object v4, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {p1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 88
    nop

    .line 90
    move-object v1, v3

    :cond_2
    iget-boolean v4, v3, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->isDefault:Z

    if-eqz v4, :cond_3

    .line 91
    nop

    .line 93
    move-object v2, v3

    :cond_3
    goto :goto_0

    .line 95
    :cond_4
    if-nez v1, :cond_5

    .line 96
    const-string p2, "PaymentDefaultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is not a registered payment service."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return v0

    .line 101
    :cond_5
    iget-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    invoke-virtual {p2}, Lcom/android/settings/nfc/PaymentBackend;->getDefaultPaymentApp()Landroid/content/ComponentName;

    move-result-object p2

    .line 102
    if-eqz p2, :cond_6

    invoke-virtual {p2, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 103
    const-string p2, "PaymentDefaultDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Component "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, " is already default."

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return v0

    .line 107
    :cond_6
    iput-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    .line 109
    iget-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 110
    const p2, 0x7f120956    # @string/nfc_payment_set_default_label 'Set as your preference?'

    invoke-virtual {p0, p2}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 111
    const/4 p2, 0x1

    if-nez v2, :cond_7

    .line 112
    const v2, 0x7f120954    # @string/nfc_payment_set_default 'Always use %1$s when you Tap & pay?'

    invoke-virtual {p0, v2}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 113
    new-array v3, p2, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 114
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v0

    .line 113
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 115
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 116
    goto :goto_1

    .line 117
    :cond_7
    const v3, 0x7f120955    # @string/nfc_payment_set_default_instead_of 'Always use %1$s instead of %2$s when you Tap & pay?'

    invoke-virtual {p0, v3}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 118
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v1, v1, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 119
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v0

    iget-object v0, v2, Lcom/android/settings/nfc/PaymentBackend$PaymentAppInfo;->label:Ljava/lang/CharSequence;

    .line 120
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v4, p2

    .line 118
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 121
    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 123
    :goto_1
    const v0, 0x7f121138    # @string/yes 'Yes'

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 124
    const v0, 0x7f12097d    # @string/no 'No'

    invoke-virtual {p0, v0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 125
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 126
    iput-object p0, p1, Lcom/android/internal/app/AlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setupAlert()V

    .line 129
    return p2

    .line 72
    :cond_8
    :goto_2
    const-string p1, "PaymentDefaultDialog"

    const-string p2, "Component or category are null"

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    return v0
.end method

.method private sanitizePaymentAppCaption(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 133
    const/16 v0, 0x20

    const/16 v1, 0xa

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    const/16 v1, 0xd

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 136
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x28

    if-le v0, v1, :cond_0

    .line 137
    const/4 v0, 0x0

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 140
    :cond_0
    return-object p1
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 60
    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 62
    :cond_0
    iget-object p2, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    iget-object v0, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mNewDefault:Landroid/content/ComponentName;

    invoke-virtual {p2, v0}, Lcom/android/settings/nfc/PaymentBackend;->setDefaultPaymentApp(Landroid/content/ComponentName;)V

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 64
    nop

    .line 68
    :goto_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 44
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 45
    new-instance p1, Lcom/android/settings/nfc/PaymentBackend;

    invoke-direct {p1, p0}, Lcom/android/settings/nfc/PaymentBackend;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/android/settings/nfc/PaymentDefaultDialog;->mBackend:Lcom/android/settings/nfc/PaymentBackend;

    .line 46
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 47
    const-string v0, "component"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 49
    const-string v1, "category"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 51
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->setResult(I)V

    .line 52
    invoke-direct {p0, v0, p1}, Lcom/android/settings/nfc/PaymentDefaultDialog;->buildDialog(Landroid/content/ComponentName;Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/nfc/PaymentDefaultDialog;->finish()V

    .line 56
    :cond_0
    return-void
.end method
