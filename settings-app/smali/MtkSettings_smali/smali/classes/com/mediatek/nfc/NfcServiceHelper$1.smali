.class Lcom/mediatek/nfc/NfcServiceHelper$1;
.super Ljava/lang/Object;
.source "NfcServiceHelper.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/nfc/NfcServiceHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lcom/mediatek/nfcsettingsadapter/ServiceEntry;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/mediatek/nfcsettingsadapter/ServiceEntry;Lcom/mediatek/nfcsettingsadapter/ServiceEntry;)I
    .locals 2

    .line 58
    invoke-virtual {p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWasEnabled()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWasEnabled()Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 59
    invoke-virtual {p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getTitle()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getTitle()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 60
    :cond_0
    invoke-virtual {p1}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWasEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 61
    const/4 p1, -0x1

    return p1

    .line 62
    :cond_1
    invoke-virtual {p2}, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;->getWasEnabled()Ljava/lang/Boolean;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 63
    const/4 p1, 0x1

    return p1

    .line 65
    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 55
    check-cast p1, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    check-cast p2, Lcom/mediatek/nfcsettingsadapter/ServiceEntry;

    invoke-virtual {p0, p1, p2}, Lcom/mediatek/nfc/NfcServiceHelper$1;->compare(Lcom/mediatek/nfcsettingsadapter/ServiceEntry;Lcom/mediatek/nfcsettingsadapter/ServiceEntry;)I

    move-result p1

    return p1
.end method
