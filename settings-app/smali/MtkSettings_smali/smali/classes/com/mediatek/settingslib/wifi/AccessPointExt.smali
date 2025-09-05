.class public Lcom/mediatek/settingslib/wifi/AccessPointExt;
.super Ljava/lang/Object;
.source "AccessPointExt.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    return-void
.end method

.method public static getSecurity(Landroid/net/wifi/ScanResult;)I
    .locals 2

    .line 38
    iget-object v0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v1, "WAPI-PSK"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 40
    const/4 p0, 0x4

    return p0

    .line 41
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string v0, "WAPI-CERT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 43
    const/4 p0, 0x5

    return p0

    .line 45
    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public static getSecurity(Landroid/net/wifi/WifiConfiguration;)I
    .locals 2

    .line 28
    iget-object v0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 29
    const/4 p0, 0x4

    return p0

    .line 31
    :cond_0
    iget-object p0, p0, Landroid/net/wifi/WifiConfiguration;->allowedKeyManagement:Ljava/util/BitSet;

    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Ljava/util/BitSet;->get(I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 32
    const/4 p0, 0x5

    return p0

    .line 34
    :cond_1
    const/4 p0, -0x1

    return p0
.end method


# virtual methods
.method public getSecurityString(ILandroid/content/Context;)Ljava/lang/String;
    .locals 0

    .line 49
    packed-switch p1, :pswitch_data_0

    .line 58
    const/4 p1, 0x0

    return-object p1

    .line 55
    :pswitch_0
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_wapi_certificate:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 52
    :pswitch_1
    sget p1, Lcom/android/settingslib/R$string;->wifi_security_wapi_psk:I

    invoke-virtual {p2, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
