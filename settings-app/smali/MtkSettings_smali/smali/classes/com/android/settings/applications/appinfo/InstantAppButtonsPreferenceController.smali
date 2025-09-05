.class public Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;
.super Lcom/android/settings/core/BasePreferenceController;
.source "InstantAppButtonsPreferenceController.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Lcom/android/settingslib/core/lifecycle/LifecycleObserver;
.implements Lcom/android/settingslib/core/lifecycle/events/OnCreateOptionsMenu;
.implements Lcom/android/settingslib/core/lifecycle/events/OnOptionsItemSelected;
.implements Lcom/android/settingslib/core/lifecycle/events/OnPrepareOptionsMenu;


# static fields
.field private static final KEY_INSTANT_APP_BUTTONS:Ljava/lang/String; = "instant_app_buttons"

.field private static final META_DATA_DEFAULT_URI:Ljava/lang/String; = "default-url"


# instance fields
.field private mInstallMenu:Landroid/view/MenuItem;

.field private mLaunchUri:Ljava/lang/String;

.field private final mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private final mPackageName:Ljava/lang/String;

.field private final mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

.field private mPreference:Lcom/android/settings/applications/LayoutPreference;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V
    .locals 1

    .line 69
    const-string v0, "instant_app_buttons"

    invoke-direct {p0, p1, v0}, Lcom/android/settings/core/BasePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 70
    iput-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    .line 71
    iput-object p3, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    .line 72
    new-instance p2, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    invoke-direct {p2, p1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 73
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->getDefaultLaunchUri()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    .line 74
    if-eqz p4, :cond_0

    .line 75
    invoke-virtual {p4, p0}, Lcom/android/settingslib/core/lifecycle/Lifecycle;->addObserver(Landroid/arch/lifecycle/LifecycleObserver;)V

    .line 77
    :cond_0
    return-void
.end method

.method private getDefaultLaunchUri()Ljava/lang/String;
    .locals 3

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 170
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 171
    const-string v2, "android.intent.category.LAUNCHER"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 172
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 173
    const v2, 0x800080

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 175
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 176
    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 177
    if-eqz v1, :cond_0

    .line 178
    const-string v2, "default-url"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 179
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 180
    return-object v1

    .line 183
    :cond_0
    goto :goto_0

    .line 184
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private initButtons(Landroid/view/View;)V
    .locals 4

    .line 144
    const v0, 0x7f0a01b6    # @id/install

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 145
    const v1, 0x7f0a00bd    # @id/clear_data

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    .line 146
    const v2, 0x7f0a01e5    # @id/launch

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    .line 147
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/16 v3, 0x8

    if-nez v2, :cond_0

    .line 148
    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    const-string v2, "android.intent.category.BROWSABLE"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 151
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 153
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 154
    new-instance v2, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$2vM5nla3CEsaIUNVk7alr9UEbBA;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$2vM5nla3CEsaIUNVk7alr9UEbBA;-><init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 155
    goto :goto_0

    .line 156
    :cond_0
    invoke-virtual {p1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 157
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v2}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 158
    if-eqz p1, :cond_1

    .line 159
    new-instance v2, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$oBWjqqdf33bi3sDY5lE6TGLlFJM;

    invoke-direct {v2, p0, p1}, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$oBWjqqdf33bi3sDY5lE6TGLlFJM;-><init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 161
    :cond_1
    const/4 p1, 0x0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 164
    :goto_0
    new-instance p1, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$f8slAx9lBDdGAmwfjMjp59JCarA;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/appinfo/-$$Lambda$InstantAppButtonsPreferenceController$f8slAx9lBDdGAmwfjMjp59JCarA;-><init>(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;)V

    invoke-virtual {v1, p1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    return-void
.end method

.method public static synthetic lambda$initButtons$0(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 154
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initButtons$1(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/content/Intent;Landroid/view/View;)V
    .locals 0

    .line 159
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {p2, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic lambda$initButtons$2(Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;Landroid/view/View;)V
    .locals 2

    .line 165
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    const/4 v0, 0x4

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->showDialogInner(II)V

    return-void
.end method


# virtual methods
.method createDialog(I)Landroid/app/AlertDialog;
    .locals 3

    .line 131
    const/4 v0, 0x0

    const/4 v1, 0x4

    if-ne p1, v1, :cond_0

    .line 132
    new-instance p1, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {p1, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 133
    const v1, 0x7f1203b1    # @string/clear_instant_app_data 'Clear app'

    invoke-virtual {p1, v1, p0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v2, 0x7f120361    # @string/cancel 'Cancel'

    .line 134
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 135
    invoke-virtual {p1, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    const v1, 0x7f1203b0    # @string/clear_instant_app_confirmation 'Do you want to remove this instant app?'

    .line 136
    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 137
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 138
    return-object p1

    .line 140
    :cond_0
    return-object v0
.end method

.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 87
    invoke-super {p0, p1}, Lcom/android/settings/core/BasePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 88
    const-string v0, "instant_app_buttons"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settings/applications/LayoutPreference;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPreference:Lcom/android/settings/applications/LayoutPreference;

    .line 89
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPreference:Lcom/android/settings/applications/LayoutPreference;

    const v0, 0x7f0a01b8    # @id/instant_app_button_container

    invoke-virtual {p1, v0}, Lcom/android/settings/applications/LayoutPreference;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->initButtons(Landroid/view/View;)V

    .line 90
    return-void
.end method

.method public getAvailabilityStatus()I
    .locals 1

    .line 81
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getPackageInfo()Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v0}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 82
    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x3

    .line 81
    :goto_0
    return v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 4

    .line 124
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v2, v1, [Landroid/util/Pair;

    .line 125
    const/16 v3, 0x39b

    invoke-virtual {p1, p2, v3, v0, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 126
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageManagerWrapper:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    .line 127
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    .line 126
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2, v1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->deletePackageAsUser(Ljava/lang/String;Landroid/content/pm/IPackageDeleteObserver;II)V

    .line 128
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .line 94
    iget-object p2, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mLaunchUri:Ljava/lang/String;

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 95
    const/4 p2, 0x3

    const/4 v0, 0x2

    const v1, 0x7f120758    # @string/install_text 'Install'

    const/4 v2, 0x0

    invoke-interface {p1, v2, p2, v0, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object p1

    .line 96
    invoke-interface {p1, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 98
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1

    .line 102
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_1

    .line 103
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    .line 104
    if-eqz p1, :cond_0

    .line 105
    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v0, p1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startActivity(Landroid/content/Intent;)V

    .line 107
    :cond_0
    const/4 p1, 0x1

    return p1

    .line 109
    :cond_1
    const/4 p1, 0x0

    return p1
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 1

    .line 114
    const/4 v0, 0x3

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mInstallMenu:Landroid/view/MenuItem;

    .line 115
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mInstallMenu:Landroid/view/MenuItem;

    if-eqz p1, :cond_0

    .line 116
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mPackageName:Ljava/lang/String;

    invoke-static {p1, v0}, Lcom/android/settings/applications/AppStoreUtil;->getAppStoreLink(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    if-nez p1, :cond_0

    .line 117
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/InstantAppButtonsPreferenceController;->mInstallMenu:Landroid/view/MenuItem;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 120
    :cond_0
    return-void
.end method
