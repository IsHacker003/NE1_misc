.class public Lcom/mediatek/lbs/LbsReceiver;
.super Landroid/content/BroadcastReceiver;
.source "LbsReceiver.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCurOperatorCode:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private dealWithOmaUpdataResult(ZLjava/lang/String;)V
    .locals 3

    .line 287
    iget-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deal with OMA CP operation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 288
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 289
    const-string v0, "LbsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Deal with OMA UP operation : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 291
    const-string v0, "com.mediatek.omacp.settings.result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 292
    const-string v0, "appId"

    const-string v1, "ap0004"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 293
    const-string v0, "result"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 295
    iget-object p1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 296
    return-void
.end method

.method private handleAgpsOmaProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 125
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 127
    const-string v0, "omacp_profile"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object p1

    .line 129
    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "name"

    const-string v1, "name"

    .line 131
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 130
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "addr"

    const-string v1, "addr"

    .line 133
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 132
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "port"

    const-string v1, "port"

    .line 134
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "tls"

    const-string v1, "tls"

    .line 135
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "code"

    const-string v1, "code"

    .line 137
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "addrType"

    const-string v1, "addrType"

    .line 139
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 138
    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "providerId"

    const-string v1, "providerId"

    .line 140
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string v0, "defaultApn"

    const-string v1, "defaultApn"

    .line 141
    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, v0, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "changed"

    .line 142
    const/4 v0, 0x1

    invoke-interface {p1, p2, v0}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 143
    return-void
.end method

