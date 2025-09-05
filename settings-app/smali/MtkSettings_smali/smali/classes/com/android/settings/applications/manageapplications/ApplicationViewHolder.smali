.class public Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ApplicationViewHolder.java"


# instance fields
.field private final mAppIcon:Landroid/widget/ImageView;

.field private final mAppName:Landroid/widget/TextView;

.field final mDisabled:Landroid/widget/TextView;

.field private final mKeepStableHeight:Z

.field final mSummary:Landroid/widget/TextView;

.field mSummaryContainer:Landroid/view/View;

.field final mSwitch:Landroid/widget/Switch;

.field final mWidgetContainer:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 1

    .line 57
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 58
    const v0, 0x1020016    # @android:id/title

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    .line 59
    const v0, 0x1020006    # @android:id/icon

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 60
    const v0, 0x7f0a034d    # @id/summary_container

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryContainer:Landroid/view/View;

    .line 61
    const v0, 0x1020010    # @android:id/summary

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    .line 62
    const v0, 0x7f0a0059    # @id/appendix

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    .line 63
    iput-boolean p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mKeepStableHeight:Z

    .line 64
    const p2, 0x7f0a036e    # @id/switchWidget

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Switch;

    iput-object p2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 65
    const p2, 0x1020018    # @android:id/widget_frame

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    .line 66
    return-void
.end method

.method static newView(Landroid/view/ViewGroup;Z)Landroid/view/View;
    .locals 5

    .line 73
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 74
    const/4 v1, 0x0

    const v2, 0x7f0d00df    # @layout/preference_app 'res/layout/preference_app.xml'

    invoke-virtual {v0, v2, p0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 75
    if-eqz p1, :cond_0

    .line 76
    const p1, 0x1020018    # @android:id/widget_frame

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 77
    if-eqz p1, :cond_0

    .line 78
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0d0106    # @layout/preference_widget_master_switch 'res/layout/preference_widget_master_switch.xml'

    .line 79
    const/4 v4, 0x1

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 81
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p0

    const p1, 0x7f0d00fc    # @layout/preference_two_target_divider 'res/layout/preference_two_target_divider.xml'

    invoke-virtual {p0, p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p0

    .line 84
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result p1

    sub-int/2addr p1, v4

    invoke-virtual {v0, p0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 87
    :cond_0
    return-object v0
.end method


# virtual methods
.method setEnabled(Z)V
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    .line 102
    return-void
.end method

.method setIcon(I)V
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 113
    return-void
.end method

.method setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 116
    if-nez p1, :cond_0

    .line 117
    return-void

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppIcon:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 120
    return-void
.end method

.method setSummary(I)V
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 97
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryContainer()V

    .line 98
    return-void
.end method

.method setSummary(Ljava/lang/CharSequence;)V
    .locals 1

    .line 91
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryContainer()V

    .line 93
    return-void
.end method

.method setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .line 105
    if-nez p1, :cond_0

    .line 106
    return-void

    .line 108
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mAppName:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 109
    return-void
.end method

.method updateDisableView(Landroid/content/pm/ApplicationInfo;)V
    .locals 2

    .line 123
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 125
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const v0, 0x7f120991    # @string/not_installed 'Not installed for this user'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    goto :goto_1

    .line 126
    :cond_0
    iget-boolean v0, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v0, :cond_2

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 128
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 129
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    const v0, 0x7f12054d    # @string/disabled 'Disabled'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 133
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->updateSummaryContainer()V

    .line 134
    return-void
.end method

.method updateSizeText(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;Ljava/lang/CharSequence;I)V
    .locals 4

    .line 147
    sget-boolean v0, Lcom/android/settings/applications/manageapplications/ManageApplications;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 148
    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateSizeText of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    iget-object v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 152
    packed-switch p3, :pswitch_data_0

    .line 160
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->sizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 161
    goto :goto_0

    .line 157
    :pswitch_0
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->externalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 158
    goto :goto_0

    .line 154
    :pswitch_1
    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->internalSizeStr:Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 155
    goto :goto_0

    .line 163
    :cond_1
    iget-wide v0, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->size:J

    const-wide/16 v2, -0x2

    cmp-long p1, v0, v2

    if-nez p1, :cond_2

    .line 164
    invoke-virtual {p0, p2}, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->setSummary(Ljava/lang/CharSequence;)V

    .line 166
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method updateSummaryContainer()V
    .locals 3

    .line 137
    iget-boolean v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mKeepStableHeight:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryContainer:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 139
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mDisabled:Landroid/widget/TextView;

    .line 142
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummary:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 143
    :cond_1
    move v0, v1

    goto :goto_1

    .line 142
    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 143
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSummaryContainer:Landroid/view/View;

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    const/16 v1, 0x8

    :goto_2
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 144
    return-void
.end method

.method updateSwitch(Landroid/view/View$OnClickListener;ZZ)V
    .locals 1

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mWidgetContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 171
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 172
    iget-object p1, p0, Lcom/android/settings/applications/manageapplications/ApplicationViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 174
    :cond_0
    return-void
.end method
