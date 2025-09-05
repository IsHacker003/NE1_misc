.class public Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;
.super Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;
.source "SimStatusPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;
    }
.end annotation


# instance fields
.field private final mFragment:Landroid/app/Fragment;

.field private mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;

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

    .line 63
    invoke-direct {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;-><init>(Landroid/content/Context;)V

    .line 59
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    .line 65
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 66
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 68
    iput-object p2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroid/app/Fragment;

    .line 71
    if-eqz p3, :cond_0

    .line 72
    invoke-virtual {p3, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 74
    :cond_0
    return-void
.end method

.method private getCarrierName(I)Ljava/lang/CharSequence;
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 159
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_1

    .line 161
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 162
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 163
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 165
    :cond_0
    goto :goto_0

    .line 167
    :cond_1
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f12052a    # @string/device_info_not_available 'Not available'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getCarrierNameTitle(I)Ljava/lang/String;
    .locals 5

    .line 136
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 137
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 138
    nop

    .line 139
    const v1, 0x7f120cac    # @string/sim_status_title 'SIM status'

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 140
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telephony/SubscriptionInfo;

    .line 141
    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v4

    if-ne v4, p1, :cond_1

    .line 142
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_0

    .line 143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr p1, v2

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ")"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 144
    return-object p1

    .line 146
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 149
    :cond_1
    goto :goto_0

    .line 151
    :cond_2
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v2, :cond_3

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f120c68    # @string/sim_card_number_title 'SIM %1$d'

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p1, v2

    .line 152
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 151
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 152
    :cond_3
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 151
    :goto_1
    return-object p1
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 172
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    .line 84
    invoke-super {p0, p1}, Lcom/android/settingslib/deviceinfo/AbstractSimStatusImeiInfoPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 86
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->isVisible()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 90
    :cond_0
    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v0

    .line 94
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 96
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 97
    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 98
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "sim_status"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 99
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 100
    iget-object v3, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 95
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 102
    :cond_1
    return-void

    .line 87
    :cond_2
    :goto_1
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "sim_status"

    return-object v0
.end method

.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 117
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    .line 118
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 119
    const/4 p1, 0x0

    return p1

    .line 123
    :cond_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mFragment:Landroid/app/Fragment;

    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getCarrierNameTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusDialogFragment;->show(Landroid/app/Fragment;ILjava/lang/String;)V

    .line 125
    const/4 p1, 0x1

    return p1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 205
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 206
    new-instance v0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;-><init>(Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;

    .line 208
    iget-object p1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 209
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 214
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController$SubChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 217
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 106
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 107
    iget-object v0, p0, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getCarrierNameTitle(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/simstatus/SimStatusPreferenceController;->getCarrierName(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 106
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 113
    :cond_0
    return-void
.end method
