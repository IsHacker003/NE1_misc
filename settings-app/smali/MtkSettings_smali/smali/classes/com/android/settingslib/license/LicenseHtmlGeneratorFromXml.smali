.class Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;
.super Ljava/lang/Object;
.source "LicenseHtmlGeneratorFromXml.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;
    }
.end annotation


# instance fields
.field private final mContentIdToFileContentMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFileNameToContentIdMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mXmlFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToContentIdMap:Ljava/util/Map;

    .line 94
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    .line 106
    iput-object p1, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mXmlFiles:Ljava/util/List;

    .line 107
    return-void
.end method

.method static generateHtml(Ljava/util/Map;Ljava/util/Map;Ljava/io/PrintWriter;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/io/PrintWriter;",
            ")V"
        }
    .end annotation

    .line 242
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 244
    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 246
    const-string v1, "<html><head>\n<style type=\"text/css\">\nbody { padding: 0; font-family: sans-serif; }\n.same-license { background-color: #eeeeee;\n                border-top: 20px solid white;\n                padding: 10px; }\n.label { font-weight: bold; }\n.file-list { margin-left: 1em; color: blue; }\n</style>\n</head><body topmargin=\"0\" leftmargin=\"0\" rightmargin=\"0\" bottommargin=\"0\">\n<div class=\"toc\">\n<ul>"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 248
    nop

    .line 249
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 250
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 253
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    const/4 v6, 0x1

    if-eqz v5, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 254
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 256
    invoke-interface {v1, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_0

    .line 257
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v8, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    invoke-direct {v8, v7}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 261
    add-int/lit8 v4, v4, 0x1

    .line 264
    :cond_0
    invoke-interface {v1, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 265
    invoke-interface {v2, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    iget-object v8, v8, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mFileNameList:Ljava/util/List;

    invoke-interface {v8, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 266
    const-string v8, "<li><a href=\"#id%d\">%s</a></li>\n"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v9, v3

    aput-object v5, v9, v6

    invoke-virtual {p2, v8, v9}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 267
    goto :goto_0

    .line 269
    :cond_1
    const-string p0, "</ul>\n</div><!-- table of contents -->\n<table cellpadding=\"0\" cellspacing=\"0\" border=\"0\">"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 271
    nop

    .line 273
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    move v0, v3

    :goto_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;

    .line 274
    const-string v2, "<tr id=\"id%d\"><td class=\"same-license\">\n"

    new-array v4, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v3

    invoke-virtual {p2, v2, v4}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 275
    const-string v2, "<div class=\"label\">Notices for file(s):</div>"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 276
    const-string v2, "<div class=\"file-list\">"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 277
    iget-object v2, v1, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mFileNameList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 278
    const-string v5, "%s <br/>\n"

    new-array v7, v6, [Ljava/lang/Object;

    aput-object v4, v7, v3

    invoke-virtual {p2, v5, v7}, Ljava/io/PrintWriter;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    .line 279
    goto :goto_2

    .line 280
    :cond_2
    const-string v2, "</div><!-- file-list -->"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 281
    const-string v2, "<pre class=\"license-text\">"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 282
    iget-object v1, v1, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml$ContentIdAndFileNames;->mContentId:Ljava/lang/String;

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 284
    const-string v1, "</pre><!-- license-text -->"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 285
    const-string v1, "</td></tr><!-- same-license -->"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 287
    add-int/lit8 v0, v0, 0x1

    .line 288
    goto :goto_1

    .line 290
    :cond_3
    const-string p0, "</table></body></html>"

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 291
    return-void
.end method

.method private generateHtml(Ljava/io/File;)Z
    .locals 7

    .line 115
    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mXmlFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/File;

    .line 116
    invoke-direct {p0, v1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->parse(Ljava/io/File;)V

    .line 117
    goto :goto_0

    .line 119
    :cond_0
    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToContentIdMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_2

    .line 123
    :cond_1
    const/4 v0, 0x0

    .line 125
    :try_start_0
    new-instance v2, Ljava/io/PrintWriter;

    invoke-direct {v2, p1}, Ljava/io/PrintWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 127
    :try_start_1
    iget-object v0, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToContentIdMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    invoke-static {v0, v3, v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->generateHtml(Ljava/util/Map;Ljava/util/Map;Ljava/io/PrintWriter;)V

    .line 129
    invoke-virtual {v2}, Ljava/io/PrintWriter;->flush()V

    .line 130
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 131
    const/4 p1, 0x1

    return p1

    .line 132
    :catch_0
    move-exception v0

    goto :goto_1

    :catch_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    .line 133
    :goto_1
    const-string v3, "LicenseHtmlGeneratorFromXml"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to generate "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v3, p1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 135
    if-eqz v2, :cond_2

    .line 136
    invoke-virtual {v2}, Ljava/io/PrintWriter;->close()V

    .line 138
    :cond_2
    return v1

    .line 120
    :cond_3
    :goto_2
    return v1
.end method

.method public static generateHtml(Ljava/util/List;Ljava/io/File;)Z
    .locals 1
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

    .line 110
    new-instance v0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;

    invoke-direct {v0, p0}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;-><init>(Ljava/util/List;)V

    .line 111
    invoke-direct {v0, p1}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->generateHtml(Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method private parse(Ljava/io/File;)V
    .locals 5

    .line 143
    if-eqz p1, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    goto :goto_2

    .line 147
    :cond_0
    const/4 v0, 0x0

    .line 149
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".gz"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    new-instance v1, Ljava/io/InputStreamReader;

    new-instance v2, Ljava/util/zip/GZIPInputStream;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    goto :goto_0

    .line 152
    :cond_1
    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    .line 155
    :goto_0
    move-object v0, v1

    iget-object v1, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mFileNameToContentIdMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->mContentIdToFileContentMap:Ljava/util/Map;

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->parse(Ljava/io/InputStreamReader;Ljava/util/Map;Ljava/util/Map;)V

    .line 157
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    goto :goto_1

    .line 158
    :catch_0
    move-exception v1

    .line 159
    const-string v2, "LicenseHtmlGeneratorFromXml"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to parse "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 160
    if-eqz v0, :cond_2

    .line 162
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStreamReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 165
    goto :goto_1

    .line 163
    :catch_1
    move-exception v0

    .line 164
    const-string v0, "LicenseHtmlGeneratorFromXml"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to close "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    :cond_2
    :goto_1
    return-void

    .line 144
    :cond_3
    :goto_2
    return-void
.end method

.method static parse(Ljava/io/InputStreamReader;Ljava/util/Map;Ljava/util/Map;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/InputStreamReader;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 189
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 190
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 192
    invoke-static {}, Landroid/util/Xml;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    .line 193
    invoke-interface {v2, p0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/Reader;)V

    .line 194
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->nextTag()I

    .line 196
    const-string p0, ""

    const-string v3, "licenses"

    const/4 v4, 0x2

    invoke-interface {v2, v4, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->require(ILjava/lang/String;Ljava/lang/String;)V

    .line 198
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result p0

    .line 199
    :goto_0
    const/4 v3, 0x1

    if-eq p0, v3, :cond_3

    .line 200
    if-ne p0, v4, :cond_2

    .line 201
    const-string p0, "file-name"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 202
    const-string p0, ""

    const-string v3, "contentId"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 203
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 204
    invoke-static {v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 205
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 206
    invoke-interface {v0, v3, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 209
    :cond_0
    goto :goto_1

    :cond_1
    const-string p0, "file-content"

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 210
    const-string p0, ""

    const-string v3, "contentId"

    invoke-interface {v2, p0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 211
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 212
    invoke-interface {p2, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 213
    invoke-interface {v1, p0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 214
    invoke-static {v2}, Lcom/android/settingslib/license/LicenseHtmlGeneratorFromXml;->readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;

    move-result-object v3

    .line 215
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 216
    invoke-interface {v1, p0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_2
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result p0

    goto :goto_0

    .line 224
    :cond_3
    invoke-interface {p1, v0}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 225
    invoke-interface {p2, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 226
    return-void
.end method

.method private static readText(Lorg/xmlpull/v1/XmlPullParser;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 230
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 231
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    .line 232
    :goto_0
    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 233
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 234
    invoke-interface {p0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    goto :goto_0

    .line 236
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
