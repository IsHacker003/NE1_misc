.class public Lcom/android/settingslib/license/LicenseHtmlLoader;
.super Lcom/android/settingslib/utils/AsyncLoader;
.source "LicenseHtmlLoader.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/settingslib/utils/AsyncLoader<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final DEFAULT_LICENSE_XML_PATHS:[Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 35
    const-string v0, "/system/etc/NOTICE.xml.gz"

    const-string v1, "/vendor/etc/NOTICE.xml.gz"

    const-string v2, "/odm/etc/NOTICE.xml.gz"

    const-string v3, "/oem/etc/NOTICE.xml.gz"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settingslib/license/LicenseHtmlLoader;->DEFAULT_LICENSE_XML_PATHS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 45
    invoke-direct {p0, p1}, Lcom/android/settingslib/utils/AsyncLoader;-><init>(Landroid/content/Context;)V

    .line 46
    iput-object p1, p0, Lcom/android/settingslib/license/LicenseHtmlLoader;->mContext:Landroid/content/Context;

    .line 47
    return-void
.end method

.method private generateHtmlFromDefaultXmlFiles()Ljava/io/File;
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/android/settingslib/license/LicenseHtmlLoader;->getVaildXmlFiles()Ljava/util/List;

    move-result-object v0

    .line 60
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 61
    const-string v0, "LicenseHtmlLoader"

    const-string v1, "No notice file exists."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    return-object v2

    .line 65
    :cond_0
    invoke-virtual {p0}, Lcom/android/settingslib/license/LicenseHtmlLoader;->getCachedHtmlFile()Ljava/io/File;

    move-result-object v1

    .line 66
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/license/LicenseHtmlLoader;->isCachedHtmlFileOutdated(Ljava/util/List;Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 67
    invoke-virtual {p0, v0, v1}, Lcom/android/settingslib/license/LicenseHtmlLoader;->generateHtmlFile(Ljava/util/List;Ljava/io/File;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 71
    :cond_1
    return-object v2

    .line 68
    :cond_2
    :goto_0
    return-object v1
.end method


# virtual methods
.method generateHtmlFile(Ljava/util/List;Ljava/io/File;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 108
    invoke-static {p1, p2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->generateHtml(Ljava/util/List;Ljava/io/File;)Z

    move-result p1

    return p1
.end method

.method getCachedHtmlFile()Ljava/io/File;
    .locals 3

    .line 88
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/android/settingslib/license/LicenseHtmlLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object v1

    const-string v2, "NOTICE.html"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method getVaildXmlFiles()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 77
    sget-object v1, Lcom/android/settingslib/license/LicenseHtmlLoader;->DEFAULT_LICENSE_XML_PATHS:[Ljava/lang/String;

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    .line 78
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 79
    invoke-virtual {v5}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-eqz v4, :cond_0

    .line 80
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 83
    :cond_1
    return-object v0
.end method

.method isCachedHtmlFileOutdated(Ljava/util/List;Ljava/io/File;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;",
            "Ljava/io/File;",
            ")Z"
        }
    .end annotation

    .line 93
    nop

    .line 94
    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 95
    const/4 v0, 0x0

    .line 96
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/io/File;

    .line 97
    invoke-virtual {p2}, Ljava/io/File;->lastModified()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    cmp-long v2, v3, v5

    if-gez v2, :cond_0

    .line 98
    nop

    .line 99
    goto :goto_1

    .line 101
    :cond_0
    goto :goto_0

    .line 103
    :cond_1
    move v1, v0

    :cond_2
    :goto_1
    return v1
.end method

.method public loadInBackground()Ljava/io/File;
    .locals 1

    .line 51
    invoke-direct {p0}, Lcom/android/settingslib/license/LicenseHtmlLoader;->generateHtmlFromDefaultXmlFiles()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lcom/android/settingslib/license/LicenseHtmlLoader;->loadInBackground()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method protected onDiscardResult(Ljava/io/File;)V
    .locals 0

    .line 56
    return-void
.end method

.method protected bridge synthetic onDiscardResult(Ljava/lang/Object;)V
    .locals 0

    .line 32
    check-cast p1, Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/license/LicenseHtmlLoader;->onDiscardResult(Ljava/io/File;)V

    return-void
.end method
