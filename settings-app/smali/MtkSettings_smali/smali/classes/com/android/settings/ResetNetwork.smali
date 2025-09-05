.class public Lcom/android/settings/ResetNetwork;
.super Lcom/android/settings/core/InstrumentedFragment;
.source "ResetNetwork.java"


# instance fields
.field private mContentView:Landroid/view/View;

.field private mEsimCheckbox:Landroid/widget/CheckBox;

.field private mEsimContainer:Landroid/view/View;

.field private mInitiateButton:Landroid/widget/Button;

.field private final mInitiateListener:Landroid/view/View$OnClickListener;

.field private mSubscriptionSpinner:Landroid/widget/Spinner;

.field private mSubscriptions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/telephony/SubscriptionInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 66
    invoke-direct {p0}, Lcom/android/settings/core/InstrumentedFragment;-><init>()V

    .line 136
    new-instance v0, Lcom/android/settings/ResetNetwork$1;

    invoke-direct {v0, p0}, Lcom/android/settings/ResetNetwork$1;-><init>(Lcom/android/settings/ResetNetwork;)V

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/ResetNetwork;I)Z
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Lcom/android/settings/ResetNetwork;->runKeyguardConfirmation(I)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/ResetNetwork;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/ResetNetwork;)Landroid/widget/CheckBox;
    .locals 0

    .line 66
    iget-object p0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    return-object p0
.end method

