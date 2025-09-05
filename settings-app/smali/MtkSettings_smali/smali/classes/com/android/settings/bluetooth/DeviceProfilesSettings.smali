.class public final Lcom/android/settings/bluetooth/DeviceProfilesSettings;
.super Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;
.source "DeviceProfilesSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field static final HIGH_QUALITY_AUDIO_PREF_TAG:Ljava/lang/String; = "A2dpProfileHighQualityAudio"


# instance fields
.field private mAlertDialog:Landroid/app/AlertDialog;

.field private mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

.field private mProfileContainer:Landroid/view/ViewGroup;

.field private mProfileGroupIsRemoved:Z

.field private mProfileLabel:Landroid/widget/TextView;

.field private mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

.field private mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)Landroid/app/AlertDialog;
    .locals 0

    .line 53
    iget-object p0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    return-void
.end method

.method private addPreferencesForProfiles()V
    .locals 7

    .line 200
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 201
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 202
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 204
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-nez v3, :cond_0

    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-nez v3, :cond_0

    .line 206
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 209
    :cond_0
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    .line 211
    move-object v4, v1

    check-cast v4, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 212
    invoke-virtual {v4, v3}, Lcom/android/settingslib/bluetooth/A2dpProfile;->supportsHighQualityAudio(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 213
    new-instance v5, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 214
    const-string v6, "A2dpProfileHighQualityAudio"

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 215
    new-instance v6, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;

    invoke-direct {v6, v4, v3, v5}, Lcom/android/settings/bluetooth/-$$Lambda$DeviceProfilesSettings$qBNrFA8-Smm3qyHXDkezO-CS7tQ;-><init>(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;)V

    invoke-virtual {v5, v6}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 218
    const/16 v3, 0x8

    invoke-virtual {v5, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 219
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v3, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 221
    :cond_1
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 223
    :cond_2
    goto :goto_0

    .line 225
    :cond_3
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v0

    .line 226
    const-string v1, "DeviceProfilesSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addPreferencesForProfiles: pbapPermission = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    if-eqz v0, :cond_4

    .line 229
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getPbapProfile()Lcom/android/settingslib/bluetooth/PbapServerProfile;

    move-result-object v0

    .line 230
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 231
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 234
    :cond_4
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getMapProfile()Lcom/android/settingslib/bluetooth/MapProfile;

    move-result-object v0

    .line 235
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    .line 236
    const-string v2, "DeviceProfilesSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addPreferencesForProfiles: mapPermission = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    if-eqz v1, :cond_5

    .line 238
    invoke-direct {p0, v0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 242
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 243
    return-void
.end method

.method private askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 7

    .line 320
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 321
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 322
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 323
    const v1, 0x7f120281    # @string/bluetooth_device 'Unnamed Bluetooth device'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 326
    :cond_0
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    invoke-interface {p2, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 328
    const v3, 0x7f12029b    # @string/bluetooth_disable_profile_title 'Disable profile?'

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    const v4, 0x7f12029a    # @string/bluetooth_disable_profile_message 'This will disable:<br><b>%1$s</b><br><br>From:<br><b>%2$s</b>'

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    const/4 v2, 0x1

    aput-object v1, v5, v2

    invoke-virtual {p1, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 332
    new-instance v2, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;

    invoke-direct {v2, p0, v0, p2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$2;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 351
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 352
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v0

    .line 351
    invoke-static {p1, p2, v2, v3, v0}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 353
    return-void
.end method

.method private createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;
    .locals 2

    .line 267
    new-instance v0, Landroid/widget/CheckBox;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/CheckBox;-><init>(Landroid/content/Context;)V

    .line 268
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setTag(Ljava/lang/Object;)V

    .line 269
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    invoke-interface {p1, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getNameResource(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setText(I)V

    .line 270
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 272
    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 274
    return-object v0
.end method

.method private findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;
    .locals 1

    .line 405
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    return-object p1
.end method

.method private getProfileOf(Landroid/view/View;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;
    .locals 2

    .line 449
    instance-of v0, p1, Landroid/widget/CheckBox;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 450
    return-object v1

    .line 452
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 453
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-object v1

    .line 456
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;->getProfileByName(Ljava/lang/String;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 457
    :catch_0
    move-exception p1

    .line 458
    return-object v1
.end method

.method static synthetic lambda$addPreferencesForProfiles$0(Lcom/android/settingslib/bluetooth/A2dpProfile;Landroid/bluetooth/BluetoothDevice;Landroid/widget/CheckBox;Landroid/view/View;)V
    .locals 0

    .line 216
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/android/settingslib/bluetooth/A2dpProfile;->setHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 217
    return-void
.end method

.method private onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V
    .locals 3

    .line 286
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 288
    invoke-virtual {p2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 290
    invoke-virtual {p2, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 291
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getForegroundActivity()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->askDisconnect(Landroid/content/Context;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_1

    .line 293
    :cond_0
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v1, :cond_1

    .line 294
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setMessagePermissionChoice(I)V

    .line 296
    :cond_1
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_2

    .line 297
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setPhonebookPermissionChoice(I)V

    .line 298
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 300
    return-void

    .line 302
    :cond_2
    invoke-interface {p1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 304
    instance-of v1, p1, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_3

    .line 305
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    goto :goto_0

    .line 307
    :cond_3
    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    goto :goto_0

    .line 310
    :cond_4
    invoke-interface {p1, v0, v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->setPreferred(Landroid/bluetooth/BluetoothDevice;Z)V

    .line 311
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connectProfile(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 313
    :goto_0
    invoke-direct {p0, p2, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 315
    :goto_1
    return-void
.end method

.method private refresh()V
    .locals 2

    .line 361
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v1, 0x7f0a021f    # @id/name

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 362
    if-eqz v0, :cond_0

    .line 363
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 364
    invoke-static {v0}, Lcom/android/settings/Utils;->setEditTextCursorPosition(Landroid/widget/EditText;)V

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfiles()V

    .line 368
    return-void
.end method

.method private refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V
    .locals 5

    .line 410
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 413
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v1

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 415
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/MapProfile;

    const/4 v3, 0x0

    if-eqz v1, :cond_1

    .line 416
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, v3

    :goto_0
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 419
    :cond_1
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v1, :cond_3

    .line 420
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v1

    if-ne v1, v2, :cond_2

    move v1, v2

    goto :goto_1

    :cond_2
    move v1, v3

    :goto_1
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 423
    :cond_3
    instance-of v1, p2, Lcom/android/settingslib/bluetooth/PanProfile;

    if-eqz v1, :cond_5

    .line 424
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->getConnectionStatus(Landroid/bluetooth/BluetoothDevice;)I

    move-result v1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_4

    move v1, v2

    goto :goto_2

    :cond_4
    move v1, v3

    :goto_2
    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_3

    .line 428
    :cond_5
    invoke-interface {p2, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 430
    :goto_3
    instance-of p1, p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    if-eqz p1, :cond_7

    .line 431
    check-cast p2, Lcom/android/settingslib/bluetooth/A2dpProfile;

    .line 432
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const-string v1, "A2dpProfileHighQualityAudio"

    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object p1

    .line 433
    instance-of v1, p1, Landroid/widget/CheckBox;

    if-eqz v1, :cond_7

    .line 434
    move-object v1, p1

    check-cast v1, Landroid/widget/CheckBox;

    .line 435
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->getHighQualityAudioOptionLabel(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setText(Ljava/lang/CharSequence;)V

    .line 436
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isHighQualityAudioEnabled(Landroid/bluetooth/BluetoothDevice;)Z

    move-result v4

    invoke-virtual {v1, v4}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 438
    invoke-virtual {p2, v0}, Lcom/android/settingslib/bluetooth/A2dpProfile;->isPreferred(Landroid/bluetooth/BluetoothDevice;)Z

    move-result p2

    if-eqz p2, :cond_6

    .line 439
    invoke-virtual {p1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 440
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result p2

    xor-int/2addr p2, v2

    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    goto :goto_4

    .line 442
    :cond_6
    const/16 p2, 0x8

    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 446
    :cond_7
    :goto_4
    return-void
.end method

.method private refreshProfiles()V
    .locals 7

    .line 371
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectableProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 372
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 373
    if-nez v2, :cond_0

    .line 374
    invoke-direct {p0, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->createProfilePreference(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)Landroid/widget/CheckBox;

    move-result-object v1

    .line 375
    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1

    .line 377
    :cond_0
    invoke-direct {p0, v2, v1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refreshProfilePreference(Landroid/widget/CheckBox;Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;)V

    .line 379
    :goto_1
    goto :goto_0

    .line 380
    :cond_1
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getRemovedProfiles()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    .line 381
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->findProfile(Ljava/lang/String;)Landroid/widget/CheckBox;

    move-result-object v2

    .line 382
    if-eqz v2, :cond_4

    .line 384
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/PbapServerProfile;

    if-eqz v3, :cond_2

    .line 385
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getPhonebookPermissionChoice()I

    move-result v3

    .line 386
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: pbapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    if-eqz v3, :cond_2

    .line 388
    goto :goto_2

    .line 390
    :cond_2
    instance-of v3, v1, Lcom/android/settingslib/bluetooth/MapProfile;

    if-eqz v3, :cond_3

    .line 391
    iget-object v3, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getMessagePermissionChoice()I

    move-result v3

    .line 392
    const-string v4, "DeviceProfilesSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "refreshProfiles: mapPermission = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    if-eqz v3, :cond_3

    .line 394
    goto :goto_2

    .line 396
    :cond_3
    const-string v3, "DeviceProfilesSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " from profile list"

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 399
    :cond_4
    goto/16 :goto_2

    .line 401
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->showOrHideProfileGroup()V

    .line 402
    return-void
.end method

.method private showOrHideProfileGroup()V
    .locals 2

    .line 246
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 247
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 249
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    goto :goto_0

    .line 251
    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    .line 252
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 253
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 254
    iput-boolean v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileGroupIsRemoved:Z

    .line 256
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 81
    const/16 v0, 0x21b

    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0

    .line 138
    const/4 p1, -0x3

    if-eq p2, p1, :cond_1

    const/4 p1, -0x1

    if-eq p2, p1, :cond_0

    goto :goto_0

    .line 140
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const p2, 0x7f0a021f    # @id/name

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 141
    iget-object p2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->setName(Ljava/lang/String;)V

    .line 142
    goto :goto_0

    .line 144
    :cond_1
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unpair()V

    .line 147
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 279
    instance-of v0, p1, Landroid/widget/CheckBox;

    if-eqz v0, :cond_0

    .line 280
    invoke-direct {p0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getProfileOf(Landroid/view/View;)Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;

    move-result-object v0

    .line 281
    check-cast p1, Landroid/widget/CheckBox;

    invoke-direct {p0, v0, p1}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->onProfileClicked(Lcom/android/settingslib/bluetooth/LocalBluetoothProfile;Landroid/widget/CheckBox;)V

    .line 283
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 86
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 88
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/bluetooth/Utils;->getLocalBtManager(Landroid/content/Context;)Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 89
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getCachedDeviceManager()Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;

    move-result-object p1

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "device_address"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 92
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    .line 94
    invoke-virtual {p1, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->findDevice(Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 95
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-nez v1, :cond_0

    .line 96
    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getBluetoothAdapter()Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    .line 97
    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object v2

    .line 96
    invoke-virtual {p1, v1, v2, v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDeviceManager;->addDevice(Lcom/android/settingslib/bluetooth/LocalBluetoothAdapter;Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;Landroid/bluetooth/BluetoothDevice;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 99
    :cond_0
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->getProfileManager()Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileManager:Lcom/android/settingslib/bluetooth/LocalBluetoothProfileManager;

    .line 100
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 2

    .line 104
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const v0, 0x7f0d0083    # @layout/device_profiles_settings 'res/layout/device_profiles_settings.xml'

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 106
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0283    # @id/profiles_section

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileContainer:Landroid/view/ViewGroup;

    .line 107
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v0, 0x7f0a0282    # @id/profiles_label

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mProfileLabel:Landroid/widget/TextView;

    .line 108
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    const v0, 0x7f0a021f    # @id/name

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Landroid/widget/TextView$BufferType;->EDITABLE:Landroid/widget/TextView$BufferType;

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 110
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mRootView:Landroid/view/View;

    .line 111
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 112
    const v1, 0x7f120691    # @string/forget 'Forget'

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 113
    const v1, 0x7f1209fe    # @string/okay 'OK'

    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 114
    const v1, 0x7f1202fa    # @string/bluetooth_preference_paired_devices 'Paired devices'

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 115
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 118
    new-instance v0, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings$1;-><init>(Lcom/android/settings/bluetooth/DeviceProfilesSettings;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 133
    iget-object p1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    return-object p1
.end method

.method public onDestroy()V
    .locals 2

    .line 151
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onDestroy()V

    .line 152
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 155
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 158
    :cond_0
    iput-object v1, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mAlertDialog:Landroid/app/AlertDialog;

    .line 163
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 0

    .line 357
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 358
    return-void
.end method

.method public onPause()V
    .locals 2

    .line 189
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onPause()V

    .line 190
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 193
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onPause, unregisterCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 196
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 197
    return-void
.end method

.method public onResume()V
    .locals 2

    .line 172
    invoke-super {p0}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onResume()V

    .line 173
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mManager:Lcom/android/settingslib/bluetooth/LocalBluetoothManager;

    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/LocalBluetoothManager;->setForegroundActivity(Landroid/content/Context;)V

    .line 175
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    .line 176
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 177
    const-string v0, "DeviceProfilesSettings"

    const-string v1, "onResume, registerCallback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v0, p0, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->dismiss()V

    .line 180
    return-void

    .line 182
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->addPreferencesForProfiles()V

    .line 183
    invoke-direct {p0}, Lcom/android/settings/bluetooth/DeviceProfilesSettings;->refresh()V

    .line 185
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 167
    invoke-super {p0, p1}, Lcom/android/settings/core/instrumentation/InstrumentedDialogFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 168
    return-void
.end method
