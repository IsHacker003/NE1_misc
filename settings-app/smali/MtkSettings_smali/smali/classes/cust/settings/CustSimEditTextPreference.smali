.class public Lcust/settings/CustSimEditTextPreference;
.super Lcom/android/settingslib/CustomEditTextPreference;
.source "CustSimEditTextPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/CustSimEditTextPreference$EditTextWatcher;,
        Lcust/settings/CustSimEditTextPreference$Validator;
    }
.end annotation


# instance fields
.field private dialog:Landroid/app/AlertDialog;

.field private final mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIsPassword:Z

.field private final mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

.field private final mTotallengh:I

.field private mValidator:Lcust/settings/CustSimEditTextPreference$Validator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 72
    invoke-direct {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;)V

    .line 48
    new-instance v0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;-><init>(Lcust/settings/CustSimEditTextPreference;Lcust/settings/CustSimEditTextPreference$1;)V

    iput-object v0, p0, Lcust/settings/CustSimEditTextPreference;->mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    .line 51
    iput-object v1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    .line 52
    const/16 v0, 0x14

    iput v0, p0, Lcust/settings/CustSimEditTextPreference;->mTotallengh:I

    .line 161
    new-instance v0, Lcust/settings/CustSimEditTextPreference$1;

    invoke-direct {v0, p0}, Lcust/settings/CustSimEditTextPreference$1;-><init>(Lcust/settings/CustSimEditTextPreference;)V

    iput-object v0, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    .line 73
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 67
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    new-instance p2, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    const/4 v0, 0x0

    invoke-direct {p2, p0, v0}, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;-><init>(Lcust/settings/CustSimEditTextPreference;Lcust/settings/CustSimEditTextPreference$1;)V

    iput-object p2, p0, Lcust/settings/CustSimEditTextPreference;->mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    .line 51
    iput-object v0, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    .line 52
    const/16 p2, 0x14

    iput p2, p0, Lcust/settings/CustSimEditTextPreference;->mTotallengh:I

    .line 161
    new-instance p2, Lcust/settings/CustSimEditTextPreference$1;

    invoke-direct {p2, p0}, Lcust/settings/CustSimEditTextPreference$1;-><init>(Lcust/settings/CustSimEditTextPreference;)V

    iput-object p2, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    new-instance p2, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;-><init>(Lcust/settings/CustSimEditTextPreference;Lcust/settings/CustSimEditTextPreference$1;)V

    iput-object p2, p0, Lcust/settings/CustSimEditTextPreference;->mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    .line 51
    iput-object p3, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    .line 52
    const/16 p2, 0x14

    iput p2, p0, Lcust/settings/CustSimEditTextPreference;->mTotallengh:I

    .line 161
    new-instance p2, Lcust/settings/CustSimEditTextPreference$1;

    invoke-direct {p2, p0}, Lcust/settings/CustSimEditTextPreference$1;-><init>(Lcust/settings/CustSimEditTextPreference;)V

    iput-object p2, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    .line 63
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    .line 64
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 48
    new-instance p2, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    const/4 p3, 0x0

    invoke-direct {p2, p0, p3}, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;-><init>(Lcust/settings/CustSimEditTextPreference;Lcust/settings/CustSimEditTextPreference$1;)V

    iput-object p2, p0, Lcust/settings/CustSimEditTextPreference;->mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    .line 51
    iput-object p3, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    .line 52
    const/16 p2, 0x14

    iput p2, p0, Lcust/settings/CustSimEditTextPreference;->mTotallengh:I

    .line 161
    new-instance p2, Lcust/settings/CustSimEditTextPreference$1;

    invoke-direct {p2, p0}, Lcust/settings/CustSimEditTextPreference$1;-><init>(Lcust/settings/CustSimEditTextPreference;)V

    iput-object p2, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    .line 58
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    .line 59
    return-void
.end method

.method static synthetic access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;
    .locals 0

    .line 41
    iget-object p0, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$102(Lcust/settings/CustSimEditTextPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;
    .locals 0

    .line 41
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method static synthetic access$200(Lcust/settings/CustSimEditTextPreference;)Landroid/content/Context;
    .locals 0

    .line 41
    iget-object p0, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcust/settings/CustSimEditTextPreference;)Landroid/os/Handler;
    .locals 0

    .line 41
    iget-object p0, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$400(Lcust/settings/CustSimEditTextPreference;)Lcust/settings/CustSimEditTextPreference$Validator;
    .locals 0

    .line 41
    iget-object p0, p0, Lcust/settings/CustSimEditTextPreference;->mValidator:Lcust/settings/CustSimEditTextPreference$Validator;

    return-object p0
.end method


# virtual methods
.method public isPassword()Z
    .locals 1

    .line 154
    iget-boolean v0, p0, Lcust/settings/CustSimEditTextPreference;->mIsPassword:Z

    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 6

    .line 105
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 106
    const v0, 0x1020003    # @android:id/edit

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 107
    const-string v0, "CustSimEditTextPreference"

    const-string v1, "onBindDialogView "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 109
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-interface {v1}, Landroid/text/Editable;->length()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setSelection(I)V

    .line 110
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 112
    :cond_0
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 114
    :goto_0
    const-string v1, "CustSimEditTextPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindDialogView +++dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_1

    .line 116
    invoke-virtual {p0}, Lcust/settings/CustSimEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    iput-object v1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    .line 119
    :cond_1
    const-string v1, "CustSimEditTextPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onBindDialogView ---dialog = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    const/16 v2, 0x14

    if-eqz v1, :cond_3

    .line 121
    const-string v1, "CustSimEditTextPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onBindDialogView editText.getText().toString() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 123
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    const v3, 0x7f0a03a1    # @id/tv_dialog

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 124
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-interface {v3}, Landroid/text/Editable;->length()I

    move-result v3

    .line 125
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    if-ne v3, v2, :cond_2

    .line 128
    iget-object v3, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f06009c    # @color/red '#f00'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 130
    :cond_2
    iget-object v3, p0, Lcust/settings/CustSimEditTextPreference;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060027    # @color/black '#000'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 133
    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 137
    :cond_3
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->mValidator:Lcust/settings/CustSimEditTextPreference$Validator;

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 138
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference;->mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 139
    const/4 v1, 0x1

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v3, Landroid/text/InputFilter$LengthFilter;

    invoke-direct {v3, v2}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v3, v1, v0

    invoke-virtual {p1, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 141
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference;->mTextWatcher:Lcust/settings/CustSimEditTextPreference$EditTextWatcher;

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 143
    :cond_4
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mValidator:Lcust/settings/CustSimEditTextPreference$Validator;

    if-eqz p1, :cond_5

    .line 144
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mValidator:Lcust/settings/CustSimEditTextPreference$Validator;

    invoke-interface {p1}, Lcust/settings/CustSimEditTextPreference$Validator;->setMessage()V

    .line 146
    :cond_5
    return-void
.end method

.method protected onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 84
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onClick which = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const-string p2, "CustSimEditTextPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onClick dialog = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 92
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 3

    .line 95
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDialogClosed positiveResult = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 97
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->dismiss()V

    .line 98
    const/4 p1, 0x0

    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->dialog:Landroid/app/AlertDialog;

    .line 100
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 79
    const-string p1, "CustSimEditTextPreference"

    const-string p2, "onPrepareDialogBuilder "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    return-void
.end method

.method public setValidator(Lcust/settings/CustSimEditTextPreference$Validator;)V
    .locals 0

    .line 158
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference;->mValidator:Lcust/settings/CustSimEditTextPreference$Validator;

    .line 159
    return-void
.end method
