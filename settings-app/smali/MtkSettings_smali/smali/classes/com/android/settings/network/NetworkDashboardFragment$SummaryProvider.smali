.class Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "NetworkDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/network/NetworkDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

.field private final mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 3

    .line 182
    new-instance v0, Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-direct {v0, p1}, Lcom/android/settings/network/MobileNetworkPreferenceController;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/android/settings/network/TetherPreferenceController;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/android/settings/network/TetherPreferenceController;-><init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/network/MobileNetworkPreferenceController;Lcom/android/settings/network/TetherPreferenceController;)V

    .line 185
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;Lcom/android/settings/network/MobileNetworkPreferenceController;Lcom/android/settings/network/TetherPreferenceController;)V
    .locals 0

    .line 190
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    iput-object p1, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    .line 192
    iput-object p2, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 193
    iput-object p3, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    .line 194
    iput-object p4, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    .line 195
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 7

    .line 200
    if-eqz p1, :cond_2

    .line 201
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v1, 0x7f1210bf    # @string/wifi_settings_title 'Wi‑Fi'

    .line 202
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 203
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mMobileNetworkPreferenceController:Lcom/android/settings/network/MobileNetworkPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/MobileNetworkPreferenceController;->isAvailable()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x2

    const v4, 0x7f12076f    # @string/join_many_items_middle '%1$s, %2$s'

    if-eqz v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f12092e    # @string/network_dashboard_summary_mobile 'mobile'

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 206
    iget-object v5, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v0, v6, v1

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f12092c    # @string/network_dashboard_summary_data_usage 'data usage'

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 211
    iget-object v5, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v6, v3, [Ljava/lang/Object;

    aput-object p1, v6, v2

    aput-object v0, v6, v1

    invoke-virtual {v5, v4, v6}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 213
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mTetherPreferenceController:Lcom/android/settings/network/TetherPreferenceController;

    invoke-virtual {v0}, Lcom/android/settings/network/TetherPreferenceController;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 214
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v5, 0x7f12092d    # @string/network_dashboard_summary_hotspot 'hotspot'

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 216
    iget-object v5, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    aput-object v0, v3, v1

    invoke-virtual {v5, v4, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/android/settings/network/NetworkDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v0, p0, p1}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 221
    :cond_2
    return-void
.end method
