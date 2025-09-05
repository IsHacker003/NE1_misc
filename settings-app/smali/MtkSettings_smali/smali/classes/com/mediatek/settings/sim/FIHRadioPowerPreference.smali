.class public Lcom/mediatek/settings/sim/FIHRadioPowerPreference;
.super Landroid/support/v7/preference/Preference;
.source "FIHRadioPowerPreference.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mController:Lcom/mediatek/settings/sim/RadioPowerController;

.field private mPowerEnabled:Z

.field private mPowerState:Z

.field private mRadioSwith:Landroid/widget/Switch;

.field private mSubId:I

.field mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field mTelManager:Landroid/telephony/TelephonyManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 51
    invoke-direct {p0, p1}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerEnabled:Z

    .line 39
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubId:I

    .line 40
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    .line 52
    iput-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mContext:Landroid/content/Context;

    .line 53
    invoke-static {p1}, Lcom/mediatek/settings/sim/RadioPowerController;->getInstance(Landroid/content/Context;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    .line 55
    const v0, 0x7f0d00c0    # @layout/new_preference 'res/layout/new_preference.xml'

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setLayoutResource(I)V

    .line 57
    const v0, 0x7f0d0119    # @layout/radio_power_switch 'res/layout/radio_power_switch.xml'

    invoke-virtual {p0, v0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setWidgetLayoutResource(I)V

    .line 58
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 59
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mTelManager:Landroid/telephony/TelephonyManager;

    .line 60
    return-void
.end method

.method static synthetic access$000(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Z
    .locals 0

    .line 34
    iget-boolean p0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerState:Z

    return p0
.end method

.method static synthetic access$002(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;Z)Z
    .locals 0

    .line 34
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerState:Z

    return p1
.end method

.method static synthetic access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I
    .locals 0

    .line 34
    iget p0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubId:I

    return p0
.end method

.method static synthetic access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    return-object p0
.end method

.method static synthetic access$300(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$400(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;I)Landroid/telecom/PhoneAccountHandle;
    .locals 0

    .line 34
    invoke-direct {p0, p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p0

    return-object p0
.end method

.method private subscriptionIdToPhoneAccountHandle(I)Landroid/telecom/PhoneAccountHandle;
    .locals 6

    .line 242
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 243
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    .line 244
    nop

    .line 245
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v2

    .line 247
    const-string v3, "FIHRadioPowerPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriptionIdToPhoneAccountHandle phoneAccounts = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const-string v3, "FIHRadioPowerPreference"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "subscriptionIdToPhoneAccountHandle phoneAccounts.hasNext() = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 250
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/PhoneAccountHandle;

    .line 251
    invoke-virtual {v0, v3}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v4

    .line 252
    invoke-virtual {v1, v4}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v4

    if-ne p1, v4, :cond_0

    .line 253
    return-object v3

    .line 255
    :cond_0
    goto :goto_0

    .line 257
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public bindRadioPowerState(IZ)V
    .locals 0

    .line 272
    iput p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubId:I

    .line 273
    if-eqz p2, :cond_0

    .line 274
    invoke-virtual {p0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result p2

    invoke-virtual {p0, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioOn(Z)V

    .line 275
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioEnabled(Z)V

    goto :goto_0

    .line 277
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p0, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioEnabled(Z)V

    .line 278
    iget-object p2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mController:Lcom/mediatek/settings/sim/RadioPowerController;

    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result p1

    invoke-virtual {p2, p1}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result p1

    invoke-virtual {p0, p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioOn(Z)V

    .line 280
    :goto_0
    return-void
.end method

.method protected getAnotherRadioOnSubId([II)I
    .locals 2

    .line 233
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 234
    aget v1, p1, v0

    if-eq v1, p2, :cond_0

    .line 235
    aget p1, p1, v0

    return p1

    .line 233
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_1
    return p2
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 87
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 88
    const v0, 0x7f0a029e    # @id/radio_state

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    iput-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    .line 89
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerEnabled:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 90
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    new-instance v0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;

    invoke-direct {v0, p0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;-><init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 227
    const-string p1, "FIHRadioPowerPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onBindViewHolder mPowerState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, " subid = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    iget-boolean v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerState:Z

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 229
    return-void
.end method

.method public setEnabled(Z)V
    .locals 0

    .line 262
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerEnabled:Z

    .line 263
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->setEnabled(Z)V

    .line 264
    return-void
.end method

.method public setRadioEnabled(Z)V
    .locals 1

    .line 79
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerEnabled:Z

    .line 80
    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 81
    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 83
    :cond_0
    return-void
.end method

.method public setRadioOn(Z)V
    .locals 3

    .line 67
    const-string v0, "FIHRadioPowerPreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRadioOn "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, " subId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    iput-boolean p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mPowerState:Z

    .line 69
    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mRadioSwith:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 72
    :cond_0
    return-void
.end method
