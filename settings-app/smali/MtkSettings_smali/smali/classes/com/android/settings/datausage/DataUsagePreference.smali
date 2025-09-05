.class public Lcom/android/settings/datausage/DataUsagePreference;
.super Landroid/support/v7/preference/Preference;
.source "DataUsagePreference.java"

# interfaces
.implements Lcom/android/settings/datausage/TemplatePreference;


# instance fields
.field private mSubId:I

.field private mTemplate:Landroid/net/NetworkTemplate;

.field private mTitleRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10101e1    # @android:attr/title

    aput v2, v0, v1

    .line 43
    const v2, 0x7f040129    # @attr/preferenceStyle

    const v3, 0x101008e    # @android:attr/preferenceStyle

    invoke-static {p1, v2, v3}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v2

    .line 41
    invoke-virtual {p1, p2, v0, v2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 46
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    .line 47
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 48
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 3

    .line 77
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 78
    const-string v1, "network_template"

    iget-object v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 79
    const-string v1, "sub_id"

    iget v2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 80
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 81
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const-class v1, Lcom/android/settings/datausage/DataUsageList;

    .line 82
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 83
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "settings_data_usage_v2"

    invoke-static {v1, v2}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 85
    iget-object v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {v1}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    const v1, 0x7f120113    # @string/app_cellular_data_usage 'App data usage'

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 88
    :cond_0
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 91
    :cond_1
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    if-lez v1, :cond_2

    .line 92
    iget v1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    goto :goto_0

    .line 94
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    .line 97
    :goto_0
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->toIntent()Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public setTemplate(Landroid/net/NetworkTemplate;ILcom/android/settings/datausage/TemplatePreference$NetworkServices;)V
    .locals 6

    .line 53
    iput-object p1, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    .line 54
    iput p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mSubId:I

    .line 55
    new-instance p1, Lcom/android/settingslib/net/DataUsageController;

    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settingslib/net/DataUsageController;-><init>(Landroid/content/Context;)V

    .line 56
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p1, p2}, Lcom/android/settingslib/net/DataUsageController;->getDataUsageInfo(Landroid/net/NetworkTemplate;)Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;

    move-result-object p1

    .line 57
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "settings_data_usage_v2"

    invoke-static {p2, p3}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x2

    const v2, 0x7f1204c0    # @string/data_usage_template '%1$s used %2$s'

    if-eqz p2, :cond_1

    .line 58
    iget-object p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTemplate:Landroid/net/NetworkTemplate;

    invoke-virtual {p2}, Landroid/net/NetworkTemplate;->isMatchRuleMobile()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 59
    const p1, 0x7f120113    # @string/app_cellular_data_usage 'App data usage'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    goto :goto_0

    .line 61
    :cond_0
    iget p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {p0, p2}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object p1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object p1, v1, p3

    .line 62
    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 67
    :cond_1
    iget p2, p0, Lcom/android/settings/datausage/DataUsagePreference;->mTitleRes:I

    invoke-virtual {p0, p2}, Lcom/android/settings/datausage/DataUsagePreference;->setTitle(I)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object p2

    new-array v1, v1, [Ljava/lang/Object;

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-wide v4, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->usageLevel:J

    invoke-static {v3, v4, v5}, Lcom/android/settings/datausage/DataUsageUtils;->formatDataUsage(Landroid/content/Context;J)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v1, v0

    iget-object p1, p1, Lcom/android/settingslib/net/DataUsageController$DataUsageInfo;->period:Ljava/lang/String;

    aput-object p1, v1, p3

    .line 68
    invoke-virtual {p2, v2, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 72
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataUsagePreference;->getIntent()Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/DataUsagePreference;->setIntent(Landroid/content/Intent;)V

    .line 73
    return-void
.end method
