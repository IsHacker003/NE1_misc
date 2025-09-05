.class public Lcust/settings/sound/SetRingtoneReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SetRingtoneReceiver.java"


# static fields
.field private static mContext:Landroid/content/Context;

.field private static mDeletedAudioTone:Ljava/lang/String;

.field private static mNeedCheckTone:Z

.field private static mRingtoneUri:Landroid/net/Uri;

.field private static mUserSim1Ringtone:Ljava/lang/String;

.field private static mUserSim1Ringtone_id:Ljava/lang/String;

.field private static mUserSim2Ringtone:Ljava/lang/String;

.field private static mUserSim2Ringtone_id:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const/4 v0, 0x0

    sput-boolean v0, Lcust/settings/sound/SetRingtoneReceiver;->mNeedCheckTone:Z

    .line 51
    const/4 v0, 0x0

    sput-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mUserSim1Ringtone:Ljava/lang/String;

    .line 52
    sput-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mUserSim1Ringtone_id:Ljava/lang/String;

    .line 53
    sput-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mUserSim2Ringtone:Ljava/lang/String;

    .line 54
    sput-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mUserSim2Ringtone_id:Ljava/lang/String;

    .line 56
    sput-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mDeletedAudioTone:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private checkAlarmToneValue()V
    .locals 4

    .line 338
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 339
    const-string v1, "SetRingtoneReceiver"

    const-string v2, "checkAlarmToneValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 340
    nop

    .line 341
    const-string v1, "alarm_alert"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 342
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 343
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 345
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    alarmStringUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    if-eqz v0, :cond_1

    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 347
    const-string v0, "SetRingtoneReceiver"

    const-string v1, " alarm tone not exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    :cond_1
    const-string v0, "SetRingtoneReceiver"

    const-string v1, "checkAlarmToneValue() - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    return-void
.end method

