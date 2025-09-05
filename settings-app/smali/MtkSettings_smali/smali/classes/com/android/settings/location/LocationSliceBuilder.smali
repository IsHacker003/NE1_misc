.class public Lcom/android/settings/location/LocationSliceBuilder;
.super Ljava/lang/Object;
.source "LocationSliceBuilder.java"


# static fields
.field public static final LOCATION_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 52
    new-instance v0, Landroid/net/Uri$Builder;

    invoke-direct {v0}, Landroid/net/Uri$Builder;-><init>()V

    const-string v1, "content"

    .line 53
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "android.settings.slices"

    .line 54
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "action"

    .line 55
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "location"

    .line 56
    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    .line 57
    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    .line 52
    return-void
.end method

.method public static getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 5

    .line 83
    const v0, 0x7f120801    # @string/location_settings_title 'Location'

    invoke-virtual {p0, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 84
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "location"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    .line 85
    const-class v2, Lcom/android/settings/location/LocationSettings;

    .line 86
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "location"

    .line 85
    const/16 v4, 0x3f

    invoke-static {p0, v2, v3, v0, v4}, Lcom/android/settings/search/DatabaseIndexingUtils;->buildSearchResultPageIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;

    move-result-object v0

    .line 88
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p0

    const-class v2, Lcom/android/settings/SubSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p0, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    .line 89
    invoke-virtual {p0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object p0

    .line 85
    return-object p0
.end method

.method private static getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;
    .locals 2

    .line 93
    invoke-static {p0}, Lcom/android/settings/location/LocationSliceBuilder;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    const/4 v1, 0x0

    invoke-static {p0, v1, v0, v1}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p0

    return-object p0
.end method

.method public static getSlice(Landroid/content/Context;)Landroidx/slice/Slice;
    .locals 8

    .line 66
    const v0, 0x7f080184    # @drawable/ic_signal_location 'res/drawable/ic_signal_location.xml'

    invoke-static {p0, v0}, Landroid/support/v4/graphics/drawable/IconCompat;->createWithResource(Landroid/content/Context;I)Landroid/support/v4/graphics/drawable/IconCompat;

    move-result-object v0

    .line 68
    const v1, 0x7f120801    # @string/location_settings_title 'Location'

    invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 69
    invoke-static {p0}, Lcom/android/settings/Utils;->getColorAccent(Landroid/content/Context;)I

    move-result v2

    .line 70
    invoke-static {p0}, Lcom/android/settings/location/LocationSliceBuilder;->getPrimaryAction(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v3

    .line 71
    new-instance v4, Landroidx/slice/builders/SliceAction;

    invoke-direct {v4, v3, v0, v1}, Landroidx/slice/builders/SliceAction;-><init>(Landroid/app/PendingIntent;Landroid/support/v4/graphics/drawable/IconCompat;Ljava/lang/CharSequence;)V

    .line 73
    new-instance v3, Landroidx/slice/builders/ListBuilder;

    sget-object v5, Lcom/android/settings/location/LocationSliceBuilder;->LOCATION_URI:Landroid/net/Uri;

    const-wide/16 v6, -0x1

    invoke-direct {v3, p0, v5, v6, v7}, Landroidx/slice/builders/ListBuilder;-><init>(Landroid/content/Context;Landroid/net/Uri;J)V

    .line 74
    invoke-virtual {v3, v2}, Landroidx/slice/builders/ListBuilder;->setAccentColor(I)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    new-instance v2, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;

    invoke-direct {v2, v1, v0, v4}, Lcom/android/settings/location/-$$Lambda$LocationSliceBuilder$b_EpqAhS4ORYylfhNREU0o0sGYE;-><init>(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;)V

    .line 75
    invoke-virtual {p0, v2}, Landroidx/slice/builders/ListBuilder;->addRow(Landroid/support/v4/util/Consumer;)Landroidx/slice/builders/ListBuilder;

    move-result-object p0

    .line 79
    invoke-virtual {p0}, Landroidx/slice/builders/ListBuilder;->build()Landroidx/slice/Slice;

    move-result-object p0

    .line 73
    return-object p0
.end method

.method static synthetic lambda$getSlice$0(Ljava/lang/String;Landroid/support/v4/graphics/drawable/IconCompat;Landroidx/slice/builders/SliceAction;Landroidx/slice/builders/ListBuilder$RowBuilder;)V
    .locals 0

    .line 75
    nop

    .line 76
    invoke-virtual {p3, p0}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitle(Ljava/lang/CharSequence;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 77
    const/4 p3, 0x0

    invoke-virtual {p0, p1, p3}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setTitleItem(Landroid/support/v4/graphics/drawable/IconCompat;I)Landroidx/slice/builders/ListBuilder$RowBuilder;

    move-result-object p0

    .line 78
    invoke-virtual {p0, p2}, Landroidx/slice/builders/ListBuilder$RowBuilder;->setPrimaryAction(Landroidx/slice/builders/SliceAction;)Landroidx/slice/builders/ListBuilder$RowBuilder;

    .line 75
    return-void
.end method
