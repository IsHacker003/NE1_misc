.class public Lcom/android/settings/accounts/AccountTypePreference;
.super Lcom/android/settings/widget/AppPreference;
.source "AccountTypePreference.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field private final mFragment:Ljava/lang/String;

.field private final mFragmentArguments:Landroid/os/Bundle;

.field private final mMetricsCategory:I

.field private final mSummary:Ljava/lang/CharSequence;

.field private final mTitle:Ljava/lang/CharSequence;

.field private final mTitleResId:I

.field private final mTitleResPackageName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/accounts/Account;Ljava/lang/String;ILjava/lang/CharSequence;Ljava/lang/String;Landroid/os/Bundle;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 77
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 78
    iget-object p1, p3, Landroid/accounts/Account;->name:Ljava/lang/String;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    .line 79
    iput-object p4, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    .line 80
    iput p5, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    .line 81
    iput-object p6, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    .line 82
    iput-object p7, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    .line 83
    iput-object p8, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 84
    iput p2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    .line 86
    invoke-static {p3}, Lcom/android/settings/accounts/AccountTypePreference;->buildKey(Landroid/accounts/Account;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountTypePreference;->setKey(Ljava/lang/String;)V

    .line 87
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/AccountTypePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 88
    invoke-virtual {p0, p6}, Lcom/android/settings/accounts/AccountTypePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 89
    invoke-virtual {p0, p9}, Lcom/android/settings/accounts/AccountTypePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 91
    invoke-virtual {p0, p0}, Lcom/android/settings/accounts/AccountTypePreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 92
    return-void
.end method

.method public static buildKey(Landroid/accounts/Account;)Ljava/lang/String;
    .locals 0

    .line 122
    invoke-virtual {p0}, Landroid/accounts/Account;->hashCode()I

    move-result p0

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .line 130
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 96
    iget-object p1, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 97
    nop

    .line 98
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    .line 99
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.USER"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 100
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 101
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 100
    invoke-static {v2, p1, v3}, Lcom/android/settings/Utils;->startQuietModeDialogIfNecessary(Landroid/content/Context;Landroid/os/UserManager;I)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 102
    return v1

    .line 103
    :cond_0
    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 104
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    .line 103
    invoke-static {p1, v0}, Lcom/android/settings/Utils;->unlockWorkProfileIfNecessary(Landroid/content/Context;I)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 105
    return v1

    .line 107
    :cond_1
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountTypePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragment:Ljava/lang/String;

    .line 108
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mFragmentArguments:Landroid/os/Bundle;

    .line 109
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResPackageName:Ljava/lang/String;

    iget v2, p0, Lcom/android/settings/accounts/AccountTypePreference;->mTitleResId:I

    .line 110
    invoke-virtual {p1, v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/String;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/accounts/AccountTypePreference;->mMetricsCategory:I

    .line 111
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 112
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 113
    return v1

    .line 115
    :cond_2
    const/4 p1, 0x0

    return p1
.end method