.method private checkDefaultToneValues()V
    .locals 2

    .line 137
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkRingToneValue()V

    .line 138
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkNotificationToneValue()V

    .line 139
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkMsgToneValue()V

    .line 140
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-direct {p0, v0}, Lcust/settings/sound/SetRingtoneReceiver;->hasDualRingtoneSetting(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 141
    const-string v0, "SetRingtoneReceiver"

    const-string v1, "Dual Sim, check SIM2 ringtone setting"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkRingToneSim2Value()V

    .line 143
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkMsgToneSim2Value()V

    .line 146
    :cond_0
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkAlarmToneValue()V

    .line 148
    return-void
.end method

.method private checkMsgToneSim2Value()V
    .locals 6

    .line 296
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 297
    const-string v1, "SetRingtoneReceiver"

    const-string v2, "checkMsgToneValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    nop

    .line 299
    const-string v1, "message_notification_sim2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 300
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 301
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 303
    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "SetRingtoneReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    msgStringUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    if-eqz v1, :cond_3

    sget-object v3, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 305
    const-string v1, "SetRingtoneReceiver"

    const-string v3, " ringtone not exist!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 307
    const-string v3, "message_notification_sim2"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_1
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.fihtdc.Message.NotificationChanged.Sim2"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    if-nez v1, :cond_2

    .line 310
    const-string v1, "ringUri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 312
    :cond_2
    const-string v2, "ringUri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 313
    :goto_1
    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 315
    :cond_3
    return-void
.end method

.method private checkMsgToneValue()V
    .locals 6

    .line 258
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 259
    const-string v1, "SetRingtoneReceiver"

    const-string v2, "checkMsgToneValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    nop

    .line 261
    const-string v1, "message_notification"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 262
    const/4 v2, 0x0

    if-eqz v1, :cond_0

    const-string v3, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 263
    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 265
    :cond_0
    move-object v1, v2

    :goto_0
    const-string v3, "SetRingtoneReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "    msgStringUri:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    if-eqz v1, :cond_3

    sget-object v3, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 267
    const-string v1, "SetRingtoneReceiver"

    const-string v3, " ringtone not exist!!"

    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    sget-object v1, Landroid/provider/Settings$System;->DEFAULT_NOTIFICATION_URI:Landroid/net/Uri;

    .line 269
    const-string v3, "message_notification"

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v2

    nop

    :cond_1
    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    new-instance v0, Landroid/content/Intent;

    const-string v2, "com.fihtdc.Message.NotificationChanged"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    if-nez v1, :cond_2

    .line 272
    const-string v1, "ringUri"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_1

    .line 274
    :cond_2
    const-string v2, "ringUri"

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 275
    :goto_1
    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 277
    :cond_3
    return-void
.end method

.method private checkNotificationToneValue()V
    .locals 4

    .line 319
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 320
    const-string v1, "SetRingtoneReceiver"

    const-string v2, "checkNotificationToneValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 321
    nop

    .line 322
    const-string v1, "notification_sound"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 323
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 324
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 326
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    notificationStringUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    if-eqz v0, :cond_1

    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 328
    const-string v0, "SetRingtoneReceiver"

    const-string v1, " notification tone not exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    const-string v0, "SetRingtoneReceiver"

    const-string v1, "checkNotificationToneValue() - end"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    return-void
.end method

.method private checkRingToneSim2Value()V
    .locals 4

    .line 373
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 374
    const-string v1, "SetRingtoneReceiver"

    const-string v2, "checkRingToneValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    nop

    .line 376
    const-string v1, "ringtone_sim2"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 378
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0

    .line 380
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "    msgStringUri:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    if-eqz v0, :cond_1

    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, v0}, Landroid/media/RingtoneManager;->isRingtoneExist(Landroid/content/Context;Landroid/net/Uri;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    const-string v0, "SetRingtoneReceiver"

    const-string v1, " SIM2 ringtone not exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    :cond_1
    return-void
.end method

.method private checkRingToneValue()V
    .locals 5

    .line 356
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 357
    const-string v1, "SetRingtoneReceiver"

    const-string v2, "checkRingToneValue()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    nop

    .line 359
    const-string v1, "ringtone"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 360
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 361
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_0

    .line 363
    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "SetRingtoneReceiver"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "    msgStringUri:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    if-eqz v1, :cond_1

    invoke-direct {p0, v0}, Lcust/settings/sound/SetRingtoneReceiver;->isDeletedAudioFile(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 366
    const-string v0, "SetRingtoneReceiver"

    const-string v1, " ringtone not exist!!"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 370
    :cond_1
    return-void
.end method

.method private hasDualRingtoneSetting(Landroid/content/Context;)Z
    .locals 5

    .line 152
    nop

    .line 154
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x1120121

    .line 155
    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    .line 156
    :try_start_1
    const-string v0, "SetRingtoneReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasDualRingtoneSetting(), ret: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 159
    goto :goto_1

    .line 157
    :catch_0
    move-exception v0

    goto :goto_0

    :catch_1
    move-exception p1

    move v4, v0

    move-object v0, p1

    move p1, v4

    .line 158
    :goto_0
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "hasDualRingtoneSetting(), cannot find resource zzz_freq_fwk_media_dual_ringtone_setting"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 161
    :goto_1
    return p1
.end method

.method private isDeletedAudioFile(Ljava/lang/String;)Z
    .locals 3

    .line 281
    nop

    .line 282
    const-string v0, "SetRingtoneReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isDeletedAudioFile(), tonePath:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", mDeletedAudioTone:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/sound/SetRingtoneReceiver;->mDeletedAudioTone:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    const/4 v0, 0x0

    if-eqz p1, :cond_1

    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mDeletedAudioTone:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 284
    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mDeletedAudioTone:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    const/4 v0, 0x1

    goto :goto_0

    .line 287
    :cond_0
    nop

    .line 289
    :cond_1
    :goto_0
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " is delete?  "

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    return v0
.end method

.method public static toastMessage(Landroid/net/Uri;)V
    .locals 11

    .line 184
    const-string v0, ""

    .line 185
    if-nez p0, :cond_0

    .line 186
    const-string p0, "SetRingtoneReceiver"

    const-string v0, "ringtoneUri is null, not to toast message!"

    invoke-static {p0, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    return-void

    .line 190
    :cond_0
    invoke-virtual {p0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object p0

    .line 191
    const/16 v1, 0x2f

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    const/4 v2, 0x1

    add-int/2addr v1, v2

    .line 193
    if-lez v1, :cond_1

    .line 194
    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 197
    :cond_1
    const-string p0, "_id"

    const-string v1, "_data"

    const-string v3, "title"

    filled-new-array {p0, v1, v3}, [Ljava/lang/String;

    move-result-object v6

    .line 203
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "_id="

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 204
    const/4 p0, 0x0

    .line 206
    :try_start_0
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    .line 207
    if-nez v4, :cond_2

    .line 208
    const-string v0, "SetRingtoneReceiver"

    const-string v1, "ContentResolver is null"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    nop

    .line 209
    return-void

    .line 211
    :cond_2
    sget-object v5, Landroid/provider/MediaStore$Audio$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    if-eqz v0, :cond_3

    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result p0

    if-ne p0, v2, :cond_3

    .line 216
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    .line 217
    sget-object p0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    const v1, 0x7f120b52    # @string/ringtone_set_toast '"%s" set as phone ringtone.'

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    .line 218
    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-static {v1, p0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p0

    invoke-virtual {p0}, Landroid/widget/Toast;->show()V
    :try_end_1
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 220
    :catch_0
    move-exception p0

    goto :goto_2

    .line 223
    :cond_3
    :goto_0
    if-eqz v0, :cond_4

    .line 224
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_3

    .line 223
    :catchall_0
    move-exception v0

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    goto :goto_4

    .line 220
    :catch_1
    move-exception v0

    move-object v10, v0

    move-object v0, p0

    move-object p0, v10

    .line 221
    :goto_2
    :try_start_2
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UnsupportedOperationException:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 223
    if-eqz v0, :cond_4

    goto :goto_1

    .line 227
    :cond_4
    :goto_3
    return-void

    .line 223
    :catchall_1
    move-exception p0

    :goto_4
    if-eqz v0, :cond_5

    .line 224
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    throw p0
.end method

.method public static updateDB()V
    .locals 4

    .line 166
    :try_start_0
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 167
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 168
    const-string v2, "is_ringtone"

    const-string v3, "1"

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    sget-object v2, Lcust/settings/sound/SetRingtoneReceiver;->mRingtoneUri:Landroid/net/Uri;

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    nop

    .line 181
    return-void

    .line 177
    :catch_0
    move-exception v0

    .line 178
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get contentResolver failed,ex: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 179
    return-void

    .line 173
    :catch_1
    move-exception v0

    .line 175
    const-string v0, "SetRingtoneReceiver"

    const-string v1, "couldn\'t set ringtone flag "

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 61
    const-string v0, "SetRingtoneReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Intent Action:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    sput-object p1, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    .line 63
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 65
    const-string v1, "AP_SET_CALL_RINGTONE"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    .line 67
    :try_start_0
    const-string v0, "callringUri"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    sput-object p2, Lcust/settings/sound/SetRingtoneReceiver;->mRingtoneUri:Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 71
    nop

    .line 75
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p2

    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result p2

    if-nez p2, :cond_0

    .line 76
    const-string p2, "SetRingtoneReceiver"

    const-string v0, "Not Dual Sim"

    invoke-static {p2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    invoke-static {}, Lcust/settings/sound/SetRingtoneReceiver;->updateDB()V

    .line 78
    sget-object p2, Lcust/settings/sound/SetRingtoneReceiver;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {p1, v2, p2}, Landroid/media/RingtoneManager;->setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V

    .line 79
    sget-object p1, Lcust/settings/sound/SetRingtoneReceiver;->mRingtoneUri:Landroid/net/Uri;

    invoke-static {p1}, Lcust/settings/sound/SetRingtoneReceiver;->toastMessage(Landroid/net/Uri;)V

    goto/16 :goto_0

    .line 83
    :cond_0
    new-instance p2, Landroid/content/Intent;

    const-class v0, Lcust/settings/sound/SetRingtone;

    invoke-direct {p2, p1, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 84
    const-string v0, "callringUri"

    sget-object v1, Lcust/settings/sound/SetRingtoneReceiver;->mRingtoneUri:Landroid/net/Uri;

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 85
    const/high16 v0, 0x10000000

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 86
    invoke-virtual {p1, p2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 87
    goto/16 :goto_0

    .line 68
    :catch_0
    move-exception p1

    .line 69
    const-string p2, "SetRingtoneReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get Uri error: e:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 70
    return-void

    .line 88
    :cond_1
    const-string v1, "com.fihtdc.Message.RingToneStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 89
    const-string p1, "SetRingtoneReceiver"

    const-string v0, "Receive com.fihtdc.Message.RingToneStatus"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    const-string p1, "ringUri"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 91
    invoke-virtual {p0, p1}, Lcust/settings/sound/SetRingtoneReceiver;->setMsgToneValue(Ljava/lang/String;)V

    .line 92
    goto/16 :goto_0

    :cond_2
    const-string v1, "com.fihtdc.Message.RingToneStatus.Sim2"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 93
    const-string p1, "SetRingtoneReceiver"

    const-string v0, "Receive com.fihtdc.Message.RingToneStatus.Sim2"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const-string p1, "ringUri"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 95
    invoke-virtual {p0, p1}, Lcust/settings/sound/SetRingtoneReceiver;->setMsgToneValue_Sim2(Ljava/lang/String;)V

    .line 96
    goto/16 :goto_0

    .line 97
    :cond_3
    const-string v1, "com.fihtdc.Message.VibrateStatus"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 98
    const-string p1, "SetRingtoneReceiver"

    const-string v0, "Receive com.fihtdc.Message.VibrateStatus"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    const-string p1, "vibrate"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 100
    invoke-virtual {p0, p1}, Lcust/settings/sound/SetRingtoneReceiver;->setMsgVibrateValue(Ljava/lang/String;)V

    .line 101
    goto/16 :goto_0

    :cond_4
    const-string v1, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 102
    const-string p1, "SetRingtoneReceiver"

    const-string p2, "Receive Intent.ACTION_MEDIA_UNMOUNTED"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    const-string p1, "sys.shutdown.requested"

    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 105
    const-string p2, "SetRingtoneReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sys.shutdown.requested: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 106
    const-string p1, ""

    const-string p2, "sys.shutdown.requested"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 107
    const-string p1, "SetRingtoneReceiver"

    const-string p2, "not deleting entries on eject due to shutdown"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 110
    :cond_5
    const-string p1, "true"

    const-string p2, "sys.ipo_shutdown"

    invoke-static {p2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 111
    const-string p1, "SetRingtoneReceiver"

    const-string p2, "not deleting entries on eject due to IPO shutdown"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    return-void

    .line 115
    :cond_6
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkDefaultToneValues()V

    .line 116
    goto :goto_0

    :cond_7
    const-string v1, "com.fihtdc.action.DELETE_MEDIA_FILE"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 117
    const-string p1, "SetRingtoneReceiver"

    const-string v0, "receive com.fihtdc.action.DELETE_MEDIA_FILE"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string p1, "deleteMediaUri"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    sput-object p1, Lcust/settings/sound/SetRingtoneReceiver;->mDeletedAudioTone:Ljava/lang/String;

    .line 119
    invoke-direct {p0}, Lcust/settings/sound/SetRingtoneReceiver;->checkDefaultToneValues()V

    goto :goto_0

    .line 121
    :cond_8
    const-string v1, "cust_dolby_state"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 122
    const-string v0, "db_on_off"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p2

    .line 123
    const-string v0, "dap_settings"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 124
    const-string v0, "ds_state"

    invoke-interface {p1, v0, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 125
    if-eq p2, v0, :cond_9

    .line 126
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 127
    const-string v1, "ds_state"

    invoke-interface {p1, v1, p2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 128
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 129
    const-string p1, "SetRingtoneReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive(), dolby state change from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, " to "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 133
    :cond_9
    :goto_0
    return-void
.end method

.method public setMsgToneValue(Ljava/lang/String;)V
    .locals 4

    .line 231
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 232
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMsgSettingValue() - toneUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    const-string v1, "message_notification"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 234
    return-void
.end method

.method public setMsgToneValue_Sim2(Ljava/lang/String;)V
    .locals 4

    .line 237
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 238
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMsgSettingValue_Sim2() - toneUri="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    const-string v1, "message_notification_sim2"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 240
    return-void
.end method

.method public setMsgVibrateValue(Ljava/lang/String;)V
    .locals 4

    .line 243
    sget-object v0, Lcust/settings/sound/SetRingtoneReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 244
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setMsgVibrateValue() - vibrate="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    const-string v1, "on"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 247
    const/4 p1, 0x1

    goto :goto_0

    .line 249
    :cond_0
    const/4 p1, 0x0

    .line 251
    :goto_0
    const-string v1, "SetRingtoneReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "vibrateValue:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const-string v1, "message_vibrate"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    return-void
.end method
