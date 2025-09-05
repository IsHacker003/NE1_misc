.class public Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "InputMethodAndSubtypeEnabler.java"


# instance fields
.field private mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method private getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 55
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 56
    invoke-virtual {v0, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 57
    if-eqz v0, :cond_0

    .line 58
    return-object v0

    .line 60
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 61
    if-nez v0, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 33
    const/16 v0, 0x3c

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 66
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 67
    const-string p1, "android.intent.extra.TITLE"

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 68
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setTitle(Ljava/lang/CharSequence;)V

    .line 71
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 38
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string p1, "input_method_id"

    invoke-direct {p0, p1}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getStringExtraFromIntentOrArguments(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 47
    nop

    .line 48
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceManager;->createPreferenceScreen(Landroid/content/Context;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 49
    new-instance v1, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    invoke-direct {v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;-><init>(Landroid/support/v14/preference/PreferenceFragment;)V

    iput-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    .line 50
    iget-object v1, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    invoke-virtual {v1, p0, p1, v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->init(Landroid/support/v14/preference/PreferenceFragment;Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)V

    .line 51
    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->setPreferenceScreen(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 52
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 81
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 82
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->save(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V

    .line 83
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 75
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 76
    iget-object v0, p0, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->mManager:Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;

    invoke-virtual {p0}, Lcom/android/settings/inputmethod/InputMethodAndSubtypeEnabler;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeEnablerManager;->refresh(Landroid/content/Context;Landroid/support/v14/preference/PreferenceFragment;)V

    .line 77
    return-void
.end method
