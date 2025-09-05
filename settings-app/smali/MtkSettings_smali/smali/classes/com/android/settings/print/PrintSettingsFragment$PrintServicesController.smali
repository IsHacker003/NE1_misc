.class final Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;
.super Ljava/lang/Object;
.source "PrintSettingsFragment.java"

# interfaces
.implements Landroid/app/LoaderManager$LoaderCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/print/PrintSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "PrintServicesController"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/app/LoaderManager$LoaderCallbacks<",
        "Ljava/util/List<",
        "Landroid/printservice/PrintServiceInfo;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/print/PrintSettingsFragment;


# direct methods
.method private constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;)V
    .locals 0

    .line 162
    iput-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/print/PrintSettingsFragment;Lcom/android/settings/print/PrintSettingsFragment$1;)V
    .locals 0

    .line 162
    invoke-direct {p0, p1}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;-><init>(Lcom/android/settings/print/PrintSettingsFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateLoader(ILandroid/os/Bundle;)Landroid/content/Loader;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Landroid/os/Bundle;",
            ")",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;"
        }
    .end annotation

    .line 165
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    .line 166
    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "print"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/print/PrintManager;

    .line 167
    if-eqz p1, :cond_0

    .line 168
    new-instance p2, Landroid/print/PrintServicesLoader;

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {v0}, Lcom/android/settings/print/PrintSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p2, p1, v0, v1}, Landroid/print/PrintServicesLoader;-><init>(Landroid/print/PrintManager;Landroid/content/Context;I)V

    return-object p2

    .line 171
    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic onLoadFinished(Landroid/content/Loader;Ljava/lang/Object;)V
    .locals 0

    .line 162
    check-cast p2, Ljava/util/List;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V

    return-void
.end method

.method public onLoadFinished(Landroid/content/Loader;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;)V"
        }
    .end annotation

    .line 178
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 179
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 180
    return-void

    .line 181
    :cond_0
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    const-string v0, "print_services_category"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    if-nez p1, :cond_1

    .line 182
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 185
    :cond_1
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object p1

    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceCategory;->removeAll()V

    .line 186
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    .line 187
    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$300(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/content/Context;

    move-result-object v0

    .line 188
    if-nez v0, :cond_2

    .line 189
    const-string p1, "PrintSettingsFragment"

    const-string p2, "No preference context, skip adding print services"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    return-void

    .line 193
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/printservice/PrintServiceInfo;

    .line 194
    new-instance v2, Landroid/support/v7/preference/Preference;

    invoke-direct {v2, v0}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 196
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v3

    invoke-virtual {v3, p1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 197
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    .line 200
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setKey(Ljava/lang/String;)V

    .line 202
    const-class v5, Lcom/android/settings/print/PrintServiceSettingsFragment;

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setFragment(Ljava/lang/String;)V

    .line 203
    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setPersistent(Z)V

    .line 205
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 206
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v6, 0x7f120a7c    # @string/print_feature_state_on 'On'

    invoke-virtual {v5, v6}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 208
    :cond_3
    iget-object v5, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    const v6, 0x7f120a7b    # @string/print_feature_state_off 'Off'

    invoke-virtual {v5, v6}, Lcom/android/settings/print/PrintSettingsFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 211
    :goto_1
    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->getResolveInfo()Landroid/content/pm/ResolveInfo;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 212
    if-eqz v5, :cond_4

    .line 213
    invoke-virtual {v2, v5}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 216
    :cond_4
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getExtras()Landroid/os/Bundle;

    move-result-object v5

    .line 217
    const-string v6, "EXTRA_CHECKED"

    invoke-virtual {v1}, Landroid/printservice/PrintServiceInfo;->isEnabled()Z

    move-result v1

    invoke-virtual {v5, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 218
    const-string v1, "EXTRA_TITLE"

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v1, "EXTRA_SERVICE_COMPONENT_NAME"

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v1, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    iget-object v1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v1}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 222
    goto/16 :goto_0

    .line 224
    :cond_5
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p1}, Lcom/android/settings/print/PrintSettingsFragment;->access$400(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    .line 225
    if-eqz p1, :cond_6

    .line 226
    iget-object p2, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {p2}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object p2

    invoke-virtual {p2, p1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 228
    :cond_6
    return-void
.end method

.method public onLoaderReset(Landroid/content/Loader;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Loader<",
            "Ljava/util/List<",
            "Landroid/printservice/PrintServiceInfo;",
            ">;>;)V"
        }
    .end annotation

    .line 232
    iget-object p1, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-virtual {p1}, Lcom/android/settings/print/PrintSettingsFragment;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/print/PrintSettingsFragment$PrintServicesController;->this$0:Lcom/android/settings/print/PrintSettingsFragment;

    invoke-static {v0}, Lcom/android/settings/print/PrintSettingsFragment;->access$200(Lcom/android/settings/print/PrintSettingsFragment;)Landroid/support/v7/preference/PreferenceCategory;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 233
    return-void
.end method
