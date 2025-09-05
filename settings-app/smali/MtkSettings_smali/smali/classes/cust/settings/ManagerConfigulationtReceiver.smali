.class public Lcust/settings/ManagerConfigulationtReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManagerConfigulationtReceiver.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;
    }
.end annotation


# instance fields
.field private mConfigulation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 31
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcust/settings/ManagerConfigulationtReceiver;->mConfigulation:Ljava/util/List;

    return-void
.end method

.method private handleDateTime(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 138
    if-nez p1, :cond_0

    .line 139
    const-string p1, "ManagerConfigulationtReceiver"

    const-string p2, "handleDateTime null == context "

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 140
    return-void

    .line 145
    :cond_0
    nop

    .line 146
    nop

    .line 149
    nop

    .line 152
    :try_start_0
    const-string p2, "com.android.providers.settings"

    const/4 v0, 0x0

    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object p2

    .line 154
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "def_auto_time"

    const-string v3, "bool"

    const-string v4, "com.android.providers.settings"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 156
    if-eqz v1, :cond_1

    .line 157
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 160
    :cond_1
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "def_auto_time_zone"

    const-string v3, "bool"

    const-string v4, "com.android.providers.settings"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 162
    if-eqz v1, :cond_2

    .line 163
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    .line 167
    :cond_2
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "def_time_format"

    const-string v3, "string"

    const-string v4, "com.android.providers.settings"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    .line 169
    if-eqz v1, :cond_3

    .line 170
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 175
    :cond_3
    nop

    .line 176
    nop

    .line 177
    const-string p2, "phone"

    .line 178
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/telephony/TelephonyManager;

    .line 179
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 180
    const/4 v2, 0x0

    .line 181
    invoke-virtual {p2}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result p2

    .line 183
    const/4 v3, 0x1

    if-eqz v1, :cond_6

    .line 185
    move-object v4, v2

    move v2, v0

    :goto_0
    if-ge v2, p2, :cond_5

    .line 187
    invoke-virtual {v1, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v4

    .line 189
    if-eqz v4, :cond_4

    .line 190
    const-string p2, "%d,%03d%02d"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v0

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v3

    const/4 v5, 0x2

    invoke-virtual {v4}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v1, v5

    invoke-static {p2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 193
    const-string v1, "MccNmc"

    invoke-direct {p0, p1, v1, p2}, Lcust/settings/ManagerConfigulationtReceiver;->putStringToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v1, "ManagerConfigulationtReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "saveMccNmcInfo slot "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " mccMnc "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    goto :goto_1

    .line 199
    :cond_4
    const-string v5, "ManagerConfigulationtReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "saveMccNmcInfo sir "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " is null"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :cond_5
    :goto_1
    move-object v2, v4

    goto :goto_2

    .line 205
    :cond_6
    const-string p2, "ManagerConfigulationtReceiver"

    const-string v1, "saveMccNmcInfo subscriptionManager is null"

    invoke-static {p2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :goto_2
    if-eqz v2, :cond_7

    .line 210
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMcc()I

    move-result p2

    .line 212
    invoke-virtual {v2}, Landroid/telephony/SubscriptionInfo;->getMnc()I

    move-result v1

    .line 214
    const-string v2, "ManagerConfigulationtReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "sir mcc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " mnc "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 217
    :cond_7
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    .line 219
    if-eqz p2, :cond_8

    .line 220
    const-string v1, "ManagerConfigulationtReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Configuration config "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget v1, p2, Landroid/content/res/Configuration;->mcc:I

    .line 222
    iget v2, p2, Landroid/content/res/Configuration;->mnc:I

    .line 223
    const-string v4, "Configulation"

    invoke-virtual {p2}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, v4, p2}, Lcust/settings/ManagerConfigulationtReceiver;->putStringToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    move p2, v1

    move v1, v2

    goto :goto_3

    :cond_8
    move p2, v0

    move v1, p2

    :goto_3
    move v2, v0

    :goto_4
    iget-object v4, p0, Lcust/settings/ManagerConfigulationtReceiver;->mConfigulation:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_10

    .line 230
    iget-object v4, p0, Lcust/settings/ManagerConfigulationtReceiver;->mConfigulation:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;

    .line 232
    iget v5, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mcc:I

    if-ne p2, v5, :cond_f

    iget v5, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mnc:I

    const/4 v6, -0x1

    if-eq v1, v5, :cond_9

    iget v5, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->mnc:I

    if-ne v6, v5, :cond_f

    .line 234
    :cond_9
    iget p2, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoDateTime:I

    if-eq p2, v6, :cond_b

    .line 235
    iget p2, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoDateTime:I

    if-ne p2, v3, :cond_a

    .line 237
    move p2, v3

    goto :goto_5

    .line 235
    :cond_a
    nop

    .line 237
    move p2, v0

    :goto_5
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "auto_time"

    .line 238
    nop

    .line 237
    invoke-static {v1, v2, p2}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 241
    const-string v1, "auto_time"

    invoke-direct {p0, p1, v1, p2}, Lcust/settings/ManagerConfigulationtReceiver;->putBooleanToSharePreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 243
    const-string v1, "ManagerConfigulationtReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "def_auto_time is "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_b
    iget p2, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoTimeZone:I

    if-eq p2, v6, :cond_d

    .line 247
    iget p2, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->autoTimeZone:I

    if-ne p2, v3, :cond_c

    .line 249
    move v0, v3

    goto :goto_6

    .line 247
    :cond_c
    nop

    .line 249
    :goto_6
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    const-string v1, "auto_time_zone"

    .line 250
    nop

    .line 249
    invoke-static {p2, v1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 253
    const-string p2, "auto_time_zone"

    invoke-direct {p0, p1, p2, v0}, Lcust/settings/ManagerConfigulationtReceiver;->putBooleanToSharePreference(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 255
    const-string p2, "ManagerConfigulationtReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "def_auto_time_zone is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    :cond_d
    const/16 p2, 0x18

    iget v0, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->hourFormat:I

    if-eq p2, v0, :cond_e

    const/16 p2, 0xc

    iget v0, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->hourFormat:I

    if-ne p2, v0, :cond_10

    .line 260
    :cond_e
    iget p2, v4, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->hourFormat:I

    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    .line 262
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "time_12_24"

    invoke-static {v0, v1, p2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 267
    const-string v0, "time_12_24"

    invoke-direct {p0, p1, v0, p2}, Lcust/settings/ManagerConfigulationtReceiver;->putStringToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 269
    const-string p1, "ManagerConfigulationtReceiver"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "def_time_format is "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_9

    .line 228
    :cond_f
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_4

    .line 280
    :catch_0
    move-exception p1

    goto :goto_7

    .line 278
    :catch_1
    move-exception p1

    goto :goto_8

    .line 280
    :goto_7
    nop

    .line 281
    const-string p2, "ManagerConfigulationtReceiver"

    const-string v0, "Exception"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_a

    .line 278
    :goto_8
    nop

    .line 279
    const-string p2, "ManagerConfigulationtReceiver"

    const-string v0, "NameNotFoundException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 282
    :cond_10
    :goto_9
    nop

    .line 284
    :goto_a
    return-void
.end method

.method private init(Landroid/content/Context;)V
    .locals 8

    .line 369
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 370
    const v0, 0x7f03004d    # @array/datetime_sim_info_list

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object p1

    .line 369
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 371
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 372
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 373
    const-string v3, ","

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 375
    const/4 v3, 0x4

    array-length v4, v2

    if-gt v3, v4, :cond_1

    .line 376
    new-instance v3, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;

    invoke-direct {v3, p0}, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;-><init>(Lcust/settings/ManagerConfigulationtReceiver;)V

    .line 377
    move v4, v0

    :goto_1
    array-length v5, v2

    if-ge v4, v5, :cond_0

    .line 378
    aget-object v5, v2, v4

    invoke-virtual {v3, v4, v5}, Lcust/settings/ManagerConfigulationtReceiver$ConfigulationSimInfo;->updateConfigulationSimInfo(ILjava/lang/String;)V

    .line 379
    const-string v5, "ManagerConfigulationtReceiver"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ConfigulationSimInfo array["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "], "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object v7, v2, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 381
    :cond_0
    iget-object v2, p0, Lcust/settings/ManagerConfigulationtReceiver;->mConfigulation:Ljava/util/List;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 371
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    :cond_2
    return-void
.end method

.method private putBooleanToSharePreference(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2

    .line 360
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 361
    const-string v0, "ManagerConfigulationtReceiver"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 362
    if-eqz p1, :cond_0

    .line 363
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 366
    :cond_0
    return-void
.end method

.method private putStringToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 351
    if-eqz p1, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 352
    const-string v0, "ManagerConfigulationtReceiver"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 353
    if-eqz p1, :cond_0

    .line 354
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, p2, p3}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 357
    :cond_0
    return-void
.end method

.method private saveTimeAndDate(Landroid/content/Context;)V
    .locals 2

    .line 325
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 327
    const-string v1, "yyyy/MM/dd HH:mm:ss"

    .line 328
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;Ljava/util/Date;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 330
    const-string v1, "Time"

    invoke-direct {p0, p1, v1, v0}, Lcust/settings/ManagerConfigulationtReceiver;->putStringToSharePreference(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .line 69
    if-eqz p1, :cond_5

    if-eqz p2, :cond_5

    .line 71
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 73
    const-string v1, "ManagerConfigulationtReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "action is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 76
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 77
    const/4 v1, 0x0

    .line 79
    if-eqz v0, :cond_0

    .line 80
    const-string v1, "ss"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 82
    :cond_0
    const-string v2, "ManagerConfigulationtReceiver"

    const-string v3, "null == extras."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    :goto_0
    const-string v2, "LOADED"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 86
    nop

    .line 87
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_4

    .line 88
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v1

    .line 89
    if-eqz v1, :cond_3

    .line 90
    invoke-virtual {v1}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoCount()I

    move-result v1

    .line 92
    const-string v3, "ManagerConfigulationtReceiver"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multi Sim and slot count is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-le v1, v2, :cond_2

    .line 96
    if-eqz v0, :cond_1

    .line 97
    const-string v1, "phone"

    const/4 v3, -0x1

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 99
    if-eqz v0, :cond_2

    .line 100
    const-string p1, "ManagerConfigulationtReceiver"

    const-string p2, "Do not update."

    invoke-static {p1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    return-void

    .line 104
    :cond_1
    const-string v0, "ManagerConfigulationtReceiver"

    const-string v1, "null == extras."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    :cond_2
    goto :goto_1

    .line 108
    :cond_3
    const-string v0, "ManagerConfigulationtReceiver"

    const-string v1, "SubscriptionManager is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    :cond_4
    :goto_1
    invoke-direct {p0, p1}, Lcust/settings/ManagerConfigulationtReceiver;->init(Landroid/content/Context;)V

    .line 116
    invoke-direct {p0, p1, p2}, Lcust/settings/ManagerConfigulationtReceiver;->handleDateTime(Landroid/content/Context;Landroid/content/Intent;)V

    .line 120
    invoke-direct {p0, p1}, Lcust/settings/ManagerConfigulationtReceiver;->saveTimeAndDate(Landroid/content/Context;)V

    .line 126
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "cust.settings.ManagerConfigulationtReceiver"

    invoke-direct {v0, p1, v1}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const/4 p1, 0x2

    invoke-virtual {p2, v0, p1, v2}, Landroid/content/pm/PackageManager;->setComponentEnabledSetting(Landroid/content/ComponentName;II)V

    .line 135
    :cond_5
    return-void
.end method
