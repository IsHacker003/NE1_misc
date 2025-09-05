.class Lcom/mediatek/nfcsettingsadapter/ServiceEntry$1;
.super Ljava/lang/Object;
.source "ServiceEntry.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfcsettingsadapter/ServiceEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 192
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/nfcsettingsadapter/ServiceEntry;
    .locals 8

    .line 195
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 196
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 198
    new-instance v5, Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_0

    move v0, v6

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    invoke-direct {v5, v0}, Ljava/lang/Boolean;-><init>(Z)V

    .line 199
    new-instance v7, Ljava/lang/Boolean;

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_1

    move v1, v6

    nop

    :cond_1
    invoke-direct {v7, v1}, Ljava/lang/Boolean;-><init>(Z)V

    .line 200
    const/4 v0, 0x0

    .line 201
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 202
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readParcelable(Ljava/lang/ClassLoader;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Landroid/content/ComponentName;

    .line 205
    move-object v1, p1

    goto :goto_1

    :cond_2
    move-object v1, v0

    :goto_1
    new-instance p1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    move-object v0, p1

    move-object v6, v7

    invoke-direct/range {v0 .. v6}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;-><init>(Landroid/content/ComponentName;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-object p1
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry$1;->createFromParcel(Landroid/os/Parcel;)Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/mediatek/nfcsettingsadapter/ServiceEntry;
    .locals 0

    .line 210
    new-array p1, p1, [Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 192
    invoke-virtual {p0, p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry$1;->newArray(I)[Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    move-result-object p1

    return-object p1
.end method
