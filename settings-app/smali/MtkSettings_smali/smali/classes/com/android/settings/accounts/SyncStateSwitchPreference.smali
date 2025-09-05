.class public Lcom/android/settings/accounts/SyncStateSwitchPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "SyncStateSwitchPreference.java"


# instance fields
.field private mAccount:Landroid/accounts/Account;

.field private mAuthority:Ljava/lang/String;

.field private mFailed:Z

.field private mIsActive:Z

.field private mIsPending:Z

.field private mOneTimeSyncMode:Z

.field private mPackageName:Ljava/lang/String;

.field private mUid:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 3

    .line 59
    const/4 v0, 0x0

    const/4 v1, 0x0

    const v2, 0x7f13015d    # @style/SyncSwitchPreference

    invoke-direct {p0, p1, v1, v0, v2}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 60
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 50
    const/4 v0, 0x0

    const v1, 0x7f13015d    # @style/SyncSwitchPreference

    invoke-direct {p0, p1, p2, v0, v1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 35
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 36
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 37
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 47
    iput-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 51
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 52
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 53
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 54
    iput v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    .line 55
    return-void
.end method


# virtual methods
.method public getAccount()Landroid/accounts/Account;
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    return-object v0
.end method

.method public getAuthority()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    return-object v0
.end method

.method public getPackageName()Ljava/lang/String;
    .locals 1

    .line 166
    iget-object v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()I
    .locals 1

    .line 170
    iget v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    return v0
.end method

.method public isOneTimeSyncMode()Z
    .locals 1

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 7

    .line 74
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 75
    const v0, 0x7f0a0373    # @id/sync_active

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/widget/AnimatedImageView;

    .line 77
    const v1, 0x7f0a0374    # @id/sync_failed

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 79
    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    if-eqz v2, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    move v2, v4

    goto :goto_1

    .line 79
    :cond_1
    :goto_0
    nop

    .line 80
    move v2, v3

    :goto_1
    const/16 v5, 0x8

    if-eqz v2, :cond_2

    move v6, v4

    goto :goto_2

    :cond_2
    move v6, v5

    :goto_2
    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setVisibility(I)V

    .line 81
    iget-boolean v6, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    invoke-virtual {v0, v6}, Lcom/android/settingslib/widget/AnimatedImageView;->setAnimating(Z)V

    .line 83
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 84
    move v0, v3

    goto :goto_3

    .line 83
    :cond_3
    nop

    .line 84
    move v0, v4

    :goto_3
    if-eqz v0, :cond_4

    move v0, v4

    goto :goto_4

    :cond_4
    move v0, v5

    :goto_4
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 86
    const v0, 0x1020040    # @android:id/switch_widget

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 87
    iget-boolean v1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-eqz v1, :cond_5

    .line 88
    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 95
    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f120dc6    # @string/sync_one_time_sync 'Tap to sync now\n%1$s'

    new-array v2, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 97
    goto :goto_5

    .line 98
    :cond_5
    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 100
    :goto_5
    return-void
.end method

.method protected onClick()V
    .locals 2

    .line 148
    iget-boolean v0, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    if-nez v0, :cond_1

    .line 149
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "SyncState"

    const-string v1, "ignoring monkey\'s attempt to flip sync state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 152
    :cond_0
    invoke-super {p0}, Landroid/support/v14/preference/SwitchPreference;->onClick()V

    .line 155
    :cond_1
    :goto_0
    return-void
.end method

.method public setActive(Z)V
    .locals 0

    .line 107
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsActive:Z

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 109
    return-void
.end method

.method public setFailed(Z)V
    .locals 0

    .line 125
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mFailed:Z

    .line 126
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 127
    return-void
.end method

.method public setOneTimeSyncMode(Z)V
    .locals 0

    .line 133
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mOneTimeSyncMode:Z

    .line 134
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 135
    return-void
.end method

.method public setPending(Z)V
    .locals 0

    .line 116
    iput-boolean p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mIsPending:Z

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 118
    return-void
.end method

.method public setup(Landroid/accounts/Account;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 64
    iput-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAccount:Landroid/accounts/Account;

    .line 65
    iput-object p2, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    .line 66
    iput-object p3, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mPackageName:Ljava/lang/String;

    .line 67
    iput p4, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mUid:I

    .line 68
    iget-object p1, p0, Lcom/android/settings/accounts/SyncStateSwitchPreference;->mAuthority:Ljava/lang/String;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->setVisible(Z)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/accounts/SyncStateSwitchPreference;->notifyChanged()V

    .line 70
    return-void
.end method
