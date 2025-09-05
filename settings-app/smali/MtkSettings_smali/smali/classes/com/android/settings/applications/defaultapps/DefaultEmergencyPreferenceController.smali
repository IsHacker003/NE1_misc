.class public Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultEmergencyPreferenceController.java"


# static fields
.field public static final QUERY_INTENT:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 33
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.telephony.action.EMERGENCY_ASSISTANCE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->QUERY_INTENT:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 38
    return-void
.end method

.method public static hasEmergencyPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 2

    .line 64
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lcom/android/settings/applications/defaultapps/DefaultEmergencyPreferenceController;->QUERY_INTENT:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 65
    invoke-virtual {v0, p0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 66
    nop

    .line 67
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p0

    .line 68
    if-eqz p0, :cond_0

    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result p0

    if-eqz p0, :cond_0

    const/4 p1, 0x1

    nop

    :cond_0
    return p1
.end method

.method public static isEmergencyDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 72
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "emergency_assistance_application"

    invoke-static {p1, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 74
    if-eqz p1, :cond_0

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 1

    .line 54
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 49
    const-string v0, "default_emergency_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    .line 42
    const/4 v0, 0x0

    return v0
.end method
