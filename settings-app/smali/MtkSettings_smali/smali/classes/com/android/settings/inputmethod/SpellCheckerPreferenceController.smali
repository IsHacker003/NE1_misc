.class public Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "SpellCheckerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mTextServicesManager:Landroid/view/textservice/TextServicesManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 38
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 39
    const-string v0, "textservices"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/TextServicesManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 41
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 45
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 46
    const-string v0, "spellcheckers_settings"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 47
    if-eqz p1, :cond_0

    .line 48
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 50
    :cond_0
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 59
    const-string v0, "spellcheckers_settings"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050037    # @bool/config_show_spellcheckers_settings 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 64
    if-nez p1, :cond_0

    .line 65
    return-void

    .line 67
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 68
    const v0, 0x7f120db7    # @string/switch_off_text 'Off'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 71
    if-eqz v0, :cond_2

    .line 72
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 74
    :cond_2
    const v0, 0x7f120ce0    # @string/spell_checker_not_selected 'Not selected'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 77
    :goto_0
    return-void
.end method
