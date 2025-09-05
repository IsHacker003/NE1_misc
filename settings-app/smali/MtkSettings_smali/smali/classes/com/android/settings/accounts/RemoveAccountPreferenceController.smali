.class public Lcom/android/settings/accounts/RemoveAccountPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "RemoveAccountPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$RemoveAccountFailureDialog;,
        Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;
    }
.end annotation


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mParentFragment:Landroid/app/Fragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 0

    .line 60
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    .line 62
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 67
    const-string v0, "remove_account"

    .line 68
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 69
    const v0, 0x7f0a008a    # @id/button

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 70
    invoke-virtual {p1, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 71
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 80
    const-string v0, "remove_account"

    return-object v0
.end method

.method public init(Landroid/accounts/Account;Landroid/os/UserHandle;)V
    .locals 0

    .line 98
    iput-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    .line 99
    iput-object p2, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 100
    return-void
.end method

.method public isAvailable()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 85
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    if-eqz p1, :cond_0

    .line 86
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "no_modify_accounts"

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    .line 87
    invoke-virtual {v1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 86
    invoke-static {p1, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 88
    if-eqz p1, :cond_0

    .line 89
    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 90
    return-void

    .line 94
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mParentFragment:Landroid/app/Fragment;

    iget-object v0, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mAccount:Landroid/accounts/Account;

    iget-object v1, p0, Lcom/android/settings/accounts/RemoveAccountPreferenceController;->mUserHandle:Landroid/os/UserHandle;

    invoke-static {p1, v0, v1}, Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;->show(Landroid/app/Fragment;Landroid/accounts/Account;Landroid/os/UserHandle;)Lcom/android/settings/accounts/RemoveAccountPreferenceController$ConfirmRemoveAccountDialog;

    .line 95
    return-void
.end method
