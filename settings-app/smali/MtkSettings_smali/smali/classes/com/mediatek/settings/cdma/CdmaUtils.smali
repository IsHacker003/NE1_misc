.class public Lcom/mediatek/settings/cdma/CdmaUtils;
.super Ljava/lang/Object;
.source "CdmaUtils.java"


# direct methods
.method public static getSimType(I)I
    .locals 4

    .line 100
    nop

    .line 102
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v0

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v0, p0}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getIccAppFamily(I)I

    move-result v0

    goto :goto_0

    .line 107
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CdmaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "simType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", slotId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return v0
.end method

.method public static isCdmaCard(I)Z
    .locals 4

    .line 87
    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->getSimType(I)I

    move-result p0

    .line 88
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 89
    :goto_1
    const-string v1, "CdmaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isCdmaCard, simType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ", isCdma="

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    return v0
.end method

.method public static isCdmaCardCompetion(Landroid/content/Context;)Z
    .locals 7

    .line 164
    nop

    .line 165
    nop

    .line 166
    nop

    .line 167
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 168
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getSimCount()I

    move-result v1

    goto :goto_0

    .line 170
    :cond_0
    move v1, v0

    :goto_0
    const/4 v2, 0x2

    const/4 v3, 0x1

    if-ne v1, v2, :cond_4

    .line 171
    move v2, v0

    move v4, v3

    move v5, v4

    :goto_1
    if-ge v2, v1, :cond_5

    .line 172
    if-eqz v4, :cond_1

    invoke-static {v2}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCard(I)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 173
    move v4, v3

    goto :goto_2

    .line 172
    :cond_1
    nop

    .line 173
    move v4, v0

    .line 174
    :goto_2
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v6

    .line 175
    invoke-virtual {v6, v2}, Landroid/telephony/SubscriptionManager;->getActiveSubscriptionInfoForSimSlotIndex(I)Landroid/telephony/SubscriptionInfo;

    move-result-object v6

    .line 176
    if-eqz v6, :cond_3

    .line 177
    if-eqz v5, :cond_2

    .line 178
    invoke-static {}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->getDefault()Lcom/mediatek/telephony/MtkTelephonyManagerEx;

    move-result-object v5

    .line 179
    invoke-virtual {v6}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    move-result v6

    .line 178
    invoke-virtual {v5, v6}, Lcom/mediatek/telephony/MtkTelephonyManagerEx;->isInHomeNetwork(I)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 171
    move v5, v3

    goto :goto_3

    .line 178
    :cond_2
    nop

    .line 171
    move v5, v0

    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 181
    :cond_3
    nop

    .line 182
    nop

    .line 189
    move v5, v0

    goto :goto_4

    .line 186
    :cond_4
    nop

    .line 187
    nop

    .line 189
    move v4, v0

    move v5, v4

    :cond_5
    :goto_4
    const-string p0, "CdmaUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isCdma="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", isCompletition="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    if-eqz v4, :cond_6

    if-eqz v5, :cond_6

    move v0, v3

    nop

    :cond_6
    return v0
.end method

.method public static isCdmaCardCompetionForData(Landroid/content/Context;)Z
    .locals 0

    .line 200
    invoke-static {p0}, Lcom/mediatek/settings/cdma/CdmaUtils;->isCdmaCardCompetion(Landroid/content/Context;)Z

    move-result p0

    return p0
.end method

.method public static isSupportCdma(I)Z
    .locals 4

    .line 70
    nop

    .line 71
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 73
    const/4 v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    :goto_0
    const-string v1, "CdmaUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "isSupportCdma="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", subId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    return v0
.end method
