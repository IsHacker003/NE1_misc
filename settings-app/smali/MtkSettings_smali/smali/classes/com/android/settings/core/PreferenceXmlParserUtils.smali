.class public Lcom/android/settings/core/PreferenceXmlParserUtils;
.super Ljava/lang/Object;
.source "PreferenceXmlParserUtils.java"


# static fields
.field static final PREF_SCREEN_TAG:Ljava/lang/String; = "PreferenceScreen"

.field private static final SUPPORTED_PREF_TYPES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 54
    const-string v0, "Preference"

    const-string v1, "PreferenceCategory"

    const-string v2, "PreferenceScreen"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    return-void
.end method

.method public static extractMetadata(Landroid/content/Context;II)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "II)",
            "Ljava/util/List<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 177
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 178
    if-gtz p1, :cond_0

    .line 179
    const-string p0, "PreferenceXmlParserUtil"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " is invalid."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    return-object v0

    .line 182
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object p1

    .line 185
    :goto_0
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eq v1, v3, :cond_1

    if-eq v1, v2, :cond_1

    goto :goto_0

    .line 189
    :cond_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v4

    .line 192
    :cond_2
    if-eq v1, v2, :cond_3

    .line 193
    goto/16 :goto_1

    .line 195
    :cond_3
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 196
    invoke-static {p2, v3}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v5

    if-nez v5, :cond_4

    const-string v5, "PreferenceScreen"

    .line 197
    invoke-static {v5, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 198
    goto/16 :goto_1

    .line 200
    :cond_4
    sget-object v5, Lcom/android/settings/core/PreferenceXmlParserUtils;->SUPPORTED_PREF_TYPES:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    const-string v5, "Preference"

    invoke-virtual {v1, v5}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 201
    goto/16 :goto_1

    .line 203
    :cond_5
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 204
    invoke-static {p1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v6

    .line 205
    sget-object v7, Lcom/android/settings/R$styleable;->Preference:[I

    invoke-virtual {p0, v6, v7}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 208
    const/4 v7, 0x4

    invoke-static {p2, v7}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 209
    const-string v7, "type"

    invoke-virtual {v5, v7, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 211
    :cond_6
    invoke-static {p2, v2}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 212
    const-string v1, "key"

    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_7
    const/16 v1, 0x8

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 215
    const-string v1, "controller"

    .line 216
    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getController(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v7

    .line 215
    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    :cond_8
    const/16 v1, 0x10

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 219
    const-string v1, "title"

    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    :cond_9
    const/16 v1, 0x20

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 222
    const-string v1, "summary"

    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 224
    :cond_a
    const/16 v1, 0x40

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 225
    const-string v1, "icon"

    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getIcon(Landroid/content/res/TypedArray;)I

    move-result v7

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 227
    :cond_b
    const/16 v1, 0x80

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 228
    const-string v1, "platform_slice"

    .line 229
    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getPlatformSlice(Landroid/content/res/TypedArray;)Z

    move-result v7

    .line 228
    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 231
    :cond_c
    const/16 v1, 0x100

    invoke-static {p2, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->hasFlag(II)Z

    move-result v1

    if-eqz v1, :cond_d

    .line 232
    const-string v1, "keywords"

    invoke-static {v6}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v1, v7}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_d
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 236
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 237
    :goto_1
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    if-eq v1, v3, :cond_e

    const/4 v5, 0x3

    if-ne v1, v5, :cond_2

    .line 238
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->getDepth()I

    move-result v5

    if-gt v5, v4, :cond_2

    .line 239
    :cond_e
    invoke-interface {p1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 240
    return-object v0
.end method

.method private static getController(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 303
    const/16 v0, 0x12

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataKey(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 99
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x6

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 109
    sget-object v0, Lcom/android/internal/R$styleable;->Preference:[I

    const/4 v1, 0x4

    invoke-static {p0, p1, v0, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getIcon(Landroid/content/res/TypedArray;)I
    .locals 1

    .line 307
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p0

    return p0
.end method

.method private static getKey(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 291
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getKeywords(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 315
    const/16 v0, 0x1b

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getPlatformSlice(Landroid/content/res/TypedArray;)Z
    .locals 2

    .line 311
    const/16 v0, 0x1f

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p0

    return p0
.end method

.method private static getStringData(Landroid/content/Context;Landroid/util/AttributeSet;[II)Ljava/lang/String;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 257
    invoke-virtual {p0, p1, p2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p0

    .line 258
    invoke-virtual {p0, p3}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 259
    invoke-virtual {p0}, Landroid/content/res/TypedArray;->recycle()V

    .line 260
    return-object p1
.end method

.method private static getSummary(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 299
    const/4 v0, 0x7

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getTitle(Landroid/content/res/TypedArray;)Ljava/lang/String;
    .locals 1

    .line 295
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static hasFlag(II)Z
    .locals 0

    .line 264
    and-int/2addr p0, p1

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
