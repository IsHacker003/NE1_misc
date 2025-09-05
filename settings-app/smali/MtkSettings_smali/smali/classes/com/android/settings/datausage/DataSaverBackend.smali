.class public Lcom/android/settings/datausage/DataSaverBackend;
.super Ljava/lang/Object;
.source "DataSaverBackend.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/datausage/DataSaverBackend$Listener;
    }
.end annotation


# instance fields
.field private mBlacklistInitialized:Z

.field private final mContext:Landroid/content/Context;

.field private final mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settings/datausage/DataSaverBackend$Listener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

.field private final mPolicyListener:Landroid/net/INetworkPolicyListener;

.field private final mPolicyManager:Landroid/net/NetworkPolicyManager;

.field private mUidPolicies:Landroid/util/SparseIntArray;

.field private mWhitelistInitialized:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    .line 44
    new-instance v0, Landroid/util/SparseIntArray;

    invoke-direct {v0}, Landroid/util/SparseIntArray;-><init>()V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    .line 208
    new-instance v0, Lcom/android/settings/datausage/DataSaverBackend$1;

    invoke-direct {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend$1;-><init>(Lcom/android/settings/datausage/DataSaverBackend;)V

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    .line 50
    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    .line 51
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    .line 52
    invoke-static {p1}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    .line 53
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/DataSaverBackend;Z)V
    .locals 0

    .line 35
    invoke-direct {p0, p1}, Lcom/android/settings/datausage/DataSaverBackend;->handleRestrictBackgroundChanged(Z)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/DataSaverBackend;II)V
    .locals 0

    .line 35
    invoke-direct {p0, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend;->handleUidPoliciesChanged(II)V

    return-void
.end method

.method private handleBlacklistChanged(IZ)V
    .locals 2

    .line 177
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 178
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onBlacklistStatusChanged(IZ)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 180
    :cond_0
    return-void
.end method

.method private handleRestrictBackgroundChanged(Z)V
    .locals 2

    .line 165
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 166
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    .line 165
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 168
    :cond_0
    return-void
.end method

.method private handleUidPoliciesChanged(II)V
    .locals 5

    .line 183
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 184
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    .line 186
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 187
    if-nez p2, :cond_0

    .line 188
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseIntArray;->delete(I)V

    goto :goto_0

    .line 190
    :cond_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, p2}, Landroid/util/SparseIntArray;->put(II)V

    .line 193
    :goto_0
    const/4 v2, 0x4

    const/4 v3, 0x1

    if-ne v0, v2, :cond_1

    .line 194
    move v4, v3

    goto :goto_1

    .line 193
    :cond_1
    nop

    .line 194
    move v4, v1

    :goto_1
    if-ne v0, v3, :cond_2

    .line 195
    move v0, v3

    goto :goto_2

    .line 194
    :cond_2
    nop

    .line 195
    move v0, v1

    :goto_2
    if-ne p2, v2, :cond_3

    .line 196
    move v2, v3

    goto :goto_3

    .line 195
    :cond_3
    nop

    .line 196
    move v2, v1

    :goto_3
    if-ne p2, v3, :cond_4

    .line 198
    move v1, v3

    goto :goto_4

    .line 196
    :cond_4
    nop

    .line 198
    :goto_4
    if-eq v4, v2, :cond_5

    .line 199
    invoke-direct {p0, p1, v2}, Lcom/android/settings/datausage/DataSaverBackend;->handleWhitelistChanged(IZ)V

    .line 202
    :cond_5
    if-eq v0, v1, :cond_6

    .line 203
    invoke-direct {p0, p1, v1}, Lcom/android/settings/datausage/DataSaverBackend;->handleBlacklistChanged(IZ)V

    .line 206
    :cond_6
    return-void
.end method

.method private handleWhitelistChanged(IZ)V
    .locals 2

    .line 171
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 172
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/datausage/DataSaverBackend$Listener;

    invoke-interface {v1, p1, p2}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onWhitelistStatusChanged(IZ)V

    .line 171
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 174
    :cond_0
    return-void
