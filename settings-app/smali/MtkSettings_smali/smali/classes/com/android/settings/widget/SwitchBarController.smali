.class public Lcom/android/settings/widget/SwitchBarController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "SwitchBarController.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# instance fields
.field private final mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/SwitchBar;)V
    .locals 0

    .line 30
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 32
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 76
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBarController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p1, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/settings/widget/SwitchBarController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    invoke-interface {p1, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    .line 79
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 62
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 84
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 72
    return-void
.end method

.method public setupView()V
    .locals 1

    .line 36
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 37
    return-void
.end method

.method public startListening()V
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 52
    return-void
.end method

.method public stopListening()V
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 57
    return-void
.end method

.method public teardownView()V
    .locals 1

    .line 41
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 42
    return-void
.end method

.method public updateTitle(Z)V
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/widget/SwitchBarController;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 47
    return-void
.end method
