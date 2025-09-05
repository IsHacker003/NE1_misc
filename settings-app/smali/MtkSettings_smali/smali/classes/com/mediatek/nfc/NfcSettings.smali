.class public Lcom/mediatek/nfc/NfcSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "NfcSettings.java"

# interfaces
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/nfc/NfcSettings$QueryTask;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private final mActiveCardModeObserver:Landroid/database/ContentObserver;

.field private mActivity:Lcom/android/settings/SettingsActivity;

.field private mAndroidBeam:Landroid/support/v7/preference/Preference;

.field private mCardEmulationExist:Z

.field private mCardEmulationPref:Landroid/support/v7/preference/Preference;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private mNfcAdapter:Landroid/nfc/NfcAdapter;

.field private mNfcBeamOpen:Z

.field private mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

.field private mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

.field private mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

.field private mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

.field private mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

.field private mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

.field private mNfcState:I

.field private mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

.field private mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 389
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$3;

    invoke-direct {v0}, Lcom/mediatek/nfc/NfcSettings$3;-><init>()V

    sput-object v0, Lcom/mediatek/nfc/NfcSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 61
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 91
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    .line 92
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    .line 93
    iput v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    .line 94
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .line 96
    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 101
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/NfcSettings$1;-><init>(Lcom/mediatek/nfc/NfcSettings;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 122
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/NfcSettings$2;-><init>(Lcom/mediatek/nfc/NfcSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/NfcSettings;)Landroid/nfc/NfcAdapter;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    return-object p0
.end method

.method static synthetic access$100(Lcom/mediatek/nfc/NfcSettings;)Lcom/mediatek/nfc/NfcSettings$QueryTask;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    return-object p0
.end method

.method static synthetic access$102(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$QueryTask;)Lcom/mediatek/nfc/NfcSettings$QueryTask;
    .locals 0

    .line 61
    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    return-object p1
.end method

.method static synthetic access$300(Lcom/mediatek/nfc/NfcSettings;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    return p0
.end method

.method static synthetic access$400(Lcom/mediatek/nfc/NfcSettings;)Landroid/content/ContentResolver;
    .locals 0

    .line 61
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/mediatek/nfc/NfcSettings;)Ljava/lang/String;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/mediatek/nfc/NfcSettings;)Landroid/support/v7/preference/Preference;
    .locals 0

    .line 61
    iget-object p0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    return-object p0
.end method

.method static synthetic access$700(Lcom/mediatek/nfc/NfcSettings;)I
    .locals 0

    .line 61
    iget p0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    return p0
.end method

.method static synthetic access$702(Lcom/mediatek/nfc/NfcSettings;I)I
    .locals 0

    .line 61
    iput p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    return p1
.end method

.method static synthetic access$800(Lcom/mediatek/nfc/NfcSettings;)Z
    .locals 0

    .line 61
    iget-boolean p0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    return p0
.end method

.method static synthetic access$802(Lcom/mediatek/nfc/NfcSettings;Z)Z
    .locals 0

    .line 61
    iput-boolean p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    return p1
.end method

.method static synthetic access$900(Lcom/mediatek/nfc/NfcSettings;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus(I)V

    return-void
.end method

.method private addNfcServiceStatusPref()V
    .locals 2

    .line 221
    new-instance v0, Lcom/mediatek/nfc/NfcServiceHelper;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-direct {v0, v1}, Lcom/mediatek/nfc/NfcServiceHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    .line 222
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceScreen;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v7/preference/PreferenceManager;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

    .line 223
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

    const v1, 0x7f12095f    # @string/nfc_service_status_title 'Non-payment services'

    invoke-virtual {p0, v1}, Lcom/mediatek/nfc/NfcSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 224
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

    const-class v1, Lcom/mediatek/nfc/NfcServiceStatus;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 226
    return-void
.end method

.method private getEmulationOffConstant()V
    .locals 4

    .line 306
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 308
    if-nez v0, :cond_0

    .line 309
    const-string v0, "Off"

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    goto :goto_0

    .line 311
    :cond_0
    const-string v1, "[,]"

    .line 312
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 313
    array-length v2, v1

    .line 314
    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v3, :cond_1

    .line 315
    add-int/lit8 v2, v2, -0x1

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 316
    const-string v1, "@M_NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC_MULTISE_LIST is"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", EMULATION_OFF is "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    :cond_1
    :goto_0
    return-void
.end method

.method private initPreferences()V
    .locals 6

    .line 190
    const-string v0, "nfc_p2p_mode"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

    .line 191
    const-string v0, "nfc_android_beam"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/support/v7/preference/Preference;

    .line 192
    const-string v0, "nfc_rw_tag"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

    .line 195
    const-string v0, "nfc_card_emulation"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    .line 196
    const-string v0, "nfc_card_emulation_category"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/PreferenceCategory;

    .line 199
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_on"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 201
    const-string v2, "@M_NfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "NFC_MULTISE_ON is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_1

    if-eqz v0, :cond_0

    if-nez v1, :cond_0

    goto :goto_0

    .line 208
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->getEmulationOffConstant()V

    goto :goto_1

    .line 205
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 206
    iput-boolean v3, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    .line 212
    :goto_1
    const-string v0, "nfc_hce_pay"

    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    .line 215
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    invoke-virtual {v0}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->isShowOverflowMenu()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->addNfcServiceStatusPref()V

    .line 218
    :cond_2
    return-void
.end method

.method private updatePreferenceEnabledStatus(I)V
    .locals 3

    .line 229
    const-string v0, "@M_NfcSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updatePreferenceEnabledStatus nfc state :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const v0, 0x7f1200ec    # @string/android_beam_off_summary 'Off'

    const/4 v1, 0x3

    if-ne p1, v1, :cond_2

    .line 232
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x1

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 233
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 234
    iget-boolean p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcBeamOpen:Z

    if-eqz p1, :cond_0

    .line 235
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/support/v7/preference/Preference;

    const v0, 0x7f1200ed    # @string/android_beam_on_summary 'Ready to transmit app content via NFC'

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_0

    .line 237
    :cond_0
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 239
    :goto_0
    iget-boolean p1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz p1, :cond_1

    .line 240
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 242
    :cond_1
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    goto :goto_1

    .line 244
    :cond_2
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 245
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 246
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 247
    iget-boolean p1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz p1, :cond_3

    .line 248
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 250
    :cond_3
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v1}, Landroid/support/v14/preference/SwitchPreference;->setEnabled(Z)V

    .line 252
    :goto_1
    return-void