.method private establishInitialState()V
    .locals 11

    .line 159
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a02ac    # @id/reset_network_subscription

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    .line 160
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a013e    # @id/erase_esim_container

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    .line 161
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a013d    # @id/erase_esim

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    .line 163
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    .line 164
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    const/4 v1, 0x4

    const/4 v2, 0x0

    if-eqz v0, :cond_9

    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9

    .line 166
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v0

    .line 167
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 168
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubscriptionId()I

    move-result v0

    .line 170
    :cond_0
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v0

    .line 173
    :cond_1
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    if-nez v3, :cond_2

    .line 174
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v0

    .line 177
    :cond_2
    nop

    .line 178
    iget-object v3, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    .line 179
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 180
    iget-object v4, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v5, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/telephony/SubscriptionInfo;

    .line 181
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v8

    if-ne v8, v0, :cond_3

    .line 183
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    .line 185
    :cond_3
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getDisplayName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 186
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 187
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getNumber()Ljava/lang/String;

    move-result-object v8

    .line 189
    :cond_4
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 190
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getCarrierName()Ljava/lang/CharSequence;

    move-result-object v8

    invoke-interface {v8}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    .line 192
    :cond_5
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 193
    const-string v8, "MCC:%s MNC:%s Slot:%s Id:%s"

    new-array v9, v1, [Ljava/lang/Object;

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    .line 194
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x2

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v7

    const/4 v7, 0x3

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v9, v7

    .line 193
    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .line 196
    :cond_6
    invoke-interface {v3, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 197
    goto :goto_0

    .line 198
    :cond_7
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v6, 0x1090008    # @android:layout/simple_spinner_item

    invoke-direct {v0, v4, v6, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 200
    const v3, 0x1090009    # @android:layout/simple_spinner_dropdown_item

    invoke-virtual {v0, v3}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 201
    iget-object v3, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 202
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v5}, Landroid/widget/Spinner;->setSelection(I)V

    .line 203
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v7, :cond_8

    .line 204
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v2}, Landroid/widget/Spinner;->setVisibility(I)V

    goto :goto_1

    .line 206
    :cond_8
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 208
    :goto_1
    goto :goto_2

    .line 209
    :cond_9
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setVisibility(I)V

    .line 211
    :goto_2
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a01b5    # @id/initiate_reset_network

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateButton:Landroid/widget/Button;

    .line 212
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mInitiateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mInitiateListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ResetNetwork;->showEuiccSettings(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 214
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    const v1, 0x7f0a013f    # @id/erase_esim_title

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    const v1, 0x7f120b2b    # @string/reset_esim_title 'Also reset eSIM'

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 217
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimContainer:Landroid/view/View;

    new-instance v1, Lcom/android/settings/ResetNetwork$2;

    invoke-direct {v1, p0}, Lcom/android/settings/ResetNetwork$2;-><init>(Lcom/android/settings/ResetNetwork;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 223
    goto :goto_3

    .line 224
    :cond_a
    iget-object v0, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v0, v2}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 226
    :goto_3
    return-void
.end method

.method public static synthetic lambda$onCreateView$0(Lcom/android/settings/ResetNetwork;Landroid/content/DialogInterface;)V
    .locals 0

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method

.method private runKeyguardConfirmation(I)Z
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 94
    new-instance v1, Lcom/android/settings/password/ChooseLockSettingsHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lcom/android/settings/password/ChooseLockSettingsHelper;-><init>(Landroid/app/Activity;Landroid/app/Fragment;)V

    .line 95
    const v2, 0x7f120b32    # @string/reset_network_title 'Reset Wi-Fi, mobile & Bluetooth'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 94
    invoke-virtual {v1, p1, v0}, Lcom/android/settings/password/ChooseLockSettingsHelper;->launchConfirmationActivity(ILjava/lang/CharSequence;)Z

    move-result p1

    return p1
.end method

.method private showEuiccSettings(Landroid/content/Context;)Z
    .locals 2

    .line 229
    const-string v0, "euicc"

    .line 230
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/euicc/EuiccManager;

    .line 231
    invoke-virtual {v0}, Landroid/telephony/euicc/EuiccManager;->isEnabled()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 232
    return v1

    .line 234
    :cond_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 235
    const-string v0, "euicc_provisioned"

    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "development_settings_enabled"

    .line 236
    invoke-static {p1, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 235
    :goto_1
    return v1
.end method

.method private showFinalConfirmation()V
    .locals 3

    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/settings/ResetNetwork;->mSubscriptionSpinner:Landroid/widget/Spinner;

    invoke-virtual {v1}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result v1

    .line 119
    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mSubscriptions:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/SubscriptionInfo;

    .line 120
    const-string v2, "subscription"

    invoke-virtual {v1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 122
    :cond_0
    const-string v1, "erase_esim"

    iget-object v2, p0, Lcom/android/settings/ResetNetwork;->mEsimCheckbox:Landroid/widget/CheckBox;

    invoke-virtual {v2}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 123
    new-instance v1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v2, Lcom/android/settings/ResetNetworkConfirm;

    .line 124
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v1

    .line 125
    invoke-virtual {v1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    const v1, 0x7f120b2e    # @string/reset_network_confirm_title 'Reset?'

    .line 126
    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getMetricsCategory()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object v0

    .line 128
    invoke-virtual {v0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 129
    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    .line 264
    const/16 v0, 0x53

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .line 100
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/core/InstrumentedFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 102
    const/16 p3, 0x37

    if-eq p1, p3, :cond_0

    .line 103
    return-void

    .line 108
    :cond_0
    const/4 p1, -0x1

    if-ne p2, p1, :cond_1

    .line 109
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->showFinalConfirmation()V

    goto :goto_0

    .line 111
    :cond_1
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->establishInitialState()V

    .line 113
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 82
    invoke-super {p0, p1}, Lcom/android/settings/core/InstrumentedFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object p1

    const v0, 0x7f120b32    # @string/reset_network_title 'Reset Wi-Fi, mobile & Bluetooth'

    invoke-virtual {p1, v0}, Landroid/app/Activity;->setTitle(I)V

    .line 84
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-static {p2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p2

    .line 243
    nop

    .line 244
    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object p3

    const-string v0, "no_network_reset"

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    .line 243
    invoke-static {p3, v0, v1}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p3

    .line 245
    invoke-virtual {p2}, Landroid/os/UserManager;->isAdminUser()Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object p2

    const-string v1, "no_network_reset"

    .line 246
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 245
    invoke-static {p2, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p2

    if-eqz p2, :cond_0

    goto :goto_0

    .line 248
    :cond_0
    if-eqz p3, :cond_1

    .line 249
    new-instance p1, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getActivity()Landroid/app/Activity;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;-><init>(Landroid/app/Activity;)V

    const-string p2, "no_network_reset"

    .line 250
    invoke-virtual {p1, p2, p3}, Lcom/android/settings/enterprise/ActionDisabledByAdminDialogHelper;->prepareDialogBuilder(Ljava/lang/String;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance p2, Lcom/android/settings/-$$Lambda$ResetNetwork$sNSFVrhYYO7NxbKY35cdb4I6sYI;

    invoke-direct {p2, p0}, Lcom/android/settings/-$$Lambda$ResetNetwork$sNSFVrhYYO7NxbKY35cdb4I6sYI;-><init>(Lcom/android/settings/ResetNetwork;)V

    .line 251
    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 252
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 253
    new-instance p1, Landroid/view/View;

    invoke-virtual {p0}, Lcom/android/settings/ResetNetwork;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    return-object p1

    .line 256
    :cond_1
    const p2, 0x7f0d0122    # @layout/reset_network 'res/layout/reset_network.xml'

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    .line 258
    invoke-direct {p0}, Lcom/android/settings/ResetNetwork;->establishInitialState()V

    .line 259
    iget-object p1, p0, Lcom/android/settings/ResetNetwork;->mContentView:Landroid/view/View;

    return-object p1

    .line 247
    :cond_2
    :goto_0
    const p2, 0x7f0d00bf    # @layout/network_reset_disallowed_screen 'res/layout/network_reset_disallowed_screen.xml'

    invoke-virtual {p1, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method
