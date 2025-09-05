.class public Lcom/android/settings/accounts/ProviderPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "ProviderPreference.java"


# instance fields
.field private mAccountType:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 37
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderPreference;->setIconSize(I)V

    .line 38
    iput-object p2, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    .line 39
    invoke-virtual {p0, p3}, Lcom/android/settings/accounts/ProviderPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 40
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/android/settings/accounts/ProviderPreference;->setPersistent(Z)V

    .line 41
    invoke-virtual {p0, p4}, Lcom/android/settings/accounts/ProviderPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 42
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderPreference;->useAdminDisabledSummary(Z)V

    .line 43
    return-void
.end method


# virtual methods
.method public checkAccountManagementAndSetDisabled(I)V
    .locals 2

    .line 50
    nop

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/accounts/ProviderPreference;->getAccountType()Ljava/lang/String;

    move-result-object v1

    .line 50
    invoke-static {v0, v1, p1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccountManagementDisabled(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 52
    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/ProviderPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 53
    return-void
.end method

.method public getAccountType()Ljava/lang/String;
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/accounts/ProviderPreference;->mAccountType:Ljava/lang/String;

    return-object v0
.end method
