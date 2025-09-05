.class public Lcom/android/settings/inputmethod/SpellCheckersSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "SpellCheckersSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

.field private mDialog:Landroid/app/AlertDialog;

.field private mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

.field private mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mTsm:Landroid/view/textservice/TextServicesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 44
    const-class v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method static synthetic access$000(I)I
    .locals 0

    .line 42
    invoke-static {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertDialogItemIdToSubtypeIndex(I)I

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/inputmethod/SpellCheckersSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 42
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    return-void
.end method

.method private changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 2

    .line 266
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "selected_spell_checker"

    .line 267
    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getId()Ljava/lang/String;

    move-result-object p1

    .line 266
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 269
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "selected_spell_checker_subtype"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 274
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 275
    return-void
.end method

.method private static convertDialogItemIdToSubtypeIndex(I)I
    .locals 0

    .line 184
    add-int/lit8 p0, p0, -0x1

    return p0
.end method

.method private static convertSubtypeIndexToDialogItemId(I)I
    .locals 0

    .line 180
    add-int/lit8 p0, p0, 0x1

    return p0
.end method

.method private getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;
    .locals 2

    .line 146
    if-nez p1, :cond_0

    .line 147
    const p1, 0x7f120ce0    # @string/spell_checker_not_selected 'Not selected'

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :cond_0
    if-nez p2, :cond_1

    .line 150
    const p1, 0x7f120ec7    # @string/use_system_language_to_select_input_method_subtypes 'Use system languages'

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 152
    :cond_1
    nop

    .line 153
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 152
    invoke-virtual {p2, v0, v1, p1}, Landroid/view/textservice/SpellCheckerSubtype;->getDisplayName(Landroid/content/Context;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private populatePreferenceScreen()V
    .locals 3

    .line 78
    new-instance v0, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {v0, v1, v2}, Lcom/android/settings/inputmethod/SpellCheckerPreference;-><init>(Landroid/content/Context;[Landroid/view/textservice/SpellCheckerInfo;)V

    .line 80
    const v1, 0x7f12050d    # @string/default_spell_checker 'Default spell checker'

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setTitle(I)V

    .line 81
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    array-length v1, v1

    .line 82
    :goto_0
    if-lez v1, :cond_1

    .line 83
    const-string v1, "%s"

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 85
    :cond_1
    const v1, 0x7f120ce0    # @string/spell_checker_not_selected 'Not selected'

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSummary(I)V

    .line 87
    :goto_1
    const-string v1, "default_spellchecker"

    invoke-virtual {v0, v1}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setKey(Ljava/lang/String;)V

    .line 88
    invoke-virtual {v0, p0}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 90
    return-void
.end method

.method private showChooseLanguageDialog()V
    .locals 10

    .line 188
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    .line 192
    if-nez v0, :cond_1

    .line 195
    return-void

    .line 197
    :cond_1
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    .line 199
    new-instance v3, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 200
    const v4, 0x7f120a1f    # @string/phone_language 'Languages'

    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 201
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeCount()I

    move-result v4

    .line 202
    add-int/lit8 v5, v4, 0x1

    new-array v5, v5, [Ljava/lang/CharSequence;

    .line 203
    const/4 v6, 0x0

    invoke-direct {p0, v0, v6}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v2

    .line 204
    nop

    .line 205
    move v6, v2

    :goto_0
    if-ge v2, v4, :cond_3

    .line 206
    invoke-virtual {v0, v2}, Landroid/view/textservice/SpellCheckerInfo;->getSubtypeAt(I)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v7

    .line 207
    invoke-static {v2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->convertSubtypeIndexToDialogItemId(I)I

    move-result v8

    .line 208
    invoke-direct {p0, v0, v7}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v9

    aput-object v9, v5, v8

    .line 209
    invoke-virtual {v7, v1}, Landroid/view/textservice/SpellCheckerSubtype;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 210
    nop

    .line 205
    move v6, v8

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 213
    :cond_3
    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;

    invoke-direct {v1, p0, v0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$1;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v3, v5, v6, v1}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 237
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 238
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 239
    return-void
.end method

.method private showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V
    .locals 6

    .line 242
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 243
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 245
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 246
    const v1, 0x1040014    # @android:string/dialog_alert_title

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 247
    const v1, 0x7f120ce3    # @string/spellchecker_security_warning 'This spell checker may be able to collect all the text you type, including personal data like passwo ...'

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {p1, v5}, Landroid/view/textservice/SpellCheckerInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    aput-object v5, v3, v4

    .line 247
    invoke-virtual {p0, v1, v3}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 250
    const v1, 0x104000a    # @android:string/ok

    new-instance v2, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings$2;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;Landroid/view/textservice/SpellCheckerInfo;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 256
    const/high16 p1, 0x1040000    # @android:string/cancel

    new-instance v1, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;

    invoke-direct {v1, p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings$3;-><init>(Lcom/android/settings/inputmethod/SpellCheckersSettings;)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 261
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    .line 262
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 263
    return-void
.end method

.method private updatePreferenceScreen()V
    .locals 7

    .line 118
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 119
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    .line 120
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v1, v2}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v1

    goto :goto_0

    .line 127
    :cond_0
    const/4 v1, 0x0

    .line 129
    :goto_0
    iget-object v3, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    iget-object v4, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-direct {p0, v4, v1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSpellCheckerSubtypeLabel(Landroid/view/textservice/SpellCheckerInfo;Landroid/view/textservice/SpellCheckerSubtype;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    .line 132
    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v3

    .line 133
    move v4, v2

    :goto_1
    if-ge v4, v3, :cond_2

    .line 134
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v5

    .line 135
    invoke-virtual {v5, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 136
    instance-of v6, v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    if-eqz v6, :cond_1

    .line 137
    check-cast v5, Lcom/android/settings/inputmethod/SpellCheckerPreference;

    .line 138
    iget-object v6, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    invoke-virtual {v5, v6}, Lcom/android/settings/inputmethod/SpellCheckerPreference;->setSelected(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 133
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 141
    :cond_2
    iget-object v1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    nop

    :cond_3
    invoke-virtual {v1, v2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 142
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 60
    const/16 v0, 0x3b

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 65
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 67
    const p1, 0x7f15009f    # @xml/spellchecker_prefs 'res/xml/spellchecker_prefs.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->addPreferencesFromResource(I)V

    .line 68
    const-string p1, "spellchecker_language"

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    .line 69
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 71
    const-string p1, "textservices"

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/textservice/TextServicesManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    .line 72
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellChecker()Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mCurrentSci:Landroid/view/textservice/SpellCheckerInfo;

    .line 73
    iget-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mTsm:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {p1}, Landroid/view/textservice/TextServicesManager;->getEnabledSpellCheckers()[Landroid/view/textservice/SpellCheckerInfo;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mEnabledScis:[Landroid/view/textservice/SpellCheckerInfo;

    .line 74
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->populatePreferenceScreen()V

    .line 75
    return-void
.end method

.method public onPause()V
    .locals 1

    .line 106
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 107
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 108
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 2

    .line 167
    check-cast p2, Landroid/view/textservice/SpellCheckerInfo;

    .line 168
    nop

    .line 169
    invoke-virtual {p2}, Landroid/view/textservice/SpellCheckerInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object p1

    iget-object p1, p1, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v0, 0x1

    and-int/2addr p1, v0

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 170
    move p1, v0

    goto :goto_0

    .line 169
    :cond_0
    nop

    .line 170
    move p1, v1

    :goto_0
    if-eqz p1, :cond_1

    .line 171
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->changeCurrentSpellChecker(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 172
    return v0

    .line 174
    :cond_1
    invoke-direct {p0, p2}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showSecurityWarnDialog(Landroid/view/textservice/SpellCheckerInfo;)V

    .line 175
    return v1
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 158
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSpellCheckerLanaguagePref:Landroid/support/v7/preference/Preference;

    if-ne p1, v0, :cond_0

    .line 159
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->showChooseLanguageDialog()V

    .line 160
    const/4 p1, 0x1

    return p1

    .line 162
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onResume()V
    .locals 2

    .line 94
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 96
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    const v1, 0x7f120cdf    # @string/spell_checker_master_switch_title 'Use spell checker'

    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/SwitchBar;->setSwitchBarText(II)V

    .line 99
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 100
    iget-object v0, p0, Lcom/android/settings/inputmethod/SpellCheckersSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 101
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 102
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 1

    .line 112
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "spell_checker_enabled"

    .line 113
    nop

    .line 112
    invoke-static {p1, v0, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 114
    invoke-direct {p0}, Lcom/android/settings/inputmethod/SpellCheckersSettings;->updatePreferenceScreen()V

    .line 115
    return-void
.end method
