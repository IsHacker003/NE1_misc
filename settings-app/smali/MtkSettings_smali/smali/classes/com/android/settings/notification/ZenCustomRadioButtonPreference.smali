.class public Lcom/android/settings/notification/ZenCustomRadioButtonPreference;
.super Lcom/android/settingslib/TwoTargetPreference;
.source "ZenCustomRadioButtonPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;,
        Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mButton:Landroid/widget/RadioButton;

.field private mChecked:Z

.field private mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

.field private mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;)V

    .line 58
    const p1, 0x7f0d00fe    # @layout/preference_two_target_radio 'res/layout/preference_two_target_radio.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    const p1, 0x7f0d00fe    # @layout/preference_two_target_radio 'res/layout/preference_two_target_radio.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    const p1, 0x7f0d00fe    # @layout/preference_two_target_radio 'res/layout/preference_two_target_radio.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/settingslib/TwoTargetPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 43
    const p1, 0x7f0d00fe    # @layout/preference_two_target_radio 'res/layout/preference_two_target_radio.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->setLayoutResource(I)V

    .line 44
    return-void
.end method


# virtual methods
.method protected getSecondTargetResId()I
    .locals 1

    .line 63
    const v0, 0x7f0d0102    # @layout/preference_widget_gear 'res/layout/preference_widget_gear.xml'

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 78
    invoke-super {p0, p1}, Lcom/android/settingslib/TwoTargetPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 79
    const v0, 0x7f0a00b8    # @id/checkbox_frame

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 80
    if-eqz v0, :cond_0

    .line 81
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    :cond_0
    const v0, 0x1020001    # @android:id/checkbox

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioButton;

    iput-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    iget-boolean v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    invoke-virtual {v0, v1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 88
    :cond_1
    const v0, 0x1020018    # @android:id/widget_frame

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 89
    const v1, 0x7f0a03a3    # @id/two_target_divider

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 90
    iget-object v1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 92
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 93
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 95
    :cond_2
    const/16 v1, 0x8

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 96
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 97
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 99
    :goto_0
    return-void
.end method

.method public onClick()V
    .locals 1

    .line 118
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz v0, :cond_0

    .line 119
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-interface {v0, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    .line 121
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2

    .line 125
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x1020018    # @android:id/widget_frame

    if-ne v0, v1, :cond_0

    .line 126
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    if-eqz p1, :cond_1

    .line 127
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a00b8    # @id/checkbox_frame

    if-ne p1, v0, :cond_1

    .line 130
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    if-eqz p1, :cond_1

    .line 131
    iget-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    invoke-interface {p1, p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;->onRadioButtonClick(Lcom/android/settings/notification/ZenCustomRadioButtonPreference;)V

    .line 134
    :cond_1
    :goto_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1

    .line 106
    iput-boolean p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mChecked:Z

    .line 107
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    if-eqz v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mButton:Landroid/widget/RadioButton;

    invoke-virtual {v0, p1}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 110
    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;)V
    .locals 0

    .line 67
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnGearClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnGearClickListener;

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    .line 69
    return-void
.end method

.method public setOnRadioButtonClickListener(Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;)V
    .locals 0

    .line 72
    iput-object p1, p0, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->mOnRadioButtonClickListener:Lcom/android/settings/notification/ZenCustomRadioButtonPreference$OnRadioButtonClickListener;

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenCustomRadioButtonPreference;->notifyChanged()V

    .line 74
    return-void
.end method
