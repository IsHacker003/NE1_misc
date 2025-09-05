.class public Lcom/android/settings/security/ScreenPinningSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ScreenPinningSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-string v0, "use_screen_lock"

    sput-object v0, Lcom/android/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    .line 217
    new-instance v0, Lcom/android/settings/security/ScreenPinningSettings$2;

    invoke-direct {v0}, Lcom/android/settings/security/ScreenPinningSettings$2;-><init>()V

    sput-object v0, Lcom/android/settings/security/ScreenPinningSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 50
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/ScreenPinningSettings;Z)Z
    .locals 0

    .line 50
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    move-result p0

    return p0
.end method

.method private getCurrentSecurityTitle()I
    .locals 2

    .line 165
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 165
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 167
    const/high16 v1, 0x10000

    if-eq v0, v1, :cond_2

    const/high16 v1, 0x20000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x30000

    if-eq v0, v1, :cond_1

    const/high16 v1, 0x40000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x50000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x60000

    if-eq v0, v1, :cond_0

    const/high16 v1, 0x80000

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 175
    :cond_0
    const v0, 0x7f120b8a    # @string/screen_pinning_unlock_password 'Ask for password before unpinning'

    return v0

    .line 170
    :cond_1
    const v0, 0x7f120b8c    # @string/screen_pinning_unlock_pin 'Ask for PIN before unpinning'

    return v0

    .line 177
    :cond_2
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isLockPatternEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 178
    const v0, 0x7f120b8b    # @string/screen_pinning_unlock_pattern 'Ask for unlock pattern before unpinning'

    return v0

    .line 181
    :cond_3
    :goto_0
    const v0, 0x7f120b89    # @string/screen_pinning_unlock_none 'Lock device when unpinning'

    return v0
.end method

.method private static isLockToAppEnabled(Landroid/content/Context;)Z
    .locals 2

    .line 104
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "lock_to_app_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method private isScreenLockUsed()Z
    .locals 3

    .line 120
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    .line 121
    nop

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "lock_to_app_exit_locked"

    .line 121
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private setLockToAppEnabled(Z)V
    .locals 2

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_enabled"

    .line 110
    nop

    .line 109
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 111
    if-eqz p1, :cond_0

    .line 113
    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    .line 115
    :cond_0
    return-void
.end method

.method private setScreenLockUsed(Z)Z
    .locals 2

    .line 128
    if-eqz p1, :cond_0

    .line 129
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 130
    nop

    .line 131
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v0

    .line 132
    if-nez v0, :cond_0

    .line 133
    new-instance p1, Landroid/content/Intent;

    const-string v0, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    const-string v0, "minimum_quality"

    const/high16 v1, 0x10000

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 137
    const/16 v0, 0x2b

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/security/ScreenPinningSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 138
    const/4 p1, 0x0

    return p1

    .line 141
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsedSetting(Z)V

    .line 142
    const/4 p1, 0x1

    return p1
.end method

.method private setScreenLockUsedSetting(Z)V
    .locals 2

    .line 146
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "lock_to_app_exit_locked"

    .line 147
    nop

    .line 146
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 148
    return-void
.end method


# virtual methods
.method public getHelpResource()I
    .locals 1

    .line 82
    const v0, 0x7f120711    # @string/help_url_screen_pinning ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 62
    const/16 v0, 0x56

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 70
    const v0, 0x7f120b88    # @string/screen_pinning_title 'Screen pinning'

    invoke-virtual {p1, v0}, Lcom/android/settings/SettingsActivity;->setTitle(I)V

    .line 71
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {v0, p1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mLockPatternUtils:Lcom/android/internal/widget/LockPatternUtils;

    .line 74
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 75
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 76
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 77
    iget-object p1, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 78
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 152
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 153
    const/16 p2, 0x2b

    if-ne p1, p2, :cond_1

    .line 154
    new-instance p1, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 155
    nop

    .line 156
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p2

    .line 155
    invoke-virtual {p1, p2}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 158
    :goto_0
    invoke-direct {p0, p1}, Lcom/android/settings/security/ScreenPinningSettings;->setScreenLockUsed(Z)Z

    .line 160
    iget-object p2, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p2, p1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 162
    :cond_1
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 97
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 99
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 100
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 101
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 0

    .line 189
    invoke-direct {p0, p2}, Lcom/android/settings/security/ScreenPinningSettings;->setLockToAppEnabled(Z)V

    .line 190
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->updateDisplay()V

    .line 191
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .line 87
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    const p2, 0x102003f    # @android:id/list_container

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    .line 90
    const v0, 0x7f0d0132    # @layout/screen_pinning_instructions 'res/layout/screen_pinning_instructions.xml'

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 91
    invoke-virtual {p1, p2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0, p2}, Lcom/android/settings/security/ScreenPinningSettings;->setEmptyView(Landroid/view/View;)V

    .line 93
    return-void
.end method

.method public updateDisplay()V
    .locals 2

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_0

    .line 196
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 198
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/security/ScreenPinningSettings;->isLockToAppEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    const v0, 0x7f150090    # @xml/screen_pinning_settings 'res/xml/screen_pinning_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/security/ScreenPinningSettings;->addPreferencesFromResource(I)V

    .line 200
    invoke-virtual {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 202
    sget-object v1, Lcom/android/settings/security/ScreenPinningSettings;->KEY_USE_SCREEN_LOCK:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    .line 203
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    new-instance v1, Lcom/android/settings/security/ScreenPinningSettings$1;

    invoke-direct {v1, p0}, Lcom/android/settings/security/ScreenPinningSettings$1;-><init>(Lcom/android/settings/security/ScreenPinningSettings;)V

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 209
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->isScreenLockUsed()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 210
    iget-object v0, p0, Lcom/android/settings/security/ScreenPinningSettings;->mUseScreenLock:Landroid/support/v14/preference/SwitchPreference;

    invoke-direct {p0}, Lcom/android/settings/security/ScreenPinningSettings;->getCurrentSecurityTitle()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(I)V

    .line 212
    :cond_1
    return-void
.end method
