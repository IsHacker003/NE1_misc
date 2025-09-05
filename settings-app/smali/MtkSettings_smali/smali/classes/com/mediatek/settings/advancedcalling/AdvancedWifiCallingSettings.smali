.class public Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AdvancedWifiCallingSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static sSwitchFlag:Z


# instance fields
.field private mButtonRoaming:Landroid/support/v7/preference/ListPreference;

.field private mButtonUpdateECC:Landroid/support/v7/preference/Preference;

.field private mContext:Landroid/content/Context;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitch:Landroid/widget/Switch;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mValidListener:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, 0x1

    sput-boolean v0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->sSwitchFlag:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mValidListener:Z

    .line 107
    new-instance v0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$1;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)V

    iput-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/widget/Switch;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;Landroid/content/Intent;)V
    .locals 0

    .line 54
    invoke-direct {p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)V
    .locals 0

    .line 54
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->updateScreen()V

    return-void
.end method

.method static synthetic access$302(Z)Z
    .locals 0

    .line 54
    sput-boolean p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->sSwitchFlag:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object p0
.end method

.method static synthetic access$500(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/content/Context;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonUpdateECC:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)Landroid/support/v7/preference/ListPreference;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    return-object p0
.end method

.method private isInSwitchProcess()Z
    .locals 5

    .line 272
    nop

    .line 274
    const/4 v0, 0x0

    :try_start_0
    invoke-static {}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->getInstance()Lcom/mediatek/ims/internal/MtkImsManagerEx;

    move-result-object v1

    .line 275
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/mediatek/ims/internal/MtkImsManagerEx;->getImsState(I)I

    move-result v1
    :try_end_0
    .catch Lcom/android/ims/ImsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 278
    nop

    .line 279
    const-string v2, "OP12AdvancedWifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isInSwitchProcess , imsState = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    .line 276
    :catch_0
    move-exception v1

    .line 277
    return v0
.end method

