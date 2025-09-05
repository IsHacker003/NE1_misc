.class public Lcom/mediatek/nfc/CardEmulationSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "CardEmulationSettings.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;


# static fields
.field private static final CATEGORY_KEY:Ljava/lang/String; = "card_emulation_settings_category"

.field private static final DEFAULT_MODE:Ljava/lang/String; = "SIM1"

.field private static final TAG:Ljava/lang/String; = "CardEmulationSettings"


# instance fields
.field private EMULATION_OFF:Ljava/lang/String;

.field private final mActiveCardModeObserver:Landroid/database/ContentObserver;

.field private mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

.field private final mCardModeListObserver:Landroid/database/ContentObserver;

.field private final mCardSwitchingObserver:Landroid/database/ContentObserver;

.field private final mCardtransactionObserver:Landroid/database/ContentObserver;

.field private mEmptyView:Landroid/widget/TextView;

.field private mIntentFilter:Landroid/content/IntentFilter;

.field private final mItemKeys:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mItemPreferences:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/mediatek/nfc/SecurityItemPreference;",
            ">;"
        }
    .end annotation
.end field

.field private mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;

.field private mUpdateStatusOnly:Z


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 51
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 74
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$1;

    invoke-direct {v0, p0}, Lcom/mediatek/nfc/CardEmulationSettings$1;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 335
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$2;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$2;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    .line 343
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$3;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$3;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    .line 351
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$4;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$4;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    .line 360
    new-instance v0, Lcom/mediatek/nfc/CardEmulationSettings$5;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    invoke-direct {v0, p0, v1}, Lcom/mediatek/nfc/CardEmulationSettings$5;-><init>(Lcom/mediatek/nfc/CardEmulationSettings;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/nfc/CardEmulationSettings;)V
    .locals 0

    .line 51
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    return-void
.end method

.method private addItemPreference()V
    .locals 6

    .line 237
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v0

    .line 238
    if-eqz v0, :cond_0

    .line 239
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 240
    new-instance v4, Lcom/mediatek/nfc/SecurityItemPreference;

    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/mediatek/nfc/SecurityItemPreference;-><init>(Landroid/content/Context;)V

    .line 241
    invoke-virtual {v4, v3}, Lcom/mediatek/nfc/SecurityItemPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v4, v3}, Lcom/mediatek/nfc/SecurityItemPreference;->setKey(Ljava/lang/String;)V

    .line 243
    invoke-virtual {v4, p0}, Lcom/mediatek/nfc/SecurityItemPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 244
    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v5, v4}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 246
    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 247
    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 239
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 250
    :cond_0
    return-void
.end method

