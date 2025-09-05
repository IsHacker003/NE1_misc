.class public Lcom/android/settings/accounts/AccountPreference;
.super Landroid/support/v7/preference/Preference;
.source "AccountPreference.java"


# instance fields
.field private mShowTypeIcon:Z

.field private mStatus:I

.field private mSyncStatusIcon:Landroid/widget/ImageView;


# direct methods
.method private getSyncContentDescription(I)Ljava/lang/String;
    .locals 4

    .line 140
    const v0, 0x7f120075    # @string/accessibility_sync_error 'Sync error.'

    packed-switch p1, :pswitch_data_0

    .line 150
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 148
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120076    # @string/accessibility_sync_in_progress 'Syncing now'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 146
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 144
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120073    # @string/accessibility_sync_disabled 'Sync disabled'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 142
    :pswitch_3
    invoke-virtual {p0}, Lcom/android/settings/accounts/AccountPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120074    # @string/accessibility_sync_enabled 'Sync enabled'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getSyncStatusIcon(I)I
    .locals 4

    .line 121
    const v0, 0x7f08019a    # @drawable/ic_sync_red_holo 'res/drawable-xhdpi/ic_sync_red_holo.png'

    packed-switch p1, :pswitch_data_0

    .line 133
    nop

    .line 134
    const-string v1, "AccountPreference"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown sync status: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    :pswitch_0
    nop

    .line 131
    goto :goto_0

    .line 127
    :pswitch_1
    const v0, 0x7f080198    # @drawable/ic_sync_grey_holo 'res/drawable-xhdpi/ic_sync_grey_holo.png'

    .line 128
    goto :goto_0

    .line 124
    :pswitch_2
    const v0, 0x7f08017b    # @drawable/ic_settings_sync 'res/drawable/ic_settings_sync.xml'

    .line 125
    nop

    .line 136
    :goto_0
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 1

    .line 74
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 75
    iget-boolean v0, p0, Lcom/android/settings/accounts/AccountPreference;->mShowTypeIcon:Z

    if-nez v0, :cond_0

    .line 76
    const v0, 0x1020006    # @android:id/icon

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    .line 77
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreference;->getSyncStatusIcon(I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object p1, p0, Lcom/android/settings/accounts/AccountPreference;->mSyncStatusIcon:Landroid/widget/ImageView;

    iget v0, p0, Lcom/android/settings/accounts/AccountPreference;->mStatus:I

    invoke-direct {p0, v0}, Lcom/android/settings/accounts/AccountPreference;->getSyncContentDescription(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    :cond_0
    return-void
.end method
