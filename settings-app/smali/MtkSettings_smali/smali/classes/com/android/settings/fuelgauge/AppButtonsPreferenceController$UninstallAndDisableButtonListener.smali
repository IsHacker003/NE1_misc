.class Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;
.super Ljava/lang/Object;
.source "AppButtonsPreferenceController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UninstallAndDisableButtonListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;


# direct methods
.method private constructor <init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V
    .locals 0

    .line 200
    iput-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$1;)V
    .locals 0

    .line 200
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 204
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$200(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v1, v1, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyManager;->packageHasActiveAdmins(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)V

    .line 208
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const-class v3, Lcom/android/settings/DeviceAdminAdd;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 209
    const-string v2, "android.app.extra.DEVICE_ADMIN_PACKAGE_NAME"

    invoke-virtual {v0, v2, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 211
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    const/16 v3, 0x369

    new-array v1, v1, [Landroid/util/Pair;

    invoke-virtual {p1, v2, v3, v1}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 213
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$700(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/app/Fragment;

    move-result-object p1

    iget-object v1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$600(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 214
    return-void

    .line 216
    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 217
    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 218
    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$800(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I

    move-result v2

    .line 217
    invoke-static {v0, p1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfUninstallBlocked(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    .line 219
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$900(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_2

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 220
    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v4}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$800(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)I

    move-result v4

    invoke-static {v2, p1, v4}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_0

    .line 221
    :cond_1
    move v2, v1

    goto :goto_1

    .line 220
    :cond_2
    :goto_0
    nop

    .line 221
    move v2, v3

    :goto_1
    if-eqz v0, :cond_3

    if-nez v2, :cond_3

    .line 222
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object p1

    invoke-static {p1, v0}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto/16 :goto_3

    .line 223
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/2addr v0, v3

    if-eqz v0, :cond_7

    .line 224
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object p1, p1, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean p1, p1, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz p1, :cond_5

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1000(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 228
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1100(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1200(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Z

    move-result p1

    if-eqz p1, :cond_4

    .line 229
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1, v3}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;I)V

    goto :goto_3

    .line 231
    :cond_4
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1300(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;I)V

    goto :goto_3

    .line 234
    :cond_5
    iget-object p1, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {p1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$500(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object p1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    .line 235
    invoke-static {v0}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Lcom/android/settings/SettingsActivity;

    move-result-object v0

    .line 236
    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v2, v2, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-boolean v2, v2, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v2, :cond_6

    .line 237
    const/16 v2, 0x36a

    goto :goto_2

    .line 238
    :cond_6
    const/16 v2, 0x36b

    :goto_2
    new-array v3, v1, [Landroid/util/Pair;

    .line 234
    invoke-virtual {p1, v0, v2, v3}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;I[Landroid/util/Pair;)V

    .line 239
    new-instance p1, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v2, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-static {v2}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->access$1400(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;)Landroid/content/pm/PackageManager;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p1, v0, v2, v3, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$DisableChangerRunnable;-><init>(Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;Landroid/content/pm/PackageManager;Ljava/lang/String;I)V

    invoke-static {p1}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    goto :goto_3

    .line 242
    :cond_7
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v2, 0x800000

    and-int/2addr v0, v2

    if-nez v0, :cond_8

    .line 243
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v3, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    goto :goto_3

    .line 245
    :cond_8
    iget-object v0, p0, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController$UninstallAndDisableButtonListener;->this$0:Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;

    invoke-virtual {v0, p1, v1, v1}, Lcom/android/settings/fuelgauge/AppButtonsPreferenceController;->uninstallPkg(Ljava/lang/String;ZZ)V

    .line 247
    :goto_3
    return-void
.end method
