.class public Lcom/android/settings/applications/VrListenerSettings;
.super Lcom/android/settings/utils/ManagedServiceSettings;
.source "VrListenerSettings.java"


# static fields
.field private static final CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

.field private static final TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 29
    const-class v0, Lcom/android/settings/applications/VrListenerSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/VrListenerSettings;->TAG:Ljava/lang/String;

    .line 30
    new-instance v0, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    invoke-direct {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;-><init>()V

    sget-object v1, Lcom/android/settings/applications/VrListenerSettings;->TAG:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setTag(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "enabled_vr_listeners"

    .line 32
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setSetting(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.service.vr.VrListenerService"

    .line 33
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setIntentAction(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "android.permission.BIND_VR_LISTENER_SERVICE"

    .line 34
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setPermission(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    const-string v1, "vr listener"

    .line 35
    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setNoun(Ljava/lang/String;)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 36
    const v1, 0x7f120f8b    # @string/vr_listener_security_warning_title 'Allow VR service access for %1$s?'

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogTitle(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 37
    const v1, 0x7f120f8a    # @string/vr_listener_security_warning_summary '%1$s will be able to run when you are using applications in virtual reality mode.'

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setWarningDialogSummary(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 38
    const v1, 0x7f12098f    # @string/no_vr_listeners 'No installed apps have requested to be run as VR helper services.'

    invoke-virtual {v0, v1}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->setEmptyText(I)Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Lcom/android/settings/utils/ManagedServiceSettings$Config$Builder;->build()Lcom/android/settings/utils/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/VrListenerSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    .line 30
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 28
    invoke-direct {p0}, Lcom/android/settings/utils/ManagedServiceSettings;-><init>()V

    return-void
.end method


# virtual methods
.method protected getConfig()Lcom/android/settings/utils/ManagedServiceSettings$Config;
    .locals 1

    .line 43
    sget-object v0, Lcom/android/settings/applications/VrListenerSettings;->CONFIG:Lcom/android/settings/utils/ManagedServiceSettings$Config;

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 48
    const/16 v0, 0x14e

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 59
    const v0, 0x7f1500b9    # @xml/vr_listeners_settings 'res/xml/vr_listeners_settings.xml'

    return v0
.end method

.method logSpecialPermissionChange(ZLjava/lang/String;)V
    .locals 3
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 64
    if-eqz p1, :cond_0

    const/16 p1, 0x304

    goto :goto_0

    .line 65
    :cond_0
    const/16 p1, 0x305

    .line 66
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/applications/VrListenerSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/applications/VrListenerSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, v1, p1, p2, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 68
    return-void
.end method

.method protected setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z
    .locals 1

    .line 53
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p3, v0}, Lcom/android/settings/applications/VrListenerSettings;->logSpecialPermissionChange(ZLjava/lang/String;)V

    .line 54
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/utils/ManagedServiceSettings;->setEnabled(Landroid/content/ComponentName;Ljava/lang/String;Z)Z

    move-result p1

    return p1
.end method
