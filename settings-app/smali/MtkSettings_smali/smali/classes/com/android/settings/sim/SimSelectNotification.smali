.class public Lcom/android/settings/sim/SimSelectNotification;
.super Landroid/content/BroadcastReceiver;
.source "SimSelectNotification.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 63
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static cancelNotification(Landroid/content/Context;)V
    .locals 1

    .line 414
    const-string v0, "notification"

    .line 415
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 416
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/app/NotificationManager;->cancel(I)V

    .line 417
    return-void
.end method

.method private createNotification(Landroid/content/Context;)V
    .locals 5

    .line 389
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 391
    new-instance v1, Landroid/app/NotificationChannel;

    const-string v2, "sim_select_notification_channel"

    .line 393
    const v3, 0x7f120ca3    # @string/sim_selection_channel_title 'SIM selection'

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    .line 396
    new-instance v2, Landroid/support/v4/app/NotificationCompat$Builder;

    const-string v3, "sim_select_notification_channel"

    invoke-direct {v2, p1, v3}, Landroid/support/v4/app/NotificationCompat$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 398
    const v3, 0x7f080186    # @drawable/ic_sim_card_alert_white_48dp 'res/drawable-xhdpi/ic_sim_card_alert_white_48dp.png'

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setSmallIcon(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 399
    const v3, 0x7f0600ad    # @color/sim_noitification '@android:color/accent_device_default_light'

    invoke-virtual {p1, v3}, Landroid/content/Context;->getColor(I)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setColor(I)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 400
    const v3, 0x7f120c98    # @string/sim_notification_title 'SIM cards changed.'

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v2

    .line 401
    const v3, 0x7f120c97    # @string/sim_notification_summary 'Tap to set up'

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/support/v4/app/NotificationCompat$Builder;

    move-result-object v0

    .line 402
    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/android/settings/Settings$SimSettingsActivity;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 403
    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 404
    const/4 v4, 0x0

    invoke-static {p1, v4, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 406
    invoke-virtual {v0, v2}, Landroid/support/v4/app/NotificationCompat$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/support/v4/app/NotificationCompat$Builder;

    .line 407
    const-string v2, "notification"

    .line 408
    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/NotificationManager;

    .line 409
    invoke-virtual {p1, v1}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    .line 410
    invoke-virtual {v0}, Landroid/support/v4/app/NotificationCompat$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p1, v1, v0}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 411
    return-void
.end method

.method private isDialogAllowedForSimLock(II[Z[I)Z
    .locals 4

    .line 422
    nop

    .line 423
    nop

    .line 425
    const/4 v0, -0x1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x6

    const/4 v3, 0x3

    packed-switch p1, :pswitch_data_0

    .line 460
    move p2, v1

    :cond_0
    move v1, v2

    goto :goto_0

    .line 444
    :pswitch_0
    invoke-static {p2, p3, p4}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCase(I[Z[I)I

    move-result p2

    .line 445
    if-eq p2, v3, :cond_0

    const/4 p3, 0x5

    if-eq p2, p3, :cond_0

    if-eq p2, v0, :cond_0

    const/16 p3, 0x8

    if-eq p2, p3, :cond_0

    const/16 p3, 0x9

    if-eq p2, p3, :cond_0

    const/16 p3, 0xa

    if-eq p2, p3, :cond_0

    const/16 p3, 0xb

    if-eq p2, p3, :cond_0

    .line 452
    goto :goto_0

    .line 434
    :pswitch_1
    invoke-static {p2, p3, p4}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCase(I[Z[I)I

    move-result p2

    .line 435
    if-eq p2, v3, :cond_0

    if-eq p2, v0, :cond_0

    .line 437
    goto :goto_0

    .line 427
    :cond_1
    nop

    .line 428
    nop

    .line 460
    move p2, v1

    :goto_0
    const-string p3, "SimSelectNotification"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isDialogAllowedForSimLock, ret="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", policy="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 461
    invoke-static {p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicyString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", case="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 462
    invoke-static {p2}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCaseString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 460
    invoke-static {p3, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 463
    return v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setDefaultDataSubId(Landroid/content/Context;I)V
    .locals 3

    .line 372
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDefaultDataSubId, sub="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    .line 376
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v1

    invoke-interface {v1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataState(I)V

    .line 379
    invoke-virtual {v0, p2}, Landroid/telephony/SubscriptionManager;->setDefaultDataSubId(I)V

    .line 383
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object p1

    invoke-interface {p1, p2}, Lcom/mediatek/settings/ext/ISimManagementExt;->setDataStateEnable(I)V

    .line 385
    return-void
.end method

.method private setUserSelectedOutgoingPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V
    .locals 3

    .line 366
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setUserSelectedOutgoingPhoneAccount phoneAccount = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object p1

    .line 368
    invoke-virtual {p1, p2}, Landroid/telecom/TelecomManager;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V

    .line 369
    return-void
.end method

.method private subscriptionIdToPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;
    .locals 4

    .line 349
    invoke-static {p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v0

    .line 350
    invoke-static {p1}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p1

    .line 351
    nop

    .line 352
    invoke-virtual {v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 354
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 355
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telecom/PhoneAccountHandle;

    .line 356
    invoke-virtual {v0, v2}, Landroid/telecom/TelecomManager;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;

    move-result-object v3

    .line 357
    invoke-virtual {p1, v3}, Landroid/telephony/TelephonyManager;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I

    move-result v3

    if-ne p2, v3, :cond_0

    .line 358
    return-object v2

    .line 360
    :cond_0
    goto :goto_0

    .line 362
    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 20

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 77
    move-object/from16 v2, p2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v3

    .line 78
    const-string v4, "SimSelectNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onReceive, action="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v4

    invoke-interface {v4, v2}, Lcom/mediatek/settings/ext/ISimManagementExt;->customBroadcast(Landroid/content/Intent;)V

    .line 85
    invoke-static {}, Lcom/mediatek/settings/UtilsExt;->shouldDisableForAutoSanity()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 86
    const-string v0, "SimSelectNotification"

    const-string v1, "disable for auto sanity."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    return-void

    .line 92
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/sim/TelephonyUtils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 93
    const-string v0, "SimSelectNotification"

    const-string v1, "airplane mode is on, ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    return-void

    .line 99
    :cond_1
    const-string v4, "ro.vendor.mtk_external_sim_support"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    const/4 v6, 0x1

    if-ne v4, v6, :cond_2

    .line 100
    const-string v4, "vendor.gsm.disable.sim.dialog"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v4

    .line 102
    if-ne v4, v6, :cond_2

    .line 103
    const-string v0, "SimSelectNotification"

    const-string v1, "RSIM present, ignore."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    return-void

    .line 109
    :cond_2
    const-string v4, "phone"

    .line 110
    invoke-virtual {v1, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 111
    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v7

    .line 112
    invoke-static/range {p1 .. p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v8

    .line 113
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoList()Ljava/util/List;

    move-result-object v9

    .line 114
    if-nez v9, :cond_3

    .line 116
    move v10, v5

    goto :goto_0

    .line 114
    :cond_3
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    .line 116
    :goto_0
    invoke-static/range {p1 .. p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v11

    .line 117
    xor-int/2addr v11, v6

    const-string v12, "SimSelectNotification"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "numSlots="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", isInProvisioning="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 120
    const/4 v12, 0x2

    if-lt v7, v12, :cond_1d

    if-eqz v11, :cond_4

    goto/16 :goto_b

    .line 125
    :cond_4
    invoke-static {}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockPolicy()I

    move-result v11

    .line 126
    nop

    .line 127
    nop

    .line 129
    const/4 v12, 0x0

    const/4 v13, -0x1

    if-eq v11, v13, :cond_6

    packed-switch v11, :pswitch_data_0

    .line 161
    const-string v14, "com.mediatek.settings.sim.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v14, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v14

    if-nez v14, :cond_5

    .line 162
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ignore action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    return-void

    .line 169
    :cond_5
    move-object v14, v12

    goto :goto_3

    .line 138
    :cond_6
    :pswitch_0
    const-string v12, "com.mediatek.settings.sim.ACTION_SIM_SLOT_SIM_MOUNT_CHANGE"

    invoke-virtual {v12, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_7

    .line 139
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "policy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", ignore action="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 143
    :cond_7
    new-array v12, v7, [I

    .line 144
    new-array v14, v7, [Z

    .line 145
    move v15, v5

    :goto_1
    if-ge v15, v7, :cond_8

    .line 146
    invoke-static {v15}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimValid(I)I

    move-result v16

    aput v16, v12, v15

    .line 147
    aput-boolean v5, v14, v15

    .line 145
    add-int/lit8 v15, v15, 0x1

    goto :goto_1

    .line 149
    :cond_8
    if-eqz v9, :cond_a

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v15

    if-lez v15, :cond_a

    .line 151
    move v15, v5

    :goto_2
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ge v15, v13, :cond_a

    .line 152
    invoke-interface {v9, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    .line 153
    if-eqz v13, :cond_9

    .line 154
    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v13

    aput-boolean v6, v14, v13

    .line 151
    :cond_9
    add-int/lit8 v15, v15, 0x1

    const/4 v13, -0x1

    goto :goto_2

    .line 169
    :cond_a
    :goto_3
    const-string v13, "com.mediatek.settings.sim.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v13, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_10

    .line 171
    if-eqz v9, :cond_e

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v13

    if-ne v13, v6, :cond_e

    .line 172
    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v13}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v13

    .line 174
    invoke-static/range {p1 .. p1}, Landroid/telecom/TelecomManager;->from(Landroid/content/Context;)Landroid/telecom/TelecomManager;

    move-result-object v15

    .line 175
    invoke-virtual {v15}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    .line 176
    nop

    .line 177
    invoke-virtual {v15}, Landroid/telecom/TelecomManager;->getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;

    move-result-object v15

    .line 178
    const-string v6, "SimSelectNotification"

    move/from16 v17, v11

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v14

    const-string v14, "getCallCapablePhoneAccounts accountSize = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, ", phoneAccount = "

    invoke-virtual {v11, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v6, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    const/4 v6, 0x1

    if-ne v5, v6, :cond_b

    if-nez v15, :cond_b

    .line 180
    nop

    .line 181
    invoke-direct {v0, v1, v13}, Lcom/android/settings/sim/SimSelectNotification;->subscriptionIdToPhoneAccountHandle(Landroid/content/Context;I)Landroid/telecom/PhoneAccountHandle;

    move-result-object v5

    .line 182
    invoke-direct {v0, v1, v5}, Lcom/android/settings/sim/SimSelectNotification;->setUserSelectedOutgoingPhoneAccount(Landroid/content/Context;Landroid/telecom/PhoneAccountHandle;)V

    .line 185
    :cond_b
    invoke-virtual {v8}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 188
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v5

    .line 187
    invoke-static {v5}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v5

    .line 189
    if-nez v5, :cond_c

    .line 190
    invoke-virtual {v8, v13}, Landroid/telephony/SubscriptionManager;->setDefaultSmsSubId(I)V

    .line 194
    :cond_c
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v6

    .line 193
    invoke-static {v6}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v6

    .line 196
    const/4 v11, 0x0

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v14}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v14

    invoke-virtual {v4, v14}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v4

    .line 197
    const-string v14, "SimSelectNotification"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v19, v8

    const-string v8, "slot ="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v9, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/telephony/SubscriptionInfo;

    invoke-virtual {v8}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    move-result v8

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", simState ="

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v14, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 198
    if-nez v6, :cond_d

    const/4 v8, 0x5

    if-ne v4, v8, :cond_d

    .line 199
    invoke-direct {v0, v1, v13}, Lcom/android/settings/sim/SimSelectNotification;->setDefaultDataSubId(Landroid/content/Context;I)V

    .line 202
    :cond_d
    const-string v4, "SimSelectNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "bdataSelected="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", bsmsSelected="

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 207
    :cond_e
    move-object/from16 v19, v8

    move/from16 v17, v11

    move-object/from16 v18, v14

    :goto_4
    const-string v4, "simDetectStatus"

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 209
    const-string v5, "SimSelectNotification"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "sub info update, type="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ", subs="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    const/4 v5, 0x4

    if-ne v4, v5, :cond_f

    .line 211
    const-string v0, "SimSelectNotification"

    const-string v1, "extra value no change, return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void

    .line 217
    :cond_f
    const-string v4, "simCount"

    invoke-virtual {v2, v4, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v10

    .line 219
    if-eqz v9, :cond_11

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v4

    if-eq v10, v4, :cond_11

    .line 220
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SIM count is changed again, extraSimCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", currentSimCount="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 221
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    return-void

    .line 228
    :cond_10
    move-object/from16 v19, v8

    move/from16 v17, v11

    move-object/from16 v18, v14

    :cond_11
    const-string v4, "com.mediatek.settings.sim.ACTION_SIM_SLOT_SIM_MOUNT_CHANGE"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 229
    const-string v3, "DETECTED_TYPE"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 231
    const-string v5, "SML_SIM_COUNT"

    invoke-virtual {v2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 233
    const-string v4, "SML_SIM1_VALID"

    const/4 v6, -0x1

    invoke-virtual {v2, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 236
    const-string v8, "SML_SIM2_VALID"

    invoke-virtual {v2, v8, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 240
    const-string v6, "SimSelectNotification"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Check SIM info, detectedType="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", extraSimCount="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", currentSimCount="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", extraSim1Valid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", currentSim1Valid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x0

    aget v13, v12, v11

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", extraSim2Valid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v11, ", currentSim2Valid="

    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v11, 0x1

    aget v13, v12, v11

    invoke-virtual {v8, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v6, 0x4

    if-eq v3, v6, :cond_14

    if-ne v5, v10, :cond_14

    const/4 v3, 0x0

    aget v5, v12, v3

    if-ne v4, v5, :cond_14

    const/4 v3, 0x1

    aget v4, v12, v3

    if-eq v2, v4, :cond_12

    goto :goto_7

    .line 255
    :cond_12
    nop

    .line 256
    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_5
    if-ge v2, v7, :cond_13

    .line 257
    aget v4, v12, v2

    packed-switch v4, :pswitch_data_1

    goto :goto_6

    .line 264
    :pswitch_1
    add-int/lit8 v3, v3, 0x1

    .line 265
    goto :goto_6

    .line 259
    :pswitch_2
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "SIM["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, "] validity is unknown"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    return-void

    .line 256
    :goto_6
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 272
    :cond_13
    if-eq v3, v10, :cond_15

    .line 273
    const-string v0, "SimSelectNotification"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Confirmed SIM count is changed again, numConfirmed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 275
    return-void

    .line 251
    :cond_14
    :goto_7
    const-string v0, "SimSelectNotification"

    const-string v1, "SIM info is changed again"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 281
    :cond_15
    invoke-static/range {p1 .. p1}, Lcom/android/settings/sim/SimSelectNotification;->cancelNotification(Landroid/content/Context;)V

    .line 283
    if-eqz v9, :cond_1c

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_16

    goto/16 :goto_a

    .line 289
    :cond_16
    move-object/from16 v2, v19

    invoke-virtual {v2}, Landroid/telephony/SubscriptionManager;->clearDefaultsForInactiveSubIds()V

    .line 292
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubscriptionId()I

    move-result v2

    .line 291
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v2

    .line 294
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubscriptionId()I

    move-result v3

    .line 293
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v3

    .line 295
    const-string v4, "SimSelectNotification"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dataSelected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v6, ", smsSelected="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v2, :cond_17

    if-eqz v3, :cond_17

    .line 299
    const-string v0, "SimSelectNotification"

    const-string v1, "Data & SMS default sims are selected. No notification"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void

    .line 311
    :cond_17
    invoke-static/range {p1 .. p1}, Lcom/mediatek/settings/UtilsExt;->getSimManagementExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/ISimManagementExt;

    move-result-object v3

    invoke-interface {v3}, Lcom/mediatek/settings/ext/ISimManagementExt;->isSimDialogNeeded()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 312
    move/from16 v3, v17

    move-object/from16 v14, v18

    invoke-direct {v0, v3, v7, v14, v12}, Lcom/android/settings/sim/SimSelectNotification;->isDialogAllowedForSimLock(II[Z[I)Z

    move-result v3

    if-nez v3, :cond_18

    goto :goto_9

    .line 319
    :cond_18
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_19

    goto :goto_8

    .line 332
    :cond_19
    if-nez v2, :cond_1a

    .line 335
    invoke-direct/range {p0 .. p1}, Lcom/android/settings/sim/SimSelectNotification;->createNotification(Landroid/content/Context;)V

    .line 338
    const-string v0, "SimSelectNotification"

    const-string v2, "SimDialogActivity shown for multiple sims."

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/android/settings/sim/SimDialogActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 340
    const/high16 v2, 0x18000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 342
    sget-object v2, Lcom/android/settings/sim/SimDialogActivity;->DIALOG_TYPE_KEY:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 343
    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 345
    :cond_1a
    :goto_8
    return-void

    .line 314
    :cond_1b
    :goto_9
    const-string v0, "SimSelectNotification"

    const-string v1, "sim dialog not needed, return."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 315
    return-void

    .line 284
    :cond_1c
    :goto_a
    const-string v0, "SimSelectNotification"

    const-string v1, "Subscription list is empty"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    return-void

    .line 121
    :cond_1d
    :goto_b
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
