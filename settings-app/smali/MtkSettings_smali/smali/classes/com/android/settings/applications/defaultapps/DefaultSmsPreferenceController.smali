.class public Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;
.source "DefaultSmsPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPreferenceController;-><init>(Landroid/content/Context;)V

    .line 32
    return-void
.end method

.method public static hasSmsPreference(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 57
    nop

    .line 58
    invoke-static {p1}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object p1

    .line 59
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 60
    iget-object v0, v0, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    const/4 p0, 0x1

    return p0

    .line 63
    :cond_0
    goto :goto_0

    .line 64
    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method public static isSmsDefault(Ljava/lang/String;Landroid/content/Context;)Z
    .locals 1

    .line 68
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object p1

    .line 69
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method


# virtual methods
.method protected getDefaultAppInfo()Lcom/android/settingslib/applications/DefaultAppInfo;
    .locals 5

    .line 49
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v0

    .line 50
    if-eqz v0, :cond_0

    .line 51
    new-instance v1, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v2, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v4, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mUserId:I

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    return-object v1

    .line 53
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 44
    const-string v0, "default_sms_app"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 3

    .line 36
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mUserManager:Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mUserId:I

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v0

    .line 37
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPreferenceController;->mContext:Landroid/content/Context;

    const-string v2, "phone"

    .line 38
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 39
    if-nez v0, :cond_0

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isSmsCapable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
