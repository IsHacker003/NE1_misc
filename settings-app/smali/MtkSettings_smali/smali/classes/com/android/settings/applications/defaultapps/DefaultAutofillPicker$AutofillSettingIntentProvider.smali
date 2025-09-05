.class final Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;
.super Ljava/lang/Object;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "AutofillSettingIntentProvider"
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mSelectedKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p2, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->mSelectedKey:Ljava/lang/String;

    .line 268
    iput-object p1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->mContext:Landroid/content/Context;

    .line 269
    return-void
.end method


# virtual methods
.method public getIntent()Landroid/content/Intent;
    .locals 6

    .line 273
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    sget-object v1, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 277
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 278
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, v1, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    .line 280
    iget-object v4, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->mSelectedKey:Ljava/lang/String;

    invoke-static {v4, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 283
    :try_start_0
    new-instance v0, Landroid/service/autofill/AutofillServiceInfo;

    iget-object v3, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;->mContext:Landroid/content/Context;

    invoke-direct {v0, v3, v1}, Landroid/service/autofill/AutofillServiceInfo;-><init>(Landroid/content/Context;Landroid/content/pm/ServiceInfo;)V

    .line 284
    invoke-virtual {v0}, Landroid/service/autofill/AutofillServiceInfo;->getSettingsActivity()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    nop

    .line 290
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 291
    return-object v2

    .line 293
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.MAIN"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    new-instance v3, Landroid/content/ComponentName;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-direct {v3, v1, v0}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 285
    :catch_0
    move-exception v0

    .line 287
    const-string v3, "DefaultAutofillPicker"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error getting info for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 288
    return-object v2

    .line 296
    :cond_1
    goto :goto_0

    .line 298
    :cond_2
    return-object v2
.end method
