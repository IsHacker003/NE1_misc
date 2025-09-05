.class public interface abstract Lcom/android/settings/search/DeviceIndexFeatureProvider;
.super Ljava/lang/Object;
.source "DeviceIndexFeatureProvider.java"


# static fields
.field public static final LANGUAGE:Ljava/util/Locale;

.field public static final VERSION:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 48
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    sput-object v0, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    .line 51
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    return-void
.end method

.method public static createDeepLink(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    .line 114
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "settings"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "com.android.settings.slices"

    .line 115
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "intent"

    .line 116
    invoke-virtual {v0, v1, p0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 117
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 114
    return-object p0
.end method

.method public static setIndexState(Landroid/content/Context;)V
    .locals 3

    .line 130
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings:index_version"

    sget-object v2, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 131
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "settings:language"

    sget-object v1, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    .line 132
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 131
    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 133
    return-void
.end method

.method public static skipIndex(Landroid/content/Context;)Z
    .locals 2

    .line 121
    nop

    .line 122
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "settings:index_version"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/android/settings/search/DeviceIndexFeatureProvider;->VERSION:Ljava/lang/String;

    .line 121
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 123
    nop

    .line 124
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v1, "settings:language"

    invoke-static {p0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    sget-object v1, Lcom/android/settings/search/DeviceIndexFeatureProvider;->LANGUAGE:Ljava/util/Locale;

    .line 125
    invoke-virtual {v1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-static {p0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    .line 126
    if-eqz p0, :cond_0

    if-eqz v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public abstract clearIndex(Landroid/content/Context;)V
.end method

.method public abstract index(Landroid/content/Context;Ljava/lang/CharSequence;Landroid/net/Uri;Landroid/net/Uri;Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/CharSequence;",
            "Landroid/net/Uri;",
            "Landroid/net/Uri;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract isIndexingEnabled()Z
.end method

.method public updateIndex(Landroid/content/Context;Z)V
    .locals 4

    .line 61
    invoke-interface {p0}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->isIndexingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 62
    const-string p1, "DeviceIndex"

    const-string p2, "Skipping: device index is not enabled"

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void

    .line 66
    :cond_0
    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 67
    const-string p1, "DeviceIndex"

    const-string p2, "Skipping: device is not provisioned"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    return-void

    .line 71
    :cond_1
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/android/settings/search/DeviceIndexUpdateJobService;

    .line 72
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    :try_start_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 76
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/high16 v3, 0xc0000

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v2

    .line 79
    if-nez v2, :cond_2

    .line 80
    const-string p1, "DeviceIndex"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Skipping: No such service "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    return-void

    .line 83
    :cond_2
    iget-object v2, v2, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v1, :cond_3

    .line 84
    const-string p1, "DeviceIndex"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping: Uid cannot schedule DeviceIndexUpdate: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    return-void

    .line 90
    :cond_3
    nop

    .line 92
    if-nez p2, :cond_4

    invoke-static {p1}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->skipIndex(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 93
    const-string p1, "DeviceIndex"

    const-string p2, "Skipping: already indexed."

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    return-void

    .line 99
    :cond_4
    invoke-static {p1}, Lcom/android/settings/search/DeviceIndexFeatureProvider;->setIndexState(Landroid/content/Context;)V

    .line 101
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v1, 0x7f0b0008    # @integer/device_index_update '103'

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result p2

    .line 104
    const-class v1, Landroid/app/job/JobScheduler;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/job/JobScheduler;

    new-instance v1, Landroid/app/job/JobInfo$Builder;

    invoke-direct {v1, p2, v0}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 p2, 0x1

    .line 106
    invoke-virtual {v1, p2}, Landroid/app/job/JobInfo$Builder;->setPersisted(Z)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    .line 107
    invoke-virtual {p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setMinimumLatency(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    const-wide/16 v0, 0x1

    .line 108
    invoke-virtual {p2, v0, v1}, Landroid/app/job/JobInfo$Builder;->setOverrideDeadline(J)Landroid/app/job/JobInfo$Builder;

    move-result-object p2

    .line 109
    invoke-virtual {p2}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object p2

    .line 104
    invoke-virtual {p1, p2}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 111
    return-void

    .line 87
    :catch_0
    move-exception p1

    .line 88
    const-string p1, "DeviceIndex"

    const-string p2, "Skipping: error finding DeviceIndexUpdateJobService from packageManager"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    return-void
.end method
