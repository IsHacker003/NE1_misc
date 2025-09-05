.class public Lcom/android/settings/display/NightDisplayActivationPreferenceController;
.super Lcom/android/settings/core/TogglePreferenceController;
.source "NightDisplayActivationPreferenceController.java"


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private final mListener:Landroid/view/View$OnClickListener;

.field private mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

.field private mTurnOffButton:Landroid/widget/Button;

.field private mTurnOnButton:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/TogglePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 38
    new-instance p2, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;

    invoke-direct {p2, p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController$1;-><init>(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    .line 48
    new-instance p2, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {p2, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 49
    new-instance p2, Lcom/android/settings/display/NightDisplayTimeFormatter;

    invoke-direct {p2, p1}, Lcom/android/settings/display/NightDisplayTimeFormatter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    .line 50
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)Lcom/android/internal/app/ColorDisplayController;
    .locals 0

    .line 31
    iget-object p0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/display/NightDisplayActivationPreferenceController;)V
    .locals 0

    .line 31
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->updateStateInternal()V

    return-void
.end method

.method private updateStateInternal()V
    .locals 7

    .line 97
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    if-eqz v0, :cond_8

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    if-nez v0, :cond_0

    goto/16 :goto_6

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    .line 102
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v1}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v1

    .line 105
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-ne v1, v2, :cond_3

    .line 106
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    .line 107
    const v4, 0x7f120963    # @string/night_display_activation_off_custom 'Turn off until %1$s'

    goto :goto_0

    .line 108
    :cond_1
    const v4, 0x7f120966    # @string/night_display_activation_on_custom 'Turn on until %1$s'

    :goto_0
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    .line 109
    if-eqz v0, :cond_2

    .line 110
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/ColorDisplayController;->getCustomStartTime()Ljava/time/LocalTime;

    move-result-object v6

    goto :goto_1

    .line 111
    :cond_2
    iget-object v6, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v6}, Lcom/android/internal/app/ColorDisplayController;->getCustomEndTime()Ljava/time/LocalTime;

    move-result-object v6

    .line 109
    :goto_1
    invoke-virtual {v5, v6}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getFormattedTimeString(Ljava/time/LocalTime;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v3

    .line 106
    invoke-virtual {v1, v4, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 112
    :cond_3
    const/4 v2, 0x2

    if-ne v1, v2, :cond_5

    .line 113
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_4

    .line 114
    const v2, 0x7f120965    # @string/night_display_activation_off_twilight 'Turn off until sunset'

    goto :goto_2

    .line 115
    :cond_4
    const v2, 0x7f120968    # @string/night_display_activation_on_twilight 'Turn on until sunrise'

    .line 113
    :goto_2
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 117
    :cond_5
    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_6

    .line 118
    const v2, 0x7f120964    # @string/night_display_activation_off_manual 'Turn off now'

    goto :goto_3

    .line 119
    :cond_6
    const v2, 0x7f120967    # @string/night_display_activation_on_manual 'Turn on now'

    .line 117
    :goto_3
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 122
    :goto_4
    const/16 v2, 0x8

    if-eqz v0, :cond_7

    .line 123
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 127
    :cond_7
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V

    .line 129
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 131
    :goto_5
    return-void

    .line 98
    :cond_8
    :goto_6
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 64
    invoke-super {p0, p1}, Lcom/android/settings/core/TogglePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 66
    nop

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    .line 66
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    .line 68
    const v0, 0x7f0a0230    # @id/night_display_turn_on_button

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOnButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    const v0, 0x7f0a022f    # @id/night_display_turn_off_button

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    .line 71
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTurnOffButton:Landroid/widget/Button;

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 72
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 54
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/app/ColorDisplayController;->isAvailable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 93
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mTimeFormatter:Lcom/android/settings/display/NightDisplayTimeFormatter;

    iget-object v1, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/display/NightDisplayTimeFormatter;->getAutoModeTimeSummary(Landroid/content/Context;Lcom/android/internal/app/ColorDisplayController;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isChecked()Z
    .locals 1

    .line 83
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->isActivated()Z

    move-result v0

    return v0
.end method

.method public isSliceable()Z
    .locals 2

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "night_display_activated"

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setChecked(Z)Z
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ColorDisplayController;->setActivated(Z)Z

    move-result p1

    return p1
.end method

.method public final updateState(Landroid/support/v7/preference/Preference;)V
    .locals 0

    .line 76
    invoke-direct {p0}, Lcom/android/settings/display/NightDisplayActivationPreferenceController;->updateStateInternal()V

    .line 77
    return-void
.end method
