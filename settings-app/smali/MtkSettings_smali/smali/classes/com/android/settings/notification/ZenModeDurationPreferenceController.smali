.class public Lcom/android/settings/notification/ZenModeDurationPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeDurationPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mFragment:Landroid/app/FragmentManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;Landroid/app/FragmentManager;)V
    .locals 1

    .line 37
    const-string v0, "zen_mode_duration_settings"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 38
    iput-object p3, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mFragment:Landroid/app/FragmentManager;

    .line 39
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    const-string v0, "zen_mode_duration_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 55
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 48
    const-string v0, "zen_mode_duration_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 43
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 83
    new-instance p1, Lcom/android/settings/notification/SettingsZenDurationDialog;

    invoke-direct {p1}, Lcom/android/settings/notification/SettingsZenDurationDialog;-><init>()V

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mFragment:Landroid/app/FragmentManager;

    const-string v1, "ZenModeDurationDialog"

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/notification/SettingsZenDurationDialog;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 84
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    .line 59
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 61
    nop

    .line 62
    invoke-virtual {p0}, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->getZenDuration()I

    move-result v0

    .line 63
    if-gez v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12117e    # @string/zen_mode_duration_summary_always_prompt 'Ask every time (unless turned on automatically)'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 65
    :cond_0
    if-nez v0, :cond_1

    .line 66
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12117f    # @string/zen_mode_duration_summary_forever 'Until you turn off (unless turned on automatically)'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 68
    :cond_1
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/16 v3, 0x3c

    if-lt v0, v3, :cond_2

    .line 69
    div-int/2addr v0, v3

    .line 70
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f100043    # @plurals/zen_mode_duration_summary_time_hours

    new-array v2, v2, [Ljava/lang/Object;

    .line 71
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v1

    .line 70
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 72
    goto :goto_0

    .line 73
    :cond_2
    iget-object v3, p0, Lcom/android/settings/notification/ZenModeDurationPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f121180    # @string/zen_mode_duration_summary_time_minutes '%d minutes (unless turned on automatically)'

    new-array v2, v2, [Ljava/lang/Object;

    .line 74
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v2, v1

    .line 73
    invoke-virtual {v3, v4, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 78
    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 79
    return-void
.end method
