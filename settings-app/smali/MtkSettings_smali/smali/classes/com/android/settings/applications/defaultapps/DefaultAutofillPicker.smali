.class public Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;
.super Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;
.source "DefaultAutofillPicker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillSettingIntentProvider;,
        Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;
    }
.end annotation


# static fields
.field static final AUTOFILL_PROBE:Landroid/content/Intent;


# instance fields
.field private mCancelListener:Landroid/content/DialogInterface$OnClickListener;

.field private final mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.service.autofill.AutofillService"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;-><init>()V

    .line 124
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$1;-><init>(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)Landroid/content/DialogInterface$OnClickListener;
    .locals 0

    .line 48
    iget-object p0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    return-void
.end method

.method private addAddServicePreference()V
    .locals 2

    .line 182
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;

    move-result-object v0

    .line 183
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 186
    :cond_0
    return-void
.end method

.method public static getDefaultKey(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .line 213
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    const-string v0, "autofill_service"

    invoke-static {p0, v0}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 214
    if-eqz p0, :cond_0

    .line 215
    invoke-static {p0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object p0

    .line 216
    if-eqz p0, :cond_0

    .line 217
    invoke-virtual {p0}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 220
    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method

.method static synthetic lambda$onCreate$0(Landroid/app/Activity;Landroid/content/DialogInterface;I)V
    .locals 0

    .line 72
    const/4 p1, 0x0

    invoke-virtual {p0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 73
    invoke-virtual {p0}, Landroid/app/Activity;->finish()V

    .line 74
    return-void
.end method

.method private newAddServicePreferenceOrNull()Landroid/support/v7/preference/Preference;
    .locals 3

    .line 161
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service_search_uri"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 163
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 164
    const/4 v0, 0x0

    return-object v0

    .line 167
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 168
    new-instance v0, Landroid/support/v7/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getPrefContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 169
    const v2, 0x7f120a80    # @string/print_menu_item_add_service 'Add service'

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setTitle(I)V

    .line 170
    const v2, 0x7f08012f    # @drawable/ic_menu_add 'res/drawable/ic_menu_add.xml'

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setIcon(I)V

    .line 171
    const v2, 0x7ffffffe

    invoke-virtual {v0, v2}, Landroid/support/v7/preference/Preference;->setOrder(I)V

    .line 172
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setIntent(Landroid/content/Intent;)V

    .line 173
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 174
    return-object v0
.end method

.method private update()V
    .locals 0

    .line 145
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->updateCandidates()V

    .line 146
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->addAddServicePreference()V

    .line 147
    return-void
.end method


# virtual methods
.method protected getCandidates()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/settingslib/applications/DefaultAppInfo;",
            ">;"
        }
    .end annotation

    .line 190
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 191
    iget-object v1, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    sget-object v2, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->AUTOFILL_PROBE:Landroid/content/Intent;

    const/16 v3, 0x80

    invoke-virtual {v1, v2, v3}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 194
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 195
    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v4, v4, Landroid/content/pm/ServiceInfo;->permission:Ljava/lang/String;

    .line 196
    const-string v5, "android.permission.BIND_AUTOFILL_SERVICE"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 197
    new-instance v5, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v7, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    new-instance v8, Landroid/content/ComponentName;

    iget-object v9, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v9, v9, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v10, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v10, v10, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v8, v9, v10}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v5, v2, v6, v7, v8}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 200
    :cond_0
    const-string v5, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 202
    const-string v4, "DefaultAutofillPicker"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "AutofillService from \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v6, v6, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\' uses unsupported permission "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "android.permission.BIND_AUTOFILL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ". It works for now, but might not be supported on future releases"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    new-instance v4, Lcom/android/settingslib/applications/DefaultAppInfo;

    iget-object v5, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mPm:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget v6, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mUserId:I

    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v8, v8, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v3, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    iget-object v3, v3, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v2, v5, v6, v7}, Lcom/android/settingslib/applications/DefaultAppInfo;-><init>(Landroid/content/Context;Lcom/android/settingslib/wrapper/PackageManagerWrapper;ILandroid/content/ComponentName;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 208
    :cond_1
    goto :goto_0

    .line 209
    :cond_2
    return-object v0
.end method

.method protected getConfirmationMessage(Lcom/android/settingslib/widget/CandidateInfo;)Ljava/lang/CharSequence;
    .locals 4

    .line 230
    if-nez p1, :cond_0

    .line 231
    const/4 p1, 0x0

    return-object p1

    .line 233
    :cond_0
    invoke-virtual {p1}, Lcom/android/settingslib/widget/CandidateInfo;->loadLabel()Ljava/lang/CharSequence;

    move-result-object p1

    .line 234
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f12019c    # @string/autofill_confirmation_message '<b>Make sure you trust this app</b> <br/> <br/> <xliff:g id=app_name example=Google Autofill>%1$s</x ...'

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 236
    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p1

    return-object p1
.end method

.method protected getDefaultKey()Ljava/lang/String;
    .locals 1

    .line 225
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getDefaultKey(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 113
    const/16 v0, 0x318

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 108
    const v0, 0x7f150041    # @xml/default_autofill_settings 'res/xml/default_autofill_settings.xml'

    return v0
.end method

.method protected newConfirmationDialogFragment(Ljava/lang/String;Ljava/lang/CharSequence;)Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment$ConfirmationDialogFragment;
    .locals 1

    .line 84
    new-instance v0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;-><init>()V

    .line 86
    invoke-virtual {v0, p0, p1, p2}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker$AutofillPickerConfirmationDialogFragment;->init(Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;Ljava/lang/String;Ljava/lang/CharSequence;)V

    .line 87
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onCreate(Landroid/os/Bundle;)V

    .line 69
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 70
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "package_name"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 71
    new-instance v0, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$83FPzHGzIc3oGHojfgRT8534BXQ;

    invoke-direct {v0, p1}, Lcom/android/settings/applications/defaultapps/-$$Lambda$DefaultAutofillPicker$83FPzHGzIc3oGHojfgRT8534BXQ;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mCancelListener:Landroid/content/DialogInterface$OnClickListener;

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p1}, Landroid/app/Activity;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 78
    invoke-direct {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->update()V

    .line 79
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .line 151
    iget-object v0, p0, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->mSettingsPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 152
    invoke-super {p0}, Lcom/android/settings/applications/defaultapps/DefaultAppPickerFragment;->onDestroy()V

    .line 153
    return-void
.end method

.method protected setDefaultKey(Ljava/lang/String;)Z
    .locals 3

    .line 241
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "autofill_service"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 245
    invoke-virtual {p0}, Lcom/android/settings/applications/defaultapps/DefaultAutofillPicker;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 246
    if-eqz v0, :cond_1

    .line 247
    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package_name"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 248
    if-eqz v1, :cond_1

    .line 249
    if-eqz p1, :cond_0

    invoke-virtual {p1, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    goto :goto_0

    .line 250
    :cond_0
    const/4 p1, 0x0

    .line 251
    :goto_0
    invoke-virtual {v0, p1}, Landroid/app/Activity;->setResult(I)V

    .line 252
    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    .line 255
    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method protected shouldShowItemNone()Z
    .locals 1

    .line 118
    const/4 v0, 0x1

    return v0
.end method
