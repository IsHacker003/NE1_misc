.class public Lcom/android/settings/network/NetworkScorerPickerPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NetworkScorerPickerPreferenceController.java"


# instance fields
.field private final mNetworkScoreManager:Landroid/net/NetworkScoreManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 39
    iget-object p1, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mContext:Landroid/content/Context;

    const-string p2, "network_score"

    .line 40
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/NetworkScoreManager;

    iput-object p1, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 41
    return-void
.end method


# virtual methods
.method public getAvailabilityStatus()I
    .locals 1

    .line 45
    const/4 v0, 0x0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    .line 51
    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getAllValidScorers()Ljava/util/List;

    move-result-object v0

    .line 52
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    .line 53
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 54
    if-nez v0, :cond_0

    .line 55
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 56
    return-void

    .line 59
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mNetworkScoreManager:Landroid/net/NetworkScoreManager;

    invoke-virtual {v0}, Landroid/net/NetworkScoreManager;->getActiveScorer()Landroid/net/NetworkScorerAppData;

    move-result-object v0

    .line 60
    if-nez v0, :cond_1

    .line 61
    iget-object v0, p0, Lcom/android/settings/network/NetworkScorerPickerPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120937    # @string/network_scorer_picker_none_preference 'None'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 64
    :cond_1
    invoke-virtual {v0}, Landroid/net/NetworkScorerAppData;->getRecommendationServiceLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 66
    :goto_0
    return-void
.end method
