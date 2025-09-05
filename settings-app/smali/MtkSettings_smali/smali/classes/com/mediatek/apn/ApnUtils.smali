.class public Lcom/mediatek/apn/ApnUtils;
.super Ljava/lang/Object;
.source "ApnUtils.java"


# static fields
.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 30
    const-string v0, "_id"

    const-string v1, "name"

    const-string v2, "apn"

    const-string v3, "proxy"

    const-string v4, "port"

    const-string v5, "user"

    const-string v6, "server"

    const-string v7, "password"

    const-string v8, "mmsc"

    const-string v9, "mcc"

    const-string v10, "mnc"

    const-string v11, "numeric"

    const-string v12, "mmsproxy"

    const-string v13, "mmsport"

    const-string v14, "authtype"

    const-string v15, "type"

    const-string v16, "sourcetype"

    const-string v17, "omacpid"

    const-string v18, "napid"

    const-string v19, "proxyid"

    filled-new-array/range {v0 .. v19}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mediatek/apn/ApnUtils;->PROJECTION:[Ljava/lang/String;

    return-void
.end method

.method public static checkNotSet(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 75
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    return-object p0

    .line 76
    :cond_1
    :goto_0
    const-string p0, ""

    return-object p0
.end method
