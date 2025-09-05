.class public Lcom/android/settings/inputmethod/UserDictionaryList;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserDictionaryList.java"


# instance fields
.field private mLocale:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 42
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method public static getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/TreeSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 84
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Landroid/provider/UserDictionary$Words;->CONTENT_URI:Landroid/net/Uri;

    const-string v2, "locale"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 87
    new-instance v1, Ljava/util/TreeSet;

    invoke-direct {v1}, Ljava/util/TreeSet;-><init>()V

    .line 88
    if-nez v0, :cond_0

    .line 90
    return-object v1

    .line 93
    :cond_0
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 94
    const-string v2, "locale"

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 96
    :cond_1
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 97
    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    const-string v3, ""

    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 98
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v3, :cond_1

    .line 101
    :cond_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    nop

    .line 111
    const-string v0, "input_method"

    .line 112
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/view/inputmethod/InputMethodManager;

    .line 113
    invoke-virtual {p0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 114
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 115
    const/4 v3, 0x1

    .line 116
    invoke-virtual {p0, v2, v3}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodSubtypeList(Landroid/view/inputmethod/InputMethodInfo;Z)Ljava/util/List;

    move-result-object v2

    .line 118
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/inputmethod/InputMethodSubtype;

    .line 119
    invoke-virtual {v3}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v3

    .line 120
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 121
    invoke-virtual {v1, v3}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 123
    :cond_4
    goto :goto_2

    .line 124
    :cond_5
    goto :goto_1

    .line 130
    :cond_6
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    .line 131
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p0

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 134
    :cond_7
    return-object v1

    .line 101
    :catchall_0
    move-exception p0

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    throw p0
.end method


# virtual methods
.method protected createUserDictSettings(Landroid/support/v7/preference/PreferenceGroup;)V
    .locals 4

    .line 143
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 144
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 145
    nop

    .line 146
    invoke-static {v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getUserDictionaryLocalesSet(Landroid/content/Context;)Ljava/util/TreeSet;

    move-result-object v1

    .line 147
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryList;->mLocale:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 150
    iget-object v2, p0, Lcom/android/settings/inputmethod/UserDictionaryList;->mLocale:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 152
    :cond_0
    invoke-virtual {v1}, Ljava/util/TreeSet;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_1

    .line 155
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/TreeSet;->add(Ljava/lang/Object;)Z

    .line 158
    :cond_1
    invoke-virtual {v1}, Ljava/util/TreeSet;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 159
    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_1

    .line 161
    :cond_2
    invoke-virtual {v1}, Ljava/util/TreeSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 162
    invoke-virtual {p0, v2, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 163
    goto :goto_0

    .line 165
    :cond_3
    :goto_1
    return-void
.end method

.method protected createUserDictionaryPreference(Ljava/lang/String;Landroid/app/Activity;)Landroid/support/v7/preference/Preference;
    .locals 3

    .line 174
    new-instance p2, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getPrefContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 175
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.USER_DICTIONARY_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 176
    if-nez p1, :cond_0

    .line 177
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 179
    :cond_0
    const-string v1, ""

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 180
    const v1, 0x7f120eef    # @string/user_dict_settings_all_languages 'For all languages'

    invoke-virtual {p0, v1}, Lcom/android/settings/inputmethod/UserDictionaryList;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 182
    :cond_1
    invoke-static {p1}, Lcom/android/settings/Utils;->createLocaleFromString(Ljava/lang/String;)Ljava/util/Locale;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Locale;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 184
    :goto_0
    const-string v1, "locale"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 185
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "locale"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 187
    :goto_1
    invoke-virtual {p2, v0}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 188
    const-class p1, Lcom/android/settings/inputmethod/UserDictionarySettings;

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 189
    return-object p2
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 49
    const/16 v0, 0x3d

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 60
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getActionBar()Landroid/app/ActionBar;

    move-result-object p1

    const v0, 0x7f120ef6    # @string/user_dict_settings_title 'Personal dictionary'

    invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setTitle(I)V

    .line 63
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    .line 65
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 67
    move-object p1, v0

    goto :goto_0

    .line 65
    :cond_0
    const-string v1, "locale"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 67
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 69
    if-nez v1, :cond_1

    .line 72
    move-object v1, v0

    goto :goto_1

    .line 69
    :cond_1
    const-string v2, "locale"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 72
    :goto_1
    if-eqz v1, :cond_2

    .line 73
    nop

    .line 79
    move-object p1, v1

    goto :goto_2

    .line 74
    :cond_2
    if-eqz p1, :cond_3

    .line 75
    goto :goto_2

    .line 77
    :cond_3
    nop

    .line 79
    move-object p1, v0

    :goto_2
    iput-object p1, p0, Lcom/android/settings/inputmethod/UserDictionaryList;->mLocale:Ljava/lang/String;

    .line 80
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 54
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object p1

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/UserDictionaryList;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 56
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 194
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 195
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/UserDictionaryList;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/UserDictionaryList;->createUserDictSettings(Landroid/support/v7/preference/PreferenceGroup;)V

    .line 196
    return-void
.end method
