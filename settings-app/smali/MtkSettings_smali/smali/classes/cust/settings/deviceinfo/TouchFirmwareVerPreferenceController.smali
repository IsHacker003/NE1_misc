.class public Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "TouchFirmwareVerPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 53
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 54
    iput-object p1, p0, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method private getFpFirmWareVersion()Ljava/lang/String;
    .locals 2

    .line 133
    const-string v0, "sys.fp.firmware.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 134
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 135
    return-object v0

    .line 138
    :cond_0
    const-string v0, "Unavailable"

    return-object v0
.end method

.method private getTouchFirmwareVersion()Ljava/lang/String;
    .locals 3

    .line 148
    invoke-direct {p0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->getTouchFirmwareVersionForNewPath()Ljava/lang/String;

    move-result-object v0

    .line 149
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 150
    return-object v0

    .line 155
    :cond_0
    :try_start_0
    const-string v0, "/proc/tp_fw_ver"

    invoke-static {v0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 157
    return-object v0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    iget-object v0, p0, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f120528    # @string/device_info_default 'Unknown'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 158
    :catch_1
    move-exception v0

    .line 159
    const-string v1, "TFVerPref"

    const-string v2, "IO Exception when getting touch version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 163
    const-string v0, "Unavailable"

    return-object v0
.end method

.method private getTouchFirmwareVersionForNewPath()Ljava/lang/String;
    .locals 4

    .line 174
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "/sys/android_touch/ftmgetversion"

    invoke-static {v1}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->readLine(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    return-object v1

    .line 179
    :catch_0
    move-exception v1

    .line 180
    return-object v0

    .line 176
    :catch_1
    move-exception v1

    .line 177
    const-string v2, "TFVerPref"

    const-string v3, "IO Exception when getting new touch version for Device Info screen"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 178
    return-object v0
.end method

.method private getTouchFpFirmwareVersion()Ljava/lang/String;
    .locals 2

    .line 123
    const-string v0, "sys.gxfp.version"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 125
    return-object v0

    .line 128
    :cond_0
    const-string v0, "Unavailable"

    return-object v0
.end method

.method private static readLine(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 p0, 0x100

    invoke-direct {v0, v1, p0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 189
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 191
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    .line 189
    return-object p0

    .line 191
    :catchall_0
    move-exception p0

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw p0
.end method

.method private setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 114
    :try_start_0
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p3}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    goto :goto_0

    .line 115
    :catch_0
    move-exception p3

    .line 116
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iget-object p2, p0, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f120528    # @string/device_info_default 'Unknown'

    .line 117
    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    .line 116
    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    :goto_0
    return-void
.end method

.method private setupCustPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    .line 76
    invoke-direct {p0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->getTouchFirmwareVersion()Ljava/lang/String;

    move-result-object v0

    .line 77
    invoke-direct {p0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->getFpFirmWareVersion()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-direct {p0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->getTouchFpFirmwareVersion()Ljava/lang/String;

    move-result-object v2

    .line 79
    const-string v3, "Unavailable"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 80
    const-string v3, "TFVerPref"

    const-string v4, "Enter this if has first line"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    const-string v3, "Unavailable"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 82
    const-string v2, "TFVerPref"

    const-string v3, "Show first and second line, if fpFirmWareVersion has value"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    const-string v2, "touch_firmware_version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v2, v0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 85
    :cond_0
    const-string v1, "Unavailable"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 86
    const-string v1, "TFVerPref"

    const-string v3, "Show first and second line, if touchFpFirmwareVersion has value"

    invoke-static {v1, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    const-string v1, "touch_firmware_version"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 90
    :cond_1
    const-string v1, "TFVerPref"

    const-string v2, "Only show first line"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 91
    const-string v1, "touch_firmware_version"

    invoke-direct {p0, p1, v1, v0}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 95
    :cond_2
    const-string v0, "Unavailable"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 96
    const-string v0, "TFVerPref"

    const-string v2, "Show second line if fpFirmWareVersion has value"

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    const-string v0, "touch_firmware_version"

    invoke-direct {p0, p1, v0, v1}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 99
    :cond_3
    const-string v0, "Unavailable"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 100
    const-string v0, "TFVerPref"

    const-string v1, "Show second line if touchFpFirmwareVersion has value"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    const-string v0, "touch_firmware_version"

    invoke-direct {p0, p1, v0, v2}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 104
    :cond_4
    const-string v0, "TFVerPref"

    const-string v1, "All lines do not have value"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    const-string v0, "touch_firmware_version"

    const-string v1, "Unvailable"

    invoke-direct {p0, p1, v0, v1}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setStringSummary(Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return-void
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 0

    .line 69
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 70
    invoke-direct {p0, p1}, Lcust/settings/deviceinfo/TouchFirmwareVerPreferenceController;->setupCustPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 72
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 64
    const-string v0, "touch_firmware_version"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 59
    const/4 v0, 0x1

    return v0
.end method
