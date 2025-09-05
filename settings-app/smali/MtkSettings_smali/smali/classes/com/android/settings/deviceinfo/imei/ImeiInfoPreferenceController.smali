.class public Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;
.source "ImeiInfoPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private final mIsMultiSim:Z

.field private mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;

.field private final mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field private final mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/app/Fragment;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 71
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    .line 73
    iput-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 74
    const-string p2, "phone"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    iput-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 75
    iget-object p2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result p2

    const/4 v0, 0x1

    if-le p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mIsMultiSim:Z

    .line 78
    const-string p2, "telephony_subscription_service"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 81
    if-eqz p3, :cond_1

    .line 82
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 84
    :cond_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;)Ljava/util/List;
    .locals 0

    .line 54
    iget-object p0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;Landroid/support/v7/preference/Preference;I)V
    .locals 0

    .line 54
    invoke-direct {p0, p1, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;I)V

    return-void
.end method

.method private getTitleForCdmaPhone(I)Ljava/lang/CharSequence;
    .locals 5

    .line 146
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mIsMultiSim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1208ca    # @string/meid_multi_sim 'MEID (sim slot %1$d)'

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 147
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120cfb    # @string/status_meid_number 'MEID'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 146
    :goto_0
    return-object p1
.end method

.method private getTitleForGsmPhone(I)Ljava/lang/CharSequence;
    .locals 5

    .line 141
    iget-boolean v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mIsMultiSim:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f12073a    # @string/imei_multi_sim 'IMEI (sim slot %1$d)'

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 142
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120cf6    # @string/status_imei 'IMEI'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 141
    :goto_0
    return-object p1
.end method

.method private updatePreference(Landroid/support/v7/preference/Preference;I)V
    .locals 2

    .line 129
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getCurrentPhoneTypeForSlot(I)I

    move-result v0

    .line 130
    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 131
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForCdmaPhone(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    invoke-virtual {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getMeid(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 135
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getTitleForGsmPhone(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p2}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 138
    :goto_0
    return-void
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 157
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    .line 94
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 95
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 100
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;I)V

    .line 103
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v0

    .line 105
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 107
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 108
    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 109
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "imei_info"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 111
    iget-object v3, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 112
    invoke-direct {p0, v2, v1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->updatePreference(Landroid/support/v7/preference/Preference;I)V

    .line 106
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 114
    :cond_1
    return-void

    .line 97
    :cond_2
    :goto_1
    return-void
.end method

.method getMeid(I)Ljava/lang/String;
    .locals 1

    .line 152
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getMeid(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 89
    const-string v0, "imei_info"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 118
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 119
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 120
    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, v0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoDialogFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 124
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 196
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 197
    new-instance v0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;-><init>(Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;

    .line 199
    iget-object p1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 200
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 205
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/imei/ImeiInfoPreferenceController$SubChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 208
    :cond_0
    return-void
.end method
