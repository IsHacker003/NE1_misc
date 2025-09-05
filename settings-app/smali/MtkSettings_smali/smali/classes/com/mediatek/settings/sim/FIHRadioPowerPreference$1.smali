.class Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;
.super Ljava/lang/Object;
.source "FIHRadioPowerPreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;


# direct methods
.method constructor <init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)V
    .locals 0

    .line 90
    iput-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 10

    .line 93
    const-string p1, "FIHRadioPowerPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged, mPowerState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$000(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isChecked = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    .line 94
    invoke-static {v1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 93
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    nop

    .line 96
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mTelManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {p1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p1

    const/4 v0, 0x2

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    .line 98
    move p1, v0

    goto :goto_0

    .line 96
    :cond_0
    nop

    .line 98
    move p1, v1

    :goto_0
    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    :goto_1
    if-ge v3, p1, :cond_4

    .line 99
    iget-object v5, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v5}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result v5

    .line 100
    iget-object v6, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object v6, v6, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v6, v3}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 102
    if-eqz v6, :cond_1

    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    goto :goto_2

    :cond_1
    const/4 v6, -0x1

    .line 103
    :goto_2
    if-eqz v5, :cond_2

    iget-object v5, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v5}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$300(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Landroid/content/Context;

    move-result-object v5

    invoke-static {v6, v5}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 104
    move v5, v1

    goto :goto_3

    .line 103
    :cond_2
    nop

    .line 104
    move v5, v2

    :goto_3
    const-string v7, "FIHRadioPowerPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "slot = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v9, " ; radioOn = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " expect = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v9}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v9

    invoke-virtual {v9, v3}, Lcom/mediatek/settings/sim/RadioPowerController;->isExpectedRadioStateOn(I)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v9, " finish "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v9}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object v9

    invoke-virtual {v9, v6}, Lcom/mediatek/settings/sim/RadioPowerController;->isRadioSwitchComplete(I)Z

    move-result v6

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    if-eqz v5, :cond_3

    .line 107
    add-int/lit8 v4, v4, 0x1

    .line 98
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 110
    :cond_4
    const-string p1, "FIHRadioPowerPreference"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "activeSubInfoCount = "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$000(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Z

    move-result p1

    if-eq p1, p2, :cond_a

    .line 113
    const-string p1, "FIHRadioPowerPreference"

    const-string v3, "mPowerState != isChecked"

    invoke-static {p1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    const p1, 0x104000a    # @android:string/ok

    const v3, 0x7f0800f1    # @drawable/ic_dialog_alert_holo_light 'res/drawable-xhdpi/ic_dialog_alert_holo_light.png'

    if-ge v4, v0, :cond_5

    if-nez p2, :cond_5

    .line 116
    const-string v0, "FIHRadioPowerPreference"

    const-string v1, "(activeCount<2)&&(!isChecked)"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$300(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 119
    invoke-virtual {v0, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    .line 120
    invoke-virtual {v1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$300(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f120c7d    # @string/sim_enabler_both_inactive 'Error, can't disable all the SIMs'

    invoke-virtual {v1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 124
    new-instance v1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;

    invoke-direct {v1, p0, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$1;-><init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;Z)V

    invoke-virtual {v0, p1, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 130
    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 131
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 132
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 133
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 134
    goto/16 :goto_4

    .line 135
    :cond_5
    const-string v4, "FIHRadioPowerPreference"

    const-string v5, "else"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    iget-object v4, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object v4, v4, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {v4}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionIdList()[I

    move-result-object v4

    .line 138
    iget-object v5, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object v6, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v6}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result v6

    invoke-virtual {v5, v4, v6}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getAnotherRadioOnSubId([II)I

    move-result v4

    .line 140
    iget-object v5, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-virtual {v5}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v5

    .line 141
    iget-object v6, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object v6, v6, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    .line 143
    const-string v7, "FIHRadioPowerPreference"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "dealultDataSubId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    if-nez p2, :cond_7

    iget-object v7, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v7}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result v7

    if-ne v7, v6, :cond_7

    .line 146
    nop

    .line 148
    const-string v6, "FIHRadioPowerPreference"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "newDefaultDataSubId = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    iget-object v6, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-virtual {v6}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v4, v6}, Lcom/mediatek/settings/sim/TelephonyUtils;->isRadioOn(ILandroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 150
    new-instance v6, Landroid/app/AlertDialog$Builder;

    iget-object v7, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-virtual {v7}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 151
    invoke-virtual {v6, v3}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    iget-object v6, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    .line 152
    invoke-virtual {v6}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 153
    iget-object v6, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-virtual {v6}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f120c83    # @string/sim_enabler_need_switch_data_service 'Will disable it and switch to SIM%1$s for data services, are you sure?'

    new-array v1, v1, [Ljava/lang/Object;

    iget-object v8, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    .line 154
    invoke-static {v8}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result v8

    invoke-static {v8}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v8

    sub-int/2addr v0, v8

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v1, v2

    .line 153
    invoke-virtual {v6, v7, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    .line 155
    new-instance v0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;

    invoke-direct {v0, p0, p2, v4, v5}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$2;-><init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;ZILandroid/telecom/TelecomManager;)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 175
    const p1, 0x1040009    # @android:string/no

    new-instance v0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$3;

    invoke-direct {v0, p0, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1$3;-><init>(Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;Z)V

    invoke-virtual {v3, p1, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 183
    invoke-virtual {v3, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 184
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 185
    invoke-virtual {p1}, Landroid/app/Dialog;->show()V

    .line 187
    :cond_6
    goto :goto_4

    :cond_7
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result p1

    if-eq p1, v6, :cond_8

    .line 188
    const-string p1, "FIHRadioPowerPreference"

    const-string v0, "mSubId != dealultDataSubId"

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result p1

    if-eqz p1, :cond_a

    .line 190
    if-nez p2, :cond_a

    .line 191
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    iget-object p1, p1, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    invoke-virtual {p1, v6}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 192
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1, v6}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$400(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object p1

    invoke-virtual {v5, p1}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    goto :goto_4

    .line 196
    :cond_8
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$200(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)Lcom/mediatek/settings/sim/RadioPowerController;

    move-result-object p1

    iget-object v0, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {v0}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$100(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;)I

    move-result v0

    invoke-virtual {p1, v0, p2}, Lcom/mediatek/settings/sim/RadioPowerController;->setRadionOn(IZ)Z

    move-result p1

    if-eqz p1, :cond_9

    .line 198
    const-string p1, "FIHRadioPowerPreference"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onCheckedChanged mPowerState = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-static {p1, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->access$002(Lcom/mediatek/settings/sim/FIHRadioPowerPreference;Z)Z

    .line 200
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    invoke-virtual {p1, v2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioEnabled(Z)V

    goto :goto_4

    .line 203
    :cond_9
    const-string p1, "FIHRadioPowerPreference"

    const-string v0, "set radio power FAIL!"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object p1, p0, Lcom/mediatek/settings/sim/FIHRadioPowerPreference$1;->this$0:Lcom/mediatek/settings/sim/FIHRadioPowerPreference;

    xor-int/2addr p2, v1

    invoke-virtual {p1, p2}, Lcom/mediatek/settings/sim/FIHRadioPowerPreference;->setRadioOn(Z)V

    .line 223
    :cond_a
    :goto_4
    return-void
.end method
