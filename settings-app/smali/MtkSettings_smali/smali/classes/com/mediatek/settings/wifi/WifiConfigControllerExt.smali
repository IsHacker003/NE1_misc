.class public Lcom/mediatek/settings/wifi/WifiConfigControllerExt;
.super Ljava/lang/Object;
.source "WifiConfigControllerExt.java"


# instance fields
.field private mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

.field private mContext:Landroid/content/Context;

.field private mController:Lcom/android/settings/wifi/WifiConfigController;

.field private mExt:Lcom/mediatek/settings/ext/IWifiExt;

.field private mSimSlot:Landroid/widget/Spinner;

.field private mView:Landroid/view/View;

.field private mWapiCert:Landroid/widget/Spinner;


# direct methods
.method public constructor <init>(Lcom/android/settings/wifi/WifiConfigController;Lcom/android/settings/wifi/WifiConfigUiBase;Landroid/view/View;)V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    iput-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 70
    iput-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    .line 71
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    .line 72
    iput-object p3, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    .line 73
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getWifiExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IWifiExt;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    .line 74
    return-void
.end method

.method private static addQuote(I)Ljava/lang/String;
    .locals 2

    .line 137
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, "\""

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .line 411
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 412
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0

    .line 414
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getAccessPointSecurity()I
    .locals 1

    .line 425
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSecurity()I

    move-result v0

    return v0

    .line 428
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method private getAccessPointSsid()Ljava/lang/String;
    .locals 1

    .line 418
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 419
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settingslib/wifi/AccessPoint;->getSsidStr()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 421
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private isWepKeyValid(Ljava/lang/String;)Z
    .locals 3

    .line 363
    const/4 v0, 0x0

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 366
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    .line 368
    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v2, 0x1a

    if-ne v1, v2, :cond_2

    :cond_1
    const-string v2, "[0-9A-Fa-f]*"

    .line 369
    invoke-virtual {p1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    :cond_2
    const/4 p1, 0x5

    if-eq v1, p1, :cond_4

    const/16 p1, 0xd

    if-ne v1, p1, :cond_3

    goto :goto_0

    .line 373
    :cond_3
    return v0

    .line 371
    :cond_4
    :goto_0
    const/4 p1, 0x1

    return p1

    .line 364
    :cond_5
    :goto_1
    return v0
.end method

.method private loadCertificates(Landroid/widget/Spinner;)V
    .locals 6

    .line 377
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 378
    const v1, 0x7f120f9a    # @string/wapi_auto_sel_cert 'Select automatically'

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 379
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object v2

    const-string v3, "WAPI_CACERT_"

    const/16 v4, 0x3f2

    invoke-virtual {v2, v3, v4}, Landroid/security/KeyStore;->list(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 380
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    array-length v5, v2

    if-nez v5, :cond_0

    goto :goto_0

    .line 383
    :cond_0
    array-length v5, v2

    add-int/2addr v5, v4

    new-array v5, v5, [Ljava/lang/String;

    .line 384
    aput-object v1, v5, v3

    .line 385
    array-length v1, v2

    invoke-static {v2, v3, v5, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 386
    goto :goto_1

    .line 381
    :cond_1
    :goto_0
    new-array v5, v4, [Ljava/lang/String;

    aput-object v1, v5, v3

    .line 388
    :goto_1
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v2, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v1, v0, v2, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 390
    const v0, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 391
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 392
    return-void
.end method

.method private setCertificate(Landroid/widget/Spinner;Ljava/lang/String;)V
    .locals 3

    .line 260
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setSelection, cert = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    if-eqz p2, :cond_1

    .line 263
    invoke-virtual {p1}, Landroid/widget/Spinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ArrayAdapter;

    .line 264
    invoke-virtual {v0}, Landroid/widget/ArrayAdapter;->getCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 265
    invoke-virtual {v0, v1}, Landroid/widget/ArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 267
    goto :goto_1

    .line 264
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 271
    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method public addViews(Lcom/android/settings/wifi/WifiConfigUiBase;Ljava/lang/String;)V
    .locals 5

    .line 77
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f0a01b2    # @id/info

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 79
    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d01d5    # @layout/wifi_dialog_row 'res/layout/wifi_dialog_row.xml'

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 80
    const v2, 0x7f0a021f    # @id/name

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p1

    const v4, 0x7f1210a1    # @string/wifi_security 'Security'

    invoke-virtual {p1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 82
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-interface {p1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    .line 83
    const p1, 0x7f0a03c7    # @id/value

    invoke-virtual {v1, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 85
    return-void
.end method

.method public addWifiConfigView(Z)V
    .locals 6

    .line 323
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f0a02e7    # @id/security_text

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 324
    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v1, v0}, Lcom/mediatek/settings/ext/IWifiExt;->setSecurityText(Landroid/widget/TextView;)V

    .line 325
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-nez v0, :cond_4

    .line 327
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f0a02de    # @id/security

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 328
    nop

    .line 329
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    const v2, 0x7f0300ba    # @array/wifi_security

    if-eqz v1, :cond_3

    .line 330
    const-string v1, "persist.vendor.sys.wlan"

    const-string v3, "wifi-wapi"

    invoke-static {v1, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 331
    const-string v3, "WifiConfigControllerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "addWifiConfigView, type = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    const-string v3, "wifi-wapi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 333
    const v2, 0x7f03009c    # @array/wapi_security

    goto :goto_0

    .line 334
    :cond_0
    const-string v3, "wifi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 335
    goto :goto_0

    .line 336
    :cond_1
    const-string v3, "wapi"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 337
    const v2, 0x7f03009b    # @array/wapi_only_security

    .line 339
    :cond_2
    :goto_0
    goto :goto_1

    .line 340
    :cond_3
    nop

    .line 342
    :goto_1
    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 343
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    const v4, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v2, v3, v4, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 345
    const v1, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v2, v1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 347
    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 348
    goto :goto_2

    .line 349
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    .line 350
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addWifiConfigView, config = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result v1

    if-eqz v1, :cond_5

    if-eqz v0, :cond_5

    .line 353
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "priority="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v0, v0, Landroid/net/wifi/WifiConfiguration;->priority:I

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_5
    :goto_2
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v1, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v1

    .line 359
    invoke-virtual {v1, p1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 358
    invoke-interface {v0, p1, v1}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 360
    return-void
.end method

.method public enableSubmitIfAppropriate(Landroid/widget/TextView;IZ)Z
    .locals 3

    .line 275
    nop

    .line 276
    const/4 v0, 0x1

    if-eqz p1, :cond_3

    if-ne p2, v0, :cond_0

    .line 278
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 277
    invoke-direct {p0, v1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->isWepKeyValid(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    const/16 v2, 0x8

    if-ne p2, v1, :cond_1

    .line 280
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result v1

    if-lt v1, v2, :cond_2

    :cond_1
    const/4 v1, 0x4

    if-ne p2, v1, :cond_3

    .line 281
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p2

    if-lt p2, v2, :cond_2

    const/16 p2, 0x40

    .line 282
    invoke-virtual {p1}, Landroid/widget/TextView;->length()I

    move-result p1

    if-ge p2, p1, :cond_3

    .line 283
    :cond_2
    nop

    .line 285
    move p3, v0

    :cond_3
    return p3
.end method

.method public getEapMethod(I)I
    .locals 3

    .line 289
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEapMethod, eapMethod = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    nop

    .line 291
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v1

    .line 293
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSecurity()I

    move-result v2

    .line 292
    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result p1

    .line 295
    :cond_0
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEapMethod, result = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 296
    return p1
.end method

.method public getSecurity(I)I
    .locals 3

    .line 398
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecurity, accessPointSecurity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    sget-boolean v0, Lcom/mediatek/settings/FeatureOption;->MTK_WAPI_SUPPORT:Z

    if-eqz v0, :cond_0

    .line 401
    const-string v0, "persist.vendor.sys.wlan"

    const-string v1, "wifi-wapi"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 402
    const-string v1, "wapi"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-lez p1, :cond_0

    .line 403
    add-int/lit8 p1, p1, 0x3

    .line 406
    :cond_0
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getSecurity, accessPointSecurity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    return p1
.end method

.method public setConfig(Landroid/net/wifi/WifiConfiguration;ILandroid/widget/TextView;Landroid/widget/Spinner;)V
    .locals 3

    .line 90
    const/4 v0, 0x0

    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    .line 91
    const/4 v0, 0x1

    const/4 v1, 0x3

    packed-switch p2, :pswitch_data_0

    goto/16 :goto_0

    .line 123
    :pswitch_0
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 p3, 0x9

    invoke-virtual {p2, p3}, Ljava/util/BitSet;->set(I)V

    .line 124
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 125
    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mWapiCert:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    if-eqz p2, :cond_3

    .line 126
    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mWapiCert:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    .line 127
    iput v0, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSelMode:I

    goto/16 :goto_0

    .line 114
    :pswitch_1
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 p4, 0x8

    invoke-virtual {p2, p4}, Ljava/util/BitSet;->set(I)V

    .line 115
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->allowedProtocols:Ljava/util/BitSet;

    invoke-virtual {p2, v1}, Ljava/util/BitSet;->set(I)V

    .line 116
    invoke-virtual {p3}, Landroid/widget/TextView;->length()I

    move-result p2

    if-eqz p2, :cond_3

    .line 117
    invoke-virtual {p3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 118
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const/16 p4, 0x22

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, Landroid/net/wifi/WifiConfiguration;->preSharedKey:Ljava/lang/String;

    .line 119
    goto/16 :goto_0

    .line 94
    :pswitch_2
    iget-object p2, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    const/4 p3, -0x1

    invoke-static {p3}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->addQuote(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(Ljava/lang/String;)V

    .line 95
    invoke-virtual {p4}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 96
    const-string p4, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected eap method:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string p4, "AKA"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "SIM"

    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_0

    const-string p4, "AKA\'"

    .line 98
    invoke-virtual {p4, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 99
    :cond_0
    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    if-nez p2, :cond_1

    .line 100
    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const p4, 0x7f0a0311    # @id/sim_slot

    invoke-virtual {p2, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/Spinner;

    iput-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    .line 102
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p2

    const/4 p4, 0x2

    if-ne p2, p4, :cond_2

    .line 103
    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {p2}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p2

    sub-int/2addr p2, v0

    .line 104
    if-le p2, p3, :cond_2

    .line 105
    iget-object p3, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-static {p2}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->addQuote(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/net/wifi/WifiEnterpriseConfig;->setSimNum(Ljava/lang/String;)V

    .line 108
    :cond_2
    const-string p2, "WifiConfigControllerExt"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "EAP SIM/AKA config: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    :cond_3
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setEapMethodFields(Z)V
    .locals 4

    .line 158
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f0a0214    # @id/method

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 159
    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v0

    .line 161
    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    .line 163
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSecurity()I

    move-result v3

    .line 162
    invoke-interface {v1, v0, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result v0

    .line 165
    :cond_0
    const-string v1, "WifiConfigControllerExt"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showSecurityFields modify method = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v1, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v1

    .line 168
    invoke-virtual {v1, p1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object p1

    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 167
    invoke-interface {v0, p1, v1}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 169
    return-void
.end method

.method public setEapMethodSelection(Landroid/widget/Spinner;I)V
    .locals 3

    .line 300
    nop

    .line 301
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 302
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v1

    .line 303
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSecurity()I

    move-result v2

    .line 302
    invoke-interface {v0, p2, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->getPosByEapMethod(ILjava/lang/String;I)I

    move-result v0

    goto :goto_0

    .line 305
    :cond_0
    move v0, p2

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 306
    const-string p1, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[skyfyx]showSecurityFields modify pos = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    const-string p1, "WifiConfigControllerExt"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[skyfyx]showSecurityFields modify method = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    return-void
.end method

.method public setEapmethodSpinnerAdapter()V
    .locals 4

    .line 142
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v0}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 143
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0300ad    # @array/wifi_eap_method

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 144
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 145
    new-instance v1, Landroid/widget/ArrayAdapter;

    const v3, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v1, v0, v3, v2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 147
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSecurity()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Lcom/mediatek/settings/ext/IWifiExt;->setEapMethodArray(Landroid/widget/ArrayAdapter;Ljava/lang/String;I)V

    .line 150
    :cond_0
    const v0, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v1, v0}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 153
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v2, 0x7f0a0214    # @id/method

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 154
    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 155
    return-void
.end method

.method public setProxyText(Landroid/view/View;)V
    .locals 1

    .line 313
    const v0, 0x7f0a0290    # @id/proxy_exclusionlist_text

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 314
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-interface {v0, p1}, Lcom/mediatek/settings/ext/IWifiExt;->setProxyText(Landroid/widget/TextView;)V

    .line 315
    return-void
.end method

.method public showEapSimSlotByMethod(I)V
    .locals 9

    .line 179
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v0}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSsid()Ljava/lang/String;

    move-result-object v1

    .line 181
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointSecurity()I

    move-result v2

    .line 180
    invoke-interface {v0, p1, v1, v2}, Lcom/mediatek/settings/ext/IWifiExt;->getEapMethodbySpinnerPos(ILjava/lang/String;I)I

    move-result p1

    .line 184
    :cond_0
    const/4 v0, 0x4

    const v1, 0x7f0a0312    # @id/sim_slot_fields

    const/4 v2, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x5

    if-eq p1, v0, :cond_2

    const/4 v0, 0x6

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 224
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_3

    .line 187
    :cond_2
    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p1

    if-ne p1, v2, :cond_6

    .line 188
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 189
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const v1, 0x7f0a0311    # @id/sim_slot

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    .line 190
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {p1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object p1

    .line 191
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f030083    # @array/sim_slot

    .line 192
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v1

    .line 193
    iget-object v2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mContext:Landroid/content/Context;

    const-string v3, "phone"

    .line 194
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 195
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v2

    .line 196
    const-string v3, "WifiConfigControllerExt"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "the num of sim slot is :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    const/4 v3, 0x1

    add-int/2addr v2, v3

    new-array v4, v2, [Ljava/lang/String;

    .line 198
    :goto_1
    if-ge v0, v2, :cond_4

    .line 199
    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 200
    aget-object v5, v1, v0

    aput-object v5, v4, v0

    goto :goto_2

    .line 202
    :cond_3
    aget-object v5, v1, v3

    const-string v6, "1"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 198
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 205
    :cond_4
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v1, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v0, p1, v1, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 207
    const p1, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v0, p1}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 208
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    invoke-virtual {p1, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 210
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    .line 211
    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 212
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 213
    if-eqz p1, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    if-eqz v0, :cond_5

    iget-object v0, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    .line 214
    invoke-virtual {v0}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 215
    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->enterpriseConfig:Landroid/net/wifi/WifiEnterpriseConfig;

    invoke-virtual {p1}, Landroid/net/wifi/WifiEnterpriseConfig;->getSimNum()Ljava/lang/String;

    move-result-object p1

    const-string v0, "\""

    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_5

    .line 217
    iget-object v0, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mSimSlot:Landroid/widget/Spinner;

    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    add-int/2addr p1, v3

    invoke-virtual {v0, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 221
    :cond_5
    nop

    .line 227
    :cond_6
    :goto_3
    return-void
.end method

.method public showSecurityFields(IZ)Z
    .locals 4

    .line 233
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSecurityFields, accessPointSecurity = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    const-string v0, "WifiConfigControllerExt"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showSecurityFields, edit = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v0, 0x0

    const v1, 0x7f0a03d7    # @id/wapi_cert_fields

    const/16 v2, 0x8

    const/4 v3, 0x5

    if-ne p1, v3, :cond_1

    .line 238
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const p2, 0x7f0a02df    # @id/security_fields

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 239
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 240
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    const p2, 0x7f0a03d6    # @id/wapi_cert

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Spinner;

    iput-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mWapiCert:Landroid/widget/Spinner;

    .line 241
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mWapiCert:Landroid/widget/Spinner;

    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 242
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mWapiCert:Landroid/widget/Spinner;

    invoke-direct {p0, p1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->loadCertificates(Landroid/widget/Spinner;)V

    .line 244
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {p1}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settingslib/wifi/AccessPoint;->isSaved()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->getAccessPointConfig()Landroid/net/wifi/WifiConfiguration;

    move-result-object p1

    .line 246
    iget-object p2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mWapiCert:Landroid/widget/Spinner;

    iget-object p1, p1, Landroid/net/wifi/WifiConfiguration;->wapiCertSel:Ljava/lang/String;

    invoke-direct {p0, p2, p1}, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->setCertificate(Landroid/widget/Spinner;Ljava/lang/String;)V

    .line 248
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 250
    :cond_1
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 254
    iget-object p1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mExt:Lcom/mediatek/settings/ext/IWifiExt;

    new-instance v1, Lcom/mediatek/settings/ext/IWifiExt$Builder;

    invoke-direct {v1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;-><init>()V

    iget-object v2, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mController:Lcom/android/settings/wifi/WifiConfigController;

    invoke-virtual {v2}, Lcom/android/settings/wifi/WifiConfigController;->getAccessPoint()Lcom/android/settingslib/wifi/AccessPoint;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setAccessPoint(Lcom/android/settingslib/wifi/AccessPoint;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object v1

    .line 255
    invoke-virtual {v1, p2}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setEdit(Z)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mView:Landroid/view/View;

    invoke-virtual {p2, v1}, Lcom/mediatek/settings/ext/IWifiExt$Builder;->setViews(Landroid/view/View;)Lcom/mediatek/settings/ext/IWifiExt$Builder;

    move-result-object p2

    iget-object v1, p0, Lcom/mediatek/settings/wifi/WifiConfigControllerExt;->mConfigUi:Lcom/android/settings/wifi/WifiConfigUiBase;

    invoke-interface {v1}, Lcom/android/settings/wifi/WifiConfigUiBase;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 254
    invoke-interface {p1, p2, v1}, Lcom/mediatek/settings/ext/IWifiExt;->hideWifiConfigInfo(Lcom/mediatek/settings/ext/IWifiExt$Builder;Landroid/content/Context;)V

    .line 256
    return v0
.end method
