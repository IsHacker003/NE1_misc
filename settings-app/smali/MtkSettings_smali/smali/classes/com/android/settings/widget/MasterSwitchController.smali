.class public Lcom/android/settings/widget/MasterSwitchController;
.super Lcom/android/settings/widget/SwitchWidgetController;
.source "MasterSwitchController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private final mPreference:Lcom/android/settings/widget/MasterSwitchPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/widget/MasterSwitchPreference;)V
    .locals 0

    .line 32
    invoke-direct {p0}, Lcom/android/settings/widget/SwitchWidgetController;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    .line 34
    return-void
.end method


# virtual methods
.method public isChecked()Z
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0}, Lcom/android/settings/widget/MasterSwitchPreference;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 67
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    if-eqz p1, :cond_0

    .line 68
    iget-object p1, p0, Lcom/android/settings/widget/MasterSwitchController;->mListener:Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-interface {p1, p2}, Lcom/android/settings/widget/SwitchWidgetController$OnSwitchChangeListener;->onSwitchToggled(Z)Z

    move-result p1

    return p1

    .line 70
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setChecked(Z)V
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setChecked(Z)V

    .line 53
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 75
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 76
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/MasterSwitchPreference;->setSwitchEnabled(Z)V

    .line 63
    return-void
.end method

.method public startListening()V
    .locals 1

    .line 42
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 43
    return-void
.end method

.method public stopListening()V
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/widget/MasterSwitchController;->mPreference:Lcom/android/settings/widget/MasterSwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/MasterSwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 48
    return-void
.end method

.method public updateTitle(Z)V
    .locals 0

    .line 38
    return-void
.end method
