.class public Lcom/android/settings/slices/SliceBuilderUtils;
.super Ljava/lang/Object;
.source "SliceBuilderUtils.java"


# direct methods
.method private static buildIntentSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 8

    .line 259
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 260
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    .line 261
    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object p2

    .line 262
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 263
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v3

    .line 265
    new-instance v4, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v5

    const-wide/16 v6, -0x1

    invoke-direct {v4, p0, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 266
    invoke-virtual {v4, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v2, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;

    invoke-direct {v2, p1, p2, v0, v1}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$NVqOOBEdIdirrSxUZFgCZXRQ1vA;-><init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;)V

    .line 267
    invoke-virtual {p0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 272
    invoke-virtual {p0, v3}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 273
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 265
    return-object p0
.end method

.method public static buildSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 5

    .line 80
    const-string v0, "SliceBuilder"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Creating slice for: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0

    .line 82
    nop

    .line 83
    const/16 v1, 0x356

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 86
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Landroid/util/Pair;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    .line 87
    const/16 v1, 0x55b

    invoke-virtual {v2, p0, v1, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 89
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->isAvailable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 91
    const/4 p0, 0x0

    return-object p0

    .line 94
    :cond_0
    invoke-virtual {v0}, Lcom/android/settings/core/BasePreferenceController;->getAvailabilityStatus()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_1

    .line 95
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildUnavailableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 98
    :cond_1
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 106
    new-instance p0, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Slice type passed was invalid: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getSliceType()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 104
    :pswitch_0
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliderSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 102
    :pswitch_1
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildToggleSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    .line 100
    :pswitch_2
    invoke-static {p0, p1, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->buildIntentSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;

    move-result-object p0

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/settings/slices/SliceData;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 339
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 341
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 342
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 345
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getKeywords()Ljava/lang/String;

    move-result-object p0

    .line 346
    if-eqz p0, :cond_1

    .line 347
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p0

    .line 348
    invoke-static {p0}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object p0

    sget-object v1, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;->INSTANCE:Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$H4nQFDLpU9w8T-x-9Cq8nlH2grw;

    .line 349
    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 350
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    .line 351
    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 354
    :cond_1
    return-object v0
.end method

.method private static buildSliderSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 9

    .line 278
    move-object v4, p2

    check-cast v4, Lcom/android/settings/core/SliderPreferenceController;

    .line 279
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSliderAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 280
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v0

    .line 281
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v1

    invoke-static {p0, v1}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v1

    .line 282
    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 283
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result p2

    .line 284
    new-instance v3, Landroidx/slice/builders/SliceAction;

    .line 285
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v0, v1, v6}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 286
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v6

    .line 288
    new-instance v0, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v1

    const-wide/16 v7, -0x1

    invoke-direct {v0, p0, v1, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 289
    invoke-virtual {v0, p2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance p2, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;

    move-object v0, p2

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$qRPBF1K1kbSIREThP22FAM_L1N0;-><init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Lcom/android/settings/core/SliderPreferenceController;Landroid/app/PendingIntent;)V

    .line 290
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder;->addInputRange(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 297
    invoke-virtual {p0, v6}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 298
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 288
    return-object p0
.end method

.method private static buildToggleSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Lcom/android/settings/core/BasePreferenceController;)Landroidx/slice/Slice;
    .locals 9

    .line 235
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 236
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v0

    invoke-static {p0, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v4

    .line 237
    invoke-static {p0, p2, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 238
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v0

    .line 239
    check-cast p2, Lcom/android/settings/core/TogglePreferenceController;

    .line 241
    nop

    .line 242
    invoke-virtual {p2}, Lcom/android/settings/core/TogglePreferenceController;->isChecked()Z

    move-result p2

    .line 241
    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getToggleAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Z)Landroidx/slice/builders/SliceAction;

    move-result-object v5

    .line 243
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object p2

    .line 245
    new-instance v1, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object v6

    const-wide/16 v7, -0x1

    invoke-direct {v1, p0, v6, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 246
    invoke-virtual {v1, v0}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v6, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;

    move-object v0, v6

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$-H4Orhnw7bHLhjHmJgSvCr6cWP8;-><init>(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;)V

    .line 247
    invoke-virtual {p0, v6}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 253
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 254
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 245
    return-object p0
.end method

.method private static buildUnavailableSlice(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroidx/slice/Slice;
    .locals 9

    .line 358
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 359
    invoke-static {p1}, Lcom/android/settings/slices/SliceBuilderUtils;->buildSliceKeywords(Lcom/android/settings/slices/SliceData;)Ljava/util/List;

    move-result-object v1

    .line 360
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 361
    const v3, 0x7f12055a    # @string/disabled_dependent_setting_summary 'Depends on another setting'

    invoke-virtual {p0, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    .line 362
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getIconResource()I

    move-result v4

    invoke-static {p0, v4}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v4

    .line 363
    new-instance v5, Landroidx/slice/builders/SliceAction;

    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-direct {v5, v6, v4, v0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 366
    new-instance v6, Landroidx/slice/builders/ListBuilder;

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getUri()Landroid/net/Uri;

    move-result-object p1

    const-wide/16 v7, -0x1

    invoke-direct {v6, p0, p1, v7, v8}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 367
    invoke-virtual {v6, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance p1, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;

    invoke-direct {p1, v0, v4, v3, v5}, Lcom/android/settings/slices/-$$Lambda$SliceBuilderUtils$JGXESizo03yh-FrnCdjYorH4I8Y;-><init>(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;)V

    .line 368
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 373
    invoke-virtual {p0, v1}, Landroidx/slice/builders/ListBuilder;->setKeywords(Ljava/util/List;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 374
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 366
    return-object p0
.end method

.method public static getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 2

    .line 168
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 169
    const-class p1, Lcom/android/settings/slices/SliceBroadcastReceiver;

    invoke-virtual {v0, p0, p1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 170
    const-string p1, "com.android.settings.slice.extra.key"

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 171
    const-string p1, "com.android.settings.slice.extra.platform"

    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->isPlatformDefined()Z

    move-result p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 172
    const/4 p1, 0x0

    const/high16 p2, 0x10000000

    invoke-static {p0, p1, v0, p2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method static getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;
    .locals 4
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 224
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    .line 225
    nop

    .line 226
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 227
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    .line 225
    const/4 v3, 0x0

    invoke-static {p0, v1, v2, p1, v3}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object p1

    .line 228
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v1, Lcom/android/settings/SubSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, p0, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 229
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 230
    return-object p1
.end method

.method public static getContentPendingIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 1

    .line 180
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getContentIntent(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/content/Intent;

    move-result-object p1

    .line 181
    const/4 v0, 0x0

    invoke-static {p0, v0, p1, v0}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getPathData(Landroid/net/Uri;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Boolean;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 138
    invoke-virtual {p0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p0

    .line 139
    const-string v0, "/"

    const/4 v1, 0x3

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object p0

    .line 144
    array-length v0, p0

    if-eq v0, v1, :cond_0

    .line 145
    const/4 p0, 0x0

    return-object p0

    .line 148
    :cond_0
    const-string v0, "intent"

    const/4 v1, 0x1

    aget-object v1, p0, v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    .line 151
    new-instance v1, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    const/4 v2, 0x2

    aget-object p0, p0, v2

    invoke-direct {v1, v0, p0}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1
.end method

.method public static getPreferenceController(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    .line 160
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getPreferenceController()Ljava/lang/String;

    move-result-object v0

    .line 161
    invoke-virtual {p1}, Lcom/android/settings/slices/SliceData;->getKey()Ljava/lang/String;

    move-result-object p1

    .line 160
    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    return-object p0
.end method

.method private static getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;
    .locals 1

    .line 304
    :try_start_0
    invoke-static {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 305
    :catch_0
    move-exception v0

    .line 309
    invoke-static {p0, p1, p2}, Lcom/android/settings/core/BasePreferenceController;->createInstance(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    return-object p0
.end method

.method public static getSliceType(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I
    .locals 0

    .line 117
    invoke-static {p0, p1, p2}, Lcom/android/settings/slices/SliceBuilderUtils;->getPreferenceController(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lcom/android/settings/core/BasePreferenceController;

    move-result-object p0

    .line 119
    invoke-virtual {p0}, Lcom/android/settings/core/BasePreferenceController;->getSliceType()I

    move-result p0

    return p0
.end method

.method private static getSliderAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;
    .locals 1

    .line 320
    const-string v0, "com.android.settings.slice.action.SLIDER_CHANGED"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSubtitleText(Landroid/content/Context;Lcom/android/settingslib/core/AbstractPreferenceController;Lcom/android/settings/slices/SliceData;)Ljava/lang/CharSequence;
    .locals 2

    .line 189
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getScreenTitle()Ljava/lang/CharSequence;

    move-result-object v0

    .line 190
    invoke-static {p0, v0}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v1

    .line 190
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 192
    return-object v0

    .line 195
    :cond_0
    if-eqz p1, :cond_1

    .line 196
    invoke-virtual {p1}, Lcom/android/settingslib/core/AbstractPreferenceController;->getSummary()Ljava/lang/CharSequence;

    move-result-object p1

    .line 198
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 199
    return-object p1

    .line 203
    :cond_1
    invoke-virtual {p2}, Lcom/android/settings/slices/SliceData;->getSummary()Ljava/lang/String;

    move-result-object p1

    .line 204
    invoke-static {p0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 205
    return-object p1

    .line 208
    :cond_2
    const-string p0, ""

    return-object p0
.end method

.method private static getToggleAction(Landroid/content/Context;Lcom/android/settings/slices/SliceData;Z)Landroidx/slice/builders/SliceAction;
    .locals 1

    .line 314
    const-string v0, "com.android.settings.slice.action.TOGGLE_CHANGED"

    invoke-static {p0, v0, p1}, Lcom/android/settings/slices/SliceBuilderUtils;->getActionIntent(Landroid/content/Context;Ljava/lang/String;Lcom/android/settings/slices/SliceData;)Landroid/app/PendingIntent;

    move-result-object p0

    .line 316
    new-instance p1, Landroidx/slice/builders/SliceAction;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0, p2}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Ljava/lang/CharSequence;Z)V

    return-object p1
.end method

.method public static getUri(Ljava/lang/String;Z)Landroid/net/Uri;
    .locals 2

    .line 212
    if-eqz p1, :cond_0

    .line 213
    const-string p1, "android.settings.slices"

    goto :goto_0

    .line 214
    :cond_0
    const-string p1, "com.android.settings.slices"

    .line 215
    :goto_0
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 216
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 217
    invoke-virtual {v0, p1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p1

    .line 218
    invoke-virtual {p1, p0}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object p0

    .line 219
    invoke-virtual {p0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object p0

    .line 215
    return-object p0
.end method

.method private static isValidSummary(Landroid/content/Context;Ljava/lang/CharSequence;)Z
    .locals 3

    .line 324
    const/4 v0, 0x0

    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 328
    :cond_0
    const v1, 0x7f120da7    # @string/summary_placeholder ' '

    invoke-virtual {p0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 329
    const v2, 0x7f120daa    # @string/summary_two_lines_placeholder ' \n '

    .line 330
    invoke-virtual {p0, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object p0

    .line 332
    invoke-static {p1, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 333
    invoke-static {p1, p0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_1

    const/4 v0, 0x1

    nop

    .line 332
    :cond_1
    return v0

    .line 325
    :cond_2
    :goto_0
    return v0
.end method

.method static synthetic lambda$buildIntentSlice$1(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    .line 267
    nop

    .line 268
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p4

    .line 269
    invoke-virtual {p4, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    new-instance p4, Landroidx/slice/builders/SliceAction;

    .line 271
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p4, p2, p3, p0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 270
    invoke-virtual {p1, p4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 267
    return-void
.end method

.method static synthetic lambda$buildSliceKeywords$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 349
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$buildSliderSlice$2(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Lcom/android/settings/core/SliderPreferenceController;Landroid/app/PendingIntent;Landroidx/slice/builders/ListBuilder$InputRangeBuilder;)V
    .locals 0

    .line 290
    nop

    .line 291
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p5, p0}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object p0

    .line 292
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object p0

    .line 293
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object p0

    .line 294
    invoke-virtual {p3}, Lcom/android/settings/core/SliderPreferenceController;->getMaxSteps()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setMax(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object p0

    .line 295
    invoke-virtual {p3}, Lcom/android/settings/core/SliderPreferenceController;->getSliderPosition()I

    move-result p1

    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setValue(I)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    move-result-object p0

    .line 296
    invoke-virtual {p0, p4}, Landroidx/slice/builders/ListBuilder$InputRangeBuilder;->setInputAction(Landroid/app/PendingIntent;)Landroidx/slice/builders/ListBuilder$InputRangeBuilder;

    .line 290
    return-void
.end method

.method static synthetic lambda$buildToggleSlice$0(Lcom/android/settings/slices/SliceData;Ljava/lang/CharSequence;Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 1

    .line 247
    nop

    .line 248
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p5

    .line 249
    invoke-virtual {p5, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p1

    new-instance p5, Landroidx/slice/builders/SliceAction;

    .line 251
    invoke-virtual {p0}, Lcom/android/settings/slices/SliceData;->getTitle()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p5, p2, p3, p0}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 250
    invoke-virtual {p1, p5}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 252
    invoke-virtual {p0, p4}, Landroidx/slice/builders/ListBuilder$RowBuilder;->addEndItem(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 247
    return-void
.end method

.method static synthetic lambda$buildUnavailableSlice$4(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 0

    .line 368
    nop

    .line 369
    invoke-virtual {p4, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 370
    invoke-virtual {p0, p1}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 371
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setSubtitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 372
    invoke-virtual {p0, p3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 368
    return-void
.end method
