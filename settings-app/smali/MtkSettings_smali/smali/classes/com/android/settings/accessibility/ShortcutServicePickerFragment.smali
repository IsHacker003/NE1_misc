.class public Lcom/android/settings/accessibility/ShortcutServicePickerFragment;
.super Lcom/android/settings/widget/RadioButtonPickerFragment;
.source "ShortcutServicePickerFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;,
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;,
        Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 59
    invoke-direct {p0}, Lcom/android/settings/widget/RadioButtonPickerFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)V
    .locals 0

    .line 59
    invoke-direct {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onServiceConfirmed(Ljava/lang/String;)V

    return-void
.end method

.method private onServiceConfirmed(Ljava/lang/String;)V
    .locals 0

    .line 145
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    .line 146
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/android/settingslib/widget/CandidateInfo;",
            ">;"
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 74
    const-class v1, Landroid/view/accessibility/AccessibilityManager;

    .line 75
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 76
    nop

    .line 77
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    .line 78
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 80
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 82
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v3

    .line 83
    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ComponentName;

    .line 85
    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->COLOR_INVERSION_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 86
    const v6, 0x7f0800eb    # @drawable/ic_color_inversion 'res/drawable/ic_color_inversion.xml'

    goto :goto_1

    .line 87
    :cond_0
    sget-object v6, Lcom/android/internal/accessibility/AccessibilityShortcutController;->DALTONIZER_COMPONENT_NAME:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 88
    const v6, 0x7f0800ec    # @drawable/ic_daltonizer 'res/drawable/ic_daltonizer.xml'

    goto :goto_1

    .line 90
    :cond_1
    const v6, 0x7f0800a5    # @drawable/empty_icon 'res/drawable/empty_icon.xml'

    .line 92
    :goto_1
    new-instance v7, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;

    invoke-interface {v3, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;

    .line 93
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v7, p0, v8, v6, v5}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$FrameworkCandidateInfo;-><init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Lcom/android/internal/accessibility/AccessibilityShortcutController$ToggleableFrameworkFeatureInfo;ILjava/lang/String;)V

    .line 92
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 94
    goto :goto_0

    .line 95
    :cond_2
    const/4 v3, 0x0

    :goto_2
    if-ge v3, v1, :cond_3

    .line 96
    new-instance v4, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    invoke-direct {v4, p0, v5}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ServiceCandidateInfo;-><init>(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Landroid/accessibilityservice/AccessibilityServiceInfo;)V

    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 99
    :cond_3
    return-object v2
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 104
    nop

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settingslib/accessibility/AccessibilityUtils;->getShortcutTargetServiceComponentNameString(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    .line 106
    if-eqz v0, :cond_0

    .line 107
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    .line 108
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 112
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 63
    const/4 v0, 0x6

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 68
    const v0, 0x7f150007    # @xml/accessibility_shortcut_service_settings 'res/xml/accessibility_shortcut_service_settings.xml'

    return v0
.end method

.method public onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V
    .locals 2

    .line 124
    invoke-virtual {p1}, Lcom/android/settings/widget/RadioButtonPreference;->getKey()Ljava/lang/String;

    move-result-object v0

    .line 126
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-super {p0, p1}, Lcom/android/settings/widget/RadioButtonPickerFragment;->onRadioButtonClicked(Lcom/android/settings/widget/RadioButtonPreference;)V

    goto :goto_0

    .line 129
    :cond_0
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 130
    invoke-static {}, Lcom/android/internal/accessibility/AccessibilityShortcutController;->getFrameworkShortcutFeaturesMap()Ljava/util/Map;

    move-result-object v1

    .line 131
    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 133
    invoke-virtual {p0, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->onRadioButtonConfirmed(Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 136
    if-eqz p1, :cond_2

    .line 137
    invoke-static {p0, v0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->newInstance(Lcom/android/settings/accessibility/ShortcutServicePickerFragment;Ljava/lang/String;)Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;

    move-result-object v0

    .line 138
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object p1

    const-string v1, "ConfirmationDialogFragment"

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment$ConfirmationDialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 142
    :cond_2
    :goto_0
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/accessibility/ShortcutServicePickerFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "accessibility_shortcut_target_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 119
    const/4 p1, 0x1

    return p1
.end method
