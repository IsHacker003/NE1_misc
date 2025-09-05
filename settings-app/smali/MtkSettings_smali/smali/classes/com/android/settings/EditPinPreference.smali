.class Lcom/android/settings/EditPinPreference;
.super Lcom/android/settingslib/CustomEditTextPreference;
.source "EditPinPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/EditPinPreference$OnPinEnteredListener;
    }
.end annotation


# instance fields
.field private mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 45
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/CustomEditTextPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    return-void
.end method


# virtual methods
.method public isDialogOpen()Z
    .locals 1

    .line 72
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 73
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 2

    .line 54
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onBindDialogView(Landroid/view/View;)V

    .line 56
    const v0, 0x1020003    # @android:id/edit

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 58
    if-eqz p1, :cond_0

    .line 59
    const/16 v0, 0x12

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 61
    const/4 v0, 0x5

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setTextAlignment(I)V

    .line 64
    const-string v0, "EditPinPreference"

    const-string v1, "onBindDialogView, disable auto fill."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setImportantForAutofill(I)V

    .line 69
    :cond_0
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/CustomEditTextPreference;->onDialogClosed(Z)V

    .line 79
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    if-eqz v0, :cond_0

    .line 80
    iget-object v0, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    invoke-interface {v0, p0, p1}, Lcom/android/settings/EditPinPreference$OnPinEnteredListener;->onPinEntered(Lcom/android/settings/EditPinPreference;Z)V

    .line 82
    :cond_0
    return-void
.end method

.method public setOnPinEnteredListener(Lcom/android/settings/EditPinPreference$OnPinEnteredListener;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/android/settings/EditPinPreference;->mPinListener:Lcom/android/settings/EditPinPreference$OnPinEnteredListener;

    .line 50
    return-void
.end method

.method public showPinDialog()V
    .locals 1

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 86
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 87
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/EditPinPreference;->onClick()V

    .line 89
    :cond_1
    return-void
.end method
