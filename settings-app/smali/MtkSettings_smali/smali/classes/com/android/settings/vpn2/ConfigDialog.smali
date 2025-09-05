.class Lcom/android/settings/vpn2/ConfigDialog;
.super Landroid/app/AlertDialog;
.source "ConfigDialog.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field private mAlwaysOnInvalidReason:Landroid/widget/TextView;

.field private mAlwaysOnVpn:Landroid/widget/CheckBox;

.field private mDnsServers:Landroid/widget/TextView;

.field private mEditing:Z

.field private mExists:Z

.field private mIpsecCaCert:Landroid/widget/Spinner;

.field private mIpsecIdentifier:Landroid/widget/TextView;

.field private mIpsecSecret:Landroid/widget/TextView;

.field private mIpsecServerCert:Landroid/widget/Spinner;

.field private mIpsecUserCert:Landroid/widget/Spinner;

.field private final mKeyStore:Landroid/security/KeyStore;

.field private mL2tpSecret:Landroid/widget/TextView;

.field private final mListener:Landroid/content/DialogInterface$OnClickListener;

.field private mMppe:Landroid/widget/CheckBox;

.field private mName:Landroid/widget/TextView;

.field private mPassword:Landroid/widget/TextView;

.field private final mProfile:Lcom/android/internal/net/VpnProfile;

.field private mRoutes:Landroid/widget/TextView;

.field private mSaveLogin:Landroid/widget/CheckBox;

.field private mSearchDomains:Landroid/widget/TextView;

.field private mServer:Landroid/widget/TextView;

.field private mShowOptions:Landroid/widget/CheckBox;

.field private mType:Landroid/widget/Spinner;

.field private mUsername:Landroid/widget/TextView;

.field private mView:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/DialogInterface$OnClickListener;Lcom/android/internal/net/VpnProfile;ZZ)V
    .locals 0

    .line 83
    invoke-direct {p0, p1}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;)V

    .line 52
    invoke-static {}, Landroid/security/KeyStore;->getInstance()Landroid/security/KeyStore;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mKeyStore:Landroid/security/KeyStore;

    .line 85
    iput-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 86
    iput-object p3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    .line 87
    iput-boolean p4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    .line 88
    iput-boolean p5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    .line 89
    return-void
.end method