.method private getCardEmulationList()[Ljava/lang/String;
    .locals 6

    .line 256
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 258
    const-string v1, "[,]"

    .line 259
    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 260
    array-length v1, v0

    .line 261
    const-string v2, "@M_CardEmulationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "getCardEmulationList, length = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    if-nez v2, :cond_0

    .line 263
    add-int/lit8 v2, v1, -0x1

    aget-object v2, v0, v2

    iput-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    .line 264
    const-string v2, "@M_CardEmulationSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "EMULATION_OFF is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    :cond_0
    add-int/lit8 v1, v1, -0x1

    new-array v1, v1, [Ljava/lang/String;

    .line 267
    if-eqz v0, :cond_1

    .line 268
    const/4 v2, 0x0

    :goto_0
    array-length v3, v0

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 269
    aget-object v3, v0, v2

    aput-object v3, v1, v2

    .line 270
    const-string v3, "@M_CardEmulationSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "emulation list item is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 273
    :cond_1
    return-object v1
.end method

.method private removeAll()V
    .locals 2

    .line 162
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v0}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->removeAll()V

    .line 163
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 164
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 165
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 166
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemKeys:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 167
    return-void
.end method

.method private updatePreferences()V
    .locals 8

    .line 173
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->removeAll()V

    .line 175
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 177
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "nfc_multise_previous"

    invoke-static {v1, v2}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "nfc_multise_in_transation"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 181
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v5, "nfc_multise_in_switching"

    invoke-static {v3, v5, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    .line 183
    const-string v5, "@M_CardEmulationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferences(),EMULATION_OFF "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", active mode: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v7, ", previous mode is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    const-string v5, "@M_CardEmulationSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "updatePreferences, transactionStatus is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " switchingStatus is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_3

    .line 189
    iput-boolean v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 190
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 191
    iput-boolean v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 192
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object v0

    array-length v0, v0

    if-nez v0, :cond_0

    .line 193
    const-string v0, "@M_CardEmulationSettings"

    const-string v1, "no available security elment found and the active mode is off"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f120379    # @string/card_emulation_settings_no_element_found 'No available security element.'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 198
    :cond_0
    if-nez v3, :cond_1

    .line 199
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f12037a    # @string/card_emulation_settings_off_text 'To see available security elements, turn Card emulation on.'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f12037e    # @string/card_emulation_turning_off_text 'Turning Card emulation off...'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v2, :cond_2

    if-nez v3, :cond_2

    move v1, v6

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto/16 :goto_6

    .line 206
    :cond_3
    iput-boolean v6, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 207
    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v5, v6}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    .line 208
    iput-boolean v4, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    .line 209
    if-ne v3, v6, :cond_4

    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 210
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, v4}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 211
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    const v1, 0x7f12037f    # @string/card_emulation_turning_on_text 'Turning Card emulation on...'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_6

    .line 213
    :cond_4
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    if-nez v2, :cond_5

    if-nez v3, :cond_5

    move v5, v6

    goto :goto_2

    :cond_5
    move v5, v4

    :goto_2
    invoke-virtual {v1, v5}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 214
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->addItemPreference()V

    .line 215
    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->getPreferenceCount()I

    .line 216
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    iget-object v5, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    invoke-virtual {v1, v5}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 217
    nop

    .line 218
    invoke-virtual {p0, v0}, Lcom/mediatek/nfc/CardEmulationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 219
    if-eqz v1, :cond_6

    .line 220
    invoke-virtual {v1, v6}, Lcom/mediatek/nfc/SecurityItemPreference;->setChecked(Z)Z

    .line 221
    iput-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActivePref:Lcom/mediatek/nfc/SecurityItemPreference;

    goto :goto_3

    .line 223
    :cond_6
    const-string v1, "@M_CardEmulationSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activie mode is "

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", can not find it on screen"

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    :goto_3
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-ne v3, v6, :cond_7

    move v1, v6

    goto :goto_4

    :cond_7
    move v1, v4

    :goto_4
    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 227
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    move v1, v6

    goto :goto_5

    :cond_8
    move v1, v4

    :goto_5
    invoke-virtual {v0, v1}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setEnabled(Z)V

    .line 230
    :goto_6
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_rf_field_active"

    invoke-static {v0, v1, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 232
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    if-nez v0, :cond_9

    move v4, v6

    nop

    :cond_9
    invoke-virtual {v1, v4}, Landroid/support/v7/preference/PreferenceScreen;->setEnabled(Z)V

    .line 233
    const-string v1, "@M_CardEmulationSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Read the value Global.NFC_RF_FIELD_ACTIVE : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 371
    const/16 v0, 0x46

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 1

    .line 103
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 107
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getView()Landroid/view/View;

    move-result-object p1

    const v0, 0x1020004    # @android:id/empty

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    .line 108
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mEmptyView:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/CardEmulationSettings;->setEmptyView(Landroid/view/View;)V

    .line 109
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 90
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 92
    const p1, 0x7f15002d    # @xml/card_emulation_settings 'res/xml/card_emulation_settings.xml'

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/CardEmulationSettings;->addPreferencesFromResource(I)V

    .line 94
    const-string p1, "card_emulation_settings_category"

    invoke-virtual {p0, p1}, Lcom/mediatek/nfc/CardEmulationSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/mediatek/nfc/CardEmulationProgressCategory;

    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    .line 95
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    .line 96
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    iput-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    .line 97
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.nfc_extras.action.RF_FIELD_ON_DETECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 98
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    const-string v0, "com.android.nfc_extras.action.RF_FIELD_OFF_DETECTED"

    invoke-virtual {p1, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 99
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 327
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 328
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 329
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 330
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 331
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1}, Landroid/content/ContentResolver;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 332
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 333
    return-void
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 3

    .line 277
    const/4 p2, 0x0

    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v0, :cond_1

    .line 278
    const-string v0, "@M_CardEmulationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceChange, select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " active"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    .line 280
    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 279
    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 281
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 282
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p1, p2}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 283
    iget-object p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 284
    invoke-virtual {v1, p2}, Lcom/mediatek/nfc/SecurityItemPreference;->setEnabled(Z)V

    .line 285
    goto :goto_0

    .line 286
    :cond_0
    return v0

    .line 288
    :cond_1
    return p2
