.class public Lcom/android/settings/display/NightDisplayAutoModePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "NightDisplayAutoModePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mController:Lcom/android/internal/app/ColorDisplayController;

.field private mPreference:Landroid/support/v7/preference/DropDownPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 35
    new-instance p2, Lcom/android/internal/app/ColorDisplayController;

    invoke-direct {p2, p1}, Lcom/android/internal/app/ColorDisplayController;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    .line 36
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 6

    .line 45
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 47
    invoke-virtual {p0}, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/DropDownPreference;

    iput-object p1, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    .line 49
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    .line 50
    const v3, 0x7f12096a    # @string/night_display_auto_mode_never 'None'

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    .line 51
    const v4, 0x7f120969    # @string/night_display_auto_mode_custom 'Turns on at custom time'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

    .line 52
    const v5, 0x7f12096c    # @string/night_display_auto_mode_twilight 'Turns on from sunset to sunrise'

    invoke-virtual {v2, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    .line 49
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/DropDownPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 54
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    new-array v0, v0, [Ljava/lang/CharSequence;

    .line 55
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v3

    .line 56
    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    .line 57
    invoke-static {v5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v5

    .line 54
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 59
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mContext:Landroid/content/Context;

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

.method public final onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 0

    .line 68
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/internal/app/ColorDisplayController;->setAutoMode(I)Z

    move-result p1

    return p1
.end method

.method public final updateState(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 63
    iget-object p1, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mPreference:Landroid/support/v7/preference/DropDownPreference;

    iget-object v0, p0, Lcom/android/settings/display/NightDisplayAutoModePreferenceController;->mController:Lcom/android/internal/app/ColorDisplayController;

    invoke-virtual {v0}, Lcom/android/internal/app/ColorDisplayController;->getAutoMode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/DropDownPreference;->setValue(Ljava/lang/String;)V

    .line 64
    return-void
.end method
