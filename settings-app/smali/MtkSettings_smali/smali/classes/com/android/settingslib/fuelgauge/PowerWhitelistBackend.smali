.class public Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
.super Ljava/lang/Object;
.source "PowerWhitelistBackend.java"


# static fields
.field private static sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;


# instance fields
.field private final mAppContext:Landroid/content/Context;

.field private final mDeviceIdleService:Landroid/os/IDeviceIdleController;

.field private final mSysWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mWhitelistedApps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    const-string v0, "deviceidle"

    .line 53
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;-><init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V

    .line 54
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/os/IDeviceIdleController;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    .line 48
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    .line 49
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    .line 59
    iput-object p2, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 60
    invoke-virtual {p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->refreshList()V

    .line 61
    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;
    .locals 1

    .line 189
    sget-object v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    if-nez v0, :cond_0

    .line 190
    new-instance v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    invoke-direct {v0, p0}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    .line 192
    :cond_0
    sget-object p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->sInstance:Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;

    return-object p0
.end method


# virtual methods
.method public addApp(Ljava/lang/String;)V
    .locals 2

    .line 145
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->addPowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 149
    goto :goto_0

    .line 147
    :catch_0
    move-exception p1

    .line 148
    const-string v0, "PowerWhitelistBackend"

    const-string v1, "Unable to reach IDeviceIdleController"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 150
    :goto_0
    return-void
.end method

.method public isSysWhitelisted(Ljava/lang/String;)Z
    .locals 3

    .line 69
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 70
    return v1

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 73
    return v2

    .line 75
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 77
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 78
    return v1

    .line 81
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 82
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 83
    return v1

    .line 85
    :cond_3
    return v2
.end method

.method public isWhitelisted(Ljava/lang/String;)Z
    .locals 3

    .line 90
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 91
    return v1

    .line 97
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v2, "android.hardware.telephony"

    invoke-virtual {v0, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 98
    return v2

    .line 100
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 102
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    return v1

    .line 106
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mAppContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/telecom/DefaultDialerManager;->getDefaultDialerApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 107
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 108
    return v1

    .line 110
    :cond_3
    return v2
.end method

.method public isWhitelisted([Ljava/lang/String;)Z
    .locals 4

    .line 114
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 115
    return v1

    .line 117
    :cond_0
    array-length v0, p1

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    aget-object v3, p1, v2

    .line 118
    invoke-virtual {p0, v3}, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->isWhitelisted(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 119
    const/4 p1, 0x1

    return p1

    .line 117
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 123
    :cond_2
    return v1
.end method

.method public refreshList()V
    .locals 6

    .line 163
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 164
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 165
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 166
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    if-nez v0, :cond_0

    .line 167
    return-void

    .line 170
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getFullPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 171
    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 172
    iget-object v5, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 171
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 174
    :cond_1
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelist()[Ljava/lang/String;

    move-result-object v0

    .line 175
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 176
    iget-object v5, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v5, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 175
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 178
    :cond_2
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    .line 179
    invoke-interface {v0}, Landroid/os/IDeviceIdleController;->getSystemPowerWhitelistExceptIdle()[Ljava/lang/String;

    move-result-object v0

    .line 180
    array-length v1, v0

    :goto_2
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 181
    iget-object v4, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mSysWhitelistedAppsExceptIdle:Landroid/util/ArraySet;

    invoke-virtual {v4, v3}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 185
    :cond_3
    goto :goto_3

    .line 183
    :catch_0
    move-exception v0

    .line 184
    const-string v1, "PowerWhitelistBackend"

    const-string v2, "Unable to reach IDeviceIdleController"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 186
    :goto_3
    return-void
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 2

    .line 154
    :try_start_0
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mDeviceIdleService:Landroid/os/IDeviceIdleController;

    invoke-interface {v0, p1}, Landroid/os/IDeviceIdleController;->removePowerSaveWhitelistApp(Ljava/lang/String;)V

    .line 155
    iget-object v0, p0, Lcom/android/settingslib/fuelgauge/PowerWhitelistBackend;->mWhitelistedApps:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    goto :goto_0

    .line 156
    :catch_0
    move-exception p1

    .line 157
    const-string v0, "PowerWhitelistBackend"

    const-string v1, "Unable to reach IDeviceIdleController"

    invoke-static {v0, v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 159
    :goto_0
    return-void
.end method
