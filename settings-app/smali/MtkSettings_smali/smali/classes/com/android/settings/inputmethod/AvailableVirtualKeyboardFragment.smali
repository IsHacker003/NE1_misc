.class public final Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AvailableVirtualKeyboardFragment.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mDpm:Landroid/app/admin/DevicePolicyManager;

.field private mImm:Landroid/view/inputmethod/InputMethodManager;

.field private final mInputMethodPreferenceList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/inputmethod/InputMethodPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 171
    new-instance v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;

    invoke-direct {v0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment$1;-><init>()V

    sput-object v0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 53
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    return-void
.end method

.method private static getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 112
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getServiceInfo()Landroid/content/pm/ServiceInfo;

    move-result-object v0

    .line 113
    if-eqz v0, :cond_0

    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 114
    :goto_0
    invoke-virtual {p1}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 115
    const/4 v2, 0x0

    if-eqz v0, :cond_6

    if-eqz v1, :cond_6

    if-nez p1, :cond_1

    goto :goto_1

    .line 120
    :cond_1
    iget v3, v0, Landroid/content/pm/ServiceInfo;->logo:I

    invoke-static {p0, p1, v3, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 121
    if-eqz v3, :cond_2

    .line 122
    return-object v3

    .line 124
    :cond_2
    iget v0, v0, Landroid/content/pm/ServiceInfo;->icon:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 125
    if-eqz v0, :cond_3

    .line 126
    return-object v0

    .line 130
    :cond_3
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->logo:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 131
    if-eqz v0, :cond_4

    .line 132
    return-object v0

    .line 134
    :cond_4
    iget v0, v1, Landroid/content/pm/ApplicationInfo;->icon:I

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 135
    if-eqz p0, :cond_5

    .line 136
    return-object p0

    .line 138
    :cond_5
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0

    .line 116
    :cond_6
    :goto_1
    new-instance p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    return-object p0
.end method

.method static synthetic lambda$updateInputMethodPreferenceViews$0(Ljava/text/Collator;Lcom/android/settingslib/inputmethod/InputMethodPreference;Lcom/android/settingslib/inputmethod/InputMethodPreference;)I
    .locals 0

    .line 160
    invoke-virtual {p1, p2, p0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->compareTo(Lcom/android/settingslib/inputmethod/InputMethodPreference;Ljava/text/Collator;)I

    move-result p0

    return p0
.end method

.method private static loadDrawable(Landroid/content/pm/PackageManager;Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 99
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 100
    return-object v0

    .line 103
    :cond_0
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/pm/PackageManager;->getDrawable(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    .line 104
    :catch_0
    move-exception p0

    .line 105
    return-object v0
.end method

.method private updateInputMethodPreferenceViews()V
    .locals 15

    .line 142
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 144
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 145
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getPermittedInputMethodsForCurrentUser()Ljava/util/List;

    move-result-object v0

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPrefContext()Landroid/content/Context;

    move-result-object v7

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 148
    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInputMethodList()Ljava/util/List;

    move-result-object v9

    .line 149
    const/4 v10, 0x0

    if-nez v9, :cond_0

    .line 150
    move v11, v10

    goto :goto_0

    .line 149
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    .line 150
    move v11, v1

    :goto_0
    move v12, v10

    :goto_1
    if-ge v12, v11, :cond_3

    .line 151
    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v13, v1

    check-cast v13, Landroid/view/inputmethod/InputMethodInfo;

    .line 152
    if-eqz v0, :cond_2

    .line 153
    invoke-virtual {v13}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_2

    .line 154
    :cond_1
    move v5, v10

    goto :goto_3

    .line 153
    :cond_2
    :goto_2
    nop

    .line 154
    const/4 v1, 0x1

    move v5, v1

    :goto_3
    new-instance v14, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    const/4 v4, 0x1

    move-object v1, v14

    move-object v2, v7

    move-object v3, v13

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcom/android/settingslib/inputmethod/InputMethodPreference;-><init>(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;ZZLcom/android/settingslib/inputmethod/InputMethodPreference$OnSavePreferenceListener;)V

    .line 156
    invoke-static {v8, v13}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getInputMethodIcon(Landroid/content/pm/PackageManager;Landroid/view/inputmethod/InputMethodInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v14, v1}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v1, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 150
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 159
    :cond_3
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    .line 160
    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    new-instance v2, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$jwIjaxSxVSRnK0I3ZX1KVHtd2wk;

    invoke-direct {v2, v0}, Lcom/android/settings/inputmethod/-$$Lambda$AvailableVirtualKeyboardFragment$jwIjaxSxVSRnK0I3ZX1KVHtd2wk;-><init>(Ljava/text/Collator;)V

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->sort(Ljava/util/Comparator;)V

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 162
    :goto_4
    if-ge v10, v11, :cond_4

    .line 163
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 164
    invoke-virtual {v0, v10}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->setOrder(I)V

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 166
    invoke-static {v0}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->removeUnnecessaryNonPersistentPreference(Landroid/support/v7/preference/Preference;)V

    .line 167
    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 162
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 169
    :cond_4
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 92
    const/16 v0, 0x15b

    return v0
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 0

    .line 60
    const p1, 0x7f150022    # @xml/available_virtual_keyboard 'res/xml/available_virtual_keyboard.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->addPreferencesFromResource(I)V

    .line 61
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 63
    invoke-static {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->getInstance(Landroid/content/Context;)Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    .line 64
    const-class p2, Landroid/view/inputmethod/InputMethodManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/inputmethod/InputMethodManager;

    iput-object p2, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 65
    const-class p2, Landroid/app/admin/DevicePolicyManager;

    invoke-virtual {p1, p2}, Landroid/app/Activity;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/admin/DevicePolicyManager;

    iput-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 66
    return-void
.end method

.method public onResume()V
    .locals 1

    .line 70
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 74
    invoke-direct {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->updateInputMethodPreferenceViews()V

    .line 75
    return-void
.end method

.method public onSaveInputMethodPreference(Lcom/android/settingslib/inputmethod/InputMethodPreference;)V
    .locals 2

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 81
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mImm:Landroid/view/inputmethod/InputMethodManager;

    .line 82
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 81
    invoke-static {p0, v0, v1, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->saveInputMethodSubtypeList(Landroid/support/v14/preference/PreferenceFragment;Landroid/content/ContentResolver;Ljava/util/List;Z)V

    .line 84
    iget-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodSettingValues:Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;

    invoke-virtual {p1}, Lcom/android/settingslib/inputmethod/InputMethodSettingValuesWrapper;->refreshAllInputMethodAndSubtypes()V

    .line 85
    iget-object p1, p0, Lcom/android/settings/inputmethod/AvailableVirtualKeyboardFragment;->mInputMethodPreferenceList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settingslib/inputmethod/InputMethodPreference;

    .line 86
    invoke-virtual {v0}, Lcom/android/settingslib/inputmethod/InputMethodPreference;->updatePreferenceViews()V

    .line 87
    goto :goto_1

    .line 88
    :cond_1
    return-void
.end method
