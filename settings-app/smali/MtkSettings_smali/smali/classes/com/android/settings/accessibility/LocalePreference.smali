.class public Lcom/android/settings/accessibility/LocalePreference;
.super Landroid/support/v7/preference/ListPreference;
.source "LocalePreference.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;)V

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 34
    invoke-direct {p0, p1, p2}, Landroid/support/v7/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 35
    invoke-virtual {p0, p1}, Lcom/android/settings/accessibility/LocalePreference;->init(Landroid/content/Context;)V

    .line 36
    return-void
.end method


# virtual methods
.method public init(Landroid/content/Context;)V
    .locals 6

    .line 44
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/android/internal/app/LocalePicker;->getAllAssetLocales(Landroid/content/Context;Z)Ljava/util/List;

    move-result-object v1

    .line 47
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    .line 48
    add-int/lit8 v3, v2, 0x1

    new-array v4, v3, [Ljava/lang/CharSequence;

    .line 49
    new-array v3, v3, [Ljava/lang/CharSequence;

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v5, 0x7f1207e9    # @string/locale_default 'Default'

    invoke-virtual {p1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v4, v0

    .line 51
    const-string p1, ""

    aput-object p1, v3, v0

    .line 53
    :goto_0
    if-ge v0, v2, :cond_0

    .line 54
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/internal/app/LocalePicker$LocaleInfo;

    .line 55
    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v0

    .line 56
    invoke-virtual {p1}, Lcom/android/internal/app/LocalePicker$LocaleInfo;->getLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object p1

    aput-object p1, v3, v0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0, v4}, Lcom/android/settings/accessibility/LocalePreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 60
    invoke-virtual {p0, v3}, Lcom/android/settings/accessibility/LocalePreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 61
    return-void
.end method
