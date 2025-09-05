.class public Lcom/mediatek/apn/OmacpApnReceiverService;
.super Landroid/app/IntentService;
.source "OmacpApnReceiverService.java"


# static fields
.field private static sAuthType:I


# instance fields
.field private mApn:Ljava/lang/String;

.field private mApnId:Ljava/lang/String;

.field private mAuthType:Ljava/lang/String;

.field private mIntentList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private mIsMmsApn:Z

.field private mMcc:Ljava/lang/String;

.field private mMmsPort:Ljava/lang/String;

.field private mMmsProxy:Ljava/lang/String;

.field private mMmsc:Ljava/lang/String;

.field private mMnc:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNapId:Ljava/lang/String;

.field private mNumeric:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;

.field private mPort:Ljava/lang/String;

.field private mPreferedUri:Landroid/net/Uri;

.field private mProxy:Ljava/lang/String;

.field private mProxyId:Ljava/lang/String;

.field private mResult:Z

.field private mServer:Ljava/lang/String;

.field private mSubId:I

.field private mType:Ljava/lang/String;

.field private mUri:Landroid/net/Uri;

.field private mUserName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 64
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 112
    const-string v0, "OmacpApnReceiverService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 97
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 99
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 113
    return-void
.end method

.method private extractAPN(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 2

    .line 321
    const-string v0, "NAP-NAME"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    .line 323
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 324
    :cond_0
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f12060e    # @string/error_name_empty 'The Name field can’t be empty.'

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    .line 326
    :cond_1
    const-string p2, "NAP-ADDRESS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    .line 327
    const-string p2, "PXADDR"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    .line 330
    invoke-direct {p0, p1}, Lcom/mediatek/apn/OmacpApnReceiverService;->getPort(Landroid/content/Intent;)V

    .line 332
    invoke-direct {p0, p1}, Lcom/mediatek/apn/OmacpApnReceiverService;->getNapAuthInfo(Landroid/content/Intent;)V

    .line 334
    const-string p2, "SERVER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    .line 335
    const-string p2, "MMSC"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    .line 336
    const-string p2, "MMS-PROXY"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    .line 337
    const-string p2, "MMS-PORT"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    .line 338
    const-string p2, "APN-TYPE"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    .line 339
    const-string p2, "APN-ID"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    .line 340
    const-string p2, "NAPID"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    .line 341
    const-string p2, "PROXY-ID"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    .line 343
    const-string p1, "mms"

    iget-object p2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    .line 344
    const-string p1, "OmacpApnReceiverService"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "extractAPN: mName: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mApn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mProxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mServer: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mMmsc: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mMmsProxy: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mMmsPort: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mType: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mApnId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mNapId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mMmsPort: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mProxyId: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " | mIsMmsApn: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    return-void
.end method

.method private getNapAuthInfo(Landroid/content/Intent;)V
    .locals 1

    .line 288
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 289
    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 290
    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    .line 291
    const/4 v0, -0x1

    sput v0, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 293
    const-string v0, "NAPAUTHINFO"

    .line 294
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 295
    if-eqz p1, :cond_2

    .line 296
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 297
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 298
    const-string v0, "AUTHNAME"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 299
    const-string v0, "AUTHSECRET"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 300
    const-string v0, "AUTHTYPE"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    .line 302
    iget-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    if-eqz p1, :cond_2

    .line 303
    const-string p1, "PAP"

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 304
    const/4 p1, 0x1

    sput p1, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    goto :goto_0

    .line 305
    :cond_0
    const-string p1, "CHAP"

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mAuthType:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 306
    const/4 p1, 0x2

    sput p1, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    goto :goto_0

    .line 308
    :cond_1
    const/4 p1, 0x3

    sput p1, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    .line 313
    :cond_2
    :goto_0
    return-void
.end method

.method private getPort(Landroid/content/Intent;)V
    .locals 1

    .line 269
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 270
    const-string v0, "PORT"

    .line 271
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getExtra(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/ArrayList;

    .line 272
    if-eqz p1, :cond_0

    .line 273
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 274
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashMap;

    .line 278
    const-string v0, "PORTNBR"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    iput-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 281
    :cond_0
    return-void
.end method

.method private initState(Landroid/content/Intent;)Z
    .locals 2

    .line 459
    const-string v0, "subId"

    const/4 v1, -0x1

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    .line 460
    iget p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    if-ne p1, v1, :cond_0

    .line 461
    const-string p1, "OmacpApnReceiverService"

    const-string v0, "Need to check reason not pass subId"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result p1

    iput p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    .line 465
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object p1

    iget v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    invoke-virtual {p1, v0}, Landroid/telephony/TelephonyManager;->getSimOperator(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    .line 466
    const-string p1, "content://telephony/carriers/preferapn/subId/"

    .line 467
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    iget v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    int-to-long v0, v0

    .line 466
    invoke-static {p1, v0, v1}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    .line 468
    const-string p1, "OmacpApnReceiverService"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "initState: mSimId: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mSubId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " | mNumeric: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " | mPreferedUri: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    invoke-direct {p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->verifyMccMnc()Z

    move-result p1

    return p1
.end method

.method private sendFeedback(Landroid/content/Context;)V
    .locals 3

    .line 195
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 196
    const-string v1, "com.mediatek.omacp.protected.settings.result"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    const-string v1, "appId"

    const-string v2, "apn"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 198
    const-string v1, "result"

    iget-boolean v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 199
    invoke-virtual {p1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 200
    return-void
.end method

.method private setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z
    .locals 2

    .line 358
    nop

    .line 359
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 360
    const-string v1, "apn_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 361
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    .line 363
    const/4 p2, 0x0

    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1, p4, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 364
    :try_start_1
    const-string p2, "OmacpApnReceiverService"

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "update preferred uri ,row = "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p4

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 367
    goto :goto_1

    .line 365
    :catch_0
    move-exception p2

    goto :goto_0

    :catch_1
    move-exception p1

    move p1, p3

    .line 366
    :goto_0
    const-string p2, "OmacpApnReceiverService"

    const-string p4, "SetCurrentApn SQLException happened!"

    invoke-static {p2, p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 368
    :goto_1
    if-lez p1, :cond_0

    const/4 p3, 0x1

    nop

    :cond_0
    return p3
.end method

.method private updateApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 11

    move-object v1, p0

    .line 381
    invoke-virtual/range {p0 .. p7}, Lcom/mediatek/apn/OmacpApnReceiverService;->replaceApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v3

    .line 383
    invoke-static {p1}, Lcom/mediatek/settings/UtilsExt;->getApnSettingsExt(Landroid/content/Context;)Lcom/mediatek/settings/ext/IApnSettingsExt;

    move-result-object v2

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object/from16 v8, p5

    move-object/from16 v9, p6

    move-object/from16 v10, p7

    invoke-interface/range {v2 .. v10}, Lcom/mediatek/settings/ext/IApnSettingsExt;->replaceApn(JLandroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J

    move-result-wide v2

    .line 385
    const-string v0, "OmacpApnReceiverService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "replace number = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    nop

    .line 391
    const-wide/16 v4, -0x1

    cmp-long v0, v2, v4

    const/4 v6, 0x0

    if-nez v0, :cond_1

    .line 392
    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Lcom/mediatek/apn/OmacpApnReceiverService;->addMVNOItem(Landroid/content/ContentValues;)Landroid/content/ContentValues;

    move-result-object v0

    .line 394
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    move-object v8, p2

    invoke-virtual {v7, v8, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v0

    .line 395
    if-eqz v0, :cond_0

    .line 396
    const-string v7, "OmacpApnReceiverService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "uri = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    invoke-virtual {v0}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 398
    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_1

    .line 399
    :try_start_1
    const-string v0, "OmacpApnReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "insert row id = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0

    .line 405
    move-wide v2, v7

    goto :goto_0

    .line 402
    :catch_0
    move-exception v0

    move-wide v2, v7

    goto :goto_1

    .line 405
    :cond_0
    :goto_0
    goto :goto_2

    .line 402
    :catch_1
    move-exception v0

    .line 403
    :goto_1
    const-string v0, "OmacpApnReceiverService"

    const-string v7, "insert SQLException happened!"

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 404
    iput-boolean v6, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 407
    :cond_1
    :goto_2
    const-string v0, "OmacpApnReceiverService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "insert number = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget-boolean v0, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mIsMmsApn:Z

    if-eqz v0, :cond_2

    .line 412
    cmp-long v0, v2, v4

    if-nez v0, :cond_5

    .line 413
    iput-boolean v6, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 414
    const-string v0, "OmacpApnReceiverService"

    const-string v1, "mms, insertNum is APN_NO_UPDATE ,mResult = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 419
    :cond_2
    cmp-long v0, v2, v4

    if-nez v0, :cond_3

    .line 420
    iput-boolean v6, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 421
    const-string v0, "OmacpApnReceiverService"

    const-string v1, "not mms, insertNum is APN_NO_UPDATE, mResult = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 422
    :cond_3
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_4

    .line 423
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 424
    const-string v0, "OmacpApnReceiverService"

    const-string v1, "not mms, insertNum is APN_EXIST, mResult = true"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 426
    :cond_4
    move-object v4, p1

    move-object/from16 v5, p8

    invoke-direct {v1, v4, v2, v3, v5}, Lcom/mediatek/apn/OmacpApnReceiverService;->setCurrentApn(Landroid/content/Context;JLandroid/net/Uri;)Z

    move-result v0

    iput-boolean v0, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 427
    const-string v0, "OmacpApnReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "set current apn result, mResult = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, v1, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    :cond_5
    :goto_3
    return-void
.end method

.method private validateProfile(Landroid/content/ContentValues;)V
    .locals 3

    .line 209
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v1, 0x2

    aget-object v0, v0, v1

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    .line 211
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 210
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x3

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxy:Ljava/lang/String;

    .line 213
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 212
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x4

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPort:Ljava/lang/String;

    .line 215
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 214
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 216
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x5

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUserName:Ljava/lang/String;

    .line 217
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 216
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x6

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mServer:Ljava/lang/String;

    .line 219
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 218
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/4 v2, 0x7

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPassword:Ljava/lang/String;

    .line 221
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 220
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 222
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0x8

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsc:Ljava/lang/String;

    .line 223
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 222
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0x9

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xa

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xc

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsProxy:Ljava/lang/String;

    .line 227
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 226
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xd

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMmsPort:Ljava/lang/String;

    .line 229
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 230
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xe

    aget-object v0, v0, v2

    sget v2, Lcom/mediatek/apn/OmacpApnReceiverService;->sAuthType:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 231
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0xf

    aget-object v0, v0, v2

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mType:Ljava/lang/String;

    .line 232
    invoke-static {v2}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 231
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 233
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v2, 0x10

    aget-object v0, v0, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 234
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x11

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    .line 235
    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 234
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 236
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x12

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNapId:Ljava/lang/String;

    .line 237
    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 236
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0x13

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mProxyId:Ljava/lang/String;

    .line 239
    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 238
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 240
    sget-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    const/16 v1, 0xb

    aget-object v0, v0, v1

    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 241
    return-void
.end method

.method private verifyMccMnc()Z
    .locals 3

    .line 248
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x4

    if-le v0, v2, :cond_0

    .line 250
    iget-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 252
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    iput-object v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    .line 256
    iput-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    .line 257
    const-string v0, "OmacpApnReceiverService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mcc&mnc is right , mMcc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMcc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " mMnc = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mMnc:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    goto :goto_0

    .line 259
    :cond_0
    iput-boolean v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 260
    const-string v0, "OmacpApnReceiverService"

    const-string v1, "mcc&mnc is wrong , set mResult = false"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :goto_0
    iget-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    return v0
.end method


# virtual methods
.method addMVNOItem(Landroid/content/ContentValues;)Landroid/content/ContentValues;
    .locals 3

    .line 442
    nop

    .line 443
    nop

    .line 444
    const-string v0, "mvno_type"

    .line 445
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 444
    invoke-virtual {p1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    const-string v0, "mvno_match_data"

    .line 447
    invoke-static {v1}, Lcom/mediatek/apn/ApnUtils;->checkNotSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 446
    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 451
    return-object p1
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 11

    .line 116
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 117
    const-string v1, "OmacpApnReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "get action = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    const-string v1, "com.mediatek.apn.action.start.omacpservice"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-void

    .line 122
    :cond_0
    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/Intent;

    .line 124
    const-string v0, "apn_setting_intent"

    .line 125
    invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    .line 127
    iget-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    if-nez p1, :cond_1

    .line 128
    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 129
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 130
    const-string p1, "OmacpApnReceiverService"

    const-string v0, "mIntentList == null"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    return-void

    .line 134
    :cond_1
    iget-object p1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    .line 136
    const-string v1, "OmacpApnReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "apn list size is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    if-gtz p1, :cond_2

    .line 139
    iput-boolean v0, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    .line 140
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 141
    const-string p1, "OmacpApnReceiverService"

    const-string v0, "Intent list size is wrong"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    return-void

    .line 147
    :cond_2
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1}, Lcom/mediatek/apn/OmacpApnReceiverService;->initState(Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 148
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 149
    const-string p1, "OmacpApnReceiverService"

    const-string v0, "Can not get MCC+MNC"

    invoke-static {p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    return-void

    .line 174
    :cond_3
    sget-object v1, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    iput-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    .line 175
    const-string v1, "OmacpApnReceiverService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, " mNumeric = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " mPreferedUri = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    :goto_0
    iget-boolean v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mResult:Z

    if-eqz v1, :cond_4

    if-ge v0, p1, :cond_4

    .line 179
    iget-object v1, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mIntentList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    invoke-direct {p0, v1, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->extractAPN(Landroid/content/Intent;Landroid/content/Context;)V

    .line 180
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 181
    invoke-direct {p0, v8}, Lcom/mediatek/apn/OmacpApnReceiverService;->validateProfile(Landroid/content/ContentValues;)V

    .line 182
    iget-object v4, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mUri:Landroid/net/Uri;

    iget-object v5, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApn:Ljava/lang/String;

    iget-object v6, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mApnId:Ljava/lang/String;

    iget-object v7, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mName:Ljava/lang/String;

    iget-object v9, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mNumeric:Ljava/lang/String;

    iget-object v10, p0, Lcom/mediatek/apn/OmacpApnReceiverService;->mPreferedUri:Landroid/net/Uri;

    move-object v2, p0

    move-object v3, p0

    invoke-direct/range {v2 .. v10}, Lcom/mediatek/apn/OmacpApnReceiverService;->updateApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;Landroid/net/Uri;)V

    .line 177
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_4
    invoke-direct {p0, p0}, Lcom/mediatek/apn/OmacpApnReceiverService;->sendFeedback(Landroid/content/Context;)V

    .line 187
    return-void
.end method

.method public replaceApn(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;)J
    .locals 6

    .line 486
    nop

    .line 487
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p6, "numeric=\""

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p6, "\" and omacpid<>\'\'"

    invoke-virtual {p3, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 489
    const-string p3, "OmacpApnReceiverService"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "name "

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " numeric = "

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p5, " apnId = "

    invoke-virtual {p6, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static {p3, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    nop

    .line 493
    const/4 p3, 0x0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string p1, "_id"

    const-string p5, "omacpid"

    filled-new-array {p1, p5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    const-string v5, "name ASC"

    move-object v1, p2

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 497
    const-wide/16 p2, -0x1

    if-eqz p1, :cond_4

    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getCount()I

    move-result p5

    if-nez p5, :cond_0

    goto :goto_2

    .line 502
    :cond_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    .line 503
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->isAfterLast()Z

    move-result p5

    if-nez p5, :cond_2

    .line 504
    const-string p5, "OmacpApnReceiverService"

    new-instance p6, Ljava/lang/StringBuilder;

    invoke-direct {p6}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "apnId "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p7, " getApnId = "

    invoke-virtual {p6, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p7, 0x1

    invoke-interface {p1, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p6

    invoke-static {p5, p6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    invoke-interface {p1, p7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_1

    .line 506
    const-wide/16 p2, 0x0

    .line 507
    goto :goto_1

    .line 509
    :cond_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 512
    :cond_2
    :goto_1
    if-eqz p1, :cond_3

    .line 513
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 516
    :cond_3
    return-wide p2

    .line 512
    :catchall_0
    move-exception p2

    goto :goto_3

    .line 498
    :cond_4
    :goto_2
    :try_start_2
    const-string p4, "OmacpApnReceiverService"

    const-string p5, "cursor is null , or cursor.getCount() == 0 return"

    invoke-static {p4, p5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 499
    nop

    .line 512
    if-eqz p1, :cond_5

    .line 513
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    .line 499
    :cond_5
    return-wide p2

    .line 512
    :catchall_1
    move-exception p2

    move-object p1, p3

    :goto_3
    if-eqz p1, :cond_6

    .line 513
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw p2
.end method
