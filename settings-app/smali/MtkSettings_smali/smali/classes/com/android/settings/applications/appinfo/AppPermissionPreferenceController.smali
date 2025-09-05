.class public Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;
.super Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;
.source "AppPermissionPreferenceController.java"


# static fields
.field private static final EXTRA_HIDE_INFO_BUTTON:Ljava/lang/String; = "hideInfoButton"

.field private static final TAG:Ljava/lang/String; = "PermissionPrefControl"


# instance fields
.field private mPackageName:Ljava/lang/String;

.field final mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 79
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/appinfo/AppInfoPreferenceControllerBase;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 41
    new-instance p1, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;

    invoke-direct {p1, p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController$1;-><init>(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    .line 80
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;)Landroid/content/Context;
    .locals 0

    .line 34
    iget-object p0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method private startManagePermissionsActivity()V
    .locals 4

    .line 102
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 103
    const-string v1, "android.intent.extra.PACKAGE_NAME"

    iget-object v2, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v2}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getAppEntry()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v2

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 104
    const-string v1, "hideInfoButton"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 106
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v3, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mParent:Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;

    invoke-virtual {v1, v0, v2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 109
    goto :goto_0

    .line 107
    :catch_0
    move-exception v0

    .line 108
    const-string v0, "PermissionPrefControl"

    const-string v1, "No app can handle android.intent.action.MANAGE_APP_PERMISSIONS"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    :goto_0
    return-void
.end method


# virtual methods
.method public handlePreferenceTreeClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 89
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 90
    invoke-direct {p0}, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->startManagePermissionsActivity()V

    .line 91
    const/4 p1, 0x1

    return p1

    .line 93
    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 97
    iput-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 2

    .line 84
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPackageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/appinfo/AppPermissionPreferenceController;->mPermissionCallback:Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;

    invoke-static {p1, v0, v1}, Lcom/android/settingslib/applications/PermissionsSummaryHelper;->getPermissionSummary(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/applications/PermissionsSummaryHelper$PermissionsResultCallback;)V

    .line 85
    return-void
.end method
