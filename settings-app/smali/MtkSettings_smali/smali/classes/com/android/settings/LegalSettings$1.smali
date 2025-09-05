.class Lcom/android/settings/LegalSettings$1;
.super Lcom/android/settings/search/BaseSearchIndexProvider;
.source "LegalSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/LegalSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 142
    invoke-direct {p0}, Lcom/android/settings/search/BaseSearchIndexProvider;-><init>()V

    return-void
.end method

.method private checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4

    .line 232
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 235
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 236
    const/4 p2, 0x0

    invoke-virtual {p1, v0, p2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 237
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 239
    move v1, p2

    :goto_0
    if-ge v1, v0, :cond_1

    .line 240
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 241
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    .line 243
    return v3

    .line 239
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_1
    return p2
.end method


# virtual methods
.method public getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 194
    invoke-super {p0, p1}, Lcom/android/settings/search/BaseSearchIndexProvider;->getNonIndexableKeys(Landroid/content/Context;)Ljava/util/List;

    move-result-object v0

    .line 195
    const-string v1, "android.settings.TERMS"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LegalSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 196
    const-string v1, "terms"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    :cond_0
    const-string v1, "android.settings.LICENSE"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LegalSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    const-string v1, "license"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 201
    :cond_1
    const-string v1, "android.settings.COPYRIGHT"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LegalSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 202
    const-string v1, "copyright"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 204
    :cond_2
    const-string v1, "android.settings.WEBVIEW_LICENSE"

    invoke-direct {p0, p1, v1}, Lcom/android/settings/LegalSettings$1;->checkIntentAction(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 205
    const-string v1, "webview_license"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 207
    :cond_3
    const-string v1, "wallpaper_attributions"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 213
    const-string v1, "privacy_apr_item"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 223
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f050052    # @bool/hmd_open_source_info 'false'

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    invoke-static {p1}, Lcom/android/settings/LegalSettings;->access$202(Z)Z

    .line 224
    invoke-static {}, Lcom/android/settings/LegalSettings;->access$200()Z

    move-result p1

    if-nez p1, :cond_4

    .line 225
    const-string p1, "hmd_open_source_info"

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    :cond_4
    return-object v0
.end method

.method public getRawDataToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Lcom/android/settings/search/SearchIndexableRaw;",
            ">;"
        }
    .end annotation

    .line 155
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207dd    # @string/legal_item ''

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/LegalSettings;->access$002(Ljava/lang/String;)Ljava/lang/String;

    .line 157
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1207db    # @string/legal_apr_item ''

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/LegalSettings;->access$102(Ljava/lang/String;)Ljava/lang/String;

    .line 158
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcust/settings/CustomizedUtils;->getLegalMessageTitle(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v1

    .line 159
    new-instance v2, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v2, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 161
    iput-object v1, v2, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 162
    const-string v1, "legal_item"

    iput-object v1, v2, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 163
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1207dc    # @string/legal_information 'Legal information'

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 168
    invoke-static {}, Lcom/android/settings/LegalSettings;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 169
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 173
    :cond_0
    invoke-static {}, Lcom/android/settings/LegalSettings;->access$100()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    invoke-static {p1, v0}, Lcust/settings/CustomizedUtils;->getLegalPrivacyTitle(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 175
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 176
    iput-object v0, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 177
    const-string v0, "legal_apr_item"

    iput-object v0, v1, Lcom/android/settings/search/SearchIndexableRaw;->key:Ljava/lang/String;

    .line 178
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 179
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 180
    goto :goto_0

    .line 181
    :cond_1
    invoke-static {p1, v0}, Lcust/settings/CustomizedUtils;->getPrivacyTitle(Landroid/content/Context;Z)Ljava/lang/String;

    move-result-object v0

    .line 182
    new-instance v1, Lcom/android/settings/search/SearchIndexableRaw;

    invoke-direct {v1, p1}, Lcom/android/settings/search/SearchIndexableRaw;-><init>(Landroid/content/Context;)V

    .line 183
    iput-object v0, v1, Lcom/android/settings/search/SearchIndexableRaw;->title:Ljava/lang/String;

    .line 184
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, v1, Lcom/android/settings/search/SearchIndexableRaw;->screenTitle:Ljava/lang/String;

    .line 185
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 188
    :goto_0
    return-object p2
.end method

.method public getXmlResourcesToIndex(Landroid/content/Context;Z)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Z)",
            "Ljava/util/List<",
            "Landroid/provider/SearchIndexableResource;",
            ">;"
        }
    .end annotation

    .line 147
    new-instance p2, Landroid/provider/SearchIndexableResource;

    invoke-direct {p2, p1}, Landroid/provider/SearchIndexableResource;-><init>(Landroid/content/Context;)V

    .line 148
    const/high16 p1, 0x7f150000    # @xml/about_legal 'res/xml/about_legal.xml'

    iput p1, p2, Landroid/provider/SearchIndexableResource;->xmlResId:I

    .line 149
    const/4 p1, 0x1

    new-array p1, p1, [Landroid/provider/SearchIndexableResource;

    const/4 v0, 0x0

    aput-object p2, p1, v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method