.method private handleOmaCpCapability(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .line 239
    sget-boolean p2, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    if-nez p2, :cond_0

    .line 240
    const-string p1, "LbsReceiver"

    const-string p2, "handleOmaCpCapability, MTK OMACP NOT SUPPOR "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    return-void

    .line 243
    :cond_0
    new-instance p2, Landroid/content/Intent;

    invoke-direct {p2}, Landroid/content/Intent;-><init>()V

    .line 244
    const-string v0, "com.mediatek.omacp.capability.result"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 245
    const-string v0, "appId"

    const-string v1, "ap0004"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 246
    const-string v0, "supl"

    const/4 v1, 0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 247
    const-string v0, "supl_provider_id"

    const/4 v2, 0x0

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 248
    const-string v0, "supl_server_name"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 249
    const-string v0, "supl_to_napid"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 250
    const-string v0, "supl_server_addr"

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 251
    const-string v0, "supl_addr_type"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 253
    const-string v0, "LbsReceiver"

    const-string v1, "Feedback OMA CP capability information"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {p1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 255
    return-void
.end method

.method private handleOmaCpSetting(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 146
    sget-boolean p1, Lcom/mediatek/settings/FeatureOption;->MTK_OMACP_SUPPORT:Z

    if-nez p1, :cond_0

    .line 147
    const-string p1, "LbsReceiver"

    const-string p2, "handleOmaCpSetting, MTK OMACP NOT SUPPOR "

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    return-void

    .line 150
    :cond_0
    const-string p1, "appId"

    invoke-virtual {p2, p1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 151
    if-eqz p1, :cond_c

    const-string v0, "ap0004"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_1

    goto/16 :goto_3

    .line 156
    :cond_1
    const-string p1, "subId"

    const/4 v0, 0x0

    invoke-virtual {p2, p1, v0}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    .line 157
    const-string v1, "PROVIDER-ID"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 158
    const-string v2, "NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 159
    const-string v3, ""

    .line 160
    const-string v4, ""

    .line 161
    const-string v5, ""

    .line 162
    nop

    .line 164
    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    .line 165
    const-string v6, "APPADDR"

    .line 166
    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 167
    if-eqz v6, :cond_2

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 168
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/HashMap;

    .line 169
    if-eqz v6, :cond_2

    .line 170
    const-string v4, "ADDR"

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 171
    const-string v5, "ADDRTYPE"

    invoke-virtual {v6, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 174
    :cond_2
    if-eqz v4, :cond_b

    const-string v6, ""

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    goto/16 :goto_2

    .line 181
    :cond_3
    const-string v6, "TO-NAPID"

    invoke-virtual {p2, v6}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/util/ArrayList;

    .line 182
    if-eqz p2, :cond_4

    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 183
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    move-object v3, p2

    check-cast v3, Ljava/lang/String;

    .line 187
    :cond_4
    invoke-direct {p0, p1}, Lcom/mediatek/lbs/LbsReceiver;->initSIMStatus(I)V

    .line 190
    nop

    .line 191
    iget-object p1, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 192
    if-eqz p1, :cond_a

    const-string p2, ""

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_5

    goto/16 :goto_1

    .line 196
    :cond_5
    new-instance p2, Landroid/content/Intent;

    const-string v0, "com.mediatek.agps.OMACP_UPDATED"

    invoke-direct {p2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 197
    const-string v0, "code"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string p1, "addr"

    invoke-virtual {p2, p1, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 200
    const/4 p1, 0x1

    :try_start_0
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;-><init>()V

    .line 201
    invoke-virtual {v0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    move-result-object v6

    iget-object v6, v6, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->curSuplProfile:Lcom/mediatek/lbs/em2/utils/SuplProfile;

    .line 202
    iput-object v4, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 204
    if-eqz v1, :cond_6

    const-string v4, ""

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6

    .line 205
    const-string v4, "providerId"

    invoke-virtual {p2, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 206
    iput-object v1, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 208
    :cond_6
    if-eqz v2, :cond_7

    const-string v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    .line 209
    const-string v1, "name"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 210
    iput-object v2, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 212
    :cond_7
    if-eqz v3, :cond_8

    const-string v1, ""

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 213
    const-string v1, "defaultApn"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 214
    iput-object v3, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 216
    :cond_8
    if-eqz v5, :cond_9

    const-string v1, ""

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    .line 217
    const-string v1, "addrType"

    invoke-virtual {p2, v1, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 218
    iput-object v5, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 223
    :cond_9
    const-string v1, "port"

    const/16 v2, 0x1c6b

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 224
    iput v2, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 226
    const-string v1, "tls"

    invoke-virtual {p2, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 227
    iput-boolean p1, v6, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 229
    iget-object v1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 230
    invoke-virtual {v0, v6}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->setSuplProfile(Lcom/mediatek/lbs/em2/utils/SuplProfile;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_0

    .line 231
    :catch_0
    move-exception p2

    .line 232
    const-string p2, "LbsReceiver"

    const-string v0, "IOException happened when new AgpsInterface object"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    :goto_0
    const-string p2, "OMA CP update successfully finished"

    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    .line 236
    return-void

    .line 193
    :cond_a
    :goto_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "invalide profile code:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    .line 194
    return-void

    .line 175
    :cond_b
    :goto_2
    const-string p1, "LbsReceiver"

    const-string p2, "Invalid oma cp pushed supl address"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const-string p1, "Invalide oma cp pushed supl address"

    invoke-direct {p0, v0, p1}, Lcom/mediatek/lbs/LbsReceiver;->dealWithOmaUpdataResult(ZLjava/lang/String;)V

    .line 177
    return-void

    .line 152
    :cond_c
    :goto_3
    const-string p1, "LbsReceiver"

    const-string p2, "get the OMA CP broadcast, but it\'s not for AGPS"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    return-void
.end method

.method private initSIMStatus(I)V
    .locals 7

    .line 259
    nop

    .line 260
    const-string v0, ""

    iput-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 261
    iget-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    const-string v1, "phone"

    .line 262
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 263
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    const/4 v2, 0x5

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 265
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSlotIndex(I)I

    move-result v1

    .line 266
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    .line 267
    const-string v4, "LbsReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SubId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, " SlotId : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " simStatus: "

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 268
    if-ne v2, v3, :cond_0

    .line 269
    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 271
    :cond_0
    goto :goto_0

    .line 272
    :cond_1
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimState()I

    move-result v3

    .line 273
    if-ne v2, v3, :cond_2

    .line 274
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSimOperator()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    .line 277
    :cond_2
    :goto_0
    const-string v0, "LbsReceiver"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SubId : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " Status : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " OperatorCode : "

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/mediatek/lbs/LbsReceiver;->mCurOperatorCode:Ljava/lang/String;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 109
    iput-object p1, p0, Lcom/mediatek/lbs/LbsReceiver;->mContext:Landroid/content/Context;

    .line 110
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 111
    const-string v1, "LbsReceiver"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Receive : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_AGPS_APP:Z

    if-eqz v1, :cond_2

    sget-boolean v1, Lcom/mediatek/settings/FeatureOption;->MTK_GPS_SUPPORT:Z

    if-eqz v1, :cond_2

    .line 114
    const-string v1, "com.mediatek.agps.OMACP_UPDATED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 115
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleAgpsOmaProfileUpdate(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 116
    :cond_0
    const-string v1, "com.mediatek.omacp.settings"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleOmaCpSetting(Landroid/content/Context;Landroid/content/Intent;)V

    goto :goto_0

    .line 118
    :cond_1
    const-string v1, "com.mediatek.omacp.capability"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 119
    invoke-direct {p0, p1, p2}, Lcom/mediatek/lbs/LbsReceiver;->handleOmaCpCapability(Landroid/content/Context;Landroid/content/Intent;)V

    .line 122
    :cond_2
    :goto_0
    return-void
.end method
