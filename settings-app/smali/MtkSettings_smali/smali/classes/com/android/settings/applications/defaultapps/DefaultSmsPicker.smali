.class public Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultSmsPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;
    }
.end annotation


# instance fields
.field private mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 37
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 51
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 52
    nop

    .line 53
    invoke-static {v0}, Lcom/android/internal/telephony/SmsApplication;->getApplicationCollection(Landroid/content/Context;)Ljava/util/Collection;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 56
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;

    .line 58
    :try_start_0
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v3, v3, Lcom/android/internal/telephony/SmsApplication$SmsApplicationData;->mPackageName:Ljava/lang/String;

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mUserId:I

    .line 59
    invoke-virtual {v6, v3, v7, v8}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getApplicationInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    invoke-direct {v4, v0, v5, v3}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;Landroid/content/pm/PackageItemInfo;)V

    .line 58
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_1

    .line 60
    :catch_0
    move-exception v3

    .line 63
    :goto_1
    goto :goto_0

    .line 65
    :cond_0
    return-object v2
.end method

.method protected bridge synthetic getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 0

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/String;
    .locals 1

    .line 84
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->isPackageDirectBootAware(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 85
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object p1

    const v0, 0x7f120541    # @string/direct_boot_unaware_dialog_message 'Note: After a reboot, this app can't start until you unlock your phone'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 84
    :goto_0
    return-object p1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 2

    .line 70
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;->getDefaultApplication(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 41
    const/16 v0, 0x315

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 46
    const v0, 0x7f150046    # @xml/default_sms_settings 'res/xml/default_sms_settings.xml'

    return v0
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 2

    .line 75
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getDefaultKey()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->mDefaultKeyUpdater:Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Lcom/android/settings/applications/defaultapps/DefaultSmsPicker$DefaultKeyUpdater;->setDefaultApplication(Landroid/content/Context;Ljava/lang/String;)V

    .line 77
    const/4 p1, 0x1

    return p1

    .line 79
    :cond_0
    const/4 p1, 0x0

    return p1
.end method
