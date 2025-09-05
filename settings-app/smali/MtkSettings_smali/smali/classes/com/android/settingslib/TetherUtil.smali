.class public Lcom/android/settingslib/TetherUtil;
.super Ljava/lang/Object;
.source "TetherUtil.java"


# direct methods
.method static isEntitlementCheckRequired(Landroid/content/Context;)Z
    .locals 1

    .line 27
    const-string v0, "carrier_config"

    .line 28
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/telephony/CarrierConfigManager;

    .line 29
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 33
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/CarrierConfigManager;->getConfig()Landroid/os/PersistableBundle;

    move-result-object p0

    const-string v0, "require_entitlement_checks_bool"

    invoke-virtual {p0, v0}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result p0

    return p0

    .line 31
    :cond_1
    :goto_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isProvisioningNeeded(Landroid/content/Context;)Z
    .locals 3

    .line 40
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1070036    # @android:array/config_mobile_tcp_buffers

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .line 42
    const-string v1, "net.tethering.noprovisioning"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 47
    :cond_0
    invoke-static {p0}, Lcom/android/settingslib/TetherUtil;->isEntitlementCheckRequired(Landroid/content/Context;)Z

    move-result p0

    if-nez p0, :cond_1

    .line 48
    return v2

    .line 50
    :cond_1
    array-length p0, v0

    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const/4 v2, 0x1

    nop

    :cond_2
    return v2

    .line 44
    :cond_3
    :goto_0
    return v2
.end method
