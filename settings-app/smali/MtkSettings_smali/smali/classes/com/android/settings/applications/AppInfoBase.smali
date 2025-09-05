.class public abstract Lcom/android/settings/applications/AppInfoBase;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "AppInfoBase.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;
    }
.end annotation


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field protected mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

.field protected mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field protected mAppsControlDisallowedBySystem:Z

.field protected mDpm:Landroid/app/admin/DevicePolicyManager;

.field protected mFinishing:Z

.field protected mListeningToPackageRemove:Z

.field protected mPackageInfo:Landroid/content/pm/PackageInfo;

.field protected mPackageName:Ljava/lang/String;

.field protected final mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

.field protected mPm:Landroid/content/pm/PackageManager;

.field protected mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

.field protected mState:Lcom/android/settingslib/applications/ApplicationsState;

.field protected mUsbManager:Landroid/hardware/usb/IUsbManager;

.field protected mUserId:I

.field protected mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-class v0, Lcom/android/settings/applications/AppInfoBase;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 56
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 290
    new-instance v0, Lcom/android/settings/applications/AppInfoBase$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/AppInfoBase$1;-><init>(Lcom/android/settings/applications/AppInfoBase;)V

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method public static startAppInfoFragment(Ljava/lang/Class;ILjava/lang/String;ILandroid/app/Fragment;II)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;I",
            "Ljava/lang/String;",
            "I",
            "Landroid/app/Fragment;",
            "II)V"
        }
    .end annotation

    .line 224
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v1, "package"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 226
    const-string p2, "uid"

    invoke-virtual {v0, p2, p3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 228
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p4}, Landroid/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p2, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    .line 229
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p2, p0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p6}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 231
    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    new-instance p1, Landroid/os/UserHandle;

    .line 233
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p2

    invoke-direct {p1, p2}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {p0, p1}, Lcom/android/settings/core/SubSettingLauncher;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 234
    invoke-virtual {p0, p4, p5}, Lcom/android/settings/core/SubSettingLauncher;->setResultListener(Landroid/app/Fragment;I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p0

    .line 235
    invoke-virtual {p0}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 236
    return-void
.end method


# virtual methods
.method protected abstract createDialog(II)Landroid/app/AlertDialog;
.end method

.method public onAllSizesComputed()V
    .locals 0

    .line 203
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .line 89
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 90
    const/4 p1, 0x0

    iput-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    .line 91
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 92
    invoke-static {p1}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    .line 93
    invoke-virtual {v0, p1}, Lcom/android/settings/overlay/FeatureFactory;->getApplicationFeatureProvider(Landroid/content/Context;)Lcom/android/settings/applications/ApplicationFeatureProvider;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mApplicationFeatureProvider:Lcom/android/settings/applications/ApplicationFeatureProvider;

    .line 94
    invoke-virtual {p1}, Landroid/app/Activity;->getApplication()Landroid/app/Application;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settingslib/applications/ApplicationsState;->getInstance(Landroid/app/Application;)Lcom/android/settingslib/applications/ApplicationsState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 95
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lcom/android/settingslib/applications/ApplicationsState;->newSession(Lcom/android/settingslib/applications/ApplicationsState$Callbacks;Landroid/arch/lifecycle/Lifecycle;)Lcom/android/settingslib/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mSession:Lcom/android/settingslib/applications/ApplicationsState$Session;

    .line 96
    const-string v0, "device_policy"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mDpm:Landroid/app/admin/DevicePolicyManager;

    .line 97
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserManager:Landroid/os/UserManager;

    .line 98
    invoke-virtual {p1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    .line 99
    const-string p1, "usb"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 100
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/AppInfoBase;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 102
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->retrieveAppEntry()Ljava/lang/String;

    .line 103
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->startListeningToPackageRemove()V

    .line 104
    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 122
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->stopListeningToPackageRemove()V

    .line 123
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 124
    return-void
.end method

.method public onLauncherInfoChanged()V
    .locals 0

    .line 208
    return-void
.end method

.method public onLoadEntriesCompleted()V
    .locals 0

    .line 213
    return-void
.end method

.method public onPackageIconChanged()V
    .locals 0

    .line 193
    return-void
.end method

.method public onPackageListChanged()V
    .locals 1

    .line 217
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 218
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 220
    :cond_0
    return-void
.end method

.method protected onPackageRemoved()V
    .locals 1

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finishAndRemoveTask()V

    .line 288
    return-void
.end method

.method public onPackageSizeChanged(Ljava/lang/String;)V
    .locals 0

    .line 198
    return-void
.end method

.method public onRebuildComplete(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/settingslib/applications/ApplicationsState$AppEntry;",
            ">;)V"
        }
    .end annotation

    .line 188
    return-void
.end method

.method public onResume()V
    .locals 3

    .line 108
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 109
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 111
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "no_control_apps"

    iget v2, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppsControlDisallowedBySystem:Z

    .line 114
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->refreshUi()Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    const/4 v0, 0x1

    invoke-virtual {p0, v0, v0}, Lcom/android/settings/applications/AppInfoBase;->setIntentAndFinish(ZZ)V

    .line 117
    :cond_0
    return-void
.end method

.method public onRunningStateChanged(Z)V
    .locals 0

    .line 183
    return-void
.end method

.method protected abstract refreshUi()Z
.end method

.method protected retrieveAppEntry()Ljava/lang/String;
    .locals 4

    .line 127
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 128
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 129
    if-nez v0, :cond_1

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getIntent()Landroid/content/Intent;

    move-result-object v0

    goto :goto_1

    :cond_1
    const-string v2, "intent"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 131
    :goto_1
    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    if-nez v2, :cond_2

    .line 132
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 133
    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    .line 136
    :cond_2
    if-eqz v0, :cond_3

    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 137
    const-string v2, "android.intent.extra.user_handle"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/os/UserHandle;

    .line 138
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    goto :goto_2

    .line 140
    :cond_3
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    .line 142
    :goto_2
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mState:Lcom/android/settingslib/applications/ApplicationsState;

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    iget v3, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v2, v3}, Lcom/android/settingslib/applications/ApplicationsState;->getEntry(Ljava/lang/String;I)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 143
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    if-eqz v0, :cond_4

    .line 146
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPm:Landroid/content/pm/PackageManager;

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const v2, 0x8001200

    iget v3, p0, Lcom/android/settings/applications/AppInfoBase;->mUserId:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 150
    :catch_0
    move-exception v0

    .line 151
    sget-object v1, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when retrieving package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/android/settings/applications/AppInfoBase;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 152
    :goto_3
    goto :goto_4

    .line 154
    :cond_4
    sget-object v0, Lcom/android/settings/applications/AppInfoBase;->TAG:Ljava/lang/String;

    const-string v2, "Missing AppEntry; maybe reinstalling?"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 155
    iput-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageInfo:Landroid/content/pm/PackageInfo;

    .line 158
    :goto_4
    iget-object v0, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method protected setIntentAndFinish(ZZ)V
    .locals 1

    .line 163
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 164
    const-string v0, "chg"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getActivity()Landroid/app/Activity;

    move-result-object p2

    check-cast p2, Lcom/android/settings/SettingsActivity;

    .line 166
    const/4 v0, -0x1

    invoke-virtual {p2, v0, p1}, Lcom/android/settings/SettingsActivity;->finishPreferencePanel(ILandroid/content/Intent;)V

    .line 167
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/AppInfoBase;->mFinishing:Z

    .line 168
    return-void
.end method

.method protected showDialogInner(II)V
    .locals 3

    .line 171
    invoke-static {p1, p2}, Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;->newInstance(II)Lcom/android/settings/applications/AppInfoBase$MyAlertDialogFragment;

    move-result-object p2

    .line 172
    const/4 v0, 0x0

    invoke-virtual {p2, p0, v0}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 173
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "dialog "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, v0, p1}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method protected startListeningToPackageRemove()V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    if-eqz v0, :cond_0

    .line 270
    return-void

    .line 272
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    .line 273
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 274
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 276
    return-void
.end method

.method protected stopListeningToPackageRemove()V
    .locals 2

    .line 279
    iget-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    if-nez v0, :cond_0

    .line 280
    return-void

    .line 282
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/AppInfoBase;->mListeningToPackageRemove:Z

    .line 283
    invoke-virtual {p0}, Lcom/android/settings/applications/AppInfoBase;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/AppInfoBase;->mPackageRemovedReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 284
    return-void
.end method
