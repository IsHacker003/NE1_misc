.class public Lcom/android/settings/wifi/ConnectedAccessPointPreference;
.super Lcom/android/settingslib/wifi/AccessPointPreference;
.source "ConnectedAccessPointPreference.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;
    }
.end annotation


# instance fields
.field private mIsCaptivePortal:Z

.field private mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;


# direct methods
.method public constructor <init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p5}, Lcom/android/settingslib/wifi/AccessPointPreference;-><init>(Lcom/android/settingslib/wifi/AccessPoint;Landroid/content/Context;Lcom/android/settingslib/wifi/AccessPointPreference$UserBadgeCache;IZ)V

    .line 40
    return-void
.end method


# virtual methods
.method protected getWidgetLayoutResourceId()I
    .locals 1

    .line 44
    const v0, 0x7f0d0104    # @layout/preference_widget_gear_optional_background 'res/layout/preference_widget_gear_optional_background.xml'

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 4

    .line 64
    invoke-super {p0, p1}, Lcom/android/settingslib/wifi/AccessPointPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 66
    const v0, 0x7f0a02f9    # @id/settings_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 67
    invoke-virtual {v0, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 69
    const v1, 0x7f0a02fa    # @id/settings_button_no_background

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 70
    iget-boolean v1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 71
    iget-boolean p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    :goto_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 72
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 76
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v0, 0x7f0a02f9    # @id/settings_button

    if-ne p1, v0, :cond_0

    .line 77
    iget-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    if-eqz p1, :cond_0

    .line 78
    iget-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    invoke-interface {p1, p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;->onGearClick(Lcom/android/settings/wifi/ConnectedAccessPointPreference;)V

    .line 81
    :cond_0
    return-void
.end method

.method public refresh()V
    .locals 1

    .line 49
    invoke-super {p0}, Lcom/android/settingslib/wifi/AccessPointPreference;->refresh()V

    .line 51
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setShowDivider(Z)V

    .line 52
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eqz v0, :cond_0

    .line 53
    const v0, 0x7f1210f8    # @string/wifi_tap_to_sign_in 'Tap here to sign in to network'

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->setSummary(I)V

    .line 55
    :cond_0
    return-void
.end method

.method public setCaptivePortal(Z)V
    .locals 1

    .line 84
    iget-boolean v0, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    if-eq v0, p1, :cond_0

    .line 85
    iput-boolean p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mIsCaptivePortal:Z

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->refresh()V

    .line 88
    :cond_0
    return-void
.end method

.method public setOnGearClickListener(Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;)V
    .locals 0

    .line 58
    iput-object p1, p0, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->mOnGearClickListener:Lcom/android/settings/wifi/ConnectedAccessPointPreference$OnGearClickListener;

    .line 59
    invoke-virtual {p0}, Lcom/android/settings/wifi/ConnectedAccessPointPreference;->notifyChanged()V

    .line 60
    return-void
.end method
