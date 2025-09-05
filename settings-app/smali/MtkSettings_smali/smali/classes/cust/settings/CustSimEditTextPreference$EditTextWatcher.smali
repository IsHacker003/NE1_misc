.class Lcust/settings/CustSimEditTextPreference$EditTextWatcher;
.super Ljava/lang/Object;
.source "CustSimEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcust/settings/CustSimEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcust/settings/CustSimEditTextPreference;


# direct methods
.method private constructor <init>(Lcust/settings/CustSimEditTextPreference;)V
    .locals 0

    .line 195
    iput-object p1, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcust/settings/CustSimEditTextPreference;Lcust/settings/CustSimEditTextPreference$1;)V
    .locals 0

    .line 195
    invoke-direct {p0, p1}, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;-><init>(Lcust/settings/CustSimEditTextPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 5

    .line 208
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditTextWatcher afterTextChanged s = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {p1}, Lcust/settings/CustSimEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    .line 210
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditTextWatcher mValidator = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$400(Lcust/settings/CustSimEditTextPreference;)Lcust/settings/CustSimEditTextPreference$Validator;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditTextWatcher editText = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditTextWatcher +++dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$400(Lcust/settings/CustSimEditTextPreference;)Lcust/settings/CustSimEditTextPreference$Validator;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 214
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-virtual {v1}, Lcust/settings/CustSimEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    invoke-static {v0, v1}, Lcust/settings/CustSimEditTextPreference;->access$102(Lcust/settings/CustSimEditTextPreference;Landroid/app/AlertDialog;)Landroid/app/AlertDialog;

    .line 215
    const-string v0, "CustSimEditTextPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EditTextWatcher ---dialog = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-object v0, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v0}, Lcust/settings/CustSimEditTextPreference;->access$400(Lcust/settings/CustSimEditTextPreference;)Lcust/settings/CustSimEditTextPreference$Validator;

    move-result-object v0

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcust/settings/CustSimEditTextPreference$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result v0

    .line 217
    iget-object v1, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v1}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v1

    const v2, 0x102000b    # @android:id/message

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 218
    if-eqz v1, :cond_0

    .line 219
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    .line 220
    const-string v2, "CustSimEditTextPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EditTextWatcher messageStr = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    :cond_0
    const-string v1, "CustSimEditTextPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EditTextWatcher editText.getText().toString() = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    .line 224
    const-string v2, "CustSimEditTextPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EditTextWatcher mLength = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    iget-object v2, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {v2}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object v2

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v2, p1}, Landroid/app/AlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 227
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {p1}, Lcust/settings/CustSimEditTextPreference;->access$300(Lcust/settings/CustSimEditTextPreference;)Landroid/os/Handler;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    iget-object p1, p0, Lcust/settings/CustSimEditTextPreference$EditTextWatcher;->this$0:Lcust/settings/CustSimEditTextPreference;

    invoke-static {p1}, Lcust/settings/CustSimEditTextPreference;->access$100(Lcust/settings/CustSimEditTextPreference;)Landroid/app/AlertDialog;

    move-result-object p1

    const/4 v1, -0x1

    invoke-virtual {p1, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 231
    :cond_1
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 203
    const-string p2, "CustSimEditTextPreference"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EditTextWatcher beforeTextChanged s = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 198
    const-string p2, "CustSimEditTextPreference"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EditTextWatcher onTextChanged s = "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    return-void
.end method
