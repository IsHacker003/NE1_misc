.class Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;
.super Ljava/lang/Object;
.source "AccountDashboardFragment.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/accounts/AccountDashboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    .line 88
    iput-object p2, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 89
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 10

    .line 93
    if-eqz p1, :cond_5

    .line 94
    new-instance p1, Lcom/android/settingslib/accounts/AuthenticatorHelper;

    iget-object v0, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    .line 95
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p1, v0, v1, v2}, Lcom/android/settingslib/accounts/AuthenticatorHelper;-><init>(Landroid/content/Context;Landroid/os/UserHandle;Lcom/android/settingslib/accounts/AuthenticatorHelper$OnAccountsUpdateListener;)V

    .line 96
    invoke-virtual {p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getEnabledAccountTypes()[Ljava/lang/String;

    move-result-object v0

    .line 98
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v1

    .line 100
    nop

    .line 101
    if-eqz v0, :cond_3

    array-length v3, v0

    if-nez v3, :cond_0

    goto :goto_3

    .line 105
    :cond_0
    const/4 v3, 0x3

    array-length v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 107
    const/4 v4, 0x0

    move-object v5, v2

    move v2, v4

    :goto_0
    array-length v6, v0

    if-ge v2, v6, :cond_4

    if-lez v3, :cond_4

    .line 108
    iget-object v6, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    aget-object v7, v0, v2

    invoke-virtual {p1, v6, v7}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getLabelForType(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 109
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 110
    goto :goto_2

    .line 112
    :cond_1
    if-nez v5, :cond_2

    .line 113
    invoke-virtual {v1, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_1

    .line 115
    :cond_2
    iget-object v7, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v8, 0x7f12076f    # @string/join_many_items_middle '%1$s, %2$s'

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v5, v9, v4

    .line 116
    invoke-virtual {v1, v6}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v9, v6

    .line 115
    invoke-virtual {v7, v8, v9}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 118
    :goto_1
    add-int/lit8 v3, v3, -0x1

    .line 107
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 102
    :cond_3
    :goto_3
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mContext:Landroid/content/Context;

    const v0, 0x7f120092    # @string/account_dashboard_default_summary 'No accounts added'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 121
    :cond_4
    iget-object p1, p0, Lcom/android/settings/accounts/AccountDashboardFragment$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {p1, p0, v5}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 123
    :cond_5
    return-void
.end method
