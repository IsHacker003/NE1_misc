.class public Lcom/android/settings/network/NetworkScorerPicker;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "NetworkScorerPicker.java"

# interfaces
.implements Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;


# instance fields
.field private mNetworkScoreManager:Landroid/net/NetworkScoreManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    return-void
.end method

.method private getActiveScorerPackage()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setActiveScorer(Ljava/lang/String;)Z
    .locals 1

    .line 113
    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkScoreManager;->setActiveScorer(Ljava/lang/String;)Z

    move-result p1

    return p1

    .line 116
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private updateCheckedState(Ljava/lang/String;)V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 131
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    .line 132
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v3

    .line 133
    instance-of v4, v3, Lcom/android/settings/widget/RadioButtonPreference;

    if-eqz v4, :cond_0

    .line 134
    move-object v4, v3

    check-cast v4, Lcom/android/settings/widget/RadioButtonPreference;

    .line 135
    invoke-virtual {v3}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    invoke-virtual {v4, v3}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 131
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 138
    :cond_1
    return-void
.end method


# virtual methods
.method createNetworkScorerManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;
    .locals 1

    .line 142
    const-string v0, "network_score"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 47
    const/16 v0, 0x35d

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 73
    const v0, 0x7f150070    # @xml/network_scorer_picker_prefs 'res/xml/network_scorer_picker_prefs.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 0

    .line 58
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onAttach(Landroid/content/Context;)V

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->createNetworkScorerManager(Landroid/content/Context;)Landroid/net/NetworkScoreManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 60
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-super {p0, p1, p2}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V

    .line 53
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->updateCandidates()V

    .line 54
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 67
    const/4 p2, 0x1

    invoke-virtual {p0, p2}, Lcom/android/settings/network/NetworkScorerPicker;->setHasOptionsMenu(Z)V

    .line 68
    return-object p1
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 1

    .line 121
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 122
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->setActiveScorer(Ljava/lang/String;)Z

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-direct {p0, p1}, Lcom/android/settings/network/NetworkScorerPicker;->updateCheckedState(Ljava/lang/String;)V

    .line 126
    :cond_0
    return-void
.end method

.method public updateCandidates()V
    .locals 8

    .line 78
    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 79
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 81
    iget-object v1, p0, Lcom/android/settings/network/NetworkScorerPicker;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v1}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v1

    .line 82
    invoke-direct {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getActiveScorerPackage()Ljava/lang/String;

    move-result-object v2

    .line 84
    new-instance v3, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 85
    const v4, 0x7f120937    # @string/network_scorer_picker_none_preference 'None'

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(I)V

    .line 86
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 87
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    goto :goto_0

    .line 89
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 90
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 91
    invoke-virtual {v3, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 93
    :goto_0
    invoke-virtual {v0, v3}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 95
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    .line 96
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 97
    new-instance v5, Lcom/android/settings/widget/RadioButtonPreference;

    invoke-virtual {p0}, Lcom/android/settings/network/NetworkScorerPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;-><init>(Landroid/content/Context;)V

    .line 98
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/net/NetworkScorerAppData;

    .line 99
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getRecommendationServicePackageName()Ljava/lang/String;

    move-result-object v7

    .line 100
    invoke-virtual {v6}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 101
    invoke-virtual {v5, v7}, Lcom/android/settings/widget/RadioButtonPreference;->setKey(Ljava/lang/String;)V

    .line 102
    invoke-static {v2, v7}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/RadioButtonPreference;->setChecked(Z)V

    .line 103
    invoke-virtual {v5, p0}, Lcom/android/settings/widget/RadioButtonPreference;->setOnClickListener(Lcom/android/settings/widget/RadioButtonPreference$OnClickListener;)V

    .line 104
    invoke-virtual {v0, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 96
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 106
    :cond_1
    return-void
.end method