.method private showAlert(Landroid/content/Intent;)V
    .locals 3

    .line 93
    const-string v0, "alertTitle"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    const-string v1, "alertMessage"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getCharSequenceExtra(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 96
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 97
    invoke-virtual {v1, p1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 98
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 99
    const v0, 0x1080027    # @android:drawable/ic_dialog_alert

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 100
    const v0, 0x104000a    # @android:string/ok

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 102
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 103
    return-void
.end method

.method private updateScreen()V
    .locals 6

    .line 285
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 286
    if-nez v0, :cond_0

    .line 287
    return-void

    .line 289
    :cond_0
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settings/widget/ToggleSwitch;->isChecked()Z

    move-result v1

    .line 290
    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->isInCall()Z

    move-result v0

    .line 291
    const/4 v2, 0x1

    xor-int/2addr v0, v2

    const-string v3, "OP12AdvancedWifiCallingSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateScreen: isWfcEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v5, ", isCallStateIdle: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v3, v0}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 294
    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonUpdateECC:Landroid/support/v7/preference/Preference;

    const/4 v4, 0x0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v5, v2

    goto :goto_0

    :cond_1
    move v5, v4

    :goto_0
    invoke-virtual {v3, v5}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 295
    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    :goto_1
    invoke-virtual {v3, v2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 296
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 130
    const/16 v0, 0x69

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0

    .line 76
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 78
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    .line 80
    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 81
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->getSwitch()Lcom/android/settings/widget/ToggleSwitch;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    .line 82
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 83
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 135
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 136
    const p1, 0x7f15000f    # @xml/advanced_wificalling_settings 'res/xml/advanced_wificalling_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->addPreferencesFromResource(I)V

    .line 138
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    .line 139
    const-string p1, "update_emergency_address_key"

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonUpdateECC:Landroid/support/v7/preference/Preference;

    .line 140
    const-string p1, "roaming_mode"

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/ListPreference;

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    .line 141
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/ListPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 143
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 144
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.ims.REGISTRATION_ERROR"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 145
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "android.intent.action.PHONE_STATE"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 146
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.intent.action.IMS_CONFIG_CHANGED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 147
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .line 87
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 88
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 89
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 180
    iget-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mValidListener:Z

    if-eqz v0, :cond_0

    .line 181
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mValidListener:Z

    .line 182
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 184
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 185
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 5

    .line 257
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    const/4 v1, 0x1

    if-ne p1, v0, :cond_0

    .line 258
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 259
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    .line 260
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    const/4 v0, 0x0

    invoke-static {p2, v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->getWfcMode(Landroid/content/Context;ZI)I

    move-result p2

    .line 261
    const-string v2, "OP12AdvancedWifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onPreferenceChange, buttonMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "\ncurrentMode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 263
    if-eq p1, p2, :cond_0

    .line 264
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v1, v0}, Lcom/mediatek/ims/internal/MtkImsManager;->setWfcMode(Landroid/content/Context;IZI)V

    .line 265
    const-string p2, "OP12AdvancedWifiCallingSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "set WFC Roaming mode : "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    :cond_0
    return v1
.end method

.method public onResume()V
    .locals 5

    .line 151
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 153
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByPlatform(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 155
    iput-boolean v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mValidListener:Z

    .line 157
    :cond_0
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/ims/ImsManager;->isWfcEnabledByUser(Landroid/content/Context;)Z

    move-result v0

    .line 158
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 159
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonUpdateECC:Landroid/support/v7/preference/Preference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 160
    iget-object v2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {v2, v0}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 161
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/mediatek/ims/internal/MtkImsManager;->getWfcMode(Landroid/content/Context;ZI)I

    move-result v0

    .line 162
    const-string v1, "OP12AdvancedWifiCallingSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WFC RoamingMode : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/ListPreference;->setValue(Ljava/lang/String;)V

    .line 166
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->updateScreen()V

    .line 168
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 170
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 171
    const-string v1, "alertShow"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 172
    invoke-direct {p0, v0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->showAlert(Landroid/content/Intent;)V

    .line 174
    :cond_1
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 192
    const-string v0, "OP12AdvancedWifiCallingSettings"

    const-string v1, "OnSwitchChanged"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 193
    invoke-direct {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->isInSwitchProcess()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    .line 194
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string v0, "[onClick] Switching process ongoing"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120001    # @string/Switch_not_in_use_string 'The switch is temporarily unavailable. Please try again later.'

    invoke-static {p1, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object p1

    .line 196
    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    .line 197
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitch:Landroid/widget/Switch;

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 198
    return-void

    .line 200
    :cond_0
    if-eqz p2, :cond_2

    .line 201
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string v0, "Wifi Switch checked"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-static {p1, p2}, Lcom/android/ims/ImsManager;->setWfcSetting(Landroid/content/Context;Z)V

    .line 203
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonUpdateECC:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 204
    iget-object p1, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mButtonRoaming:Landroid/support/v7/preference/ListPreference;

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/ListPreference;->setEnabled(Z)V

    .line 205
    const-string p1, "OP12AdvancedWifiCallingSettings"

    const-string p2, "Wifi Calling ON"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sput-boolean v2, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->sSwitchFlag:Z

    .line 208
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_sleep_policy"

    const/4 v0, 0x2

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    .line 211
    if-eq p1, v0, :cond_1

    .line 212
    invoke-virtual {p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "wifi_sleep_policy"

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 215
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 216
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    const v0, 0x7f1210e2    # @string/wifi_sleep_policy_msg 'In order to improve your Wi-Fi Calling experience, your Wi-Fi settings has been changed so that Wi-F ...'

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 217
    const p2, 0x104000a    # @android:string/ok

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 218
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 219
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 221
    :cond_1
    goto :goto_0

    .line 222
    :cond_2
    const-string p2, "OP12AdvancedWifiCallingSettings"

    const-string v0, "Wifi Switch Unchecked"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    sget-boolean p2, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->sSwitchFlag:Z

    if-eqz p2, :cond_3

    .line 224
    invoke-virtual {p1, v2}, Landroid/widget/Switch;->setChecked(Z)V

    .line 225
    iget-object p2, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, v2}, Lcom/android/settings/widget/SwitchBar;->setTextViewLabelAndBackground(Z)V

    .line 226
    new-instance p2, Landroid/app/AlertDialog$Builder;

    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    invoke-direct {p2, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 227
    invoke-virtual {p2, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 228
    iget-object v0, p0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;->mContext:Landroid/content/Context;

    const v1, 0x7f1200c1    # @string/advance_wifi_calling_disable_msg 'If you turn off Wi-Fi Calling, all your future calls will go over the mobile network. If mobile netw ...'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 229
    const v0, 0x7f120e37    # @string/turn_off_wifi_calling 'Turn off Wi-Fi Calling'

    new-instance v1, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;

    invoke-direct {v1, p0, p1}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$2;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;Landroid/widget/Switch;)V

    invoke-virtual {p2, v0, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 242
    const/high16 p1, 0x1040000    # @android:string/cancel

    new-instance v0, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$3;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings$3;-><init>(Lcom/mediatek/settings/advancedcalling/AdvancedWifiCallingSettings;)V

    invoke-virtual {p2, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 249
    invoke-virtual {p2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 250
    invoke-virtual {p1}, Landroid/app/AlertDialog;->show()V

    .line 253
    :cond_3
    :goto_0
    return-void
.end method
