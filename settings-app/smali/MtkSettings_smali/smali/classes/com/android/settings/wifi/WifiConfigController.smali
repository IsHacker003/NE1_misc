.class public Lcom/android/settings/wifi/WifiConfigController;
.super Ljava/lang/Object;
.source "WifiConfigController.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnKeyListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/widget/TextView$OnEditorActionListener;


# instance fields
.field private final mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

.field private mAccessPointSecurity:I

.field private final mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mDialogContainer:Landroid/widget/ScrollView;

.field private mDns1View:Landroid/widget/TextView;

.field private mDns2View:Landroid/widget/TextView;

.field private mDoNotProvideEapUserCertString:Ljava/lang/String;

.field private mDoNotValidateEapServerString:Ljava/lang/String;

.field private mEapAnonymousView:Landroid/widget/TextView;

.field private mEapCaCertSpinner:Landroid/widget/Spinner;

.field private mEapDomainView:Landroid/widget/TextView;

.field private mEapIdentityView:Landroid/widget/TextView;

.field private mEapMethodSpinner:Landroid/widget/Spinner;

.field private mEapUserCertSpinner:Landroid/widget/Spinner;

.field private mGatewayView:Landroid/widget/TextView;

.field private mHiddenSettingsSpinner:Landroid/widget/Spinner;

.field private mHiddenWarningView:Landroid/widget/TextView;

.field private mHttpProxy:Landroid/net/ProxyInfo;

.field private mIpAddressView:Landroid/widget/TextView;

.field private mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

.field private mIpSettingsSpinner:Landroid/widget/Spinner;

