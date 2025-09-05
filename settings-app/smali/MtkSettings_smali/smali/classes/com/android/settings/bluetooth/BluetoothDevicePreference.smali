.class public final Lcom/android/settings/bluetooth/BluetoothDevicePreference;
.super Lcom/android/settings/widget/GearPreference;
.source "BluetoothDevicePreference.java"

# interfaces
.implements Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;


# static fields
.field private static sDimAlpha:I


# instance fields
.field private contentDescription:Ljava/lang/String;

.field private final mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

.field private mDisconnectDialog:Landroid/app/AlertDialog;

.field private mHideSecondTarget:Z

.field mResources:Landroid/content/res/Resources;

.field private final mShowDevicesWithoutNames:Z

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const/high16 v0, -0x80000000

    sput v0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;Z)V
    .locals 2

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/widget/GearPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    .line 67
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mResources:Landroid/content/res/Resources;

    .line 68
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mUserManager:Landroid/os/UserManager;

    .line 69
    iput-boolean p3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mShowDevicesWithoutNames:Z

    .line 71
    sget p3, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    const/high16 v0, -0x80000000

    if-ne p3, v0, :cond_0

    .line 72
    new-instance p3, Landroid/util/TypedValue;

    invoke-direct {p3}, Landroid/util/TypedValue;-><init>()V

    .line 73
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p1

    const v0, 0x1010033    # @android:attr/disabledAlpha

    const/4 v1, 0x1

    invoke-virtual {p1, v0, p3, v1}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 74
    invoke-virtual {p3}, Landroid/util/TypedValue;->getFloat()F

    move-result p1

    const/high16 p3, 0x437f0000    # 255.0f

    mul-float/2addr p1, p3

    float-to-int p1, p1

    sput p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->sDimAlpha:I

    .line 77
    :cond_0
    iput-object p2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 78
    iget-object p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->registerCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 80
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->onDeviceAttributesChanged()V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object p0
.end method