.end method

.method public onPreferenceTreeClick(Landroid/support/v7/preference/PreferenceScreen;Landroid/support/v7/preference/Preference;)Z
    .locals 3

    .line 293
    const/4 p1, 0x0

    if-eqz p2, :cond_1

    instance-of v0, p2, Lcom/mediatek/nfc/SecurityItemPreference;

    if-eqz v0, :cond_1

    .line 294
    const-string v0, "@M_CardEmulationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceTreeClick "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v0, v1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 298
    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 299
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    .line 300
    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p2

    .line 299
    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 301
    iget-object p2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mProgressCategory:Lcom/mediatek/nfc/CardEmulationProgressCategory;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/mediatek/nfc/CardEmulationProgressCategory;->setProgress(Z)V

    .line 302
    iget-object p2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 303
    iget-object p2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mItemPreferences:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/nfc/SecurityItemPreference;

    .line 304
    invoke-virtual {v1, p1}, Lcom/mediatek/nfc/SecurityItemPreference;->setEnabled(Z)V

    .line 305
    goto :goto_0

    .line 306
    :cond_0
    return v0

    .line 309
    :cond_1
    return p1
.end method

.method public onResume()V
    .locals 4

    .line 313
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 314
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mActiveCardModeObserver:Landroid/database/ContentObserver;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 316
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_list"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardModeListObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 318
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_transation"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardtransactionObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 320
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_in_switching"

    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mCardSwitchingObserver:Landroid/database/ContentObserver;

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 322
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mReceiver:Landroid/content/BroadcastReceiver;

    iget-object v2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mIntentFilter:Landroid/content/IntentFilter;

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 323
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->updatePreferences()V

    .line 324
    return-void
.end method

.method public onStart()V
    .locals 2

    .line 113
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 115
    const-string v0, "@M_CardEmulationSettings"

    const-string v1, "onCreate, mSwitchBar addOnSwitchChangeListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    .line 118
    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    .line 119
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 120
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->show()V

    .line 121
    return-void
.end method

.method public onStop()V
    .locals 2

    .line 125
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 127
    const-string v0, "@M_CardEmulationSettings"

    const-string v1, "onStop, mSwitchBar removeOnSwitchChangeListener "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 128
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    .line 129
    iget-object v0, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    .line 130
    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 3

    .line 134
    const-string p1, "@M_CardEmulationSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged, desiredState "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " mUpdateStatusOnly "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-boolean p1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mUpdateStatusOnly:Z

    if-eqz p1, :cond_0

    .line 138
    return-void

    .line 140
    :cond_0
    const/4 p1, 0x0

    if-nez p2, :cond_1

    .line 141
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "nfc_multise_active"

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-static {p2, v0, v1}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 143
    const-string p2, "@M_CardEmulationSettings"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged, set Settings.Global.NFC_MULTISE_ACTIVE EMULATION_OFF"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/nfc/CardEmulationSettings;->EMULATION_OFF:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 148
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v0, "nfc_multise_previous"

    invoke-static {p2, v0}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 150
    if-nez p2, :cond_3

    .line 151
    invoke-direct {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getCardEmulationList()[Ljava/lang/String;

    move-result-object p2

    .line 152
    array-length v0, p2

    if-lez v0, :cond_2

    aget-object p2, p2, p1

    goto :goto_0

    :cond_2
    const-string p2, "SIM1"

    .line 154
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/nfc/CardEmulationSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "nfc_multise_active"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 156
    const-string v0, "@M_CardEmulationSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCheckedChanged, set active mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :goto_1
    iget-object p2, p0, Lcom/mediatek/nfc/CardEmulationSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {p2, p1}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    .line 159
    return-void
.end method
