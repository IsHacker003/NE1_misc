.class public Lcom/android/settings/accessibility/AccessibilitySettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AccessibilitySettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/search/Indexable;


# static fields
.field private static final CATEGORIES:[Ljava/lang/String;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field private static final TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;


# instance fields
.field private mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private final mCategoryToPrefCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

.field private final mHandler:Landroid/os/Handler;

.field private mLongPressTimeoutDefault:I

.field private final mLongPressTimeoutValueToTitleMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/content/ComponentName;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

.field private mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

.field private final mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/support/v7/preference/Preference;",
            "Landroid/support/v7/preference/PreferenceCategory;",
            ">;"
        }
    .end annotation
.end field

.field private final mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mSupportFontSizeLevel:I

.field private mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

.field private mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

.field private final mUpdateRunnable:Ljava/lang/Runnable;

.field private mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 88
    const-string v0, "screen_reader_category"

    const-string v1, "audio_and_captions_category"

    const-string v2, "display_category"

    const-string v3, "interaction_control_category"

    const-string v4, "experimental_category"

    const-string v5, "user_installed_services_category"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    .line 147
    const-string v0, "window_animation_scale"

    const-string v1, "transition_animation_scale"

    const-string v2, "animator_duration_scale"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    .line 891
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$5;

    invoke-direct {v0}, Lcom/android/settings/accessibility/AccessibilitySettings$5;-><init>()V

    sput-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 244
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 154
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    .line 156
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    .line 158
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$1;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    .line 167
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$2;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 195
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/accessibility/AccessibilitySettings$3;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    .line 202
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    .line 204
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 206
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFontSizeLevel:I

    .line 247
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    .line 248
    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 249
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 250
    invoke-virtual {v2}, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;->getSettingKey()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 251
    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Lcom/android/settings/accessibility/AccessibilitySettings$4;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    invoke-direct {v0, p0, v2, v1}, Lcom/android/settings/accessibility/AccessibilitySettings$4;-><init>(Lcom/android/settings/accessibility/AccessibilitySettings;Landroid/os/Handler;Ljava/util/List;)V

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    .line 258
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/AccessibilitySettings;)Ljava/lang/Runnable;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mUpdateRunnable:Ljava/lang/Runnable;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/accessibility/AccessibilitySettings;)Landroid/os/Handler;
    .locals 0

    .line 74
    iget-object p0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/accessibility/AccessibilitySettings;)V
    .locals 0

    .line 74
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    return-void
.end method

