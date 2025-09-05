.class Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;
.super Ljava/lang/Object;
.source "LanguageAndInputSettings.java"

# interfaces
.implements Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/language/LanguageAndInputSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SummaryProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V
    .locals 0

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 139
    iput-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mContext:Landroid/content/Context;

    .line 140
    iput-object p2, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    .line 141
    return-void
.end method


# virtual methods
.method public setListening(Z)V
    .locals 4

    .line 145
    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 146
    if-eqz p1, :cond_2

    .line 147
    const-string p1, "default_input_method"

    invoke-static {v0, p1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 149
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 151
    invoke-static {p1}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p1

    .line 152
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 153
    iget-object v1, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mContext:Landroid/content/Context;

    const-string v2, "input_method"

    .line 154
    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/inputmethod/InputMethodManager;

    .line 155
    invoke-virtual {v1}, Landroid/view/inputmethod/InputMethodManager;->getInputMethodList()Ljava/util/List;

    move-result-object v1

    .line 156
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodInfo;

    .line 157
    invoke-virtual {v2}, Landroid/view/inputmethod/InputMethodInfo;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 158
    iget-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    invoke-virtual {v2, v0}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 159
    return-void

    .line 161
    :cond_0
    goto :goto_0

    .line 163
    :cond_1
    iget-object p1, p0, Lcom/android/settings/language/LanguageAndInputSettings$SummaryProvider;->mSummaryLoader:Lcom/android/settings/dashboard/SummaryLoader;

    const-string v0, ""

    invoke-virtual {p1, p0, v0}, Lcom/android/settings/dashboard/SummaryLoader;->setSummary(Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;Ljava/lang/CharSequence;)V

    .line 165
    :cond_2
    return-void
.end method
