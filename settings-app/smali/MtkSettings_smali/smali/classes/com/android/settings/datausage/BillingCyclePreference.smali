.class public Lcom/android/settings/datausage/BillingCyclePreference;
.super Landroid/support/v7/preference/Preference;
.source "BillingCyclePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private final mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

.field private mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 97
    new-instance p1, Lcom/android/settings/datausage/BillingCyclePreference$1;

    invoke-direct {p1, p0}, Lcom/android/settings/datausage/BillingCyclePreference$1;-><init>(Lcom/android/settings/datausage/BillingCyclePreference;)V

    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    .line 43
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/BillingCyclePreference;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->updateEnabled()V

    return-void
.end method

.method private updateEnabled()V
    .locals 3

    .line 76
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mNetworkService:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    .line 77
    invoke-virtual {v1, v2}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    iget-object v1, v1, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mUserManager:Landroid/os/UserManager;

    .line 78
    invoke-virtual {v1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    .line 76
    :cond_0
    move v1, v0

    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 81
    goto :goto_1

    .line 79
    :catch_0
    move-exception v1

    .line 80
    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/BillingCyclePreference;->setEnabled(Z)V

    .line 82
    :goto_1
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 87
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    const-string v1, "sub_id"

    iget v2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 89
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/datausage/BillingCycleSettings;

    .line 90
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 91
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 92
    const v1, 0x7f120254    # @string/billing_cycle 'Data warning & limit'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 93
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 94
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    .line 89
    return-object v0
.end method

.method public onAttached()V
    .locals 4

    .line 47
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onAttached()V

    .line 48
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 49
    return-void
.end method

.method public onDetached()V
    .locals 4

    .line 53
    iget-object v0, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mListener:Lcom/android/settings/datausage/CellDataPreference$DataStateListener;

    iget v1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/settings/datausage/CellDataPreference$DataStateListener;->setListener(ZILandroid/content/Context;)V

    .line 54
    invoke-super {p0}, Landroid/support/v7/preference/Preference;->onDetached()V

    .line 55
    return-void
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 2

    .line 60
    iput-object p1, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 61
    iput p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mSubId:I

    .line 62
    iput-object p3, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mServices:Lcom/android/settings/datausage/TemplatePreference$NetworkServices;

    .line 63
    iget-object p1, p3, Lcom/android/settings/datausage/TemplatePreference$NetworkServices;->mPolicyEditor:Lcom/android/settingslib/NetworkPolicyEditor;

    iget-object p2, p0, Lcom/android/settings/datausage/BillingCyclePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/NetworkPolicyEditor;->getPolicyCycleDay(Landroid/net/NetworkTemplate;)I

    move-result p1

    .line 64
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "settings_data_usage_v2"

    invoke-static {p2, p3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x0

    if-eqz p2, :cond_0

    .line 65
    invoke-virtual {p0, p3}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 66
    :cond_0
    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const p3, 0x7f120255    # @string/billing_cycle_fragment_summary 'Monthly on day %1$s'

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v0, v1

    invoke-virtual {p2, p3, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 69
    :cond_1
    invoke-virtual {p0, p3}, Lcom/android/settings/datausage/BillingCyclePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 71
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/BillingCyclePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/BillingCyclePreference;->setIntent(Landroid/content/Intent;)V

    .line 72
    return-void
.end method