.method private static configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 882
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 883
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/accessibility/MagnificationPreferenceFragment;->isApplicable(Landroid/content/res/Resources;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 884
    const-class v1, Lcom/android/settings/accessibility/ToggleScreenMagnificationPreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 885
    invoke-virtual {p0}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p0

    .line 886
    nop

    .line 887
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/MagnificationGesturesPreferenceController;->populateMagnificationGesturesPreferenceExtras(Landroid/os/Bundle;Landroid/content/Context;)V

    .line 889
    :cond_0
    return-void
.end method

.method public static getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;
    .locals 3

    .line 357
    if-eqz p2, :cond_0

    .line 358
    const p2, 0x7f120071    # @string/accessibility_summary_state_enabled 'On'

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    .line 359
    :cond_0
    const p2, 0x7f120070    # @string/accessibility_summary_state_disabled 'Off'

    invoke-virtual {p0, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 360
    :goto_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadSummary(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 361
    const v0, 0x7f120a61    # @string/preference_summary_default_combination '%1$s / %2$s'

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 365
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 366
    nop

    .line 365
    move-object p0, p2

    goto :goto_1

    .line 367
    :cond_1
    nop

    .line 365
    :goto_1
    return-object p0
.end method

.method private getSmallArray([Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .line 769
    iget v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFontSizeLevel:I

    new-array v0, v0, [Ljava/lang/String;

    .line 770
    const/4 v1, 0x0

    :goto_0
    iget v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFontSizeLevel:I

    if-ge v1, v2, :cond_0

    .line 771
    aget-object v2, p1, v1

    aput-object v2, v0, v1

    .line 770
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 773
    :cond_0
    return-object v0
.end method

.method private handleLockScreenRotationPreferenceClick()V
    .locals 2

    .line 385
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 386
    invoke-virtual {v1}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v1

    .line 385
    xor-int/lit8 v1, v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->setRotationLockForAccessibility(Landroid/content/Context;Z)V

    .line 387
    return-void
.end method

.method private handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V
    .locals 3

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    .line 321
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 320
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 322
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    .line 323
    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    .line 322
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method private handleToggleDisableAnimations()V
    .locals 6

    .line 396
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 397
    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 398
    :goto_0
    sget-object v1, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 399
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 398
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 401
    :cond_1
    return-void
.end method

.method private handleToggleInversionPreferenceChange(Z)V
    .locals 2

    .line 327
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_inversion_enabled"

    .line 328
    nop

    .line 327
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 329
    return-void
.end method

.method private handleToggleLargePointerIconPreferenceClick()V
    .locals 3

    .line 390
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_large_pointer_icon"

    .line 392
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 390
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 393
    return-void
.end method

.method private handleToggleMasterMonoPreferenceClick()V
    .locals 4

    .line 404
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_mono"

    .line 405
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    const/4 v3, -0x2

    .line 404
    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    .line 406
    return-void
.end method

.method private handleTogglePowerButtonEndsCallPreferenceClick()V
    .locals 3

    .line 377
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    .line 379
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 380
    const/4 v2, 0x2

    goto :goto_0

    .line 381
    :cond_0
    const/4 v2, 0x1

    .line 377
    :goto_0
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 382
    return-void
.end method

.method private handleToggleTextContrastPreferenceClick()V
    .locals 3

    .line 371
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "high_text_contrast_enabled"

    .line 373
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    .line 371
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 374
    return-void
.end method

.method private initializeAllPreferences()V
    .locals 7

    .line 409
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget-object v2, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 410
    sget-object v2, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v2, v2, v1

    invoke-virtual {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    check-cast v2, Landroid/support/v7/preference/PreferenceCategory;

    .line 411
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    sget-object v4, Lcom/android/settings/accessibility/AccessibilitySettings;->CATEGORIES:[Ljava/lang/String;

    aget-object v4, v4, v1

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    :cond_0
    const-string v1, "toggle_high_text_contrast_preference"

    .line 416
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 419
    const-string v1, "toggle_inversion_preference"

    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 420
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, p0}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 423
    const-string v1, "toggle_power_button_ends_call_preference"

    .line 424
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 425
    const/16 v1, 0x1a

    invoke-static {v1}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 427
    :cond_1
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "interaction_control_category"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 428
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 432
    :cond_2
    const-string v1, "toggle_lock_screen_rotation_preference"

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 434
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 435
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "interaction_control_category"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 436
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 440
    :cond_3
    const-string v1, "toggle_large_pointer_icon"

    .line 441
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 443
    const-string v1, "toggle_disable_animations"

    .line 444
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 447
    const-string v1, "toggle_master_mono"

    .line 448
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v14/preference/SwitchPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 451
    const-string v1, "select_long_press_timeout_preference"

    .line 452
    invoke-virtual {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/ListPreference;

    iput-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    .line 453
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 454
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_4

    .line 455
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f03006c    # @array/long_press_timeout_selector_values

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 457
    aget-object v2, v1, v0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    .line 458
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f03006b    # @array/long_press_timeout_selector_titles

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 460
    array-length v3, v1

    .line 461
    :goto_1
    if-ge v0, v3, :cond_4

    .line 462
    iget-object v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    aget-object v5, v1, v0

    aget-object v6, v2, v0

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 461
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 467
    :cond_4
    const-string v0, "captioning_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 470
    const-string v0, "magnification_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 472
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->configureMagnificationPreferenceIfNeeded(Landroid/support/v7/preference/Preference;)V

    .line 475
    const-string v0, "font_size_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 478
    const-string v0, "autoclick_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 481
    const-string v0, "daltonizer_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 484
    const-string v0, "accessibility_shortcut_preference"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 487
    const-string v0, "vibration_preference_screen"

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 488
    return-void
.end method

.method private initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V
    .locals 3

    .line 629
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p2

    .line 630
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceCategory;

    .line 631
    const/4 v0, 0x0

    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 632
    aget-object v1, p2, v0

    invoke-static {v1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v1

    .line 633
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v2, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 631
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 635
    :cond_0
    return-void
.end method

.method public static isColorTransformAccelerated(Landroid/content/Context;)Z
    .locals 1

    .line 240
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    .line 241
    const v0, 0x112009d    # @android:bool/config_showMenuShortcutsWhenKeyboardPresent

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p0

    .line 240
    return p0
.end method

.method private updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V
    .locals 1

    .line 862
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object p1

    .line 863
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 864
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const v0, 0x7f120059    # @string/accessibility_no_services_installed 'No services installed'

    .line 865
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 866
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    goto :goto_1

    .line 868
    :cond_0
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 869
    nop

    .line 870
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p1, v0}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->isShortcutEnabled(Landroid/content/Context;I)Z

    move-result p1

    .line 871
    if-eqz p1, :cond_1

    .line 872
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/accessibility/AccessibilityShortcutPreferenceFragment;->getServiceName(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_0

    .line 873
    :cond_1
    const p1, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 874
    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 876
    :goto_1
    return-void
.end method

.method private updateAllPreferences()V
    .locals 0

    .line 491
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateSystemPreferences()V

    .line 492
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateServicePreferences()V

    .line 493
    return-void
.end method

.method private updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V
    .locals 3

    .line 735
    nop

    .line 736
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_enabled"

    .line 735
    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 737
    :cond_0
    move v1, v2

    :goto_0
    if-nez v1, :cond_1

    .line 738
    const v0, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 739
    return-void

    .line 741
    :cond_1
    nop

    .line 742
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_autoclick_delay"

    const/16 v2, 0x258

    .line 741
    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 744
    nop

    .line 745
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 744
    invoke-static {v1, v0}, Lcom/android/settings/accessibility/ToggleAutoclickPreferenceFragment;->getAutoclickPreferenceSummary(Landroid/content/res/Resources;I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 746
    return-void
.end method

.method private updateDisableAnimationsToggle()V
    .locals 6

    .line 842
    nop

    .line 843
    sget-object v0, Lcom/android/settings/accessibility/AccessibilitySettings;->TOGGLE_ANIMATION_TARGETS:[Ljava/lang/String;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 844
    nop

    .line 845
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v5, v4}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v5, "0"

    .line 844
    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 847
    nop

    .line 848
    goto :goto_1

    .line 843
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 851
    :cond_1
    const/4 v2, 0x1

    :goto_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 852
    return-void
.end method

.method private updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 729
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p1, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 730
    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    const p1, 0x7f12004b    # @string/accessibility_feature_state_on 'On'

    goto :goto_1

    .line 731
    :cond_1
    const p1, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    .line 730
    :goto_1
    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 732
    return-void
.end method

.method private updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 749
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F

    move-result v0

    .line 751
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 752
    const v2, 0x7f030055    # @array/entries_font_size

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    .line 753
    const v3, 0x7f030056    # @array/entryvalues_font_size

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 755
    array-length v3, v2

    .line 756
    iget v4, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFontSizeLevel:I

    if-ge v4, v3, :cond_0

    iget v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFontSizeLevel:I

    if-lez v3, :cond_0

    .line 757
    invoke-direct {p0, v2}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSmallArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 758
    invoke-direct {p0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->getSmallArray([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 762
    :cond_0
    invoke-static {v0, v1}, Lcom/android/settings/accessibility/ToggleFontSizePreferenceFragment;->fontSizeValueToIndex(F[Ljava/lang/String;)I

    move-result v0

    .line 764
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 765
    return-void
.end method

.method private updateLockScreenRotationCheckbox()V
    .locals 2

    .line 834
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 835
    if-eqz v0, :cond_0

    .line 836
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 837
    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationLocked(Landroid/content/Context;)Z

    move-result v0

    .line 836
    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 839
    :cond_0
    return-void
.end method

.method private updateMagnificationSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_display_magnification_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 712
    move v0, v1

    goto :goto_0

    .line 710
    :cond_0
    nop

    .line 712
    move v0, v2

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "accessibility_display_magnification_navbar_enabled"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-ne v3, v1, :cond_1

    goto :goto_1

    .line 715
    :cond_1
    move v1, v2

    .line 716
    :goto_1
    if-nez v0, :cond_2

    if-nez v1, :cond_2

    .line 717
    const v0, 0x7f12004a    # @string/accessibility_feature_state_off 'Off'

    goto :goto_2

    .line 718
    :cond_2
    if-nez v0, :cond_3

    if-eqz v1, :cond_3

    .line 719
    const v0, 0x7f120063    # @string/accessibility_screen_magnification_navbar_title 'Magnify with button'

    goto :goto_2

    .line 720
    :cond_3
    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 721
    const v0, 0x7f12005f    # @string/accessibility_screen_magnification_gestures_title 'Magnify with triple-tap'

    goto :goto_2

    .line 723
    :cond_4
    const v0, 0x7f120065    # @string/accessibility_screen_magnification_state_navbar_gesture 'Magnify with button & triple-tap'

    .line 725
    :goto_2
    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 726
    return-void
.end method

.method private updateMasterMono()V
    .locals 4

    .line 855
    nop

    .line 856
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "master_mono"

    .line 855
    const/4 v2, 0x0

    const/4 v3, -0x2

    invoke-static {v0, v1, v2, v3}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 858
    :cond_0
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 859
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 267
    const v0, 0x7f1206db    # @string/help_uri_accessibility ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 262
    const/4 v0, 0x2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 272
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 273
    const p1, 0x7f150005    # @xml/accessibility_settings 'res/xml/accessibility_settings.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->addPreferencesFromResource(I)V

    .line 274
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializeAllPreferences()V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const-string v0, "device_policy"

    .line 276
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 278
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f0b0005    # @integer/config_support_font_size_level '4'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSupportFontSizeLevel:I

    .line 281
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 298
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 299
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->unregister(Landroid/content/ContentResolver;)V

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 301
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->unregisterRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 304
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 305
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 309
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 310
    check-cast p2, Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLongPressTimeoutPreferenceChange(Ljava/lang/String;)V

    .line 311
    return v1

    .line 312
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 313
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleInversionPreferenceChange(Z)V

    .line 314
    return v1

    .line 316
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 333
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    if-ne v0, p1, :cond_0

    .line 334
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleTextContrastPreferenceClick()V

    .line 335
    return v1

    .line 336
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_1

    .line 337
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleTogglePowerButtonEndsCallPreferenceClick()V

    .line 338
    return v1

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLockScreenRotationPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_2

    .line 340
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleLockScreenRotationPreferenceClick()V

    .line 341
    return v1

    .line 342
    :cond_2
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_3

    .line 343
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleLargePointerIconPreferenceClick()V

    .line 344
    return v1

    .line 345
    :cond_3
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleDisableAnimationsPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_4

    .line 346
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleDisableAnimations()V

    .line 347
    return v1

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleMasterMonoPreference:Landroid/support/v14/preference/SwitchPreference;

    if-ne v0, p1, :cond_5

    .line 349
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->handleToggleMasterMonoPreferenceClick()V

    .line 350
    return v1

    .line 352
    :cond_5
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 285
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAllPreferences()V

    .line 288
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 289
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSettingsContentObserver:Lcom/android/settings/accessibility/SettingsContentObserver;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/accessibility/SettingsContentObserver;->register(Landroid/content/ContentResolver;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/view/RotationPolicy;->isRotationSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mRotationPolicyListener:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    invoke-static {v0, v1}, Lcom/android/internal/view/RotationPolicy;->registerRotationPolicyListener(Landroid/content/Context;Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;)V

    .line 294
    :cond_0
    return-void
.end method

.method protected updateServicePreferences()V
    .locals 20

    .line 501
    move-object/from16 v0, p0

    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    .line 502
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 503
    const/4 v3, 0x0

    :goto_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_0

    .line 504
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v7/preference/Preference;

    .line 505
    iget-object v5, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v7/preference/PreferenceCategory;

    .line 506
    invoke-virtual {v5, v4}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 503
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 509
    :cond_0
    const-string v1, "screen_reader_category"

    const v3, 0x7f030044    # @array/config_preinstalled_screen_reader_services

    invoke-direct {v0, v1, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 511
    const-string v1, "audio_and_captions_category"

    const v3, 0x7f030041    # @array/config_preinstalled_audio_and_caption_services

    invoke-direct {v0, v1, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 513
    const-string v1, "display_category"

    const v3, 0x7f030042    # @array/config_preinstalled_display_services

    invoke-direct {v0, v1, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 515
    const-string v1, "interaction_control_category"

    const v3, 0x7f030043    # @array/config_preinstalled_interaction_control_services

    invoke-direct {v0, v1, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->initializePreBundledServicesMapFromArray(Ljava/lang/String;I)V

    .line 518
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v1

    .line 520
    nop

    .line 521
    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v3

    .line 522
    nop

    .line 523
    const/4 v4, -0x1

    invoke-virtual {v1, v4}, Landroid/view/accessibility/AccessibilityManager;->getEnabledAccessibilityServiceList(I)Ljava/util/List;

    move-result-object v1

    .line 524
    nop

    .line 525
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    .line 524
    invoke-static {v5}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getEnabledServicesFromSettings(Landroid/content/Context;)Ljava/util/Set;

    move-result-object v5

    .line 526
    iget-object v6, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 527
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 526
    invoke-virtual {v6, v7}, Landroid/app/admin/DevicePolicyManager;->getPermittedAccessibilityServices(I)Ljava/util/List;

    move-result-object v6

    .line 529
    iget-object v7, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v8, "user_installed_services_category"

    .line 530
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/support/v7/preference/PreferenceCategory;

    .line 532
    const-string v8, "user_installed_services_category"

    invoke-virtual {v0, v8}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v8

    if-nez v8, :cond_1

    .line 533
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v8

    invoke-virtual {v8, v7}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 536
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    const/4 v9, 0x0

    :goto_1
    if-ge v9, v8, :cond_b

    .line 537
    invoke-interface {v3, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 538
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v11

    .line 540
    new-instance v12, Lcom/android/settingslib/RestrictedPreference;

    .line 541
    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceCategory;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-direct {v12, v13}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;)V

    .line 542
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v13

    invoke-virtual {v11, v13}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    invoke-interface {v13}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    .line 545
    invoke-virtual {v11}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v14

    if-nez v14, :cond_2

    .line 546
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v14

    const/high16 v15, 0x7f0f0000    # @mipmap/ic_accessibility_generic 'res/mipmap-hdpi/ic_accessibility_generic.png'

    invoke-static {v14, v15}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    goto :goto_2

    .line 548
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v11, v14}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 551
    :goto_2
    iget-object v15, v11, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 552
    iget-object v4, v15, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 553
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v16, v3

    iget-object v3, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Lcom/android/settingslib/RestrictedPreference;->setKey(Ljava/lang/String;)V

    .line 557
    invoke-virtual {v12, v13}, Lcom/android/settingslib/RestrictedPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 558
    invoke-static {v12, v14}, Lcom/android/settings/Utils;->setSafeIcon(Landroid/support/v7/preference/Preference;Landroid/graphics/drawable/Drawable;)V

    .line 559
    invoke-interface {v5, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    .line 560
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v14

    invoke-virtual {v10, v14}, Landroid/accessibilityservice/AccessibilityServiceInfo;->loadDescription(Landroid/content/pm/PackageManager;)Ljava/lang/String;

    move-result-object v14

    .line 561
    invoke-static {v14}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 562
    const v14, 0x7f120068    # @string/accessibility_service_default_description 'No description provided.'

    invoke-virtual {v0, v14}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    .line 565
    :cond_3
    if-eqz v3, :cond_4

    iget-object v15, v15, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v4, v15, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->hasServiceCrashed(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Z

    move-result v15

    if-eqz v15, :cond_4

    .line 568
    const v14, 0x7f120072    # @string/accessibility_summary_state_stopped 'Not working. Tap for info.'

    invoke-virtual {v12, v14}, Lcom/android/settingslib/RestrictedPreference;->setSummary(I)V

    .line 569
    const v14, 0x7f120044    # @string/accessibility_description_state_stopped 'This service is malfunctioning.'

    invoke-virtual {v0, v14}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v14

    goto :goto_3

    .line 571
    :cond_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v10, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getServiceSummary(Landroid/content/Context;Landroid/accessibilityservice/AccessibilityServiceInfo;Z)Ljava/lang/CharSequence;

    move-result-object v15

    .line 573
    invoke-virtual {v12, v15}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 577
    :goto_3
    if-eqz v6, :cond_6

    .line 578
    invoke-interface {v6, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    goto :goto_4

    .line 579
    :cond_5
    const/16 v17, 0x0

    goto :goto_5

    .line 578
    :cond_6
    :goto_4
    nop

    .line 579
    const/16 v17, 0x1

    :goto_5
    if-nez v17, :cond_8

    if-nez v3, :cond_8

    .line 580
    nop

    .line 582
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v15

    move-object/from16 v18, v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 581
    invoke-static {v15, v4, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfAccessibilityServiceDisallowed(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v1

    .line 583
    if-eqz v1, :cond_7

    .line 584
    invoke-virtual {v12, v1}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 588
    const/4 v1, 0x0

    goto :goto_6

    .line 586
    :cond_7
    const/4 v1, 0x0

    invoke-virtual {v12, v1}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 588
    :goto_6
    nop

    .line 592
    const/4 v15, 0x1

    goto :goto_7

    .line 589
    :cond_8
    move-object/from16 v18, v1

    const/4 v1, 0x0

    const/4 v15, 0x1

    invoke-virtual {v12, v15}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 592
    :goto_7
    const-class v1, Lcom/android/settings/accessibility/ToggleAccessibilityServicePreferenceFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v12, v1}, Lcom/android/settingslib/RestrictedPreference;->setFragment(Ljava/lang/String;)V

    .line 593
    invoke-virtual {v12, v15}, Lcom/android/settingslib/RestrictedPreference;->setPersistent(Z)V

    .line 595
    invoke-virtual {v12}, Lcom/android/settingslib/RestrictedPreference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 596
    const-string v15, "preference_key"

    move-object/from16 v19, v5

    invoke-virtual {v12}, Lcom/android/settingslib/RestrictedPreference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v15, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 597
    const-string v5, "checked"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 598
    const-string v3, "title"

    invoke-virtual {v1, v3, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const-string v3, "resolve_info"

    invoke-virtual {v1, v3, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 600
    const-string v3, "summary"

    invoke-virtual {v1, v3, v14}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    invoke-virtual {v10}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getSettingsActivityName()Ljava/lang/String;

    move-result-object v3

    .line 603
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_9

    .line 604
    const-string v5, "settings_title"

    const v10, 0x7f120057    # @string/accessibility_menu_item_settings 'Settings'

    .line 605
    invoke-virtual {v0, v10}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 604
    invoke-virtual {v1, v5, v10}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 606
    const-string v5, "settings_component_name"

    new-instance v10, Landroid/content/ComponentName;

    invoke-direct {v10, v4, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 606
    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    :cond_9
    const-string v3, "component_name"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 611
    nop

    .line 613
    iget-object v1, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 614
    iget-object v1, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mPreBundledServiceComponentToCategoryMap:Ljava/util/Map;

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    goto :goto_8

    .line 616
    :cond_a
    move-object v1, v7

    :goto_8
    const/4 v2, -0x1

    invoke-virtual {v12, v2}, Lcom/android/settingslib/RestrictedPreference;->setOrder(I)V

    .line 617
    invoke-virtual {v1, v12}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 618
    iget-object v3, v0, Lcom/android/settings/accessibility/AccessibilitySettings;->mServicePreferenceToPreferenceCategoryMap:Ljava/util/Map;

    invoke-interface {v3, v12, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 536
    add-int/lit8 v9, v9, 0x1

    move v4, v2

    move-object/from16 v3, v16

    move-object/from16 v1, v18

    move-object/from16 v5, v19

    goto/16 :goto_1

    .line 622
    :cond_b
    invoke-virtual {v7}, Landroid/support/v7/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v1

    if-nez v1, :cond_c

    .line 623
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 624
    invoke-virtual {v0, v7}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 626
    :cond_c
    return-void
.end method

.method protected updateSystemPreferences()V
    .locals 5

    .line 640
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->isColorTransformAccelerated(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v1, "experimental_category"

    .line 642
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 643
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCategoryToPrefCategoryMap:Ljava/util/Map;

    const-string v2, "display_category"

    .line 644
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/support/v7/preference/PreferenceCategory;

    .line 645
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 646
    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceCategory;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 647
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->getOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setOrder(I)V

    .line 648
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v2}, Landroid/support/v14/preference/SwitchPreference;->getOrder()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 649
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    const v2, 0x7f120da5    # @string/summary_empty ''

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setSummary(I)V

    .line 650
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 651
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 655
    :cond_0
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleHighTextContrastPreference:Landroid/support/v14/preference/SwitchPreference;

    .line 656
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "high_text_contrast_enabled"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 655
    move v1, v2

    goto :goto_0

    .line 656
    :cond_1
    nop

    .line 655
    move v1, v3

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 660
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleInversionPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_display_inversion_enabled"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 664
    const/16 v0, 0x1a

    invoke-static {v0}, Landroid/view/KeyCharacterMap;->deviceHasKey(I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 665
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 666
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "incall_power_button_behavior"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 669
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 671
    move v0, v2

    goto :goto_2

    .line 669
    :cond_3
    nop

    .line 671
    move v0, v3

    :goto_2
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mTogglePowerButtonEndsCallPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 675
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateLockScreenRotationCheckbox()V

    .line 678
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mToggleLargePointerIconPreference:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v4, "accessibility_large_pointer_icon"

    invoke-static {v1, v4, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    :goto_3
    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 681
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateDisableAnimationsToggle()V

    .line 684
    invoke-direct {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMasterMono()V

    .line 687
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "long_press_timeout"

    iget v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutDefault:I

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 689
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 690
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 691
    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mSelectLongPressTimeoutPreference:Landroid/support/v7/preference/ListPreference;

    iget-object v2, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mLongPressTimeoutValueToTitleMap:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 693
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateVibrationSummary(Landroid/support/v7/preference/Preference;)V

    .line 695
    const-string v0, "accessibility_captioning_enabled"

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mCaptioningPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 697
    const-string v0, "accessibility_display_daltonizer_enabled"

    iget-object v1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayDaltonizerPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFeatureSummary(Ljava/lang/String;Landroid/support/v7/preference/Preference;)V

    .line 700
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mDisplayMagnificationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateMagnificationSummary(Landroid/support/v7/preference/Preference;)V

    .line 702
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mFontSizePreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateFontSizeSummary(Landroid/support/v7/preference/Preference;)V

    .line 704
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAutoclickPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAutoclickSummary(Landroid/support/v7/preference/Preference;)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mAccessibilityShortcutPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-direct {p0, v0}, Lcom/android/settings/accessibility/AccessibilitySettings;->updateAccessibilityShortcut(Landroid/support/v7/preference/Preference;)V

    .line 707
    return-void
.end method

.method updateVibrationSummary(Landroid/support/v7/preference/Preference;)V
    .locals 5

    .line 780
    invoke-virtual {p0}, Lcom/android/settings/accessibility/AccessibilitySettings;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 781
    const-class v0, Landroid/os/Vibrator;

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 783
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "notification_vibration_intensity"

    .line 785
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultNotificationVibrationIntensity()I

    move-result v3

    .line 783
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 786
    nop

    .line 787
    invoke-static {p1, v1}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 789
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "haptic_feedback_intensity"

    .line 791
    invoke-virtual {v0}, Landroid/os/Vibrator;->getDefaultHapticFeedbackIntensity()I

    move-result v0

    .line 789
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 792
    nop

    .line 793
    invoke-static {p1, v0}, Lcom/android/settings/accessibility/VibrationIntensityPreferenceController;->getIntensityString(Landroid/content/Context;I)Ljava/lang/CharSequence;

    move-result-object p1

    .line 795
    iget-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    if-nez v3, :cond_0

    .line 796
    const-string v3, "vibration_preference_screen"

    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    .line 799
    :cond_0
    if-ne v1, v0, :cond_1

    .line 800
    iget-object p1, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 802
    :cond_1
    iget-object v0, p0, Lcom/android/settings/accessibility/AccessibilitySettings;->mVibrationPreferenceScreen:Landroid/support/v7/preference/Preference;

    const v1, 0x7f120083    # @string/accessibility_vibration_summary 'Ring %1$s, touch %2$s'

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v2, v3, v4

    const/4 v2, 0x1

    aput-object p1, v3, v2

    .line 803
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/accessibility/AccessibilitySettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 802
    invoke-virtual {v0, p1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 806
    :goto_0
    return-void
.end method
