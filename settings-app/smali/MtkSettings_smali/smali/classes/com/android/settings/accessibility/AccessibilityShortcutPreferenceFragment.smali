.class public Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;
.super Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;
.source "AccessibilityShortcutPreferenceFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private final mContentObserver:Landroid/database/ContentObserver;

.field private mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mServicePreference:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 193
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$2;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;-><init>()V

    .line 51
    new-instance v0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment$1;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V
    .locals 0

    .line 43
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    return-void
.end method

.method private static getServiceInfo(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;
    .locals 1

    .line 171
    invoke-static {p0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 172
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledServiceInfoWithComponentName(Landroid/content/ComponentName;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    .line 171
    return-object p0
.end method

.method public static getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;
    .locals 2

    .line 159
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->shortcutFeatureAvailable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    const v0, 0x7f120058    # @string/accessibility_no_service_selected 'No service selected'

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 162
    :cond_0
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceInfo(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object v0

    .line 163
    if-eqz v0, :cond_1

    .line 164
    invoke-virtual {v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0

    .line 166
    :cond_1
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    .line 167
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    invoke-virtual {v0, p0}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getLabel(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p0

    .line 166
    return-object p0
.end method

.method private static getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    .line 187
    nop

    .line 188
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 187
    invoke-static {p0, v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object p0

    .line 189
    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 190
    :cond_0
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic lambda$onCreate$0(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 1

    .line 75
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "accessibility_shortcut_on_lock_screen"

    .line 77
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 75
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 78
    const/4 p1, 0x1

    return p1
.end method

.method public static synthetic lambda$onInstallSwitchBarToggleSwitch$1(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;Landroid/widget/Switch;Z)V
    .locals 1

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 109
    if-eqz p2, :cond_0

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->shortcutFeatureAvailable(Landroid/content/Context;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 112
    nop

    .line 113
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "accessibility_shortcut_enabled"

    .line 112
    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->performClick()V

    goto :goto_0

    .line 117
    :cond_0
    const-string p1, "accessibility_shortcut_enabled"

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->onPreferenceToggled(Ljava/lang/String;Z)V

    .line 119
    :goto_0
    return-void
.end method

.method private static shortcutFeatureAvailable(Landroid/content/Context;)Z
    .locals 3

    .line 176
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getShortcutComponent(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 177
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 179
    :cond_0
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v2

    .line 180
    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 181
    return v2

    .line 183
    :cond_1
    invoke-static {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceInfo(Landroid/content/Context;)Landroid/accessibilityservice/AccessibilityServiceInfo;

    move-result-object p0

    if-eqz p0, :cond_2

    move v1, v2

    nop

    :cond_2
    return v1
.end method

.method private updatePreferences()V
    .locals 5

    .line 129
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 132
    invoke-static {v1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->shortcutFeatureAvailable(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "accessibility_shortcut_enabled"

    .line 134
    invoke-static {v1, v3, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 137
    :cond_0
    const-string v1, "accessibility_shortcut_enabled"

    .line 138
    const/4 v3, 0x1

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 139
    move v1, v3

    goto :goto_0

    .line 138
    :cond_1
    nop

    .line 139
    move v1, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 142
    const-string v1, "accessibility_shortcut_dialog_shown"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 144
    const-string v4, "accessibility_shortcut_on_lock_screen"

    invoke-static {v0, v4, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-ne v0, v3, :cond_2

    .line 146
    move v2, v3

    goto :goto_1

    .line 144
    :cond_2
    nop

    .line 146
    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 149
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mToggleSwitch:Lcom/android/settings/widget/ToggleSwitch;

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 150
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 65
    const v0, 0x7f1206ee    # @string/help_url_accessibility_shortcut ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/4 v0, 0x6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 101
    const v0, 0x7f150008    # @xml/accessibility_shortcut_settings 'res/xml/accessibility_shortcut_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 70
    invoke-super {p0, p1}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 72
    const-string p1, "accessibility_shortcut_service"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mServicePreference:Landroid/support/v7/preference/Preference;

    .line 73
    const-string p1, "accessibility_shortcut_on_lock_screen"

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 74
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mOnLockScreenSwitchPreference:Landroid/support/v14/preference/SwitchPreference;

    new-instance v0, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$v5UnURHl-V2dl7gTZw_kdUDDZ6E;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$v5UnURHl-V2dl7gTZw_kdUDDZ6E;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 80
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mFooterPreferenceMixin:Lcom/android/settingslib/widget/FooterPreferenceMixin;

    invoke-virtual {p1}, Lcom/android/settingslib/widget/FooterPreferenceMixin;->createFooterPreference()Lcom/android/settingslib/widget/FooterPreference;

    move-result-object p1

    .line 81
    const v0, 0x7f12006d    # @string/accessibility_shortcut_description 'When the shortcut is on, you can press both volume keys for 3 seconds to start an accessibility feat ...'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/widget/FooterPreference;->setTitle(I)V

    .line 82
    return-void
.end method

.method protected onInstallSwitchBarToggleSwitch()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onInstallSwitchBarToggleSwitch()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    new-instance v1, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$B1JGpZUcoOdF9ofKXLGiPDgZ6Bo;

    invoke-direct {v1, p0}, Lcom/android/settings/accessibility/-$$Lambda$AccessibilityShortcutPreferenceFragment$B1JGpZUcoOdF9ofKXLGiPDgZ6Bo;-><init>(Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;)V

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 120
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 96
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onPause()V

    .line 97
    return-void
.end method

.method protected onPreferenceToggled(Ljava/lang/String;Z)V
    .locals 1

    .line 124
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 125
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    .line 126
    return-void
.end method

.method public onResume()V
    .locals 4

    .line 86
    invoke-super {p0}, Lcom/android/settings/accessibility/ToggleFeaturePreferenceFragment;->onResume()V

    .line 87
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->updatePreferences()V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_dialog_shown"

    .line 89
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->mContentObserver:Landroid/database/ContentObserver;

    .line 88
    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 91
    return-void
.end method
