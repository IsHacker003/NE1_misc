.class public Lcom/android/settings/display/SystemUiThemePreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "SystemUiThemePreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 43
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 2

    .line 53
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 54
    invoke-virtual {p0}, Lcom/android/settings/display/SystemUiThemePreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    .line 55
    iget-object p1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "theme_mode"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 56
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 57
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 2

    .line 47
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    const-string v1, "settings_systemui_theme"

    invoke-static {v0, v1}, Landroid/util/FeatureFlagUtils;->isEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 48
    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_mode"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    .line 71
    iget-object v1, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mSystemUiThemePref:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1}, Landroid/support/v7/preference/ListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v1

    aget-object v0, v1, v0

    return-object v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 61
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    .line 62
    iget-object v0, p0, Lcom/android/settings/display/SystemUiThemePreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "theme_mode"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 63
    invoke-virtual {p0, p1}, Lcom/android/settings/display/SystemUiThemePreferenceController;->refreshSummary(Landroid/support/v7/preference/Preference;)V

    .line 64
    const/4 p1, 0x1

    return p1
.end method