.end method

.method private loadBlacklist()V
    .locals 6

    .line 157
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 158
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 159
    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 158
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 161
    :cond_1
    iput-boolean v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    .line 162
    return-void
.end method

.method private loadWhitelist()V
    .locals 6

    .line 120
    iget-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    if-eqz v0, :cond_0

    return-void

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->getUidsWithPolicy(I)[I

    move-result-object v0

    array-length v2, v0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget v4, v0, v3

    .line 123
    iget-object v5, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v5, v4, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 122
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 125
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    .line 126
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 2

    .line 56
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 57
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 58
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {v0, v1}, Landroid/net/NetworkPolicyManager;->registerListener(Landroid/net/INetworkPolicyListener;)V

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/DataSaverBackend;->isDataSaverEnabled()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/android/settings/datausage/DataSaverBackend$Listener;->onDataSaverChanged(Z)V

    .line 61
    return-void
.end method

.method public getWhitelistedCount()I
    .locals 4

    .line 109
    nop

    .line 110
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 111
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2}, Landroid/util/SparseIntArray;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 112
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 113
    add-int/lit8 v1, v1, 0x1

    .line 111
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 116
    :cond_1
    return v1
.end method

.method public isBlacklisted(I)Z
    .locals 2

    .line 152
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    .line 153
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0
.end method

.method public isDataSaverEnabled()Z
    .locals 1

    .line 71
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    return v0
.end method

.method public isWhitelisted(I)Z
    .locals 2

    .line 104
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 105
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result p1

    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public refreshBlacklist()V
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_1

    .line 131
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v2

    if-ne v2, v1, :cond_0

    .line 132
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 130
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 135
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mBlacklistInitialized:Z

    .line 138
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadBlacklist()V

    .line 139
    return-void
.end method

.method public refreshWhitelist()V
    .locals 3

    .line 82
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0}, Landroid/util/SparseIntArray;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_1

    .line 83
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->valueAt(I)I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 84
    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->removeAt(I)V

    .line 82
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 87
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mWhitelistInitialized:Z

    .line 90
    invoke-direct {p0}, Lcom/android/settings/datausage/DataSaverBackend;->loadWhitelist()V

    .line 91
    return-void
.end method

.method public remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 65
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_0

    .line 66
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyListener:Landroid/net/INetworkPolicyListener;

    invoke-virtual {p1, v0}, Landroid/net/NetworkPolicyManager;->unregisterListener(Landroid/net/INetworkPolicyListener;)V

    .line 68
    :cond_0
    return-void
.end method

.method public setDataSaverEnabled(Z)V
    .locals 3

    .line 75
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object v1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    .line 77
    nop

    .line 76
    const/16 v2, 0x18a

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;II)V

    .line 78
    return-void
.end method

.method public setIsBlacklisted(ILjava/lang/String;Z)V
    .locals 2

    .line 142
    nop

    .line 143
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1, p3}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 144
    iget-object v0, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v0, p1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 145
    if-eqz p3, :cond_0

    .line 146
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v0, 0x18c

    const/4 v1, 0x0

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, p3, v0, p2, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 149
    :cond_0
    return-void
.end method

.method public setIsWhitelisted(ILjava/lang/String;Z)V
    .locals 3

    .line 94
    const/4 v0, 0x0

    if-eqz p3, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    .line 95
    :cond_0
    move v1, v0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mPolicyManager:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v2, p1, v1}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 96
    iget-object v2, p0, Lcom/android/settings/datausage/DataSaverBackend;->mUidPolicies:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 97
    if-eqz p3, :cond_1

    .line 98
    iget-object p1, p0, Lcom/android/settings/datausage/DataSaverBackend;->mMetricsFeatureProvider:Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    iget-object p3, p0, Lcom/android/settings/datausage/DataSaverBackend;->mContext:Landroid/content/Context;

    const/16 v1, 0x18b

    new-array v0, v0, [Landroid/util/Pair;

    invoke-virtual {p1, p3, v1, p2, v0}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 101
    :cond_1
    return-void
.end method