.end method

.method private updatePreferences()V
    .locals 6

    .line 258
    const-string v0, "@M_NfcSettings"

    const-string v1, "updatePreferences"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    iget v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcState:I

    invoke-direct {p0, v0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferenceEnabledStatus(I)V

    .line 263
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    .line 264
    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getModeFlag(I)I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_0

    .line 263
    move v1, v3

    goto :goto_0

    .line 264
    :cond_0
    nop

    .line 263
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 266
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    .line 267
    invoke-virtual {v1, v3}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getModeFlag(I)I

    move-result v1

    if-ne v1, v3, :cond_1

    .line 266
    move v1, v3

    goto :goto_1

    .line 267
    :cond_1
    nop

    .line 266
    move v1, v2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 268
    iget-boolean v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationExist:Z

    if-eqz v0, :cond_3

    .line 269
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 271
    const-string v1, "@M_NfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatePreferences, active mode is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " EMULATION_OFF is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 275
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    const v1, 0x7f1200ec    # @string/android_beam_off_summary 'Off'

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    goto :goto_2

    .line 277
    :cond_2
    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 281
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_hce_on"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 283
    if-ne v3, v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v3}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_3

    .line 286
    :cond_4
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0, v2}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 289
    :goto_3
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_rf_field_active"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 291
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-nez v0, :cond_5

    move v4, v3

    goto :goto_4

    :cond_5
    move v4, v2

    :goto_4
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 292
    const-string v1, "@M_NfcSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Read the value Global.NFC_RF_FIELD_ACTIVE : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

    if-eqz v0, :cond_6

    .line 295
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    invoke-virtual {v0}, Lcom/mediatek/nfc/NfcServiceHelper;->initServiceList()V

    .line 296
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceStatusPref:Landroid/support/v7/preference/Preference;

    const v1, 0x7f12095e    # @string/nfc_service_status_summary '%1$d of %2$d are enabled'

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    .line 297
    invoke-virtual {v5}, Lcom/mediatek/nfc/NfcServiceHelper;->getSelectServiceCount()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcServiceHelper:Lcom/mediatek/nfc/NfcServiceHelper;

    .line 298
    invoke-virtual {v2}, Lcom/mediatek/nfc/NfcServiceHelper;->getAllServiceCount()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v4, v3

    .line 296
    invoke-virtual {p0, v1, v4}, Lcom/mediatek/nfc/NfcSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 300
    :cond_6
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 434
    const/16 v0, 0x46

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 169
    const-string p1, "@M_NfcSettings"

    const-string v0, "onActivityCreated() "

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-virtual {p1}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 172
    new-instance p1, Lcom/mediatek/nfc/MtkNfcEnabler;

    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    invoke-direct {p1, v0, v1, v2}, Lcom/mediatek/nfc/MtkNfcEnabler;-><init>(Landroid/content/Context;Lcom/android/settings/widget/SwitchBar;Landroid/nfc/NfcAdapter;)V

    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    .line 173
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 144
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 146
    const p1, 0x7f150073    # @xml/nfc_settings 'res/xml/nfc_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/NfcSettings;->addPreferencesFromResource(I)V

    .line 148
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    check-cast p1, Lcom/android/settings/SettingsActivity;

    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    .line 150
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {p1}, Landroid/nfc/NfcAdapter;->getDefaultAdapter(Landroid/content/Context;)Landroid/nfc/NfcAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    .line 151
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    if-nez p1, :cond_0

    .line 152
    const-string p1, "@M_NfcSettings"

    const-string v0, "Nfc adapter is null, finish Nfc settings"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 154
    return-void

    .line 156
    :cond_0
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_NFC_ADDON_SUPPORT:Z

    if-eqz p1, :cond_1

    .line 157
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mActivity:Lcom/android/settings/SettingsActivity;

    invoke-static {p1}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->getDefaultAdapter(Landroid/content/Context;)Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    .line 159
    :cond_1
    new-instance p1, Landroid/content/IntentFilter;

    const-string v0, "android.nfc.action.ADAPTER_STATE_CHANGED"

    invoke-direct {p1, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 161
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 162
    iget-object p1, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 163
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->initPreferences()V

    .line 164
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .line 177
    const-string v0, "@M_NfcSettings"

    const-string v1, "onDestroyView, mSwitchBar removeOnSwitchChangeListener"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->teardownSwitchBar()V

    .line 183
    :cond_0
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    .line 184
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 375
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 376
    const-string v0, "@M_NfcSettings"

    const-string v1, "onPause rm observer "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 379
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    if-eqz v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->cancel(Z)Z

    .line 381
    const-string v0, "@M_NfcSettings"

    const-string v1, "mQueryTask.cancel(true)"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    :cond_0
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 384
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_1

    .line 385
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->pause()V

    .line 387
    :cond_1
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 4

    .line 323
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mAndroidBeam:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 324
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/nfc/AndroidBeam;

    .line 325
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f1200ee    # @string/android_beam_settings_title 'Android Beam'

    .line 326
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 327
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 328
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 329
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto/16 :goto_2

    .line 330
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_2

    .line 331
    const-string v0, "@M_NfcSettings"

    const-string v1, "p2p mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcP2pModePref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 334
    move v2, v3

    goto :goto_0

    .line 333
    :cond_1
    nop

    .line 334
    :goto_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    const/4 v1, 0x4

    invoke-virtual {v0, v1, v2}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->setModeFlag(II)V

    .line 335
    goto/16 :goto_2

    :cond_2
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 336
    const-string v0, "@M_NfcSettings"

    const-string v1, "tag rw mode"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcRwTagPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 339
    move v2, v3

    goto :goto_1

    .line 338
    :cond_3
    nop

    .line 339
    :goto_1
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcSettingsAdapter:Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;

    invoke-virtual {v0, v3, v2}, Lcom/mediatek/nfcsettingsadapter/NfcSettingsAdapter;->setModeFlag(II)V

    .line 340
    goto :goto_2

    :cond_4
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mCardEmulationPref:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 341
    const-string v0, "@M_NfcSettings"

    const-string v2, "card emulation mode"

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v0, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/mediatek/nfc/CardEmulationSettings;

    .line 343
    invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v2, 0x7f120941    # @string/nfc_card_emulation 'Card emulation'

    .line 344
    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 345
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getMetricsCategory()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 346
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 347
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    goto :goto_2

    .line 348
    :cond_5
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 349
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcTapPayPref:Landroid/support/v14/preference/SwitchPreference;

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v0

    .line 350
    const-string v1, "@M_NfcSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "pay tap "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_hce_on"

    .line 352
    nop

    .line 351
    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 354
    :cond_6
    :goto_2
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z

    move-result p1

    return p1
.end method

.method public onResume()V
    .locals 4

    .line 358
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 359
    const-string v0, "@M_NfcSettings"

    const-string v1, "onResume "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 360
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcEnabler:Lcom/mediatek/nfc/MtkNfcEnabler;

    invoke-virtual {v0}, Lcom/mediatek/nfc/MtkNfcEnabler;->resume()V

    .line 363
    :cond_0
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mNfcAdapter:Landroid/nfc/NfcAdapter;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 364
    new-instance v0, Lcom/mediatek/nfc/NfcSettings$QueryTask;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/mediatek/nfc/NfcSettings$QueryTask;-><init>(Lcom/mediatek/nfc/NfcSettings;Lcom/mediatek/nfc/NfcSettings$1;)V

    iput-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    .line 365
    iget-object v0, p0, Lcom/mediatek/nfc/NfcSettings;->mQueryTask:Lcom/mediatek/nfc/NfcSettings$QueryTask;

    new-array v2, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/mediatek/nfc/NfcSettings$QueryTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 367
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/nfc/NfcSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v2, v3}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 368
    invoke-virtual {p0}, Lcom/mediatek/nfc/NfcSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v2, "nfc_multise_active"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    iget-object v3, p0, Lcom/mediatek/nfc/NfcSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v2, v1, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 371
    invoke-direct {p0}, Lcom/mediatek/nfc/NfcSettings;->updatePreferences()V

    .line 372
    return-void
.end method
