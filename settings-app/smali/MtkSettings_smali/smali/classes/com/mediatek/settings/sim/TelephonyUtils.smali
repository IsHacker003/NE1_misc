.class public Lcom/mediatek/settings/sim/TelephonyUtils;
.super Ljava/lang/Object;
.source "TelephonyUtils.java"


# static fields
.field private static DBG:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 55
    const-string v0, "ro.build.type"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "eng"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    sput-boolean v0, Lcom/mediatek/settings/sim/TelephonyUtils;->DBG:Z

    .line 54
    return-void
.end method

.method public static getMainCapabilityPhoneId()I
    .locals 3

    .line 184
    nop

    .line 185
    const-string v0, "phoneEx"

    .line 186
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 185
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_0

    .line 189
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->getMainCapabilityPhoneId()I

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getMainCapabilityPhoneId, RemoteException="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->log(Ljava/lang/String;)V

    .line 192
    nop

    .line 197
    const/4 v0, -0x1

    goto :goto_0

    .line 194
    :cond_0
    const-string v0, "IMtkTelephonyEx service not ready."

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->log(Ljava/lang/String;)V

    .line 195
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v0

    .line 197
    :goto_0
    return v0
.end method

.method public static getSimLockCase(I[Z[I)I
    .locals 7

    .line 239
    nop

    .line 240
    nop

    .line 241
    nop

    .line 242
    nop

    .line 243
    nop

    .line 245
    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v1, p0, :cond_1

    .line 246
    aget-boolean v6, p1, v1

    if-eqz v6, :cond_0

    .line 247
    add-int/lit8 v2, v2, 0x1

    .line 248
    aget v6, p2, v1

    packed-switch v6, :pswitch_data_0

    .line 262
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 254
    :pswitch_0
    add-int/lit8 v5, v5, 0x1

    .line 255
    goto :goto_1

    .line 258
    :pswitch_1
    add-int/lit8 v4, v4, 0x1

    .line 259
    goto :goto_1

    .line 250
    :pswitch_2
    add-int/lit8 v3, v3, 0x1

    .line 251
    nop

    .line 245
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 268
    :cond_1
    const/4 v1, 0x1

    if-nez v2, :cond_2

    .line 269
    goto :goto_2

    .line 270
    :cond_2
    if-ne v3, v2, :cond_3

    .line 271
    const/4 v1, 0x2

    goto :goto_2

    .line 272
    :cond_3
    if-ne v4, v2, :cond_4

    .line 273
    const/4 v1, 0x3

    goto :goto_2

    .line 274
    :cond_4
    if-ne v5, v2, :cond_5

    .line 275
    const/4 v1, 0x4

    goto :goto_2

    .line 276
    :cond_5
    if-nez v3, :cond_7

    .line 277
    if-ne v4, v1, :cond_6

    .line 278
    const/4 v1, 0x5

    goto :goto_2

    .line 280
    :cond_6
    const/4 v1, 0x6

    goto :goto_2

    .line 282
    :cond_7
    if-nez v4, :cond_8

    .line 283
    const/4 v1, 0x7

    goto :goto_2

    .line 284
    :cond_8
    if-nez v5, :cond_a

    .line 285
    if-ne v4, v1, :cond_9

    .line 286
    const/16 v1, 0x8

    goto :goto_2

    .line 288
    :cond_9
    const/16 v1, 0x9

    goto :goto_2

    .line 290
    :cond_a
    if-ne v4, v1, :cond_b

    .line 291
    const/16 v1, 0xa

    goto :goto_2

    .line 293
    :cond_b
    const/16 v1, 0xb

    .line 296
    :goto_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 297
    :goto_3
    if-ge v0, p0, :cond_c

    .line 298
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, ", insert["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-boolean v4, p1, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ", valid["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, "]="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget v4, p2, v0

    .line 300
    invoke-static {v4}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockSimValidString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 298
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 297
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 302
    :cond_c
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string p1, "getSimLockCase, case="

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->getSimLockCaseString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 303
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 302
    invoke-static {p0}, Lcom/mediatek/settings/sim/TelephonyUtils;->log(Ljava/lang/String;)V

    .line 305
    return v1

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSimLockCaseString(I)Ljava/lang/String;
    .locals 2

    .line 443
    packed-switch p0, :pswitch_data_0

    .line 493
    const-string v0, "wrong"

    goto :goto_0

    .line 489
    :pswitch_0
    const-string v0, "unkwn_inv_Nvld"

    .line 490
    goto :goto_0

    .line 485
    :pswitch_1
    const-string v0, "unkwn_inv_1vld"

    .line 486
    goto :goto_0

    .line 481
    :pswitch_2
    const-string v0, "unkwn_Nvld"

    .line 482
    goto :goto_0

    .line 477
    :pswitch_3
    const-string v0, "unkwn_1vld"

    .line 478
    goto :goto_0

    .line 473
    :pswitch_4
    const-string v0, "unkwn_inv"

    .line 474
    goto :goto_0

    .line 469
    :pswitch_5
    const-string v0, "inv_Nvld"

    .line 470
    goto :goto_0

    .line 465
    :pswitch_6
    const-string v0, "inv_1vld"

    .line 466
    goto :goto_0

    .line 461
    :pswitch_7
    const-string v0, "invalid"

    .line 462
    goto :goto_0

    .line 457
    :pswitch_8
    const-string v0, "valid"

    .line 458
    goto :goto_0

    .line 453
    :pswitch_9
    const-string v0, "unknown"

    .line 454
    goto :goto_0

    .line 449
    :pswitch_a
    const-string v0, "empty"

    .line 450
    goto :goto_0

    .line 445
    :pswitch_b
    const-string v0, "none"

    .line 446
    nop

    .line 497
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSimLockPolicy()I
    .locals 1

    .line 206
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getSimLockPolicy()I

    move-result v0

    .line 207
    return v0
.end method

.method public static getSimLockPolicyString(I)Ljava/lang/String;
    .locals 2

    .line 315
    const/16 v0, 0xff

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    .line 357
    const-string v0, "wrong"

    goto :goto_0

    .line 349
    :pswitch_0
    const-string v0, "alk_cs"

    .line 350
    goto :goto_0

    .line 345
    :pswitch_1
    const-string v0, "alk"

    .line 346
    goto :goto_0

    .line 341
    :pswitch_2
    const-string v0, "2lk"

    .line 342
    goto :goto_0

    .line 337
    :pswitch_3
    const-string v0, "1lk"

    .line 338
    goto :goto_0

    .line 333
    :pswitch_4
    const-string v0, "all"

    .line 334
    goto :goto_0

    .line 329
    :pswitch_5
    const-string v0, "2only"

    .line 330
    goto :goto_0

    .line 325
    :pswitch_6
    const-string v0, "1only"

    .line 326
    goto :goto_0

    .line 321
    :pswitch_7
    const-string v0, "none"

    .line 322
    goto :goto_0

    .line 317
    :pswitch_8
    const-string v0, "unknown"

    .line 318
    goto :goto_0

    .line 353
    :cond_0
    const-string v0, "legacy"

    .line 354
    nop

    .line 361
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSimLockSimCapability(I)I
    .locals 1

    .line 226
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getShouldServiceCapability(I)I

    move-result p0

    .line 227
    return p0
.end method

.method public static getSimLockSimCapabilityString(I)Ljava/lang/String;
    .locals 2

    .line 403
    packed-switch p0, :pswitch_data_0

    .line 429
    const-string v0, "wrong"

    goto :goto_0

    .line 425
    :pswitch_0
    const-string v0, "no_service"

    .line 426
    goto :goto_0

    .line 421
    :pswitch_1
    const-string v0, "ecc_only"

    .line 422
    goto :goto_0

    .line 417
    :pswitch_2
    const-string v0, "ps_only"

    .line 418
    goto :goto_0

    .line 413
    :pswitch_3
    const-string v0, "cs_only"

    .line 414
    goto :goto_0

    .line 409
    :pswitch_4
    const-string v0, "full"

    .line 410
    goto :goto_0

    .line 405
    :pswitch_5
    const-string v0, "unknown"

    .line 406
    nop

    .line 433
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getSimLockSimValid(I)I
    .locals 1

    .line 216
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->checkValidCard(I)I

    move-result p0

    .line 217
    return p0
.end method

.method public static getSimLockSimValidString(I)Ljava/lang/String;
    .locals 2

    .line 371
    packed-switch p0, :pswitch_data_0

    .line 389
    const-string v0, "wrong"

    goto :goto_0

    .line 385
    :pswitch_0
    const-string v0, "absent"

    .line 386
    goto :goto_0

    .line 381
    :pswitch_1
    const-string v0, "no"

    .line 382
    goto :goto_0

    .line 377
    :pswitch_2
    const-string v0, "yes"

    .line 378
    goto :goto_0

    .line 373
    :pswitch_3
    const-string v0, "unknown"

    .line 374
    nop

    .line 393
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "("

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 2

    .line 125
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "airplane_mode_on"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    nop

    :cond_0
    return v1
.end method

.method public static isCapabilitySwitching()Z
    .locals 4

    .line 158
    const-string v0, "phoneEx"

    .line 159
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 158
    invoke-static {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/IMtkTelephonyEx;

    move-result-object v0

    .line 160
    nop

    .line 161
    if-eqz v0, :cond_0

    .line 163
    :try_start_0
    invoke-interface {v0}, Lcom/mediatek/internal/telephony/IMtkTelephonyEx;->isCapabilitySwitching()Z

    move-result v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    goto :goto_1

    .line 164
    :catch_0
    move-exception v0

    .line 165
    const-string v1, "TelephonyUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCapabilitySwitching, RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    goto :goto_0

    .line 168
    :cond_0
    const-string v0, "isCapabilitySwitching, IMtkTelephonyEx service not ready."

    invoke-static {v0}, Lcom/mediatek/settings/sim/TelephonyUtils;->log(Ljava/lang/String;)V

    .line 170
    :goto_0
    const/4 v0, 0x0

    :goto_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isSwitching="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/settings/sim/TelephonyUtils;->log(Ljava/lang/String;)V

    .line 171
    return v0
.end method

.method public static isRadioOn(ILandroid/content/Context;)Z
    .locals 4

    .line 135
    const-string v0, "phone"

    .line 136
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 135
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 137
    nop

    .line 138
    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 140
    const/4 v2, -0x1

    if-ne p0, v2, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p0, p1}, Lcom/android/internal/telephony/ITelephony;->isRadioOnForSubscriber(ILjava/lang/String;)Z

    move-result p1
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    move v1, p1

    :goto_0
    goto :goto_1

    .line 142
    :catch_0
    move-exception p1

    .line 143
    const-string v0, "TelephonyUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isRadioOn, RemoteException="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 146
    :cond_1
    const-string p1, "TelephonyUtils"

    const-string v0, "isRadioOn, ITelephony is null."

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :goto_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "isRadioOn="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v0, ", subId="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/mediatek/settings/sim/TelephonyUtils;->log(Ljava/lang/String;)V

    .line 149
    return v1
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1

    .line 175
    sget-boolean v0, Lcom/mediatek/settings/sim/TelephonyUtils;->DBG:Z

    if-eqz v0, :cond_0

    .line 176
    const-string v0, "TelephonyUtils"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    :cond_0
    return-void
.end method
