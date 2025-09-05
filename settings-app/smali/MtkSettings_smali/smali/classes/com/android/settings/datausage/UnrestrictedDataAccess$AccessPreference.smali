.class Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;
.super Lcom/android/settings/widget/AppSwitchPreference;
.source "UnrestrictedDataAccess.java"

# interfaces
.implements Lcom/android/settings/datausage/DataSaverBackend$Listener;


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/datausage/UnrestrictedDataAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AccessPreference"
.end annotation


# instance fields
.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

.field private final mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

.field final synthetic this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;


# direct methods
.method public constructor <init>(Lcom/android/settings/datausage/UnrestrictedDataAccess;Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 1

    .line 261
    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    .line 262
    invoke-direct {p0, p2}, Lcom/android/settings/widget/AppSwitchPreference;-><init>(Landroid/content/Context;)V

    .line 263
    const p1, 0x7f0d012b    # @layout/restricted_switch_widget 'res/layout/restricted_switch_widget.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setWidgetLayoutResource(I)V

    .line 264
    new-instance p1, Lcom/android/settingslib/RestrictedPreferenceHelper;

    const/4 v0, 0x0

    invoke-direct {p1, p2, p0, v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;-><init>(Landroid/content/Context;Landroid/support/v7/preference/Preference;Landroid/util/AttributeSet;)V

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    .line 265
    iput-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 266
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->extraInfo:Ljava/lang/Object;

    check-cast p1, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    .line 267
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 268
    iget-object p1, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object p1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object p3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget p3, p3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 269
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result p3

    .line 268
    invoke-static {p2, p1, p3}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfMeteredDataRestricted(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 270
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    .line 271
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 272
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 274
    :cond_0
    const-string p1, "UnrestrictedDataAccess"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "AccessPreference, no icon found for entry="

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 275
    iget-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-nez p3, :cond_1

    const-string p3, "null"

    goto :goto_0

    :cond_1
    iget-object p3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p3, p3, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    :goto_0
    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 274
    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :goto_1
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;
    .locals 0

    .line 255
    iget-object p0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    return-object p0
.end method

.method private setState()V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 318
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_2

    .line 319
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setChecked(Z)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isDisabledByAdmin()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 321
    const v0, 0x7f12054f    # @string/disabled_by_admin 'Disabled by admin'

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    goto :goto_0

    .line 322
    :cond_0
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_1

    .line 323
    const v0, 0x7f120b3c    # @string/restrict_background_blacklisted 'Background data is turned off'

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(I)V

    goto :goto_0

    .line 325
    :cond_1
    const-string v0, ""

    invoke-virtual {p0, v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 328
    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public getEntryForTest()Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 1
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .line 396
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public isDisabledByAdmin()Z
    .locals 1

    .line 391
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->isDisabledByAdmin()Z

    move-result v0

    return v0
.end method

.method public onAttached()V
    .locals 1

    .line 281
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onAttached()V

    .line 282
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->addListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 283
    return-void
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    .line 337
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference$1;-><init>(Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 349
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->isDisabledByAdmin()Z

    move-result v0

    .line 350
    const v1, 0x1020018    # @android:id/widget_frame

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 351
    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 352
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_1

    .line 354
    :cond_1
    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v3, v3, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v3, :cond_2

    .line 355
    const/4 v3, 0x4

    goto :goto_0

    .line 354
    :cond_2
    move v3, v2

    :goto_0
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 357
    :goto_1
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppSwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 359
    iget-object v1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v1, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 360
    const v1, 0x7f0a02af    # @id/restricted_icon

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 361
    const/16 v3, 0x8

    if-eqz v0, :cond_3

    .line 360
    move v4, v2

    goto :goto_2

    .line 361
    :cond_3
    nop

    .line 360
    move v4, v3

    :goto_2
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 362
    const v1, 0x1020040    # @android:id/switch_widget

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 363
    if-eqz v0, :cond_4

    .line 362
    move v2, v3

    goto :goto_3

    .line 363
    :cond_4
    nop

    .line 362
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 364
    return-void
.end method

.method public onBlacklistStatusChanged(IZ)V
    .locals 1

    .line 380
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 381
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, p1, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    .line 382
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 384
    :cond_0
    return-void
.end method

.method protected onClick()V
    .locals 5

    .line 295
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iget-boolean v0, v0, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverBlacklisted:Z

    if-eqz v0, :cond_0

    .line 297
    const-class v0, Lcom/android/settings/datausage/AppDataUsage;

    const v1, 0x7f120114    # @string/app_data_usage 'App data usage'

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    iget-object v4, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/settings/applications/appinfo/AppInfoDashboardFragment;->startAppInfoFragment(Ljava/lang/Class;ILandroid/os/Bundle;Lcom/android/settings/SettingsPreferenceFragment;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V

    goto :goto_0

    .line 304
    :cond_0
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onClick()V

    .line 306
    :goto_0
    return-void
.end method

.method public onDataSaverChanged(Z)V
    .locals 0

    .line 368
    return-void
.end method

.method public onDetached()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->this$0:Lcom/android/settings/datausage/UnrestrictedDataAccess;

    invoke-static {v0}, Lcom/android/settings/datausage/UnrestrictedDataAccess;->access$200(Lcom/android/settings/datausage/UnrestrictedDataAccess;)Lcom/android/settings/datausage/DataSaverBackend;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/settings/datausage/DataSaverBackend;->remListener(Lcom/android/settings/datausage/DataSaverBackend$Listener;)V

    .line 288
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->onDetached()V

    .line 289
    return-void
.end method

.method public onWhitelistStatusChanged(IZ)V
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, p1, :cond_0

    .line 373
    iget-object p1, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mState:Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;

    iput-boolean p2, p1, Lcom/android/settings/datausage/AppStateDataUsageBridge$DataUsageState;->isDataSaverWhitelisted:Z

    .line 374
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->reuse()V

    .line 376
    :cond_0
    return-void
.end method

.method public performClick()V
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0}, Lcom/android/settingslib/RestrictedPreferenceHelper;->performClick()Z

    move-result v0

    if-nez v0, :cond_0

    .line 311
    invoke-super {p0}, Lcom/android/settings/widget/AppSwitchPreference;->performClick()V

    .line 313
    :cond_0
    return-void
.end method

.method public reuse()V
    .locals 0

    .line 331
    invoke-direct {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->setState()V

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->notifyChanged()V

    .line 333
    return-void
.end method

.method public setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 1

    .line 387
    iget-object v0, p0, Lcom/android/settings/datausage/UnrestrictedDataAccess$AccessPreference;->mHelper:Lcom/android/settingslib/RestrictedPreferenceHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/RestrictedPreferenceHelper;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)Z

    .line 388
    return-void
.end method