.method private changeType(I)V
    .locals 6

    .line 320
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01ce    # @id/l2tp

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a01c4    # @id/ipsec_psk

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v4, 0x7f0a01c7    # @id/ipsec_user

    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 324
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v5, 0x7f0a01c3    # @id/ipsec_peer

    invoke-virtual {v0, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 327
    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 340
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 343
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 346
    :pswitch_2
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 333
    :pswitch_3
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 336
    :pswitch_4
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 337
    goto :goto_0

    .line 329
    :pswitch_5
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 330
    nop

    .line 349
    :goto_0
    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V
    .locals 4

    .line 407
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 408
    if-nez p3, :cond_0

    const-string p3, ""

    goto :goto_0

    :cond_0
    invoke-virtual {v0, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p3

    .line 409
    :goto_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mKeyStore:Landroid/security/KeyStore;

    invoke-virtual {v1, p2}, Landroid/security/KeyStore;->list(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 411
    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p2, :cond_2

    array-length v3, p2

    if-nez v3, :cond_1

    goto :goto_1

    .line 414
    :cond_1
    array-length v3, p2

    add-int/2addr v3, v2

    new-array v3, v3, [Ljava/lang/String;

    .line 415
    aput-object p3, v3, v1

    .line 416
    array-length p3, p2

    invoke-static {p2, v1, v3, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 417
    goto :goto_2

    .line 412
    :cond_2
    :goto_1
    new-array v3, v2, [Ljava/lang/String;

    aput-object p3, v3, v1

    .line 420
    :goto_2
    new-instance p2, Landroid/widget/ArrayAdapter;

    const p3, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {p2, v0, p3, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 422
    const p3, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {p2, p3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 423
    invoke-virtual {p1, p2}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 425
    :goto_3
    array-length p2, v3

    if-ge v2, p2, :cond_4

    .line 426
    aget-object p2, v3, v2

    invoke-virtual {p2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 427
    invoke-virtual {p1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 428
    goto :goto_4

    .line 425
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 431
    :cond_4
    :goto_4
    return-void
.end method

.method private showAdvancedOptions()V
    .locals 2

    .line 314
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v1, 0x7f0a024a    # @id/options

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 316
    return-void
.end method

.method private updateUiControls()V
    .locals 4

    .line 277
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 281
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 282
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 284
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 285
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 286
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isTypeValidForLockdown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 287
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const v1, 0x7f120f4c    # @string/vpn_always_on_invalid_reason_type 'This VPN type can't stay connected at all times'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 288
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isServerAddressNumeric()Z

    move-result v1

    if-nez v1, :cond_2

    .line 289
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const v1, 0x7f120f4b    # @string/vpn_always_on_invalid_reason_server 'Always-on VPN only supports numeric server addresses'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 290
    :cond_2
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->hasDns()Z

    move-result v1

    if-nez v1, :cond_3

    .line 291
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const v1, 0x7f120f49    # @string/vpn_always_on_invalid_reason_no_dns 'A DNS server must be specified for always-on VPN'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 292
    :cond_3
    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->areDnsAddressesNumeric()Z

    move-result v0

    if-nez v0, :cond_4

    .line 293
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const v1, 0x7f120f48    # @string/vpn_always_on_invalid_reason_dns 'DNS server addresses must be numeric for always-on VPN'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    const v1, 0x7f120f4a    # @string/vpn_always_on_invalid_reason_other 'The information entered doesn't support always-on VPN'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 297
    :goto_0
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 301
    :goto_1
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v3}, Landroid/widget/CheckBox;->setEnabled(Z)V

    goto :goto_2

    .line 305
    :cond_5
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 306
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setEnabled(Z)V

    .line 310
    :goto_2
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 311
    return-void
.end method

.method private validate(Z)Z
    .locals 2

    .line 352
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getProfile()Lcom/android/internal/net/VpnProfile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/net/VpnProfile;->isValidLockdownProfile()Z

    move-result v0

    if-nez v0, :cond_0

    .line 353
    return v1

    .line 355
    :cond_0
    const/4 v0, 0x1

    if-nez p1, :cond_2

    .line 356
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    return v0

    .line 358
    :cond_2
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    .line 359
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_6

    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 360
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lcom/android/settings/vpn2/ConfigDialog;->validateAddresses(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_3

    .line 363
    :cond_3
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    packed-switch p1, :pswitch_data_0

    .line 376
    return v1

    .line 374
    :pswitch_0
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {p1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p1

    if-eqz p1, :cond_4

    goto :goto_1

    :cond_4
    move v0, v1

    :goto_1
    return v0

    .line 370
    :pswitch_1
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-eqz p1, :cond_5

    goto :goto_2

    :cond_5
    move v0, v1

    :goto_2
    return v0

    .line 366
    :pswitch_2
    return v0

    .line 361
    :cond_6
    :goto_3
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method private validateAddresses(Ljava/lang/String;Z)Z
    .locals 10

    .line 381
    const/4 v0, 0x0

    :try_start_0
    const-string v1, " "

    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    array-length v1, p1

    move v2, v0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v1, :cond_4

    aget-object v4, p1, v2

    .line 382
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 383
    goto :goto_2

    .line 386
    :cond_0
    nop

    .line 387
    const/4 v5, 0x2

    const/16 v6, 0x20

    if-eqz p2, :cond_1

    .line 388
    const-string v7, "/"

    invoke-virtual {v4, v7, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v4

    .line 389
    aget-object v7, v4, v0

    .line 390
    aget-object v4, v4, v3

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 392
    move-object v9, v7

    move v7, v4

    move-object v4, v9

    goto :goto_1

    :cond_1
    move v7, v6

    :goto_1
    invoke-static {v4}, Ljava/net/InetAddress;->parseNumericAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getAddress()[B

    move-result-object v4

    .line 393
    const/4 v8, 0x3

    aget-byte v8, v4, v8

    and-int/lit16 v8, v8, 0xff

    aget-byte v5, v4, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v5, v8

    aget-byte v3, v4, v3

    and-int/lit16 v3, v3, 0xff

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v3, v5

    aget-byte v5, v4, v0

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x18

    or-int/2addr v3, v5

    .line 395
    array-length v4, v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v5, 0x4

    if-ne v4, v5, :cond_3

    if-ltz v7, :cond_3

    if-gt v7, v6, :cond_3

    if-ge v7, v6, :cond_2

    shl-int/2addr v3, v7

    if-eqz v3, :cond_2

    goto :goto_3

    .line 381
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 397
    :cond_3
    :goto_3
    return v0

    .line 402
    :cond_4
    nop

    .line 403
    return v3

    .line 400
    :catch_0
    move-exception p1

    .line 401
    return v0
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    .line 226
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    .line 227
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 231
    return-void
.end method

.method getProfile()Lcom/android/internal/net/VpnProfile;
    .locals 5

    .line 439
    new-instance v0, Lcom/android/internal/net/VpnProfile;

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-direct {v0, v1}, Lcom/android/internal/net/VpnProfile;-><init>(Ljava/lang/String;)V

    .line 440
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    .line 441
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    iput v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    .line 442
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    .line 443
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    .line 444
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    .line 445
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    .line 446
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    .line 447
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 450
    iget v1, v0, Lcom/android/internal/net/VpnProfile;->type:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 464
    :pswitch_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 467
    :pswitch_1
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_0

    .line 468
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    .line 472
    :cond_0
    :pswitch_2
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_1

    .line 473
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    .line 475
    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    if-eqz v1, :cond_2

    .line 476
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    goto :goto_0

    .line 456
    :pswitch_3
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    .line 459
    :pswitch_4
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    .line 460
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    .line 461
    goto :goto_0

    .line 452
    :pswitch_5
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/android/internal/net/VpnProfile;->mppe:Z

    .line 453
    nop

    .line 481
    :cond_2
    :goto_0
    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, v0, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    .line 482
    :cond_3
    move v1, v3

    goto :goto_2

    .line 481
    :cond_4
    :goto_1
    nop

    .line 482
    move v1, v2

    :goto_2
    iget-object v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v4}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v4

    if-nez v4, :cond_6

    iget-boolean v4, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    if-eqz v4, :cond_5

    if-eqz v1, :cond_5

    goto :goto_3

    :cond_5
    move v2, v3

    nop

    :cond_6
    :goto_3
    iput-boolean v2, v0, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    .line 483
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method isEditing()Z
    .locals 1

    .line 434
    iget-boolean v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    return v0
.end method

.method public isVpnAlwaysOn()Z
    .locals 1

    .line 264
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0

    .line 258
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    if-ne p1, p2, :cond_0

    .line 259
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    .line 261
    :cond_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 239
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    if-ne p1, v0, :cond_0

    .line 240
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 242
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d01cb    # @layout/vpn_dialog 'res/layout/vpn_dialog.xml'

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    .line 94
    iget-object v0, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    invoke-virtual {p0, v0}, Lcom/android/settings/vpn2/ConfigDialog;->setView(Landroid/view/View;)V

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 99
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a021f    # @id/name

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    .line 100
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03a5    # @id/type

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    .line 101
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02f4    # @id/server

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    .line 102
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a03c6    # @id/username

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    .line 103
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0254    # @id/password

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    .line 104
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02d6    # @id/search_domains

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    .line 105
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a011a    # @id/dns_servers

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    .line 106
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02bc    # @id/routes

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    .line 107
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a021c    # @id/mppe

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    .line 108
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01cf    # @id/l2tp_secret

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    .line 109
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01c2    # @id/ipsec_identifier

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    .line 110
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01c5    # @id/ipsec_secret

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    .line 111
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01c8    # @id/ipsec_user_cert

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    .line 112
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01c1    # @id/ipsec_ca_cert

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    .line 113
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a01c6    # @id/ipsec_server_cert

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Spinner;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    .line 114
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a02c3    # @id/save_login

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    .line 115
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0304    # @id/show_options

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    .line 116
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0048    # @id/always_on_vpn

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    .line 117
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v2, 0x7f0a0047    # @id/always_on_invalid_reason

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnInvalidReason:Landroid/widget/TextView;

    .line 120
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v2, v2, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-virtual {v1, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 122
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->server:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 123
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v1, v1, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    if-eqz v1, :cond_0

    .line 124
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->username:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->password:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 127
    :cond_0
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSearchDomains:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mMppe:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->mppe:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 131
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mL2tpSecret:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->l2tpSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecIdentifier:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->ipsecIdentifier:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 133
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->ipsecSecret:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    const-string v2, "USRPKEY_"

    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->ipsecUserCert:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-direct {p0, v1, v2, v4, v3}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 135
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecCaCert:Landroid/widget/Spinner;

    const-string v2, "CACERT_"

    const v3, 0x7f120f6f    # @string/vpn_no_ca_cert '(don’t verify server)'

    iget-object v5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecCaCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 137
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecServerCert:Landroid/widget/Spinner;

    const-string v2, "USRCERT_"

    const v3, 0x7f120f71    # @string/vpn_no_server_cert '(received from server)'

    iget-object v5, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v5, v5, Lcom/android/internal/net/VpnProfile;->ipsecServerCert:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v5}, Lcom/android/settings/vpn2/ConfigDialog;->loadCertificates(Landroid/widget/Spinner;Ljava/lang/String;ILjava/lang/String;)V

    .line 139
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-boolean v2, v2, Lcom/android/internal/net/VpnProfile;->saveLogin:Z

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 140
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v2, v2, Lcom/android/internal/net/VpnProfile;->key:Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/vpn2/VpnUtils;->getLockdownVpn()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 143
    const-string v1, "persist.radio.imsregrequired"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    const/16 v2, 0x8

    if-eqz v1, :cond_1

    .line 144
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 148
    :cond_1
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mName:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 149
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 150
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mServer:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 151
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mUsername:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 152
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mPassword:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 153
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mDnsServers:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 154
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mRoutes:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecSecret:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 156
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mIpsecUserCert:Landroid/widget/Spinner;

    invoke-virtual {v1, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 157
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 158
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mAlwaysOnVpn:Landroid/widget/CheckBox;

    invoke-virtual {v1, p0}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 161
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    const/4 v3, 0x1

    if-nez v1, :cond_3

    invoke-direct {p0, v3}, Lcom/android/settings/vpn2/ConfigDialog;->validate(Z)Z

    move-result v1

    if-nez v1, :cond_2

    goto :goto_0

    :cond_2
    move v1, v4

    goto :goto_1

    :cond_3
    :goto_0
    move v1, v3

    :goto_1
    iput-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    .line 163
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mEditing:Z

    const/4 v5, -0x1

    if-eqz v1, :cond_7

    .line 164
    const v1, 0x7f120f5c    # @string/vpn_edit 'Edit VPN profile'

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->setTitle(I)V

    .line 167
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mView:Landroid/view/View;

    const v3, 0x7f0a0127    # @id/editor

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 170
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget v1, v1, Lcom/android/internal/net/VpnProfile;->type:I

    invoke-direct {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->changeType(I)V

    .line 173
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mSaveLogin:Landroid/widget/CheckBox;

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 176
    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->searchDomains:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->dnsServers:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v1, v1, Lcom/android/internal/net/VpnProfile;->routes:Ljava/lang/String;

    .line 177
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 178
    :cond_4
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 182
    :cond_5
    iget-boolean v1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mExists:Z

    if-eqz v1, :cond_6

    .line 183
    const/4 v1, -0x3

    const v2, 0x7f120f5e    # @string/vpn_forget 'Forget'

    .line 184
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 183
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/settings/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 188
    :cond_6
    const v1, 0x7f120f7d    # @string/vpn_save 'Save'

    .line 189
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 188
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/settings/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    goto :goto_2

    .line 191
    :cond_7
    const v1, 0x7f120f54    # @string/vpn_connect_to 'Connect to %s'

    new-array v2, v3, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/android/settings/vpn2/ConfigDialog;->mProfile:Lcom/android/internal/net/VpnProfile;

    iget-object v3, v3, Lcom/android/internal/net/VpnProfile;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/vpn2/ConfigDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 194
    const v1, 0x7f120f53    # @string/vpn_connect 'Connect'

    .line 195
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 194
    invoke-virtual {p0, v5, v1, v2}, Lcom/android/settings/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 199
    :goto_2
    const/4 v1, -0x2

    const v2, 0x7f120f50    # @string/vpn_cancel 'Cancel'

    .line 200
    invoke-virtual {v0, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mListener:Landroid/content/DialogInterface$OnClickListener;

    .line 199
    invoke-virtual {p0, v1, v0, v2}, Lcom/android/settings/vpn2/ConfigDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 203
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 206
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/vpn2/ConfigDialog;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/16 v0, 0x14

    invoke-virtual {p1, v0}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 211
    return-void
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

    .line 246
    iget-object p2, p0, Lcom/android/settings/vpn2/ConfigDialog;->mType:Landroid/widget/Spinner;

    if-ne p1, p2, :cond_0

    .line 247
    invoke-direct {p0, p3}, Lcom/android/settings/vpn2/ConfigDialog;->changeType(I)V

    .line 249
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->updateUiControls()V

    .line 250
    return-void
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

    .line 254
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .line 215
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 219
    iget-object p1, p0, Lcom/android/settings/vpn2/ConfigDialog;->mShowOptions:Landroid/widget/CheckBox;

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 220
    invoke-direct {p0}, Lcom/android/settings/vpn2/ConfigDialog;->showAdvancedOptions()V

    .line 222
    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    .line 235
    return-void
.end method
