.class public Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "BrandedAccountPreferenceController.java"


# static fields
.field private static final KEY_PREFERENCE_TITLE:Ljava/lang/String; = "branded_account"


# instance fields
.field private final mAccounts:[Landroid/accounts/Account;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    const-string v0, "branded_account"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    .line 40
    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object p1

    .line 41
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-interface {p1, v0}, Lcom/android/settings/accounts/AccountFeatureProvider;->getAccounts(Landroid/content/Context;)[Landroid/accounts/Account;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    .line 42
    return-void
.end method

.method public static synthetic lambda$displayPreference$0(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 65
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 66
    const-string v0, "account"

    iget-object v1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    const-string v0, "user_handle"

    .line 69
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v1

    .line 68
    invoke-virtual {p2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 70
    const-string v0, "account_type"

    .line 71
    invoke-interface {p1}, Lcom/android/settings/accounts/AccountFeatureProvider;->getAccountType()Ljava/lang/String;

    move-result-object p1

    .line 70
    invoke-virtual {p2, v0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 73
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/accounts/AccountDetailDashboardFragment;

    .line 74
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 75
    const v0, 0x7f12009e    # @string/account_sync_title 'Account sync'

    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 76
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 77
    const/16 p2, 0x28

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 78
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 79
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 3

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 55
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 56
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getAccountFeatureProvider()Lcom/android/settings/accounts/AccountFeatureProvider;

    move-result-object v0

    .line 57
    const-string v1, "branded_account"

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    .line 58
    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 59
    :cond_0
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 60
    return-void

    .line 63
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    const/4 v2, 0x0

    aget-object p1, p1, v2

    iget-object p1, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 64
    new-instance p1, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;

    invoke-direct {p1, p0, v0}, Lcom/android/settings/deviceinfo/-$$Lambda$BrandedAccountPreferenceController$rFwl4JPEzufcbKCkFgByL5d4NMI;-><init>(Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;Lcom/android/settings/accounts/AccountFeatureProvider;)V

    invoke-virtual {v1, p1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 81
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 46
    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/BrandedAccountPreferenceController;->mAccounts:[Landroid/accounts/Account;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 47
    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    const/4 v0, 0x3

    return v0
.end method
