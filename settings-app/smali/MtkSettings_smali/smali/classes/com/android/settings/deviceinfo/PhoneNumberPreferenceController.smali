.class public Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;
.super Lcom/android/settingslib/core/AbstractPreferenceController;
.source "PhoneNumberPreferenceController.java"

# interfaces
.implements Lcom/android/settings/core/PreferenceControllerMixin;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreate;
.implements Lcom/android/settingslib/core/lifecycle/events/OnDestroy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;
    }
.end annotation


# instance fields
.field private mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;

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
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 65
    invoke-direct {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;-><init>(Landroid/content/Context;)V

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    .line 66
    const-string v0, "phone"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 67
    const-string v0, "telephony_subscription_service"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/telephony/SubscriptionManager;

    iput-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 71
    if-eqz p2, :cond_0

    .line 72
    invoke-virtual {p2, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 74
    :cond_0
    return-void
.end method

.method private getPhoneNumber(I)Ljava/lang/CharSequence;
    .locals 1

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;

    move-result-object p1

    .line 116
    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120528    # @string/device_info_default 'Unknown'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 120
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method private getPreferenceTitle(I)Ljava/lang/CharSequence;
    .locals 5

    .line 124
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v2, 0x7f120cff    # @string/status_number_sim_slot 'Phone number (sim slot %1$d)'

    new-array v3, v1, [Ljava/lang/Object;

    const/4 v4, 0x0

    add-int/2addr p1, v1

    .line 125
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v3, v4

    .line 124
    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 125
    :cond_0
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120cfe    # @string/status_number 'Phone number'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 124
    :goto_0
    return-object p1
.end method


# virtual methods
.method createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;
    .locals 1

    .line 153
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-direct {v0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 5

    .line 89
    invoke-super {p0, p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 91
    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 93
    invoke-virtual {v0}, Landroid/support/v7/preference/Preference;->getOrder()I

    move-result v0

    .line 95
    const/4 v1, 0x1

    :goto_0
    iget-object v2, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 97
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->createNewPreference(Landroid/content/Context;)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 98
    add-int v3, v0, v1

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 99
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "phone_number"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 100
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 101
    iget-object v3, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 103
    :cond_0
    return-void
.end method

.method getFormattedPhoneNumber(Landroid/telephony/SubscriptionInfo;)Ljava/lang/CharSequence;
    .locals 2

    .line 145
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/android/settingslib/DeviceInfoUtils;->getFormattedPhoneNumber(Landroid/content/Context;Landroid/telephony/SubscriptionInfo;)Ljava/lang/String;

    move-result-object p1

    .line 147
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f120528    # @string/device_info_default 'Unknown'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 148
    :cond_0
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v0

    sget-object v1, Landroid/text/TextDirectionHeuristics;->LTR:Landroid/text/TextDirectionHeuristic;

    invoke-virtual {v0, p1, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object p1

    .line 147
    :goto_0
    return-object p1
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 79
    const-string v0, "phone_number"

    return-object v0
.end method

.method getSubscriptionInfo(I)Landroid/telephony/SubscriptionInfo;
    .locals 3

    .line 131
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 132
    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    .line 133
    if-eqz v0, :cond_1

    .line 134
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 135
    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 136
    return-object v1

    .line 138
    :cond_0
    goto :goto_0

    .line 140
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public isAvailable()Z
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 195
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    .line 196
    new-instance v0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;

    invoke-virtual {p1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object p1

    invoke-direct {v0, p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;-><init>(Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;

    .line 198
    iget-object p1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;

    invoke-virtual {p1, v0}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 199
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;

    if-eqz v0, :cond_0

    .line 205
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    iget-object v1, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mOnSubscriptionsChangeListener:Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController$SubChangedListener;

    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 207
    :cond_0
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 107
    const/4 p1, 0x0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 108
    iget-object v0, p0, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->mPreferenceList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/Preference;

    .line 109
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPreferenceTitle(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 110
    invoke-direct {p0, p1}, Lcom/android/settings/deviceinfo/PhoneNumberPreferenceController;->getPhoneNumber(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 107
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 112
    :cond_0
    return-void
.end method
