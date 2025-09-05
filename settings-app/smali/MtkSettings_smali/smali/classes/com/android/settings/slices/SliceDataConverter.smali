.class Lcom/android/settings/slices/SliceDataConverter;
.super Ljava/lang/Object;
.source "SliceDataConverter.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mSliceData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 83
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    .line 84
    return-void
.end method

.method private getAccessibilitySliceData()Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 241
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 243
    const-class v1, Lcom/android/settings/accessibility/AccessibilitySlicePreferenceController;

    .line 244
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 245
    const-class v2, Lcom/android/settings/accessibility/AccessibilitySettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 246
    iget-object v3, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const v4, 0x7f12006a    # @string/accessibility_settings 'Accessibility'

    invoke-virtual {v3, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 248
    new-instance v4, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v4}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 249
    invoke-virtual {v4, v2}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v2

    .line 250
    invoke-virtual {v2, v3}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v2

    .line 251
    invoke-virtual {v2, v1}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v1

    .line 253
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 254
    iget-object v3, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 255
    const v4, 0x7f030045    # @array/config_settings_slices_accessibility_components

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 254
    invoke-static {v2, v3}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 256
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilityServiceInfoList()Ljava/util/List;

    move-result-object v3

    .line 257
    iget-object v4, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 259
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/accessibilityservice/AccessibilityServiceInfo;

    .line 260
    invoke-virtual {v5}, Landroid/accessibilityservice/AccessibilityServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    .line 261
    iget-object v6, v5, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 262
    iget-object v7, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 263
    new-instance v8, Landroid/content/ComponentName;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v7, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    .line 266
    invoke-interface {v2, v6}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 267
    goto :goto_0

    .line 270
    :cond_0
    invoke-virtual {v5, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 271
    invoke-virtual {v5}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v5

    .line 272
    if-nez v5, :cond_1

    .line 273
    const/high16 v5, 0x7f0f0000    # @mipmap/ic_accessibility_generic 'res/mipmap-hdpi/ic_accessibility_generic.png'

    .line 276
    :cond_1
    invoke-virtual {v1, v6}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v8

    .line 277
    invoke-virtual {v8, v7}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v7

    .line 278
    invoke-virtual {v7, v5}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v5

    const/4 v7, 0x1

    .line 279
    invoke-virtual {v5, v7}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    .line 281
    :try_start_0
    invoke-virtual {v1}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_0

    .line 284
    goto :goto_1

    .line 282
    :catch_0
    move-exception v5

    .line 283
    const-string v7, "SliceDataConverter"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid data when building a11y SliceData for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 285
    :goto_1
    goto :goto_0

    .line 287
    :cond_2
    return-object v0
.end method

.method private getSliceDataFromProvider(Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/search/Indexable$SearchIndexProvider;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 128
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 130
    iget-object v1, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 131
    const/4 v2, 0x1

    invoke-interface {p1, v1, v2}, Lcom/android/settings/search/Indexable$SearchIndexProvider;->getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object p1

    .line 133
    if-nez p1, :cond_0

    .line 134
    return-object v0

    .line 139
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/provider/SearchIndexableResource;

    .line 140
    iget v1, v1, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 141
    if-nez v1, :cond_1

    .line 142
    const-string v1, "SliceDataConverter"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " provides invalid XML (0) in search provider."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    goto :goto_0

    .line 146
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/settings/slices/SliceDataConverter;->getSliceDataFromXML(ILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 147
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 148
    goto :goto_0

    .line 150
    :cond_2
    return-object v0
.end method

.method private getSliceDataFromXML(ILjava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 154
    nop

    .line 156
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 159
    const/4 v1, 0x0

    :try_start_0
    iget-object v2, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v2
    :try_end_0
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 162
    :goto_0
    :try_start_1
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v1

    const/4 v3, 0x1

    if-eq v1, v3, :cond_0

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    .line 167
    :cond_0
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v1

    .line 168
    const-string v3, "PreferenceScreen"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 174
    invoke-static {v2}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object v1

    .line 175
    iget-object v3, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v3, v1}, Lcom/android/settings/core/PreferenceXmlParserUtils;->getDataTitle(Landroid/content/Context;Landroid/util/AttributeSet;)Ljava/lang/String;

    move-result-object v1

    .line 180
    iget-object v3, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    const/16 v4, 0xfe

    invoke-static {v3, p1, v4}, Lcom/android/settings/core/PreferenceXmlParserUtils;->extractMetadata(Landroid/content/Context;II)Ljava/util/List;

    move-result-object p1

    .line 190
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/Bundle;

    .line 193
    const-string v4, "controller"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 194
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 195
    goto :goto_1

    .line 198
    :cond_1
    const-string v5, "key"

    invoke-virtual {v3, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 199
    const-string v6, "title"

    invoke-virtual {v3, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 200
    const-string v7, "summary"

    invoke-virtual {v3, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 201
    const-string v8, "icon"

    invoke-virtual {v3, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 202
    iget-object v9, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v9, v4, v5}, Lcom/android/settings/slices/SliceBuilderUtils;->getSliceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v9

    .line 204
    const-string v10, "platform_slice"

    invoke-virtual {v3, v10}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    .line 206
    new-instance v10, Lcom/android/settings/slices/SliceData$Builder;

    invoke-direct {v10}, Lcom/android/settings/slices/SliceData$Builder;-><init>()V

    .line 207
    invoke-virtual {v10, v5}, Lcom/android/settings/slices/SliceData$Builder;->setKey(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v5

    .line 208
    invoke-virtual {v5, v6}, Lcom/android/settings/slices/SliceData$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v5

    .line 209
    invoke-virtual {v5, v7}, Lcom/android/settings/slices/SliceData$Builder;->setSummary(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v5

    .line 210
    invoke-virtual {v5, v8}, Lcom/android/settings/slices/SliceData$Builder;->setIcon(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v5

    .line 211
    invoke-virtual {v5, v1}, Lcom/android/settings/slices/SliceData$Builder;->setScreenTitle(Ljava/lang/CharSequence;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v5

    .line 212
    invoke-virtual {v5, v4}, Lcom/android/settings/slices/SliceData$Builder;->setPreferenceControllerClassName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v4

    .line 213
    invoke-virtual {v4, p2}, Lcom/android/settings/slices/SliceData$Builder;->setFragmentName(Ljava/lang/String;)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v4

    .line 214
    invoke-virtual {v4, v9}, Lcom/android/settings/slices/SliceData$Builder;->setSliceType(I)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v4

    .line 215
    invoke-virtual {v4, v3}, Lcom/android/settings/slices/SliceData$Builder;->setPlatformDefined(Z)Lcom/android/settings/slices/SliceData$Builder;

    move-result-object v3

    .line 216
    invoke-virtual {v3}, Lcom/android/settings/slices/SliceData$Builder;->build()Lcom/android/settings/slices/SliceData;

    move-result-object v3

    .line 218
    iget-object v4, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    .line 219
    invoke-static {v4, v3}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v4

    .line 222
    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-virtual {v4}, Lcom/android/settings/core/BasePreferenceController;->isSliceable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 223
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 225
    :cond_2
    goto :goto_1

    .line 235
    :cond_3
    if-eqz v2, :cond_5

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    goto/16 :goto_7

    .line 169
    :cond_4
    :try_start_2
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "XML document must start with <PreferenceScreen> tag; found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " at "

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->getPositionDescription()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p1, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Lcom/android/settings/slices/SliceData$InvalidSliceDataException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 235
    :catchall_0
    move-exception p1

    goto :goto_8

    .line 232
    :catch_0
    move-exception p1

    move-object v1, v2

    goto :goto_2

    .line 230
    :catch_1
    move-exception p1

    move-object v1, v2

    goto :goto_3

    .line 228
    :catch_2
    move-exception p1

    move-object v1, v2

    goto :goto_4

    .line 226
    :catch_3
    move-exception p1

    move-object v1, v2

    goto :goto_6

    .line 235
    :catchall_1
    move-exception p1

    move-object v2, v1

    goto :goto_8

    .line 232
    :catch_4
    move-exception p1

    .line 233
    :goto_2
    :try_start_3
    const-string p2, "SliceDataConverter"

    const-string v2, "Resource not found error parsing PreferenceScreen: "

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    if-eqz v1, :cond_5

    goto :goto_5

    .line 230
    :catch_5
    move-exception p1

    .line 231
    :goto_3
    const-string p2, "SliceDataConverter"

    const-string v2, "IO Error parsing PreferenceScreen: "

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 235
    if-eqz v1, :cond_5

    goto :goto_5

    .line 228
    :catch_6
    move-exception p1

    .line 229
    :goto_4
    const-string p2, "SliceDataConverter"

    const-string v2, "XML Error parsing PreferenceScreen: "

    invoke-static {p2, v2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 235
    if-eqz v1, :cond_5

    :goto_5
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    goto :goto_7

    .line 226
    :catch_7
    move-exception p1

    .line 227
    :goto_6
    :try_start_4
    const-string v2, "SliceDataConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid data when building SliceData for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v2, p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 235
    if-eqz v1, :cond_5

    goto :goto_5

    .line 237
    :cond_5
    :goto_7
    return-object v0

    .line 235
    :goto_8
    if-eqz v2, :cond_6

    invoke-interface {v2}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_6
    throw p1
.end method


# virtual methods
.method getAccessibilityServiceInfoList()Ljava/util/List;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/accessibilityservice/AccessibilityServiceInfo;",
            ">;"
        }
    .end annotation

    .line 292
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->getInstalledAccessibilityServiceList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSliceData()Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settings/slices/SliceData;",
            ">;"
        }
    .end annotation

    .line 97
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    return-object v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 102
    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getSearchFeatureProvider()Lcom/android/settings/search/SearchFeatureProvider;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchFeatureProvider;->getSearchIndexableResources()Lcom/android/settings/search/SearchIndexableResources;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/settings/search/SearchIndexableResources;->getProviderValues()Ljava/util/Collection;

    move-result-object v0

    .line 104
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 105
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 107
    invoke-static {v1}, Lcom/android/settings/search/DatabaseIndexingUtils;->getSearchIndexProvider(Ljava/lang/Class;)Lcom/android/settings/search/Indexable$SearchIndexProvider;

    move-result-object v1

    .line 111
    if-nez v1, :cond_1

    .line 112
    const-string v1, "SliceDataConverter"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " dose not implement Search Index Provider"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    goto :goto_0

    .line 116
    :cond_1
    invoke-direct {p0, v1, v2}, Lcom/android/settings/slices/SliceDataConverter;->getSliceDataFromProvider(Lcom/android/settings/search/Indexable$SearchIndexProvider;Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 118
    iget-object v2, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 119
    goto :goto_0

    .line 121
    :cond_2
    invoke-direct {p0}, Lcom/android/settings/slices/SliceDataConverter;->getAccessibilitySliceData()Ljava/util/List;

    move-result-object v0

    .line 122
    iget-object v1, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 123
    iget-object v0, p0, Lcom/android/settings/slices/SliceDataConverter;->mSliceData:Ljava/util/List;

    return-object v0
.end method