.method private askDisconnect()V
    .locals 5

    .line 229
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 230
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    .line 231
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 232
    const v1, 0x7f120281    # @string/bluetooth_device 'Unnamed Bluetooth device'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 234
    :cond_0
    const v2, 0x7f12029e    # @string/bluetooth_disconnect_all_profiles 'Your phone will disconnect from %1$s.'

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 235
    const v2, 0x7f1202a4    # @string/bluetooth_disconnect_title 'Disconnect device?'

    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 237
    new-instance v3, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;

    invoke-direct {v3, p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference$1;-><init>(Lcom/android/settings/bluetooth/BluetoothDevicePreference;)V

    .line 243
    iget-object v4, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 244
    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    .line 243
    invoke-static {v0, v4, v3, v2, v1}, Lcom/android/settings/bluetooth/Utils;->showDisconnectDialog(Landroid/content/Context;Landroid/app/AlertDialog;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 245
    return-void
.end method

.method private pair()V
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->startPairing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 249
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f1202e5    # @string/bluetooth_pairing_error_message 'Couldn't pair with %1$s.'

    invoke-static {v0, v1, v2}, Lcom/android/settings/bluetooth/Utils;->showError(Landroid/content/Context;Ljava/lang/String;I)V

    .line 252
    :cond_0
    return-void
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 1

    .line 189
    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    .line 191
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 195
    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->compareTo(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)I

    move-result p1

    .line 194
    return p1
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 0

    .line 48
    check-cast p1, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 175
    if-eqz p1, :cond_1

    instance-of v0, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    if-nez v0, :cond_0

    goto :goto_0

    .line 178
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    check-cast p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;

    iget-object p1, p1, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    .line 176
    :cond_1
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public getBluetoothDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 117
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method getCachedDevice()Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;
    .locals 1

    .line 101
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    return-object v0
.end method

.method protected getSecondTargetResId()I
    .locals 1

    .line 97
    const v0, 0x7f0d0102    # @layout/preference_widget_gear 'res/layout/preference_widget_gear.xml'

    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 184
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hashCode()I

    move-result v0

    return v0
.end method

.method public hideSecondTarget(Z)V
    .locals 0

    .line 121
    iput-boolean p1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    .line 122
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 155
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->findPreferenceInHierarchy(Ljava/lang/String;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 156
    const-string v0, "bt_checkbox"

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setDependency(Ljava/lang/String;)V

    .line 159
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    .line 160
    const v0, 0x7f0a02f9    # @id/settings_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 162
    if-eqz v0, :cond_1

    .line 163
    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_1
    const v0, 0x1020006    # @android:id/icon

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 167
    if-eqz v0, :cond_2

    .line 168
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 170
    :cond_2
    invoke-super {p0, p1}, Lcom/android/settings/widget/GearPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 171
    return-void
.end method

.method onClicked()V
    .locals 5

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 200
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v1

    .line 202
    nop

    .line 203
    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    .line 205
    iget-object v3, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v3}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isConnected()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_0

    .line 206
    const/16 v1, 0x364

    new-array v3, v4, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 208
    const-string v0, "BluetoothDevicePref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " askDisconnect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->askDisconnect()V

    goto :goto_0

    .line 210
    :cond_0
    const/16 v3, 0xc

    if-ne v1, v3, :cond_1

    .line 211
    const/16 v1, 0x363

    new-array v3, v4, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 213
    const-string v0, "BluetoothDevicePref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " connect"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->connect(Z)V

    goto :goto_0

    .line 215
    :cond_1
    const/16 v3, 0xa

    if-ne v1, v3, :cond_3

    .line 216
    const/16 v1, 0x362

    new-array v3, v4, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v1}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v1

    if-nez v1, :cond_2

    .line 219
    const/16 v1, 0x448

    new-array v3, v4, [Landroid/util/Pair;

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 222
    :cond_2
    const-string v0, "BluetoothDevicePref"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v2}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " pair"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    invoke-direct {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->pair()V

    .line 225
    :cond_3
    :goto_0
    return-void
.end method

.method public onDeviceAttributesChanged()V
    .locals 2

    .line 130
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getConnectionSummary()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 134
    nop

    .line 135
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-static {v0, v1}, Lcom/android/settingslib/bluetooth/Utils;->getBtClassDrawableWithDescription(Landroid/content/Context;Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;)Landroid/util/Pair;

    move-result-object v0

    .line 136
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    if-eqz v1, :cond_0

    .line 137
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 138
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->contentDescription:Ljava/lang/String;

    .line 142
    :cond_0
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->isBusy()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setEnabled(Z)V

    .line 146
    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mShowDevicesWithoutNames:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->hasHumanReadableName()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    nop

    :cond_2
    :goto_0
    invoke-virtual {p0, v1}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->setVisible(Z)V

    .line 149
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyHierarchyChanged()V

    .line 150
    return-void
.end method

.method protected onPrepareForRemoval()V
    .locals 2

    .line 106
    invoke-super {p0}, Lcom/android/settings/widget/GearPreference;->onPrepareForRemoval()V

    .line 107
    const-string v0, "BluetoothDevicePref"

    const-string v1, "onPrepareForRemoval"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    invoke-virtual {v0, p0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->unregisterCallback(Lcom/android/settingslib/bluetooth/CachedBluetoothDevice$Callback;)V

    .line 109
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    .line 110
    const-string v0, "BluetoothDevicePref"

    const-string v1, "dismiss dialog"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    .line 112
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mDisconnectDialog:Landroid/app/AlertDialog;

    .line 114
    :cond_0
    return-void
.end method

.method rebind()V
    .locals 0

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->notifyChanged()V

    .line 85
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 2

    .line 89
    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mCachedDevice:Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;

    .line 90
    invoke-virtual {v0}, Lcom/android/settingslib/bluetooth/CachedBluetoothDevice;->getBondState()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mUserManager:Landroid/os/UserManager;

    const-string v1, "no_config_bluetooth"

    .line 91
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/android/settings/bluetooth/BluetoothDevicePreference;->mHideSecondTarget:Z

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 89
    :goto_1
    return v0
.end method
