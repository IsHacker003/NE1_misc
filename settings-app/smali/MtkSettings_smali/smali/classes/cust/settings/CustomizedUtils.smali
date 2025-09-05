.class public final Lcust/settings/CustomizedUtils;
.super Ljava/lang/Object;
.source "CustomizedUtils.java"


# static fields
.field private static mLegalMessageTitle:Ljava/lang/String;

.field private static mLegalPrivacyTitle:Ljava/lang/String;

.field private static mPrivacyTitle:Ljava/lang/String;


# direct methods
.method public static final getLegalMessageTitle(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .line 290
    const p1, 0x7f1207dd    # @string/legal_item ''

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 292
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 293
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 294
    nop

    .line 295
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 297
    const-string v0, ""

    sput-object v0, Lcust/settings/CustomizedUtils;->mLegalMessageTitle:Ljava/lang/String;

    .line 298
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 301
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 302
    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 303
    if-eqz v0, :cond_1

    .line 304
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustomizedUtils;->mLegalMessageTitle:Ljava/lang/String;

    .line 305
    const-string v0, "CustomizedUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got LegalMessage title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustomizedUtils;->mLegalMessageTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 307
    :cond_1
    goto :goto_0

    .line 299
    :cond_2
    :goto_1
    const-string p0, "CustomizedUtils"

    const-string p1, "Get LegalMessage failed since no or more than one result."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_3
    sget-object p0, Lcust/settings/CustomizedUtils;->mLegalMessageTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static final getLegalPrivacyTitle(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .line 261
    const p1, 0x7f1207db    # @string/legal_apr_item ''

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 262
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 263
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    nop

    .line 265
    const/4 p1, 0x0

    invoke-virtual {p0, v0, p1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 267
    const-string v0, ""

    sput-object v0, Lcust/settings/CustomizedUtils;->mLegalPrivacyTitle:Ljava/lang/String;

    .line 268
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 271
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 272
    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 273
    if-eqz v0, :cond_1

    .line 274
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustomizedUtils;->mLegalPrivacyTitle:Ljava/lang/String;

    .line 275
    const-string v0, "CustomizedUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Privacy title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustomizedUtils;->mLegalPrivacyTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_1
    goto :goto_0

    .line 269
    :cond_2
    :goto_1
    const-string p0, "CustomizedUtils"

    const-string p1, "Get Privacy failed since no or more than one result."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 279
    :cond_3
    sget-object p0, Lcust/settings/CustomizedUtils;->mLegalPrivacyTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static final getPrivacyTitle(Landroid/content/Context;Z)Ljava/lang/String;
    .locals 3

    .line 232
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    .line 233
    new-instance p1, Landroid/content/Intent;

    const-string v0, "com.fihtdc.AprUploadService.action.startPrivacyPolicy"

    invoke-direct {p1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 234
    nop

    .line 235
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 237
    const-string v0, ""

    sput-object v0, Lcust/settings/CustomizedUtils;->mPrivacyTitle:Ljava/lang/String;

    .line 238
    if-eqz p1, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    goto :goto_1

    .line 241
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 242
    invoke-virtual {v0, p0}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 243
    if-eqz v0, :cond_1

    .line 244
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcust/settings/CustomizedUtils;->mPrivacyTitle:Ljava/lang/String;

    .line 245
    const-string v0, "CustomizedUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got Privacy title: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Lcust/settings/CustomizedUtils;->mPrivacyTitle:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    :cond_1
    goto :goto_0

    .line 239
    :cond_2
    :goto_1
    const-string p0, "CustomizedUtils"

    const-string p1, "Get Privacy failed since no or more than one result."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    :cond_3
    sget-object p0, Lcust/settings/CustomizedUtils;->mPrivacyTitle:Ljava/lang/String;

    return-object p0
.end method

.method public static getStringFromMetaDataint(Landroid/content/Context;Landroid/content/ComponentName;Ljava/lang/String;)I
    .locals 2

    .line 204
    nop

    .line 206
    const/4 v0, 0x0

    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    :try_start_0
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 207
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/16 v1, 0x80

    invoke-virtual {p0, p1, v1}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object p0

    .line 209
    if-eqz p0, :cond_0

    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    if-eqz v1, :cond_0

    .line 210
    iget-object v1, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {v1, p2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 211
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    invoke-virtual {p0, p2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result p0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    move v0, p0

    goto :goto_0

    .line 216
    :catch_0
    move-exception p0

    .line 218
    const-string p0, "CustomizedUtils"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cannot get Metadata for: "

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Landroid/content/ComponentName;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 219
    :cond_0
    :goto_0
    nop

    .line 221
    :goto_1
    return v0
.end method

.method public static isInDemoMode(Landroid/content/Context;)Z
    .locals 2

    .line 315
    nop

    .line 316
    if-eqz p0, :cond_0

    .line 317
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050045    # @bool/config_support_customized_demo_mode 'false'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 319
    invoke-static {p0}, Landroid/os/UserManager;->isDeviceInDemoMode(Landroid/content/Context;)Z

    move-result p0

    goto :goto_0

    .line 323
    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static isInDisableAppList(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 0

    .line 329
    invoke-static {p0, p1}, Lcust/settings/UtilsExt;->isInDisableAppList(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method
