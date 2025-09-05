.class Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;
.super Ljava/lang/Object;
.source "ValidatedEditTextPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/widget/ValidatedEditTextPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EditTextWatcher"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;


# direct methods
.method private constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V
    .locals 0

    .line 117
    iput-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/widget/ValidatedEditTextPreference;Lcom/android/settings/widget/ValidatedEditTextPreference$1;)V
    .locals 0

    .line 117
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;-><init>(Lcom/android/settings/widget/ValidatedEditTextPreference;)V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 2

    .line 128
    iget-object p1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {p1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getEditText()Landroid/widget/EditText;

    move-result-object p1

    .line 129
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/ValidatedEditTextPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Landroid/app/AlertDialog;

    .line 131
    iget-object v1, p0, Lcom/android/settings/widget/ValidatedEditTextPreference$EditTextWatcher;->this$0:Lcom/android/settings/widget/ValidatedEditTextPreference;

    invoke-static {v1}, Lcom/android/settings/widget/ValidatedEditTextPreference;->access$100(Lcom/android/settings/widget/ValidatedEditTextPreference;)Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Lcom/android/settings/widget/ValidatedEditTextPreference$Validator;->isTextValid(Ljava/lang/String;)Z

    move-result p1

    .line 132
    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 134
    :cond_0
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 124
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 120
    return-void
.end method
