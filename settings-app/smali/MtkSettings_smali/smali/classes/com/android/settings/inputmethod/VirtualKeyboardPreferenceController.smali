.class public Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "VirtualKeyboardPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private final mDpm:Landroid/app/admin/DevicePolicyManager;

.field private final mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 42
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 43
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    .line 44
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 45
    iget-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const-string v0, "input_method"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/inputmethod/InputMethodManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 46
    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 55
    const-string v0, "virtual_keyboard_pref"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 2

    .line 50
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05003f    # @bool/config_show_virtual_keyboard_pref 'true'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 9

    .line 60
    iget-object v0, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mImm:Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->getEnabledInputMethodList()Ljava/util/List;

    move-result-object v0

    .line 61
    const v1, 0x7f120da5    # @string/summary_empty ''

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 63
    return-void

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v2}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v2

    .line 67
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 69
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/inputmethod/InputMethodInfo;

    .line 70
    if-eqz v2, :cond_2

    .line 71
    invoke-virtual {v4}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_1

    .line 72
    :cond_1
    move v5, v6

    goto :goto_2

    .line 71
    :cond_2
    :goto_1
    nop

    .line 72
    :goto_2
    if-nez v5, :cond_3

    .line 73
    goto :goto_0

    .line 75
    :cond_3
    iget-object v5, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 76
    goto :goto_0

    .line 77
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 78
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 79
    return-void

    .line 82
    :cond_5
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    .line 84
    const/4 v1, 0x0

    .line 85
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 86
    if-nez v1, :cond_6

    .line 87
    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    .line 89
    :cond_6
    iget-object v4, p0, Lcom/android/settings/inputmethod/VirtualKeyboardPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f12076f    # @string/join_many_items_middle '%1$s, %2$s'

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v1, v8, v6

    .line 90
    invoke-virtual {v0, v3}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v8, v5

    .line 89
    invoke-virtual {v4, v7, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 92
    :goto_4
    goto :goto_3

    .line 93
    :cond_7
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 94
    return-void
.end method