.field private mLevels:[Ljava/lang/String;

.field private mMeteredSettingsSpinner:Landroid/widget/Spinner;

.field private mMode:I

.field private mMultipleCertSetString:Ljava/lang/String;

.field private mNetworkPrefixLengthView:Landroid/widget/TextView;

.field private mPasswordView:Landroid/widget/TextView;

.field private mPhase2Adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2FullAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPhase2Spinner:Landroid/widget/Spinner;

.field private mProxyExclusionListView:Landroid/widget/TextView;

.field private mProxyHostView:Landroid/widget/TextView;

.field private mProxyPacView:Landroid/widget/TextView;

.field private mProxyPortView:Landroid/widget/TextView;

.field private mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

.field private mProxySettingsSpinner:Landroid/widget/Spinner;

.field private mSecuritySpinner:Landroid/widget/Spinner;

.field private mSharedCheckBox:Landroid/widget/CheckBox;

.field private mSsidView:Landroid/widget/TextView;

.field private mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

.field private mUnspecifiedCertString:Ljava/lang/String;

.field private mUseSystemCertsString:Ljava/lang/String;

.field private final mView:Landroid/view/View;

.field private mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;Lcom/android/settingslib/wifi/AccessPoint;I)V
    .locals 11

    .line 184
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 168
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->UNASSIGNED:Landroid/net/IpConfiguration$IpAssignment;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 169
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->UNASSIGNED:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 170
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 171
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 185
    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 187
    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 188
    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 189
    const/4 p1, 0x0

    if-nez p3, :cond_0

    .line 190
    move p2, p1

    goto :goto_0

    :cond_0
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result p2

    :goto_0
    iput p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 191
    iput p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    .line 193
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    .line 194
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 196
    new-instance p3, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-direct {p3, p0, p4, v1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;-><init>(Lcom/android/settings/wifi/WifiConfigController;Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    .line 198
    const p3, 0x7f0300bc    # @array/wifi_signal

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    .line 199
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {p3}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result p3

    const p4, 0x1090008    # @android:layout/simple_spinner_item

    if-nez p3, :cond_2

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v1, 0x1120059    # @android:bool/config_enableCarDockHomeLaunch

    invoke-virtual {p3, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p3

    if-nez p3, :cond_1

    goto :goto_1

    .line 205
    :cond_1
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x7f0300b7    # @array/wifi_peap_phase2_entries_with_sim_auth

    .line 207
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, p4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    goto :goto_2

    .line 201
    :cond_2
    :goto_1
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v2, 0x7f0300b6    # @array/wifi_peap_phase2_entries

    .line 203
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    invoke-direct {p3, v1, p4, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    .line 209
    :goto_2
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    const v1, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 211
    new-instance p3, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v3, 0x7f0300b8    # @array/wifi_phase2_entries

    .line 213
    invoke-virtual {p2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    invoke-direct {p3, v2, p4, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    .line 214
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p3, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 216
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const p4, 0x7f12110a    # @string/wifi_unspecified 'Please select'

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 217
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const p4, 0x7f121075    # @string/wifi_multiple_cert_added '(Multiple certificates added)'

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    .line 218
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const p4, 0x7f12110c    # @string/wifi_use_system_certs 'Use system certificates'

    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    .line 219
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const p4, 0x7f12102e    # @string/wifi_do_not_provide_eap_user_cert 'Do not provide'

    .line 220
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 221
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const p4, 0x7f12102f    # @string/wifi_do_not_validate_eap_server 'Do not validate'

    .line 222
    invoke-virtual {p3, p4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 224
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a0110    # @id/dialog_scrollview

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ScrollView;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    .line 225
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a01be    # @id/ip_settings

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 226
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 227
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a0296    # @id/proxy_settings

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    .line 228
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 229
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a02fe    # @id/shared

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    .line 230
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a0211    # @id/metered_settings

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    .line 231
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a0187    # @id/hidden_settings

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    .line 232
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 233
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a018a    # @id/hidden_settings_warning

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenWarningView:Landroid/widget/TextView;

    .line 234
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenWarningView:Landroid/widget/TextView;

    .line 235
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p4

    const/16 v1, 0x8

    if-nez p4, :cond_3

    .line 236
    nop

    .line 234
    move p4, v1

    goto :goto_3

    .line 237
    :cond_3
    nop

    .line 234
    move p4, p1

    :goto_3
    invoke-virtual {p3, p4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 239
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const p4, 0x7f121097    # @string/wifi_save 'Save'

    const v2, 0x7f0a03e1    # @id/wifi_advanced_togglebox

    const v3, 0x7f0a03e0    # @id/wifi_advanced_toggle

    const/4 v4, 0x1

    if-nez p3, :cond_4

    .line 240
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const v0, 0x7f120fb5    # @string/wifi_add_network 'Add network'

    invoke-interface {p3, v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(I)V

    .line 242
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0a032b    # @id/ssid

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 243
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 245
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    new-array v0, v4, [Landroid/text/InputFilter;

    new-instance v5, Lcom/mediatek/settings/wifi/Utf8ByteLengthFilter;

    const/16 v6, 0x20

    invoke-direct {v5, v6}, Lcom/mediatek/settings/wifi/Utf8ByteLengthFilter;-><init>(I)V

    aput-object v5, v0, p1

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setFilters([Landroid/text/InputFilter;)V

    .line 246
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0a02de    # @id/security

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/Spinner;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    .line 247
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    invoke-virtual {p3, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 248
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0a03a5    # @id/type

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 250
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 251
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 252
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p3, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0a0188    # @id/hidden_settings_field

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/View;->setVisibility(I)V

    .line 255
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 256
    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 258
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    .line 261
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez p3, :cond_1f

    .line 262
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a0254    # @id/password

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    iput-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 263
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p3, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 264
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a0305    # @id/show_password

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/CheckBox;

    .line 265
    invoke-virtual {p3, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    goto/16 :goto_f

    .line 269
    :cond_4
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result p3

    if-nez p3, :cond_5

    .line 270
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSsid()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    goto :goto_4

    .line 272
    :cond_5
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfigName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v5}, Lcom/android/settings/wifi/WifiConfigUiBase;->setTitle(Ljava/lang/CharSequence;)V

    .line 275
    :goto_4
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6, p1}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurityString(Z)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p3, v5, v6}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->addViews(Lcom/android/settings/wifi/WifiConfigUiBase;Ljava/lang/String;)V

    .line 276
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v5, 0x7f0a01b2    # @id/info

    invoke-virtual {p3, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/view/ViewGroup;

    .line 278
    nop

    .line 279
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v5

    const/4 v6, 0x2

    if-eqz v5, :cond_c

    .line 280
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 281
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    iget v8, v5, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 282
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    iget-boolean v8, v5, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-eqz v8, :cond_6

    .line 283
    nop

    .line 282
    move v8, v4

    goto :goto_5

    .line 284
    :cond_6
    nop

    .line 282
    move v8, p1

    :goto_5
    invoke-virtual {v7, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 285
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getIpAssignment()Landroid/net/IpConfiguration$IpAssignment;

    move-result-object v7

    sget-object v8, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    if-ne v7, v8, :cond_8

    .line 286
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 287
    nop

    .line 289
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v7

    .line 290
    if-eqz v7, :cond_7

    iget-object v8, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v8, :cond_7

    .line 291
    const v8, 0x7f12105e    # @string/wifi_ip_address 'IP address'

    iget-object v7, v7, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 292
    invoke-virtual {v7}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v7

    invoke-virtual {v7}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v7

    .line 291
    invoke-direct {p0, p3, v8, v7}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 294
    :cond_7
    nop

    .line 298
    move v7, v4

    goto :goto_6

    .line 295
    :cond_8
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 298
    move v7, p1

    :goto_6
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    iget-boolean v9, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 299
    iget-boolean v8, v5, Landroid/net/wifi/WifiConfiguration;->shared:Z

    if-nez v8, :cond_9

    .line 300
    nop

    .line 303
    move v7, v4

    :cond_9
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v9, :cond_a

    .line 304
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v4}, Landroid/widget/Spinner;->setSelection(I)V

    .line 305
    nop

    .line 312
    :goto_7
    move v7, v4

    goto :goto_8

    .line 306
    :cond_a
    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->getProxySettings()Landroid/net/IpConfiguration$ProxySettings;

    move-result-object v8

    sget-object v9, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    if-ne v8, v9, :cond_b

    .line 307
    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v7, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 308
    goto :goto_7

    .line 310
    :cond_b
    iget-object v8, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v8, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 312
    :goto_8
    if-eqz v5, :cond_d

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v8

    if-eqz v8, :cond_d

    .line 313
    const v8, 0x7f120a15    # @string/passpoint_label 'Saved via'

    iget-object v9, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v10, 0x7f120a14    # @string/passpoint_content '%1$s credentials'

    .line 314
    invoke-virtual {v9, v10}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v9

    new-array v10, v4, [Ljava/lang/Object;

    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    aput-object v5, v10, p1

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 313
    invoke-direct {p0, p3, v8, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    goto :goto_9

    .line 319
    :cond_c
    move v7, p1

    :cond_d
    :goto_9
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result v5

    if-nez v5, :cond_e

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 320
    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result v5

    if-eqz v5, :cond_f

    :cond_e
    iget v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz v5, :cond_12

    .line 322
    :cond_f
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 323
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    .line 324
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    .line 325
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    .line 326
    invoke-virtual {v5, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/CheckBox;

    .line 327
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 328
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v5

    if-eqz v5, :cond_10

    .line 327
    move v5, v1

    goto :goto_a

    .line 328
    :cond_10
    nop

    .line 327
    move v5, p1

    :goto_a
    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    .line 329
    invoke-virtual {v2, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 330
    invoke-virtual {v2, v7}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 331
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a03df    # @id/wifi_advanced_fields

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 332
    if-eqz v7, :cond_11

    move v3, p1

    goto :goto_b

    :cond_11
    move v3, v1

    :goto_b
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 333
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v2

    if-eqz v2, :cond_12

    .line 334
    const v2, 0x7f120ffb    # @string/wifi_carrier_connect 'Carrier Wi‑Fi network'

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v5, 0x7f120ffc    # @string/wifi_carrier_content 'Connect via %1$s'

    .line 335
    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-array v5, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 336
    invoke-virtual {v7}, Lcom/android/settingslib/wifi/AccessPoint;->getCarrierName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v5, p1

    .line 335
    invoke-static {v3, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 334
    invoke-direct {p0, p3, v2, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 340
    :cond_12
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-ne v2, v6, :cond_13

    .line 341
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 342
    :cond_13
    iget p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const v2, 0x7f121004    # @string/wifi_connect 'Connect'

    if-ne p4, v4, :cond_14

    .line 343
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_f

    .line 345
    :cond_14
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/AccessPoint;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object p4

    .line 346
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->getSignalString()Ljava/lang/String;

    move-result-object v3

    .line 348
    if-eqz p4, :cond_15

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne p4, v5, :cond_16

    :cond_15
    if-eqz v3, :cond_16

    .line 349
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/settings/wifi/WifiConfigUiBase;->setSubmitButton(Ljava/lang/CharSequence;)V

    goto/16 :goto_e

    .line 351
    :cond_16
    if-eqz p4, :cond_18

    .line 352
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isEphemeral()Z

    move-result v2

    .line 353
    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v5}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v5

    .line 354
    nop

    .line 355
    if-eqz v5, :cond_17

    invoke-virtual {v5}, Landroid/net/wifi/WifiConfiguration;->isPasspoint()Z

    move-result v6

    if-eqz v6, :cond_17

    .line 356
    iget-object v5, v5, Landroid/net/wifi/WifiConfiguration;->providerFriendlyName:Ljava/lang/String;

    goto :goto_c

    .line 358
    :cond_17
    move-object v5, v0

    :goto_c
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 359
    invoke-interface {v6}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 358
    invoke-static {v6, p4, v2, v5}, Lcom/android/settingslib/wifi/AccessPoint;->getSummary(Landroid/content/Context;Landroid/net/NetworkInfo$DetailedState;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object p4

    .line 360
    const v2, 0x7f1210ee    # @string/wifi_status 'Status'

    invoke-direct {p0, p3, v2, p4}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 363
    :cond_18
    if-eqz v3, :cond_19

    .line 364
    const p4, 0x7f1210e1    # @string/wifi_signal 'Signal strength'

    invoke-direct {p0, p3, p4, v3}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 367
    :cond_19
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p4}, Lcom/android/settingslib/wifi/AccessPoint;->getInfo()Landroid/net/wifi/WifiInfo;

    move-result-object p4

    .line 368
    const/4 v2, -0x1

    if-eqz p4, :cond_1a

    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v3

    if-eq v3, v2, :cond_1a

    .line 369
    const v3, 0x7f1210e3    # @string/wifi_speed 'Link speed'

    const v5, 0x7f1207e0    # @string/link_speed '%1$d Mbps'

    .line 370
    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    new-array v6, v4, [Ljava/lang/Object;

    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getLinkSpeed()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, p1

    .line 369
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, p3, v3, v5}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 373
    :cond_1a
    if-eqz p4, :cond_1d

    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result v3

    if-eq v3, v2, :cond_1d

    .line 374
    invoke-virtual {p4}, Landroid/net/wifi/WifiInfo;->getFrequency()I

    move-result p4

    .line 375
    nop

    .line 377
    const/16 v2, 0x960

    if-lt p4, v2, :cond_1b

    const/16 v2, 0x9c4

    if-ge p4, v2, :cond_1b

    .line 379
    const p4, 0x7f120fe2    # @string/wifi_band_24ghz '2.4 GHz'

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 380
    :cond_1b
    const/16 v2, 0x1324

    if-lt p4, v2, :cond_1c

    const/16 v2, 0x170c

    if-ge p4, v2, :cond_1c

    .line 382
    const p4, 0x7f120fe3    # @string/wifi_band_5ghz '5 GHz'

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_d

    .line 384
    :cond_1c
    const-string v2, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected frequency "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :goto_d
    if-eqz v0, :cond_1d

    .line 387
    const p4, 0x7f121042    # @string/wifi_frequency 'Frequency'

    invoke-direct {p0, p3, p4, v0}, Lcom/android/settings/wifi/WifiConfigController;->addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V

    .line 394
    :cond_1d
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p4, 0x7f0a01bc    # @id/ip_fields

    invoke-virtual {p3, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3, v1}, Landroid/view/View;->setVisibility(I)V

    .line 396
    :goto_e
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p3

    if-nez p3, :cond_1e

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->isActive()Z

    move-result p3

    if-nez p3, :cond_1e

    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 397
    invoke-virtual {p3}, Lcom/android/settingslib/wifi/AccessPoint;->isPasspointConfig()Z

    move-result p3

    if-eqz p3, :cond_1f

    .line 398
    :cond_1e
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const p4, 0x7f12103f    # @string/wifi_forget 'Forget'

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p4

    invoke-interface {p3, p4}, Lcom/android/settings/wifi/WifiConfigUiBase;->setForgetButton(Ljava/lang/CharSequence;)V

    .line 403
    :cond_1f
    :goto_f
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSplitSystemUser()Z

    move-result p3

    if-nez p3, :cond_20

    .line 404
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {p3, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 407
    :cond_20
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    const p4, 0x7f120ff8    # @string/wifi_cancel 'Cancel'

    invoke-virtual {p2, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p3, p2}, Lcom/android/settings/wifi/WifiConfigUiBase;->setCancelButton(Ljava/lang/CharSequence;)V

    .line 408
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object p2

    if-eqz p2, :cond_21

    .line 409
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 413
    :cond_21
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const p3, 0x7f0a01d7    # @id/l_wifidialog

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->requestFocus()Z

    .line 415
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz p3, :cond_22

    move p1, v4

    nop

    :cond_22
    invoke-virtual {p2, p1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->addWifiConfigView(Z)V

    .line 416
    return-void
.end method

.method private addRow(Landroid/view/ViewGroup;ILjava/lang/String;)V
    .locals 3

    .line 426
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01d5    # @layout/wifi_dialog_row 'res/layout/wifi_dialog_row.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 427
    const v1, 0x7f0a021f    # @id/name

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p2}, Landroid/widget/TextView;->setText(I)V

    .line 428
    const p2, 0x7f0a03c7    # @id/value

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 429
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 430
    return-void
.end method

.method private getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;
    .locals 0

    .line 813
    :try_start_0
    invoke-static {p1}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    check-cast p1, Ljava/net/Inet4Address;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    .line 814
    :catch_0
    move-exception p1

    .line 815
    const/4 p1, 0x0

    return-object p1
.end method

.method private ipAndProxyFieldsAreValid()Z
    .locals 6

    .line 761
    nop

    .line 762
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    .line 763
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 764
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    goto :goto_0

    .line 765
    :cond_0
    sget-object v0, Landroid/net/IpConfiguration$IpAssignment;->DHCP:Landroid/net/IpConfiguration$IpAssignment;

    :goto_0
    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    .line 767
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    sget-object v2, Landroid/net/IpConfiguration$IpAssignment;->STATIC:Landroid/net/IpConfiguration$IpAssignment;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 768
    new-instance v0, Landroid/net/StaticIpConfiguration;

    invoke-direct {v0}, Landroid/net/StaticIpConfiguration;-><init>()V

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    .line 769
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I

    move-result v0

    .line 770
    if-eqz v0, :cond_1

    .line 771
    return v3

    .line 775
    :cond_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 776
    sget-object v2, Landroid/net/IpConfiguration$ProxySettings;->NONE:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 777
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 778
    if-ne v0, v1, :cond_3

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    .line 779
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->STATIC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 780
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 781
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 782
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    .line 783
    nop

    .line 784
    nop

    .line 786
    :try_start_0
    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_1

    .line 787
    :try_start_1
    invoke-static {v0, v2, v4}, Lcom/android/settings/ProxySelector;->validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0

    .line 790
    goto :goto_2

    .line 788
    :catch_0
    move-exception v2

    goto :goto_1

    :catch_1
    move-exception v2

    move v5, v3

    .line 789
    :goto_1
    const v2, 0x7f120abe    # @string/proxy_error_invalid_port 'The port you typed isn’t valid.'

    .line 791
    :goto_2
    if-nez v2, :cond_2

    .line 792
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0, v5, v4}, Landroid/net/ProxyInfo;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 796
    goto :goto_3

    .line 794
    :cond_2
    return v3

    .line 796
    :cond_3
    const/4 v2, 0x2

    if-ne v0, v2, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-eqz v0, :cond_6

    .line 797
    sget-object v0, Landroid/net/IpConfiguration$ProxySettings;->PAC:Landroid/net/IpConfiguration$ProxySettings;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    .line 798
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 799
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 800
    return v3

    .line 802
    :cond_4
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 803
    if-nez v0, :cond_5

    .line 804
    return v3

    .line 806
    :cond_5
    new-instance v2, Landroid/net/ProxyInfo;

    invoke-direct {v2, v0}, Landroid/net/ProxyInfo;-><init>(Landroid/net/Uri;)V

    iput-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    .line 808
    :cond_6
    :goto_3
    return v1
.end method

.method public static synthetic lambda$afterTextChanged$0(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 0

    .line 1375
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    .line 1376
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1377
    return-void
.end method

.method public static synthetic lambda$onItemSelected$1(Lcom/android/settings/wifi/WifiConfigController;)V
    .locals 2

    .line 1459
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    const/16 v1, 0x82

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->fullScroll(I)Z

    .line 1460
    return-void
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V
    .locals 3

    .line 1330
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1332
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1333
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1334
    if-eqz p4, :cond_0

    .line 1335
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1337
    :cond_0
    if-eqz p5, :cond_1

    .line 1338
    iget-object p4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1341
    :cond_1
    nop

    .line 1342
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->getKeyStore()Landroid/security/KeyStore;

    move-result-object p4

    const/16 p5, 0x3f2

    invoke-virtual {p4, p2, p5}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    .line 1341
    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1345
    goto :goto_0

    .line 1343
    :catch_0
    move-exception p2

    .line 1344
    const-string p2, "WifiConfigController"

    const-string p4, "can\'t get the certificate list from KeyStore"

    invoke-static {p2, p4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1346
    :goto_0
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1348
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090008    # @android:layout/simple_spinner_item

    .line 1350
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p4

    new-array p4, p4, [Ljava/lang/String;

    invoke-virtual {v1, p4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p4

    check-cast p4, [Ljava/lang/String;

    invoke-direct {p2, v0, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 1351
    const p3, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 1352
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1353
    return-void
.end method

.method private setAnonymousIdentInvisible()V
    .locals 2

    .line 1193
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d0    # @id/l_anonymous

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1194
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1195
    return-void
.end method

.method private setCaCertInvisible()V
    .locals 2

    .line 1178
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d1    # @id/l_ca_cert

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1179
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1180
    return-void
.end method

.method private setDomainInvisible()V
    .locals 2

    .line 1183
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d2    # @id/l_domain

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1184
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1185
    return-void
.end method

.method private setEapMethodInvisible()V
    .locals 2

    .line 1204
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0125    # @id/eap

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1205
    return-void
.end method

.method private setIdentityInvisible()V
    .locals 2

    .line 1168
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d3    # @id/l_identity

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1169
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1170
    return-void
.end method

.method private setPasswordInvisible()V
    .locals 3

    .line 1198
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1199
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0259    # @id/password_layout

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1200
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0306    # @id/show_password_layout

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1201
    return-void
.end method

.method private setPhase2Invisible()V
    .locals 2

    .line 1173
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d5    # @id/l_phase2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1174
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1175
    return-void
.end method

.method private setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .line 1356
    if-eqz p2, :cond_1

    .line 1358
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 1359
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 1360
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1361
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1362
    goto :goto_1

    .line 1359
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1366
    :cond_1
    :goto_1
    return-void
.end method

.method private setUserCertInvisible()V
    .locals 2

    .line 1188
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d6    # @id/l_user_cert

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1189
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1190
    return-void
.end method

.method private setVisibility(II)V
    .locals 1

    .line 1313
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1314
    if-eqz p1, :cond_0

    .line 1315
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1317
    :cond_0
    return-void
.end method

.method private showEapFieldsByMethod(I)V
    .locals 5

    .line 1079
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d4    # @id/l_method

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1080
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a01d3    # @id/l_identity

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1081
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a01d2    # @id/l_domain

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1085
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a01d1    # @id/l_ca_cert

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1086
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0259    # @id/password_layout

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1087
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0306    # @id/show_password_layout

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1089
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    .line 1090
    const v0, 0x7f0a01d0    # @id/l_anonymous

    const v3, 0x7f0a01d5    # @id/l_phase2

    packed-switch p1, :pswitch_data_0

    goto/16 :goto_0

    .line 1128
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1129
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1130
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1131
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1132
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1133
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1134
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setIdentityInvisible()V

    .line 1135
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz p1, :cond_2

    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 1136
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setEapMethodInvisible()V

    goto/16 :goto_0

    .line 1092
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1093
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setCaCertInvisible()V

    .line 1094
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1095
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1096
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1097
    goto :goto_0

    .line 1117
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v4, :cond_0

    .line 1118
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2FullAdapter:Landroid/widget/ArrayAdapter;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1119
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1121
    :cond_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1122
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1123
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1124
    goto :goto_0

    .line 1099
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0a01d6    # @id/l_user_cert

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1100
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPhase2Invisible()V

    .line 1101
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setAnonymousIdentInvisible()V

    .line 1102
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1103
    goto :goto_0

    .line 1106
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    if-eq p1, v4, :cond_1

    .line 1107
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2PeapAdapter:Landroid/widget/ArrayAdapter;

    iput-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    .line 1108
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Adapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {p1, v4}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1110
    :cond_1
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1111
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1112
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    .line 1113
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setUserCertInvisible()V

    .line 1114
    nop

    .line 1141
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result p1

    const/16 v0, 0x8

    if-eq p1, v0, :cond_4

    .line 1142
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    .line 1143
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 1144
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 1147
    :cond_3
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setDomainInvisible()V

    .line 1150
    :cond_4
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private showIpConfigFields()V
    .locals 5

    .line 1208
    nop

    .line 1210
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01bc    # @id/ip_fields

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1212
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1213
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    .line 1216
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0a0332    # @id/staticip

    if-ne v2, v3, :cond_6

    .line 1217
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1218
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1219
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a01c0    # @id/ipaddress

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    .line 1220
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1221
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0173    # @id/gateway

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    .line 1222
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1223
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0221    # @id/network_prefix_length

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    .line 1225
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1226
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0116    # @id/dns1

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    .line 1227
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1228
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0117    # @id/dns2

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    .line 1229
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1231
    :cond_1
    if-eqz v0, :cond_7

    .line 1232
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getStaticIpConfiguration()Landroid/net/StaticIpConfiguration;

    move-result-object v0

    .line 1233
    if-eqz v0, :cond_5

    .line 1234
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    if-eqz v1, :cond_2

    .line 1235
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1236
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    .line 1235
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1237
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;

    .line 1238
    invoke-virtual {v2}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v2

    .line 1237
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1241
    :cond_2
    iget-object v1, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    if-eqz v1, :cond_3

    .line 1242
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    iget-object v2, v0, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1245
    :cond_3
    iget-object v0, v0, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1246
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1247
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetAddress;

    invoke-virtual {v2}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1249
    :cond_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1250
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    :cond_5
    goto :goto_1

    .line 1255
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1257
    :cond_7
    :goto_1
    return-void
.end method

.method private showPeapFields()V
    .locals 3

    .line 1153
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 1154
    const v1, 0x7f0a01d3    # @id/l_identity

    const/4 v2, 0x3

    if-eq v0, v2, :cond_1

    const/4 v2, 0x4

    if-eq v0, v2, :cond_1

    const/4 v2, 0x5

    if-ne v0, v2, :cond_0

    goto :goto_0

    .line 1160
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1161
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a01d0    # @id/l_anonymous

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0259    # @id/password_layout

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0306    # @id/show_password_layout

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 1156
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    const-string v2, ""

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1157
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1158
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->setPasswordInvisible()V

    .line 1165
    :goto_1
    return-void
.end method

.method private showProxyFields()V
    .locals 8

    .line 1260
    nop

    .line 1262
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0297    # @id/proxy_settings_fields

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1264
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1265
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    goto :goto_0

    .line 1268
    :cond_0
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f0a0294    # @id/proxy_pac_field

    const v5, 0x7f0a0291    # @id/proxy_fields

    const v6, 0x7f0a0299    # @id/proxy_warning_limited_support

    const/16 v7, 0x8

    if-ne v2, v3, :cond_3

    .line 1269
    invoke-direct {p0, v6, v1}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1270
    invoke-direct {p0, v5, v1}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1271
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1272
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    if-nez v1, :cond_1

    .line 1273
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0292    # @id/proxy_hostname

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    .line 1274
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1275
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0295    # @id/proxy_port

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    .line 1276
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1277
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a028f    # @id/proxy_exclusionlist

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    .line 1278
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1280
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->setProxyText(Landroid/view/View;)V

    .line 1282
    :cond_1
    if-eqz v0, :cond_7

    .line 1283
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1284
    if-eqz v0, :cond_2

    .line 1285
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyHostView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getHost()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1286
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPortView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPort()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1287
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyExclusionListView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getExclusionListAsString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1289
    :cond_2
    goto :goto_1

    .line 1290
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_6

    .line 1291
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1292
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1293
    invoke-direct {p0, v4, v1}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1295
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    if-nez v1, :cond_4

    .line 1296
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0293    # @id/proxy_pac

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    .line 1297
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 1299
    :cond_4
    if-eqz v0, :cond_7

    .line 1300
    invoke-virtual {v0}, Landroid/net/wifi/WifiConfiguration;->getHttpProxy()Landroid/net/ProxyInfo;

    move-result-object v0

    .line 1301
    if-eqz v0, :cond_5

    .line 1302
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxyPacView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/net/ProxyInfo;->getPacFileUrl()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1304
    :cond_5
    goto :goto_1

    .line 1306
    :cond_6
    invoke-direct {p0, v6, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1307
    invoke-direct {p0, v5, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1308
    invoke-direct {p0, v4, v7}, Lcom/android/settings/wifi/WifiConfigController;->setVisibility(II)V

    .line 1310
    :cond_7
    :goto_1
    return-void
.end method

.method private showSecurityFields()V
    .locals 10

    .line 894
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v2, :cond_0

    move v2, v6

    goto :goto_0

    :cond_0
    move v2, v7

    :goto_0
    invoke-virtual {v0, v1, v2}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->showSecurityFields(IZ)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 896
    return-void

    .line 899
    :cond_1
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v1, 0x8

    const v2, 0x7f0a02df    # @id/security_fields

    if-nez v0, :cond_2

    .line 900
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 903
    :cond_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 906
    :goto_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-nez v0, :cond_3

    .line 907
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0254    # @id/password

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 908
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 909
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 910
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 911
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0305    # @id/show_password

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    .line 912
    invoke-virtual {v0, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 914
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 915
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const v2, 0x7f121108    # @string/wifi_unchanged '(unchanged)'

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setHint(I)V

    .line 919
    :cond_3
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const v2, 0x7f0a0125    # @id/eap

    const/4 v8, 0x3

    if-eq v0, v8, :cond_4

    .line 920
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 921
    return-void

    .line 923
    :cond_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 925
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-nez v0, :cond_f

    .line 926
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0214    # @id/method

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 928
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    invoke-virtual {v0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->setEapmethodSpinnerAdapter()V

    .line 930
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 931
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1120059    # @android:bool/config_enableCarDockHomeLaunch

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_6

    .line 933
    :cond_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030052    # @array/eap_method_without_sim_auth

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 935
    new-instance v1, Landroid/widget/ArrayAdapter;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const v3, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v1, v2, v3, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 937
    const v0, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 939
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 941
    :cond_6
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v9, 0x7f0a025c    # @id/phase2

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 942
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 943
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0098    # @id/ca_cert

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    .line 944
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 945
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a011c    # @id/domain

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 946
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 947
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a03b8    # @id/user_cert

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 948
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 949
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a019b    # @id/identity

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    .line 950
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a004b    # @id/anonymous

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 952
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isCarrierAp()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 953
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->getCarrierApEapType()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 956
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 962
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 970
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 971
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    iget-object v9, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 972
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getEapMethod()I

    move-result v0

    .line 973
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getPhase2Method()I

    move-result v1

    .line 974
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 975
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 977
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2, v3, v0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->setEapMethodSelection(Landroid/widget/Spinner;I)V

    .line 979
    if-eqz v0, :cond_8

    .line 1006
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    goto :goto_2

    .line 981
    :cond_8
    if-eqz v1, :cond_9

    packed-switch v1, :pswitch_data_0

    .line 1001
    const-string v0, "WifiConfigController"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid phase 2 method "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1002
    goto :goto_2

    .line 998
    :pswitch_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 999
    goto :goto_2

    .line 995
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 996
    goto :goto_2

    .line 992
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v8}, Landroid/widget/Spinner;->setSelection(I)V

    .line 993
    goto :goto_2

    .line 989
    :pswitch_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 990
    goto :goto_2

    .line 986
    :pswitch_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v6}, Landroid/widget/Spinner;->setSelection(I)V

    .line 987
    goto :goto_2

    .line 983
    :cond_9
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v7}, Landroid/widget/Spinner;->setSelection(I)V

    .line 984
    nop

    .line 1009
    :goto_2
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 1010
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_3

    .line 1012
    :cond_a
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v0

    .line 1013
    if-nez v0, :cond_b

    .line 1014
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_3

    .line 1015
    :cond_b
    array-length v1, v0

    if-ne v1, v6, :cond_c

    .line 1016
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    aget-object v0, v0, v7

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_3

    .line 1019
    :cond_c
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    const/4 v4, 0x1

    const/4 v5, 0x1

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/wifi/WifiConfigController;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 1025
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1028
    :goto_3
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getDomainSuffixMatch()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1029
    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getClientCertificateAlias()Ljava/lang/String;

    move-result-object v0

    .line 1030
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 1031
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    goto :goto_4

    .line 1033
    :cond_d
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-direct {p0, v1, v0}, Lcom/android/settings/wifi/WifiConfigController;->setSelection(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 1035
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1036
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    invoke-virtual {v9}, Landroid/net/wifi/WifiEnterpriseConfig;->getAnonymousIdentity()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1037
    goto :goto_5

    .line 1038
    :cond_e
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    .line 1039
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    goto :goto_5

    .line 1042
    :cond_f
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->showEapFieldsByMethod(I)V

    .line 1046
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    if-eqz v1, :cond_10

    goto :goto_6

    :cond_10
    move v6, v7

    :goto_6
    invoke-virtual {v0, v6}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->setEapMethodFields(Z)V

    .line 1050
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1051
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 1050
    invoke-virtual {v0, v1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->showEapSimSlotByMethod(I)V

    .line 1053
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private validateIpConfigFields(Landroid/net/StaticIpConfiguration;)I
    .locals 6

    .line 820
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 822
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAddressView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 823
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f121063    # @string/wifi_ip_settings_invalid_ip_address 'Type a valid IP address.'

    if-eqz v2, :cond_1

    return v3

    .line 825
    :cond_1
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 826
    if-eqz v0, :cond_c

    sget-object v2, Ljava/net/Inet4Address;->ANY:Ljava/net/InetAddress;

    invoke-virtual {v0, v2}, Ljava/net/Inet4Address;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto/16 :goto_6

    .line 830
    :cond_2
    const/4 v2, -0x1

    .line 832
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    invoke-virtual {v4}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 833
    if-ltz v4, :cond_4

    const/16 v2, 0x20

    if-le v4, v2, :cond_3

    goto :goto_0

    .line 836
    :cond_3
    :try_start_1
    new-instance v2, Landroid/net/LinkAddress;

    invoke-direct {v2, v0, v4}, Landroid/net/LinkAddress;-><init>(Ljava/net/InetAddress;I)V

    iput-object v2, p1, Landroid/net/StaticIpConfiguration;->ipAddress:Landroid/net/LinkAddress;
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 837
    :catch_0
    move-exception v2

    goto :goto_1

    .line 834
    :cond_4
    :goto_0
    const p1, 0x7f121064    # @string/wifi_ip_settings_invalid_network_prefix_length 'Type a network prefix length between 0 and 32.'

    return p1

    .line 841
    :catch_1
    move-exception p1

    .line 842
    return v3

    .line 837
    :catch_2
    move-exception v3

    move v4, v2

    .line 839
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mNetworkPrefixLengthView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v3}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f121077    # @string/wifi_network_prefix_length_hint '24'

    invoke-virtual {v3, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 843
    :goto_2
    nop

    .line 845
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 846
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 849
    :try_start_2
    invoke-static {v0, v4}, Landroid/net/NetworkUtils;->getNetworkPart(Ljava/net/InetAddress;I)Ljava/net/InetAddress;

    move-result-object v0

    .line 850
    invoke-virtual {v0}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v0

    .line 851
    array-length v2, v0

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    aput-byte v3, v0, v2

    .line 852
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mGatewayView:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/net/InetAddress;->getByAddress([B)Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/net/UnknownHostException; {:try_start_2 .. :try_end_2} :catch_3

    goto :goto_3

    .line 854
    :catch_3
    move-exception v0

    goto :goto_3

    .line 853
    :catch_4
    move-exception v0

    .line 855
    :goto_3
    goto :goto_4

    .line 857
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 858
    const v2, 0x7f121062    # @string/wifi_ip_settings_invalid_gateway 'Type a valid gateway address.'

    if-nez v0, :cond_6

    .line 859
    return v2

    .line 861
    :cond_6
    invoke-virtual {v0}, Ljava/net/InetAddress;->isMulticastAddress()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 862
    return v2

    .line 864
    :cond_7
    iput-object v0, p1, Landroid/net/StaticIpConfiguration;->gateway:Ljava/net/InetAddress;

    .line 867
    :goto_4
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 868
    nop

    .line 870
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v3, 0x7f121061    # @string/wifi_ip_settings_invalid_dns 'Type a valid DNS address.'

    if-eqz v2, :cond_8

    .line 872
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns1View:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v2}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const v4, 0x7f12102b    # @string/wifi_dns1_hint '8.8.8.8'

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_5

    .line 874
    :cond_8
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 875
    if-nez v0, :cond_9

    .line 876
    return v3

    .line 878
    :cond_9
    iget-object v2, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 881
    :goto_5
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_b

    .line 882
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mDns2View:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 883
    invoke-direct {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->getIPv4Address(Ljava/lang/String;)Ljava/net/Inet4Address;

    move-result-object v0

    .line 884
    if-nez v0, :cond_a

    .line 885
    return v3

    .line 887
    :cond_a
    iget-object p1, p1, Landroid/net/StaticIpConfiguration;->dnsServers:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 889
    :cond_b
    return v1

    .line 827
    :cond_c
    :goto_6
    return v3
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 1374
    new-instance p1, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;

    invoke-direct {p1, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$zJJNImzldn2IDwntJeWg8KPYIDY;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnMainThread(Ljava/lang/Runnable;)V

    .line 1378
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1383
    return-void
.end method

.method enableSubmitIfAppropriate()V
    .locals 2

    .line 458
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 459
    if-nez v0, :cond_0

    return-void

    .line 461
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 462
    return-void
.end method

.method public getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;
    .locals 1

    .line 1486
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    return-object v0
.end method

.method public getConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 13

    .line 560
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 561
    return-object v1

    .line 564
    :cond_0
    new-instance v0, Landroid/net/wifi/WifiConfiguration;

    invoke-direct {v0}, Landroid/net/wifi/WifiConfiguration;-><init>()V

    .line 566
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-nez v2, :cond_2

    .line 567
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    .line 568
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 567
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    .line 570
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    if-ne v2, v3, :cond_1

    move v2, v3

    goto :goto_0

    :cond_1
    move v2, v4

    :goto_0
    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    goto :goto_1

    .line 571
    :cond_2
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v2

    if-nez v2, :cond_3

    .line 572
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 573
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v2

    .line 572
    invoke-static {v2}, Lcom/android/settingslib/wifi/AccessPoint;->convertToQuotedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    goto :goto_1

    .line 575
    :cond_3
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    iput v2, v0, Landroid/net/wifi/WifiConfiguration;->networkId:I

    .line 576
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 581
    :goto_1
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 582
    invoke-virtual {v2}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v2

    iget-boolean v2, v2, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    if-ne v2, v3, :cond_4

    .line 583
    const-string v2, "WifiConfigController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "set hiddenSSID as true for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v6}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v2, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    iput-boolean v3, v0, Landroid/net/wifi/WifiConfiguration;->hiddenSSID:Z

    .line 588
    :cond_4
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSharedCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    iput-boolean v2, v0, Landroid/net/wifi/WifiConfiguration;->shared:Z

    .line 590
    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/16 v5, 0x22

    packed-switch v2, :pswitch_data_0

    .line 743
    return-object v1

    .line 740
    :pswitch_0
    goto/16 :goto_8

    .line 625
    :pswitch_1
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x2

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 626
    iget-object v2, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/4 v5, 0x3

    invoke-virtual {v2, v5}, Ljava/util/BitSet;->set(I)V

    .line 627
    new-instance v2, Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-direct {v2}, Landroid/net/wifi/WifiEnterpriseConfig;-><init>()V

    iput-object v2, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 628
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v2

    .line 630
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    invoke-virtual {v6, v2}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getEapMethod(I)I

    move-result v2

    .line 631
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v6

    .line 632
    iget-object v7, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v7, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setEapMethod(I)V

    .line 633
    const/4 v7, 0x4

    const/4 v8, 0x5

    const/4 v9, 0x6

    if-eqz v2, :cond_5

    .line 664
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v6}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    goto :goto_2

    .line 638
    :cond_5
    packed-switch v6, :pswitch_data_1

    .line 658
    const-string v10, "WifiConfigController"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unknown phase2 method"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v10, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    goto :goto_2

    .line 655
    :pswitch_2
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 v10, 0x7

    invoke-virtual {v6, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 656
    goto :goto_2

    .line 652
    :pswitch_3
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v9}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 653
    goto :goto_2

    .line 649
    :pswitch_4
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v8}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 650
    goto :goto_2

    .line 646
    :pswitch_5
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v7}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 647
    goto :goto_2

    .line 643
    :pswitch_6
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v5}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 644
    goto :goto_2

    .line 640
    :pswitch_7
    iget-object v6, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v6, v4}, Landroid/net/wifi/WifiEnterpriseConfig;->setPhase2Method(I)V

    .line 641
    nop

    .line 668
    :goto_2
    iget-object v6, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v6}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 669
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 670
    iget-object v10, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v10, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    .line 671
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v10, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    invoke-virtual {v10}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/net/wifi/WifiEnterpriseConfig;->setDomainSuffixMatch(Ljava/lang/String;)V

    .line 672
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    .line 673
    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_3

    .line 675
    :cond_6
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 676
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v3, "/system/etc/security/cacerts"

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaPath(Ljava/lang/String;)V

    goto :goto_3

    .line 677
    :cond_7
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMultipleCertSetString:Ljava/lang/String;

    invoke-virtual {v6, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 678
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_a

    .line 679
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_8

    .line 680
    const-string v1, "WifiConfigController"

    const-string v3, "Multiple certs can only be set when editing saved network"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    :cond_8
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 685
    invoke-virtual {v3}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 687
    invoke-virtual {v3}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v3

    .line 683
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    goto :goto_3

    .line 690
    :cond_9
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    new-array v3, v3, [Ljava/lang/String;

    aput-object v6, v3, v4

    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiEnterpriseConfig;->setCaCertificateAliases([Ljava/lang/String;)V

    .line 697
    :cond_a
    :goto_3
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 698
    invoke-virtual {v1}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 699
    const-string v1, "WifiConfigController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ca_cert ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 700
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaCertificateAliases()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, ") and ca_path ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 702
    invoke-virtual {v4}, Landroid/net/wifi/WifiEnterpriseConfig;->getCaPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ") should not both be non-null"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 699
    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    :cond_b
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 707
    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotProvideEapUserCertString:Ljava/lang/String;

    .line 708
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 711
    :cond_c
    const-string v1, ""

    .line 713
    :cond_d
    iget-object v3, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {v3, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setClientCertificateAlias(Ljava/lang/String;)V

    .line 714
    if-eq v2, v7, :cond_10

    if-eq v2, v8, :cond_10

    if-ne v2, v9, :cond_e

    goto :goto_4

    .line 717
    :cond_e
    if-ne v2, v5, :cond_f

    .line 718
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 719
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 721
    :cond_f
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapIdentityView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 722
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapAnonymousView:Landroid/widget/TextView;

    .line 723
    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 722
    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    goto :goto_5

    .line 715
    :cond_10
    :goto_4
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setIdentity(Ljava/lang/String;)V

    .line 716
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setAnonymousIdentity(Ljava/lang/String;)V

    .line 726
    :goto_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->isShown()Z

    move-result v1

    if-eqz v1, :cond_11

    .line 729
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lez v1, :cond_15

    .line 730
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    goto/16 :goto_8

    .line 734
    :cond_11
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiEnterpriseConfig;->setPassword(Ljava/lang/String;)V

    .line 736
    goto/16 :goto_8

    .line 613
    :pswitch_8
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 614
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_15

    .line 615
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 616
    const-string v2, "[0-9A-Fa-f]{64}"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 617
    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    goto :goto_6

    .line 619
    :cond_12
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 621
    :goto_6
    goto :goto_8

    .line 596
    :pswitch_9
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 597
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 598
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedAuthAlgorithms:Ljava/util/BitSet;

    invoke-virtual {v1, v3}, Ljava/util/BitSet;->set(I)V

    .line 599
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_15

    .line 600
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    .line 601
    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    .line 603
    const/16 v3, 0xa

    if-eq v1, v3, :cond_13

    const/16 v3, 0x1a

    if-eq v1, v3, :cond_13

    const/16 v3, 0x3a

    if-ne v1, v3, :cond_14

    :cond_13
    const-string v1, "[0-9A-Fa-f]*"

    .line 604
    invoke-virtual {v2, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_14

    .line 605
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    aput-object v2, v1, v4

    goto :goto_7

    .line 607
    :cond_14
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->wepKeys:[Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 609
    :goto_7
    goto :goto_8

    .line 592
    :pswitch_a
    iget-object v1, v0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    invoke-virtual {v1, v4}, Ljava/util/BitSet;->set(I)V

    .line 593
    nop

    .line 747
    :cond_15
    :goto_8
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1, v0, v2, v3, v4}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->setConfig(Landroid/net/wifi/WifiConfiguration;ILandroid/widget/TextView;Landroid/widget/Spinner;)V

    .line 750
    new-instance v1, Landroid/net/IpConfiguration;

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mIpAssignment:Landroid/net/IpConfiguration$IpAssignment;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettings:Landroid/net/IpConfiguration$ProxySettings;

    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mStaticIpConfiguration:Landroid/net/StaticIpConfiguration;

    iget-object v5, p0, Lcom/android/settings/wifi/WifiConfigController;->mHttpProxy:Landroid/net/ProxyInfo;

    invoke-direct {v1, v2, v3, v4, v5}, Landroid/net/IpConfiguration;-><init>(Landroid/net/IpConfiguration$IpAssignment;Landroid/net/IpConfiguration$ProxySettings;Landroid/net/StaticIpConfiguration;Landroid/net/ProxyInfo;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiConfiguration;->setIpConfiguration(Landroid/net/IpConfiguration;)V

    .line 753
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_16

    .line 754
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mMeteredSettingsSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Landroid/net/wifi/WifiConfiguration;->meteredOverride:I

    .line 757
    :cond_16
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
    .end packed-switch
.end method

.method getKeyStore()Landroid/security/KeyStore;
    .locals 1

    .line 1321
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v0

    return-object v0
.end method

.method public getMode()I
    .locals 1

    .line 1369
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mMode:I

    return v0
.end method

.method getSignalString()Ljava/lang/String;
    .locals 3

    .line 434
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->isReachable()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 435
    return-object v1

    .line 437
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getLevel()I

    move-result v0

    .line 439
    const/4 v2, -0x1

    if-le v0, v2, :cond_1

    iget-object v2, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mLevels:[Ljava/lang/String;

    aget-object v1, v1, v0

    nop

    :cond_1
    return-object v1
.end method

.method hideForgetButton()V
    .locals 2

    .line 443
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getForgetButton()Landroid/widget/Button;

    move-result-object v0

    .line 444
    if-nez v0, :cond_0

    return-void

    .line 446
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 447
    return-void
.end method

.method hideSubmitButton()V
    .locals 2

    .line 450
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getSubmitButton()Landroid/widget/Button;

    move-result-object v0

    .line 451
    if-nez v0, :cond_0

    return-void

    .line 453
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 454
    return-void
.end method

.method isSplitSystemUser()Z
    .locals 2

    .line 420
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    const-string v1, "user"

    .line 421
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 422
    invoke-static {}, Landroid/os/UserManager;->isSplitSystemUser()Z

    move-result v0

    return v0
.end method

.method isSubmittable()Z
    .locals 5

    .line 474
    nop

    .line 475
    nop

    .line 476
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 478
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    const/4 v3, 0x2

    if-ne v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 480
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/wifi/WifiConfigController;->isValidPsk(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 481
    :cond_1
    goto :goto_0

    .line 484
    :cond_2
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    iget v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {v0, v3, v4, v1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->enableSubmitIfAppropriate(Landroid/widget/TextView;IZ)Z

    move-result v0

    .line 487
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-eqz v1, :cond_7

    :cond_3
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 489
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    if-nez v0, :cond_7

    :cond_5
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    if-eqz v1, :cond_6

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPoint:Lcom/android/settingslib/wifi/AccessPoint;

    .line 492
    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_6

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    .line 493
    invoke-virtual {v0}, Landroid/widget/TextView;->length()I

    move-result v0

    if-lez v0, :cond_6

    goto :goto_1

    .line 496
    :cond_6
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->ipAndProxyFieldsAreValid()Z

    move-result v0

    goto :goto_2

    .line 494
    :cond_7
    :goto_1
    nop

    .line 499
    move v0, v2

    :goto_2
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    const/16 v3, 0x8

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a0125    # @id/eap

    .line 500
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a01d1    # @id/l_ca_cert

    .line 501
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9

    .line 502
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 503
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 506
    nop

    .line 508
    move v0, v2

    :cond_8
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v1, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a01d2    # @id/l_domain

    .line 510
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_9

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 511
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 514
    nop

    .line 517
    move v0, v2

    :cond_9
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    if-eqz v1, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a01d6    # @id/l_user_cert

    .line 518
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eq v1, v3, :cond_a

    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapUserCertSpinner:Landroid/widget/Spinner;

    .line 519
    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/wifi/WifiConfigController;->mUnspecifiedCertString:Ljava/lang/String;

    .line 520
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 523
    nop

    .line 525
    move v0, v2

    :cond_a
    return v0
.end method

.method isValidPsk(Ljava/lang/String;)Z
    .locals 3

    .line 465
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    const/16 v2, 0x40

    if-ne v0, v2, :cond_0

    const-string v0, "[0-9A-Fa-f]{64}"

    invoke-virtual {p1, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 466
    return v1

    .line 467
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x8

    if-lt v0, v2, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/16 v0, 0x3f

    if-gt p1, v0, :cond_1

    .line 468
    return v1

    .line 470
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 3

    .line 1414
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result v0

    const v1, 0x7f0a0305    # @id/show_password

    if-ne v0, v1, :cond_2

    .line 1415
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getSelectionEnd()I

    move-result p1

    .line 1416
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    const/4 v1, 0x1

    .line 1417
    if-eqz p2, :cond_0

    const/16 p2, 0x90

    goto :goto_0

    .line 1418
    :cond_0
    const/16 p2, 0x80

    :goto_0
    or-int/2addr p2, v1

    .line 1416
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setInputType(I)V

    .line 1419
    if-ltz p1, :cond_1

    .line 1420
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    check-cast p2, Landroid/widget/EditText;

    invoke-virtual {p2, p1}, Landroid/widget/EditText;->setSelection(I)V

    .line 1422
    :cond_1
    goto :goto_2

    :cond_2
    invoke-virtual {p1}, Landroid/widget/CompoundButton;->getId()I

    move-result p1

    const v0, 0x7f0a03e1    # @id/wifi_advanced_togglebox

    if-ne p1, v0, :cond_4

    .line 1423
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v0, 0x7f0a03e0    # @id/wifi_advanced_toggle

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 1426
    if-eqz p2, :cond_3

    .line 1427
    const/4 p2, 0x0

    .line 1428
    const v0, 0x7f120fbe    # @string/wifi_advanced_toggle_description_expanded 'Drop down list Advanced Options. Double-tap to collapse.'

    goto :goto_1

    .line 1430
    :cond_3
    const/16 p2, 0x8

    .line 1431
    const v0, 0x7f120fbd    # @string/wifi_advanced_toggle_description_collapsed 'Drop down list Advanced Options. Double-tap to expand.'

    .line 1433
    :goto_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a03df    # @id/wifi_advanced_fields

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/view/View;->setVisibility(I)V

    .line 1434
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mContext:Landroid/content/Context;

    invoke-virtual {p2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1436
    :cond_4
    :goto_2
    return-void
.end method

.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1392
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    .line 1393
    const/4 p1, 0x6

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1394
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 1395
    const/4 p1, 0x1

    return p1

    .line 1398
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1440
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mSecuritySpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 1441
    iput p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1443
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mWifiConfigControllerExt:Lcom/mediatek/settings/wifi/WifiConfigControllerExt;

    iget p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    invoke-virtual {p1, p2}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getSecurity(I)I

    move-result p1

    iput p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mAccessPointSecurity:I

    .line 1444
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    goto :goto_2

    .line 1445
    :cond_0
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    if-eq p1, p2, :cond_6

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_1

    goto :goto_1

    .line 1447
    :cond_1
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mPhase2Spinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_2

    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapMethodSpinner:Landroid/widget/Spinner;

    .line 1448
    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-nez p2, :cond_2

    .line 1449
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showPeapFields()V

    goto :goto_2

    .line 1450
    :cond_2
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mProxySettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_3

    .line 1451
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showProxyFields()V

    goto :goto_2

    .line 1452
    :cond_3
    iget-object p2, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenSettingsSpinner:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_5

    .line 1453
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mHiddenWarningView:Landroid/widget/TextView;

    .line 1454
    if-nez p3, :cond_4

    .line 1455
    const/16 p2, 0x8

    goto :goto_0

    .line 1456
    :cond_4
    const/4 p2, 0x0

    .line 1453
    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1457
    const/4 p1, 0x1

    if-ne p3, p1, :cond_7

    .line 1458
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mDialogContainer:Landroid/widget/ScrollView;

    new-instance p2, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$7dViR1XLVJsqzanUSq-nLAYeTK0;

    invoke-direct {p2, p0}, Lcom/android/settings/wifi/-$$Lambda$WifiConfigController$7dViR1XLVJsqzanUSq-nLAYeTK0;-><init>(Lcom/android/settings/wifi/WifiConfigController;)V

    invoke-virtual {p1, p2}, Landroid/widget/ScrollView;->post(Ljava/lang/Runnable;)Z

    goto :goto_2

    .line 1463
    :cond_5
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showIpConfigFields()V

    goto :goto_2

    .line 1446
    :cond_6
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/wifi/WifiConfigController;->showSecurityFields()V

    .line 1465
    :cond_7
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->showWarningMessagesIfAppropriate()V

    .line 1466
    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->enableSubmitIfAppropriate()V

    .line 1467
    return-void
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 0

    .line 1403
    iget-object p3, p0, Lcom/android/settings/wifi/WifiConfigController;->mPasswordView:Landroid/widget/TextView;

    if-ne p1, p3, :cond_0

    .line 1404
    const/16 p1, 0x42

    if-ne p2, p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/wifi/WifiConfigController;->isSubmittable()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1405
    iget-object p1, p0, Lcom/android/settings/wifi/WifiConfigController;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->dispatchSubmit()V

    .line 1406
    const/4 p1, 0x1

    return p1

    .line 1409
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    .line 1472
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 1388
    return-void
.end method

.method showWarningMessagesIfAppropriate()V
    .locals 6

    .line 529
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0232    # @id/no_ca_cert_warning

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v3, 0x7f0a0234    # @id/no_domain_warning

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a032c    # @id/ssid_too_long_warning

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 533
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    const/4 v5, 0x0

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mSsidView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 535
    invoke-static {v0}, Lcom/android/settings/wifi/WifiUtils;->isSSIDTooLong(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 536
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 539
    :cond_0
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v4, 0x7f0a01d1    # @id/l_ca_cert

    .line 540
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    .line 541
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapCaCertSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 542
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mDoNotValidateEapServerString:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 545
    iget-object v4, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    .line 547
    :cond_1
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mUseSystemCertsString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a01d2    # @id/l_domain

    .line 549
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-eq v0, v2, :cond_2

    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mEapDomainView:Landroid/widget/TextView;

    .line 550
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 554
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/view/View;->setVisibility(I)V

    .line 557
    :cond_2
    return-void
.end method

.method public updatePassword()V
    .locals 3

    .line 1478
    iget-object v0, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v1, 0x7f0a0254    # @id/password

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1479
    nop

    .line 1480
    iget-object v1, p0, Lcom/android/settings/wifi/WifiConfigController;->mView:Landroid/view/View;

    const v2, 0x7f0a0305    # @id/show_password

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1481
    const/16 v1, 0x90

    goto :goto_0

    .line 1482
    :cond_0
    const/16 v1, 0x80

    :goto_0
    const/4 v2, 0x1

    or-int/2addr v1, v2

    .line 1479
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setInputType(I)V

    .line 1483
    return-void
.end method
