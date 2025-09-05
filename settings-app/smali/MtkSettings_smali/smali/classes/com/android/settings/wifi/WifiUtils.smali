.class public Lcom/android/settings/wifi/WifiUtils;
.super Ljava/lang/Object;
.source "WifiUtils.java"


# direct methods
.method public static canSignIntoNetwork(Landroid/net/NetworkCapabilities;)Z
    .locals 1

    .line 109
    if-eqz p0, :cond_0

    const/16 v0, 0x11

    .line 110
    invoke-virtual {p0, v0}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    .line 109
    :goto_0
    return p0
.end method

.method public static isHotspotPasswordValid(Ljava/lang/String;)Z
    .locals 2

    .line 54
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 55
    return v1

    .line 58
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    .line 59
    const/16 v0, 0x8

    if-lt p0, v0, :cond_1

    const/16 v0, 0x3f

    if-gt p0, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isNetworkLockedDown(Landroid/content/Context;Landroid/net/wifi/WifiConfiguration;)Z
    .locals 5

    .line 69
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 70
    return v0

    .line 73
    :cond_0
    const-string v1, "device_policy"

    .line 74
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/admin/DevicePolicyManager;

    .line 75
    new-instance v2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    .line 79
    const-string v3, "android.software.device_admin"

    invoke-virtual {v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v3

    const/4 v4, 0x1

    if-eqz v3, :cond_1

    if-nez v1, :cond_1

    .line 80
    return v4

    .line 83
    :cond_1
    nop

    .line 84
    if-eqz v1, :cond_3

    .line 85
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerComponentOnAnyUser()Landroid/content/ComponentName;

    move-result-object v3

    .line 86
    if-eqz v3, :cond_3

    .line 87
    invoke-virtual {v1}, Landroid/app/admin/DevicePolicyManager;->getDeviceOwnerUserId()I

    move-result v1

    .line 89
    :try_start_0
    invoke-virtual {v3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageUidAsUser(Ljava/lang/String;I)I

    move-result v1

    .line 91
    iget p1, p1, Landroid/net/wifi/WifiConfiguration;->creatorUid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne v1, p1, :cond_2

    .line 94
    move p1, v4

    goto :goto_0

    .line 91
    :cond_2
    nop

    .line 94
    move p1, v0

    :goto_0
    goto :goto_1

    .line 92
    :catch_0
    move-exception p1

    .line 97
    :cond_3
    move p1, v0

    :goto_1
    if-nez p1, :cond_4

    .line 98
    return v0

    .line 101
    :cond_4
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 102
    const-string p1, "wifi_device_owner_configs_lockdown"

    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_5

    .line 104
    move v0, v4

    goto :goto_2

    .line 102
    :cond_5
    nop

    .line 104
    :goto_2
    return v0
.end method

.method public static isSSIDTooLong(Ljava/lang/String;)Z
    .locals 2

    .line 40
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 41
    return v1

    .line 43
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    const/16 v0, 0x20

    if-le p0, v0, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1
.end method

.method public static isSSIDTooShort(Ljava/lang/String;)Z
    .locals 2

    .line 47
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    return v1

    .line 50
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result p0

    if-ge p0, v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method
