.class public Lcom/android/settings/network/MobilePlanPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "MobilePlanPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnSaveInstanceState;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;
    }
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private final mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

.field private final mIsSecondaryUser:Z

.field private mMobilePlanDialogMessage:Ljava/lang/String;

.field private mTm:Landroid/telephony/TelephonyManager;

.field private final mUserManager:Landroid/os/UserManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;)V
    .locals 0

    .line 74
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 75
    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    .line 76
    const-string p2, "connectivity"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/net/ConnectivityManager;

    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    .line 77
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    .line 78
    const-string p2, "user"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mUserManager:Landroid/os/UserManager;

    .line 79
    iget-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsSecondaryUser:Z

    .line 80
    return-void
.end method

.method private onManageMobilePlanClick()V
    .locals 6

    .line 129
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 131
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v2

    if-eqz v2, :cond_5

    if-eqz v1, :cond_5

    .line 133
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.CARRIER_SETUP"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 134
    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    .line 135
    invoke-virtual {v2, v1}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v2

    .line 136
    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_1

    .line 137
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v0

    if-eq v0, v4, :cond_0

    .line 138
    const-string v0, "MobilePlanPrefContr"

    const-string v4, "Multiple matching carrier apps found, launching the first."

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    :cond_0
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 141
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 142
    return-void

    .line 146
    :cond_1
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mCm:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getMobileProvisioningUrl()Ljava/lang/String;

    move-result-object v1

    .line 147
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 148
    const-string v0, "android.intent.action.MAIN"

    const-string v2, "android.intent.category.APP_BROWSER"

    invoke-static {v0, v2}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 150
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 151
    const/high16 v1, 0x10400000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 153
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    goto :goto_0

    .line 154
    :catch_0
    move-exception v0

    .line 155
    const-string v1, "MobilePlanPrefContr"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onManageMobilePlanClick: startActivity failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 157
    :goto_0
    goto :goto_1

    .line 159
    :cond_2
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 160
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const v5, 0x7f120907    # @string/mobile_no_provisioning_url '%1$s has no known provisioning website'

    if-eqz v2, :cond_4

    .line 163
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName()Ljava/lang/String;

    move-result-object v1

    .line 164
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 165
    const v1, 0x7f120908    # @string/mobile_unknown_sim_operator 'Unknown SIM operator'

    .line 166
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_1

    .line 168
    :cond_3
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_1

    .line 172
    :cond_4
    new-array v2, v4, [Ljava/lang/Object;

    aput-object v1, v2, v3

    .line 173
    invoke-virtual {v0, v5, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 176
    :goto_1
    goto :goto_2

    :cond_5
    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mTm:Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->hasIccCard()Z

    move-result v1

    if-nez v1, :cond_6

    .line 178
    const v1, 0x7f120906    # @string/mobile_insert_sim_card 'Please insert SIM card and restart'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    goto :goto_2

    .line 181
    :cond_6
    const v1, 0x7f120903    # @string/mobile_connect_to_internet 'Please connect to the internet'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 183
    :goto_2
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 184
    const-string v0, "MobilePlanPrefContr"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onManageMobilePlanClick: message="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    if-eqz v0, :cond_7

    .line 186
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    invoke-interface {v0}, Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;->showMobilePlanMessageDialog()V

    goto :goto_3

    .line 188
    :cond_7
    const-string v0, "MobilePlanPrefContr"

    const-string v1, "Missing host fragment, cannot show message dialog."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    :cond_8
    :goto_3
    return-void
.end method


# virtual methods
.method public getMobilePlanDialogMessage()Ljava/lang/String;
    .locals 1

    .line 107
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    return-object v0
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 125
    const-string v0, "manage_mobile_plan"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mHost:Lcom/android/settings/network/MobilePlanPreferenceController$MobilePlanPreferenceHost;

    if-eqz v0, :cond_0

    const-string v0, "manage_mobile_plan"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 85
    const/4 p1, 0x0

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 86
    invoke-direct {p0}, Lcom/android/settings/network/MobilePlanPreferenceController;->onManageMobilePlanClick()V

    .line 88
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public isAvailable()Z
    .locals 6

    .line 116
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f05002a    # @bool/config_show_mobile_plan 'false'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    .line 118
    iget-boolean v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mIsSecondaryUser:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    .line 119
    invoke-static {v1}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mContext:Landroid/content/Context;

    const-string v4, "no_config_mobile_networks"

    .line 120
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v5

    invoke-static {v1, v4, v5}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 121
    move v1, v3

    goto :goto_0

    .line 120
    :cond_0
    nop

    .line 121
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    move v2, v3

    nop

    :cond_1
    return v2
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 93
    if-eqz p1, :cond_0

    .line 94
    const-string v0, "mManageMobilePlanMessage"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 96
    :cond_0
    const-string p1, "MobilePlanPrefContr"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCreate: mMobilePlanDialogMessage="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 102
    const-string v0, "mManageMobilePlanMessage"

    iget-object v1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    :cond_0
    return-void
.end method

.method public setMobilePlanDialogMessage(Ljava/lang/String;)V
    .locals 0

    .line 111
    iput-object p1, p0, Lcom/android/settings/network/MobilePlanPreferenceController;->mMobilePlanDialogMessage:Ljava/lang/String;

    .line 112
    return-void
.end method
