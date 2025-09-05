.class public final Lcom/android/settings/accessibility/MagnificationPreferenceFragment;
.super Lcom/android/settings/dashboard/DashboardFragment;
.source "MagnificationPreferenceFragment.java"


# static fields
.field static final OFF:I = 0x0

.field static final ON:I = 0x1

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLaunchedFromSuw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 158
    new-instance v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;

    invoke-direct {v0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Lcom/android/settings/dashboard/DashboardFragment;-><init>()V

    .line 58
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    return-void
.end method

.method static getConfigurationWarningStringForSecureSettingsKey(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 7

    .line 109
    const-string v0, "accessibility_display_magnification_navbar_enabled"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 110
    return-object v0

    .line 112
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "accessibility_display_magnification_navbar_enabled"

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 114
    return-object v0

    .line 116
    :cond_1
    const-string p0, "accessibility"

    invoke-virtual {p1, p0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/accessibility/AccessibilityManager;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_button_target_component"

    invoke-static {v1, v3}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 120
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    const-string v3, "com.android.server.accessibility.MagnificationController"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 121
    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 123
    const/4 v3, -0x1

    .line 124
    invoke-virtual {p0, v3}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object p0

    .line 126
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v3

    .line 127
    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    .line 128
    invoke-interface {p0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 129
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 130
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object p0

    .line 131
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 130
    invoke-virtual {p0, v0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    .line 132
    const v0, 0x7f120060    # @string/accessibility_screen_magnification_navbar_configuration_warning 'The Accessibility button is set to %1$s. To use magnification, touch & hold the Accessibility button ...'

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p0, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 127
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 138
    :cond_3
    return-object v0
.end method

.method static isApplicable(Landroid/content/res/Resources;)Z
    .locals 1

    .line 155
    const v0, 0x11200a2    # @android:bool/config_skipScreenOnBrightnessRamp

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    return p0
.end method

.method static isChecked(Landroid/content/ContentResolver;Ljava/lang/String;)Z
    .locals 1

    .line 142
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    const/4 p1, 0x1

    if-ne p0, p1, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method

.method static setChecked(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z
    .locals 0

    .line 147
    invoke-static {p0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    move-result p0

    return p0
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 72
    const v0, 0x7f120708    # @string/help_url_magnification ''

    return v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .line 67
    const-string v0, "MagnificationPreferenceFragment"

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x39a

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 77
    const v0, 0x7f150003    # @xml/accessibility_magnification_settings 'res/xml/accessibility_magnification_settings.xml'

    return v0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onAttach(Landroid/content/Context;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    .line 84
    if-eqz p1, :cond_0

    const-string v0, "from_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "from_suw"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    .line 87
    :cond_0
    const-class p1, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;

    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    .line 88
    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->setIsFromSUW(Z)V

    .line 89
    const-class p1, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->use(Ljava/lang/Class;)Lcom/android/settingslib/core/AbstractPreferenceController;

    move-result-object p1

    check-cast p1, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;

    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    .line 90
    invoke-virtual {p1, v0}, Lcom/android/settings/accessibility/MagnificationNavbarPreferenceController;->setIsFromSUW(Z)V

    .line 91
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 95
    iget-boolean v0, p0, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->mLaunchedFromSuw:Z

    if-eqz v0, :cond_0

    .line 97
    const-class v0, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragmentForSetupWizard;

    .line 98
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 97
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 101
    const-string v1, "help_uri_resource"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 102
    const-string v1, "need_search_icon_in_action_bar"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 104
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/dashboard/DashboardFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method
