.class public Lcom/mediatek/lbs/em2/utils/AgpsInterface;
.super Ljava/lang/Object;
.source "AgpsInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlDeathRecipient;,
        Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;
    }
.end annotation


# instance fields
.field protected in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

.field mData:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field mLLbsHidlDeathRecipient:Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlDeathRecipient;

.field mLbsHidlCallback:Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;

.field mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

.field protected out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;


# direct methods
.method public constructor <init>()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 243
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    new-instance v0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    const/16 v1, 0x4000

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    .line 175
    new-instance v0, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-direct {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;-><init>(I)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    .line 197
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mData:Ljava/util/ArrayList;

    .line 199
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;-><init>(Lcom/mediatek/lbs/em2/utils/AgpsInterface;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLbsHidlCallback:Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;

    .line 207
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlDeathRecipient;

    invoke-direct {v0, p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlDeathRecipient;-><init>(Lcom/mediatek/lbs/em2/utils/AgpsInterface;)V

    iput-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLLbsHidlDeathRecipient:Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlDeathRecipient;

    .line 244
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->checkVersion()V

    .line 245
    return-void
.end method

.method public static convertByteArrayToArrayList([BI)Ljava/util/ArrayList;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([BI)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 179
    if-nez p0, :cond_0

    .line 180
    const/4 p0, 0x0

    return-object p0

    .line 182
    :cond_0
    array-length v0, p0

    if-ge p1, v0, :cond_1

    goto :goto_0

    :cond_1
    array-length p1, p0

    .line 183
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 184
    const/4 v1, 0x0

    :goto_1
    if-ge v1, p1, :cond_2

    .line 185
    aget-byte v2, p0, v1

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 184
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 187
    :cond_2
    return-object v0
.end method

.method public static covertArrayListToByteArray(Ljava/util/ArrayList;[B)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/Byte;",
            ">;[B)V"
        }
    .end annotation

    .line 191
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 192
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Byte;

    invoke-virtual {v1}, Ljava/lang/Byte;->byteValue()B

    move-result v1

    aput-byte v1, p1, v0

    .line 191
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 194
    :cond_0
    return-void
.end method

.method private doHidl(Ljava/lang/String;[BI)V
    .locals 3

    .line 218
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    if-nez v0, :cond_0

    .line 219
    invoke-static {p1}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->getService(Ljava/lang/String;)Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    move-result-object p1

    iput-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    .line 220
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLLbsHidlDeathRecipient:Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlDeathRecipient;

    const-wide/16 v1, 0x0

    invoke-interface {p1, v0, v1, v2}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->linkToDeath(Landroid/os/IHwBinder$DeathRecipient;J)Z

    .line 223
    :cond_0
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLbsHidlClient:Lvendor/mediatek/hardware/lbs/V1_0/ILbs;

    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mLbsHidlCallback:Lcom/mediatek/lbs/em2/utils/AgpsInterface$LbsHidlCallback;

    .line 224
    invoke-static {p2, p3}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->convertByteArrayToArrayList([BI)Ljava/util/ArrayList;

    move-result-object p2

    .line 223
    invoke-interface {p1, v0, p2}, Lvendor/mediatek/hardware/lbs/V1_0/ILbs;->sendToServerWithCallback(Lvendor/mediatek/hardware/lbs/V1_0/ILbsCallback;Ljava/util/ArrayList;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 225
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->mData:Ljava/util/ArrayList;

    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object p2, p2, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mBuff:[B

    invoke-static {p1, p2}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->covertArrayListToByteArray(Ljava/util/ArrayList;[B)V

    goto :goto_0

    .line 228
    :cond_1
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object p1, p1, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mBuff:[B

    const/4 p2, 0x0

    invoke-static {p1, p2}, Ljava/util/Arrays;->fill([BB)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    :goto_0
    goto :goto_1

    .line 230
    :catch_0
    move-exception p1

    .line 231
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 233
    :goto_1
    return-void
.end method

.method private getAgpsConfigInt(ILcom/mediatek/lbs/em2/utils/AgpsConfig;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 801
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getAgpsSetting()Lcom/mediatek/lbs/em2/utils/AgpsSetting;

    move-result-object v0

    .line 802
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsEnable:Z

    .line 803
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v1

    iput v1, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsProtocol:I

    .line 804
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v1

    iput-boolean v1, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->gpevt:Z

    .line 806
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCpSetting()Lcom/mediatek/lbs/em2/utils/CpSetting;

    move-result-object v1

    .line 807
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v2

    iput v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->molrPosMethod:I

    .line 808
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddrEnable:Z

    .line 809
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->externalAddr:Ljava/lang/String;

    .line 810
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumberEnable:Z

    .line 811
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->mlcNumber:Ljava/lang/String;

    .line 812
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpAutoReset:Z

    .line 813
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayloadEnable:Z

    .line 814
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBinary(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)[B

    move-result-object v2

    iput-object v2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->epcMolrLppPayload:[B

    .line 816
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getUpSetting()Lcom/mediatek/lbs/em2/utils/UpSetting;

    move-result-object v2

    .line 817
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getGnssSetting()Lcom/mediatek/lbs/em2/utils/GnssSetting;

    move-result-object v3

    .line 818
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->caEnable:Z

    .line 819
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->niRequest:Z

    .line 820
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->roaming:Z

    .line 821
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->cdmaPreferred:I

    .line 822
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->prefMethod:I

    .line 823
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVersion:I

    .line 824
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsVersion:I

    .line 825
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplLog:Z

    .line 826
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->msaEnable:Z

    .line 827
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->msbEnable:Z

    .line 828
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->ecidEnable:Z

    .line 829
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->otdoaEnable:Z

    .line 830
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopHacc:I

    .line 831
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopVacc:I

    .line 832
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopLocAge:I

    .line 833
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->qopDelay:I

    .line 834
    const/16 v4, 0x69

    if-lt p1, v4, :cond_0

    .line 835
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->lppEnable:Z

    .line 837
    :cond_0
    const/16 v4, 0x6a

    if-lt p1, v4, :cond_1

    .line 838
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->certFromSdcard:Z

    .line 840
    :cond_1
    const/16 v4, 0x6b

    if-lt p1, v4, :cond_2

    .line 841
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->autoProfileEnable:Z

    .line 843
    :cond_2
    const/16 v4, 0x6c

    if-lt p1, v4, :cond_3

    .line 844
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B

    move-result v4

    iput-byte v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut2:B

    .line 845
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B

    move-result v4

    iput-byte v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut3:B

    .line 847
    :cond_3
    const/16 v4, 0x6d

    if-lt p1, v4, :cond_4

    .line 848
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->apnEnable:Z

    .line 850
    :cond_4
    const/16 v4, 0x6e

    if-lt p1, v4, :cond_5

    .line 851
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->syncToslp:Z

    .line 853
    :cond_5
    const/16 v4, 0x6f

    if-lt p1, v4, :cond_6

    .line 854
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->udpEnable:Z

    .line 856
    :cond_6
    const/16 v4, 0x70

    if-lt p1, v4, :cond_7

    .line 857
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->autonomousEnable:Z

    .line 858
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->afltEnable:Z

    .line 860
    :cond_7
    const/16 v4, 0x71

    if-lt p1, v4, :cond_8

    .line 861
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->imsiEnable:Z

    .line 863
    :cond_8
    const/16 v4, 0x72

    if-lt p1, v4, :cond_9

    .line 864
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->sib8sib16Enable:Z

    .line 865
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->gpsSatelliteEnable:Z

    .line 866
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->glonassSatelliteEnable:Z

    .line 867
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->beidouSatelliteEnable:Z

    .line 868
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->galileoSatelliteEnable:Z

    .line 869
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->gpsSatelliteSupport:Z

    .line 870
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->glonassSatelliteSupport:Z

    .line 871
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->beidousSatelliteSupport:Z

    .line 872
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->galileoSatelliteSupport:Z

    .line 874
    :cond_9
    const/16 v4, 0x73

    if-lt p1, v4, :cond_a

    .line 875
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B

    move-result v4

    iput-byte v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVerMinor:B

    .line 876
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B

    move-result v4

    iput-byte v4, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplVerSerInd:B

    .line 878
    :cond_a
    const/16 v4, 0x74

    if-lt p1, v4, :cond_b

    .line 879
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->aGlonassSatelliteEnable:Z

    .line 882
    :cond_b
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCurSuplProfile()Lcom/mediatek/lbs/em2/utils/SuplProfile;

    move-result-object v4

    .line 883
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    .line 884
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    .line 885
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v5

    iput v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    .line 886
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v5

    iput-boolean v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    .line 887
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    .line 888
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    .line 889
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    .line 890
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    .line 891
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    .line 892
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    .line 893
    iget-object v5, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v5}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v5

    iput-object v5, v4, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    .line 895
    const/16 v4, 0x75

    if-lt p1, v4, :cond_c

    .line 896
    invoke-virtual {p2}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;->getCdmaProfile()Lcom/mediatek/lbs/em2/utils/CdmaProfile;

    move-result-object p2

    .line 897
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->name:Ljava/lang/String;

    .line 898
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->mcpEnable:Z

    .line 899
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->mcpAddr:Ljava/lang/String;

    .line 900
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->mcpPort:I

    .line 901
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeAddrValid:Z

    .line 902
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeIpType:I

    .line 903
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeAddr:Ljava/lang/String;

    .line 904
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result v4

    iput v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdePort:I

    .line 905
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result v4

    iput-boolean v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeUrlValid:Z

    .line 906
    iget-object v4, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v4}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, p2, Lcom/mediatek/lbs/em2/utils/CdmaProfile;->pdeUrlAddr:Ljava/lang/String;

    .line 908
    :cond_c
    const/16 p2, 0x76

    if-lt p1, p2, :cond_d

    .line 909
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->e911GpsIconEnable:Z

    .line 911
    :cond_d
    const/16 p2, 0x77

    if-lt p1, p2, :cond_e

    .line 912
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->e911OpenGpsEnable:Z

    .line 914
    :cond_e
    const/16 p2, 0x78

    if-lt p1, p2, :cond_f

    .line 915
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->aGpsSatelliteEnable:Z

    .line 916
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->aBeidouSatelliteEnable:Z

    .line 917
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->aGalileoSatelliteEnable:Z

    .line 919
    :cond_f
    const/16 p2, 0x79

    if-lt p1, p2, :cond_10

    .line 920
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result p2

    iput p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->shaVersion:I

    .line 921
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result p2

    iput p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->preferred2g3gCellAge:I

    .line 922
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B

    move-result p2

    iput-byte p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->ut1:B

    .line 923
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->noSensitiveLog:Z

    .line 924
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->tlsReuseEnable:Z

    .line 925
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->imsiCacheEnable:Z

    .line 926
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->suplRawDataEnable:Z

    .line 927
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->tc10Enable:Z

    .line 928
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->tc10UseApn:Z

    .line 929
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->tc10UseFwDns:Z

    .line 930
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->allowNiForGpsOff:Z

    .line 931
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->forceOtdoaAssistReq:Z

    .line 932
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->rejectNon911NilrEnable:Z

    .line 933
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cp2gDisable:Z

    .line 934
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cp3gDisable:Z

    .line 935
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cp4gDisable:Z

    .line 936
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->tc10IgnoreFwConfig:Z

    .line 937
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->lppeHideWifiBtStatus:Z

    .line 939
    :cond_10
    const/16 p2, 0x7a

    if-lt p1, p2, :cond_11

    .line 940
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->lppeNetworkLocationDisable:Z

    .line 941
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpLppeEnable:Z

    .line 942
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->upLppeEnable:Z

    .line 944
    :cond_11
    const/16 p2, 0x7b

    if-lt p1, p2, :cond_12

    .line 945
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v1, Lcom/mediatek/lbs/em2/utils/CpSetting;->cpLppeSupport:Z

    .line 946
    iget-object p2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p2

    iput-boolean p2, v3, Lcom/mediatek/lbs/em2/utils/GnssSetting;->lppeSupport:Z

    .line 948
    :cond_12
    const/16 p2, 0x7c

    if-lt p1, p2, :cond_13

    .line 949
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->agpsNvramEnable:Z

    .line 950
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p1

    iput-boolean p1, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->lbsLogEnable:Z

    .line 951
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result p1

    iput p1, v0, Lcom/mediatek/lbs/em2/utils/AgpsSetting;->lppeCrowdSourceConfident:I

    .line 953
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result p1

    iput p1, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->esuplApnMode:I

    .line 954
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)I

    move-result p1

    iput p1, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->tcpKeepAlive:I

    .line 955
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p1

    iput-boolean p1, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->aospProfileEnable:Z

    .line 956
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)Z

    move-result p1

    iput-boolean p1, v2, Lcom/mediatek/lbs/em2/utils/UpSetting;->bindNlpSettingToSupl:Z

    .line 958
    :cond_13
    return-void
.end method

.method protected static log(Ljava/lang/String;)V
    .locals 1

    .line 2739
    const-string v0, "AgpsInterface [agps]"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2741
    return-void
.end method

.method private writeToHidl()V
    .locals 3

    .line 236
    const-string v0, "AgpsInterface"

    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, v1, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mBuff:[B

    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget v2, v2, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->mOffset:I

    invoke-direct {p0, v0, v1, v2}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->doHidl(Ljava/lang/String;[BI)V

    .line 237
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->flush()V

    .line 238
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->clear()V

    .line 239
    return-void
.end method


# virtual methods
.method public checkVersion()V
    .locals 4

    .line 330
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 332
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;I)V

    .line 333
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putShort(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;S)V

    .line 334
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putShort(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;S)V

    .line 336
    invoke-direct {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->writeToHidl()V

    .line 338
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getShort(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)S

    move-result v0

    .line 339
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getShort(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)S

    move-result v2

    .line 341
    if-ne v0, v1, :cond_1

    .line 345
    if-lt v2, v1, :cond_0

    .line 351
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 356
    nop

    .line 357
    return-void

    .line 346
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app min ver=1 is greater than AGPSD\'s min ver="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 342
    :cond_1
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "app maj ver=1 is not equal to AGPSD\'s maj ver="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 355
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 352
    :catch_0
    move-exception v0

    .line 353
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 355
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v0
.end method

.method protected close()V
    .locals 1

    .line 2690
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-virtual {v0}, Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;->clear()V

    .line 2702
    return-void
.end method

.method protected connect()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2687
    return-void
.end method

.method public getAgpsConfig()Lcom/mediatek/lbs/em2/utils/AgpsConfig;
    .locals 3

    .line 360
    new-instance v0, Lcom/mediatek/lbs/em2/utils/AgpsConfig;

    invoke-direct {v0}, Lcom/mediatek/lbs/em2/utils/AgpsConfig;-><init>()V

    .line 362
    const/16 v1, 0x64

    .line 363
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 365
    iget-object v2, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v2, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;I)V

    .line 366
    invoke-direct {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->writeToHidl()V

    .line 369
    invoke-direct {p0, v1, v0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->getAgpsConfigInt(ILcom/mediatek/lbs/em2/utils/AgpsConfig;)V

    .line 372
    iget-object v1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 376
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 377
    nop

    .line 378
    return-object v0

    .line 376
    :catchall_0
    move-exception v0

    goto :goto_0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 376
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw v0
.end method

.method public setSuplProfile(Lcom/mediatek/lbs/em2/utils/SuplProfile;)V
    .locals 2

    .line 1903
    :try_start_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->connect()V

    .line 1905
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    const/16 v1, 0xdb

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;I)V

    .line 1906
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->name:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1907
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addr:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1908
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->port:I

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putInt(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;I)V

    .line 1909
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-boolean v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->tls:Z

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putBoolean(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Z)V

    .line 1910
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->mccMnc:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1911
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->appId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1912
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->providerId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1913
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->defaultApn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1914
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1915
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object v1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->optionalApn2:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1916
    iget-object v0, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->out:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    iget-object p1, p1, Lcom/mediatek/lbs/em2/utils/SuplProfile;->addressType:Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->putString(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;Ljava/lang/String;)V

    .line 1917
    invoke-direct {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->writeToHidl()V

    .line 1920
    iget-object p1, p0, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->in:Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;

    invoke-static {p1}, Lcom/mediatek/lbs/em2/utils/DataCoder2;->getByte(Lcom/mediatek/lbs/em2/utils/DataCoder2$DataCoderBuffer;)B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1924
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    .line 1925
    nop

    .line 1926
    return-void

    .line 1924
    :catchall_0
    move-exception p1

    goto :goto_0

    .line 1921
    :catch_0
    move-exception p1

    .line 1922
    :try_start_1
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1924
    :goto_0
    invoke-virtual {p0}, Lcom/mediatek/lbs/em2/utils/AgpsInterface;->close()V

    throw p1
.end method
