.class public Lcom/android/settings/security/CryptKeeperSettings;
.super Lcom/android/settings/core/InstrumentedPreferenceFragment;
.source "CryptKeeperSettings.java"


# instance fields
.field private mBatteryWarning:Landroid/view/View;

.field private mContentView:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private mInitiateListener:Landroid/view/View$OnClickListener;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mPowerWarning:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 46
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;-><init>()V

    .line 63
    new-instance v0, Lcom/android/settings/security/CryptKeeperSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/security/CryptKeeperSettings$1;-><init>(Lcom/android/settings/security/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 91
    new-instance v0, Lcom/android/settings/security/CryptKeeperSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/security/CryptKeeperSettings$2;-><init>(Lcom/android/settings/security/CryptKeeperSettings;)V

    iput-object v0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/widget/Button;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/security/CryptKeeperSettings;)Landroid/view/View;
    .locals 0

    .line 46
    iget-object p0, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/security/CryptKeeperSettings;I)Z
    .locals 0

    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/security/CryptKeeperSettings;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method private addEncryptionInfoToPreference(Landroid/support/v7/preference/Preference;ILjava/lang/String;)V
    .locals 2

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 212
    const-string v1, "device_policy"

    .line 213
    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 214
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getDoNotAskCredentialsOnBoot()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 215
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    const-string p3, "type"

    const/4 v0, 0x1

    invoke-virtual {p2, p3, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 216
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "password"

    const-string p3, ""

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "type"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 219
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object p1

    const-string p2, "password"

    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :goto_0
    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 4

    .line 170
    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 171
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 173
    invoke-virtual {v1}, Lcom/android/settings/password/ChooseLockSettingsHelper;->utils()Lcom/android/internal/widget/LockPatternUtils;

    move-result-object v2

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->getKeyguardStoredPasswordQuality(I)I

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_0

    .line 175
    const-string p1, ""

    invoke-direct {p0, v3, p1}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    .line 176
    return v3

    .line 179
    :cond_0
    const v2, 0x7f120439    # @string/crypt_keeper_encrypt_title 'Encrypt phone'

    .line 180
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 179
    invoke-virtual {v1, p1, v0, v3}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;Z)Z

    move-result p1

    return p1
.end method

.method private showFinalConfirmation(ILjava/lang/String;)V
    .locals 2

    .line 203
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 204
    const-class v1, Lcom/android/settings/CryptKeeperConfirm;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 205
    const v1, 0x7f120433    # @string/crypt_keeper_confirm_title 'Encrypt?'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 206
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/security/CryptKeeperSettings;->addEncryptionInfoToPreference(Landroid/support/v7/preference/Preference;ILjava/lang/String;)V

    .line 207
    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, v0}, Lcom/android/settings/SettingsActivity;->onPreferenceStartFragment(Landroid/support/v14/preference/PreferenceFragment;Landroid/support/v7/preference/Preference;)Z

    .line 208
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 125
    const/16 v0, 0x20

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .line 146
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 147
    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 148
    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 149
    const-string v1, "android.app.action.START_ENCRYPTION"

    invoke-virtual {v0}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    const-string v0, "device_policy"

    .line 151
    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 152
    if-eqz v0, :cond_0

    .line 153
    invoke-virtual {v0}, Landroid/app/admin/DevicePolicyManager;->getStorageEncryptionStatus()I

    move-result v0

    .line 154
    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    .line 156
    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 160
    :cond_0
    const v0, 0x7f120439    # @string/crypt_keeper_encrypt_title 'Encrypt phone'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 161
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 185
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 187
    const/16 v0, 0x37

    if-eq p1, v0, :cond_0

    .line 188
    return-void

    .line 193
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    if-eqz p3, :cond_1

    .line 194
    const-string p2, "type"

    invoke-virtual {p3, p2, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 195
    const-string p2, "password"

    invoke-virtual {p3, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 196
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_1

    .line 197
    invoke-direct {p0, p1, p2}, Lcom/android/settings/security/CryptKeeperSettings;->showFinalConfirmation(ILjava/lang/String;)V

    .line 200
    :cond_1
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 0

    .line 108
    const p2, 0x7f0d006d    # @layout/crypt_keeper_settings 'res/layout/crypt_keeper_settings.xml'

    const/4 p3, 0x0

    invoke-virtual {p1, p2, p3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    .line 110
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 111
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string p2, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 113
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const p2, 0x7f0a01b3    # @id/initiate_encrypt

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    .line 114
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    iget-object p2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mInitiateButton:Landroid/widget/Button;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 117
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const p2, 0x7f0a03d9    # @id/warning_unplugged

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mPowerWarning:Landroid/view/View;

    .line 118
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    const p2, 0x7f0a03d8    # @id/warning_low_charge

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mBatteryWarning:Landroid/view/View;

    .line 120
    iget-object p1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mContentView:Landroid/view/View;

    return-object p1
.end method

.method public onPause()V
    .locals 2

    .line 136
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onPause()V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 138
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 130
    invoke-super {p0}, Lcom/android/settings/core/InstrumentedPreferenceFragment;->onResume()V

    .line 131
    invoke-virtual {p0}, Lcom/android/settings/security/CryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/android/settings/security/CryptKeeperSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 132
    return-void
.end method
