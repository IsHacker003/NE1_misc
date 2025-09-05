.class public Lcom/android/settings/applications/DirectoryAccessDetails;
.super Lcom/android/settings/applications/AppInfoBase;
.source "DirectoryAccessDetails.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;
    }
.end annotation


# instance fields
.field private mCreated:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Lcom/android/settings/applications/AppInfoBase;-><init>()V

    return-void
.end method

.method public static synthetic lambda$newPreference$1(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 7

    .line 267
    const-class p6, Ljava/lang/Boolean;

    invoke-virtual {p6, p7}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p6

    const/4 v0, 0x1

    if-nez p6, :cond_0

    .line 269
    const-string p1, "DirectoryAccessDetails"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Invalid value from switch: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v0

    .line 272
    :cond_0
    check-cast p7, Ljava/lang/Boolean;

    invoke-virtual {p7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p6

    .line 274
    move-object v1, p0

    move-object v2, p1

    move v3, p6

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/settings/applications/DirectoryAccessDetails;->resetDoNotAskAgain(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    if-eqz p5, :cond_1

    .line 277
    nop

    .line 278
    xor-int/lit8 p1, p6, 0x1

    invoke-interface {p5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/support/v14/preference/SwitchPreference;

    .line 279
    invoke-virtual {p3, p1}, Landroid/support/v14/preference/SwitchPreference;->setVisible(Z)V

    .line 280
    goto :goto_0

    .line 282
    :cond_1
    return v0
.end method

.method public static synthetic lambda$refreshUi$0(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;Landroid/support/v7/preference/PreferenceCategory;Ljava/util/Set;Landroid/util/Pair;)V
    .locals 10

    .line 247
    move-object/from16 v0, p7

    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v7, v1

    check-cast v7, Ljava/lang/String;

    .line 248
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v3, 0x1

    aput-object v7, v2, v3

    .line 249
    const v3, 0x7f120543    # @string/directory_on_volume '%1$s (%2$s)'

    invoke-virtual {v1, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 250
    move-object v1, p4

    iget-object v6, v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    .line 251
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v5, p3

    invoke-direct/range {v2 .. v9}, Lcom/android/settings/applications/DirectoryAccessDetails;->newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v0

    .line 253
    move-object v1, p5

    invoke-virtual {v1, v0}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 254
    move-object/from16 v1, p6

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 255
    return-void
.end method

.method private newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/util/Set<",
            "Landroid/support/v14/preference/SwitchPreference;",
            ">;)",
            "Landroid/support/v14/preference/SwitchPreference;"
        }
    .end annotation

    .line 262
    new-instance v0, Landroid/support/v14/preference/SwitchPreference;

    move-object v3, p1

    invoke-direct {v0, v3}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 263
    const-string v1, "%s:%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p4, v2, v4

    const/4 v4, 0x1

    aput-object p5, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setKey(Ljava/lang/String;)V

    .line 264
    move-object v1, p2

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 265
    move v1, p6

    invoke-virtual {v0, v1}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    .line 266
    new-instance v8, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;

    move-object v1, v8

    move-object v2, p0

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p7

    invoke-direct/range {v1 .. v7}, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$lMkU9x3CDhpq6XQS106C_-FREgc;-><init>(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/util/Set;)V

    invoke-virtual {v0, v8}, Landroid/support/v14/preference/SwitchPreference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 284
    return-object v0
.end method

.method private resetDoNotAskAgain(Landroid/content/Context;ZLandroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 290
    const-string v0, "DirectoryAccessDetails"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Asking "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " to update "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    .line 294
    const-string v2, "granted"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 295
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const/4 p2, 0x3

    new-array p2, p2, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, p2, v3

    aput-object p4, p2, v1

    const/4 v1, 0x2

    aput-object p5, p2, v1

    const/4 v1, 0x0

    invoke-virtual {p1, p3, v0, v1, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    .line 298
    const-string p2, "DirectoryAccessDetails"

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Updated "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " entries for "

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "/"

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    return-void
.end method


# virtual methods
.method protected createDialog(II)Landroid/app/AlertDialog;
    .locals 0

    .line 304
    const/4 p1, 0x0

    return-object p1
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 309
    const/16 v0, 0x504

    return v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onActivityCreated(Landroid/os/Bundle;)V

    .line 95
    iget-boolean p1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mCreated:Z

    if-eqz p1, :cond_0

    .line 96
    const-string p1, "DirectoryAccessDetails"

    const-string v0, "onActivityCreated(): ignoring duplicate call"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 97
    return-void

    .line 99
    :cond_0
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mCreated:Z

    .line 100
    iget-object p1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    if-nez p1, :cond_1

    .line 101
    const-string p1, "DirectoryAccessDetails"

    const-string v0, "onActivityCreated(): no package info"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 102
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getActivity()Landroid/app/Activity;

    move-result-object p1

    .line 105
    const/4 v0, 0x0

    .line 106
    invoke-static {p1, p0, v0}, Lcom/android/settings/widget/EntityHeaderController;->newInstance(Landroid/app/Activity;Landroid/app/Fragment;Landroid/view/View;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 107
    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getListView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/EntityHeaderController;->setRecyclerView(Landroid/support/v7/widget/RecyclerView;Lcom/android/settingslib/core/lifecycle/Lifecycle;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 108
    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v2, v2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 109
    invoke-virtual {v1, v2}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 108
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIcon(Landroid/graphics/drawable/Drawable;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPm:Landroid/content/pm/PackageManager;

    .line 110
    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setLabel(Ljava/lang/CharSequence;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 111
    invoke-static {v1}, Lcom/android/settingslib/applications/AppUtils;->isInstant(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setIsInstantApp(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    .line 112
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setPackageName(Ljava/lang/String;)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageInfo:Landroid/content/pm/PackageInfo;

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 113
    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setUid(I)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 114
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/EntityHeaderController;->setHasAppInfoLink(Z)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 115
    invoke-virtual {v0, v1, v1}, Lcom/android/settings/widget/EntityHeaderController;->setButtonActions(II)Lcom/android/settings/widget/EntityHeaderController;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/settings/widget/EntityHeaderController;->done(Landroid/app/Activity;Landroid/content/Context;)Lcom/android/settings/applications/LayoutPreference;

    move-result-object p1

    .line 117
    invoke-virtual {p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 118
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/applications/AppInfoBase;->onCreate(Landroid/os/Bundle;)V

    .line 124
    const p1, 0x7f150050    # @xml/directory_access_details 'res/xml/directory_access_details.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/DirectoryAccessDetails;->addPreferencesFromResource(I)V

    .line 126
    return-void
.end method

.method protected refreshUi()Z
    .locals 20

    .line 130
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPrefContext()Landroid/content/Context;

    move-result-object v9

    .line 131
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/DirectoryAccessDetails;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v10

    .line 132
    invoke-virtual {v10}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 134
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    .line 136
    new-instance v1, Landroid/net/Uri$Builder;

    invoke-direct {v1}, Landroid/net/Uri$Builder;-><init>()V

    const-string v2, "content"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->scheme(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "com.android.documentsui.scopedAccess"

    .line 137
    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->authority(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "permissions"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    const-string v2, "*"

    invoke-virtual {v1, v2}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v1

    .line 138
    invoke-virtual {v1}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v12

    .line 140
    invoke-virtual {v9}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Landroid/os/storage/StorageVolume$ScopedAccessProviderContract;->TABLE_PERMISSIONS_COLUMNS:[Ljava/lang/String;

    const/4 v13, 0x1

    new-array v6, v13, [Ljava/lang/String;

    iget-object v1, v0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    const/4 v14, 0x0

    aput-object v1, v6, v14

    const/4 v5, 0x0

    const/4 v7, 0x0

    move-object v3, v12

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v15

    .line 142
    const/16 v16, 0x0

    if-nez v15, :cond_1

    .line 143
    :try_start_0
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Didn\'t get cursor for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    nop

    .line 196
    if-eqz v15, :cond_0

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 144
    :cond_0
    return v13

    .line 196
    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object/from16 v2, v16

    goto/16 :goto_6

    .line 140
    :catch_0
    move-exception v0

    move-object/from16 v16, v0

    goto/16 :goto_5

    .line 146
    :cond_1
    :try_start_1
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I

    move-result v1

    .line 147
    if-nez v1, :cond_3

    .line 150
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No permissions for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, v0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    nop

    .line 196
    if-eqz v15, :cond_2

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 151
    :cond_2
    return v13

    .line 154
    :cond_3
    :goto_0
    :try_start_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 155
    invoke-interface {v15, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 156
    invoke-interface {v15, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 157
    const/4 v3, 0x2

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 158
    const/4 v3, 0x3

    invoke-interface {v15, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    if-ne v3, v13, :cond_4

    .line 160
    move v7, v13

    goto :goto_1

    .line 158
    :cond_4
    nop

    .line 160
    move v7, v14

    :goto_1
    const-string v3, "DirectoryAccessDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pkg:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " uuid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " dir: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, " granted:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    iget-object v3, v0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 166
    const-string v3, "DirectoryAccessDetails"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Ignoring "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "/"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " due to package mismatch: expected "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcom/android/settings/applications/DirectoryAccessDetails;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", got "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    goto/16 :goto_0

    .line 171
    :cond_5
    if-nez v2, :cond_7

    .line 172
    if-nez v6, :cond_6

    .line 174
    const-string v1, "DirectoryAccessDetails"

    const-string v2, "Ignoring permission on primary storage root"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    :cond_6
    const/4 v5, 0x0

    const/4 v8, 0x0

    move-object v1, v0

    move-object v2, v9

    move-object v3, v6

    move-object v4, v12

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/DirectoryAccessDetails;->newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v10, v1}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    goto :goto_2

    .line 182
    :cond_7
    invoke-interface {v11, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    .line 183
    if-nez v1, :cond_8

    .line 184
    new-instance v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    invoke-direct {v1, v2}, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;-><init>(Ljava/lang/String;)V

    .line 185
    invoke-interface {v11, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    :cond_8
    if-nez v6, :cond_9

    .line 189
    iput-boolean v7, v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->granted:Z

    goto :goto_2

    .line 192
    :cond_9
    iget-object v1, v1, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->children:Ljava/util/List;

    new-instance v2, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-direct {v2, v6, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 195
    :goto_2
    goto/16 :goto_0

    .line 196
    :cond_a
    if-eqz v15, :cond_b

    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    .line 199
    :cond_b
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "external volumes: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-interface {v11}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 204
    return v13

    .line 210
    :cond_c
    const-class v1, Landroid/os/storage/StorageManager;

    invoke-virtual {v9, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    .line 211
    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumes()Ljava/util/List;

    move-result-object v2

    .line 212
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 213
    const-string v0, "DirectoryAccessDetails"

    const-string v1, "StorageManager returned no secondary volumes"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    return v13

    .line 216
    :cond_d
    new-instance v14, Ljava/util/HashMap;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    invoke-direct {v14, v3}, Ljava/util/HashMap;-><init>(I)V

    .line 217
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/storage/VolumeInfo;

    .line 218
    invoke-virtual {v3}, Landroid/os/storage/VolumeInfo;->getFsUuid()Ljava/lang/String;

    move-result-object v4

    .line 219
    if-nez v4, :cond_e

    goto :goto_3

    .line 221
    :cond_e
    invoke-virtual {v1, v3}, Landroid/os/storage/StorageManager;->getBestVolumeDescription(Landroid/os/storage/VolumeInfo;)Ljava/lang/String;

    move-result-object v5

    .line 222
    if-nez v5, :cond_f

    .line 223
    const-string v5, "DirectoryAccessDetails"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No description for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, "; using uuid instead: "

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 224
    nop

    .line 226
    move-object v5, v4

    :cond_f
    invoke-interface {v14, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 227
    goto :goto_3

    .line 229
    :cond_10
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UUID -> name mapping: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    invoke-interface {v11}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_4
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_12

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v15, v1

    check-cast v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;

    .line 233
    iget-object v1, v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    invoke-interface {v14, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object/from16 v16, v1

    check-cast v16, Ljava/lang/String;

    .line 234
    if-nez v16, :cond_11

    .line 235
    const-string v1, "DirectoryAccessDetails"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Ignoring entry for invalid UUID: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    goto :goto_4

    .line 239
    :cond_11
    new-instance v8, Landroid/support/v7/preference/PreferenceCategory;

    invoke-direct {v8, v9}, Landroid/support/v7/preference/PreferenceCategory;-><init>(Landroid/content/Context;)V

    .line 240
    invoke-virtual {v10, v8}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 241
    new-instance v7, Ljava/util/HashSet;

    iget-object v1, v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->children:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v7, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 242
    iget-object v5, v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->uuid:Ljava/lang/String;

    const/4 v6, 0x0

    iget-boolean v4, v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->granted:Z

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, v16

    move/from16 v17, v4

    move-object v4, v12

    move-object/from16 v18, v7

    move/from16 v7, v17

    move-object v13, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/DirectoryAccessDetails;->newPreference(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ZLjava/util/Set;)Landroid/support/v14/preference/SwitchPreference;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/support/v7/preference/PreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 246
    iget-object v8, v15, Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;->children:Ljava/util/List;

    new-instance v7, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;

    move-object v1, v7

    move-object v2, v0

    move-object v3, v9

    move-object/from16 v4, v16

    move-object v5, v12

    move-object v6, v15

    move-object v15, v7

    move-object v7, v13

    move-object v13, v8

    move-object/from16 v8, v18

    invoke-direct/range {v1 .. v8}, Lcom/android/settings/applications/-$$Lambda$DirectoryAccessDetails$K0N0BhiTAIxLxuaXU9qwR-rLnAY;-><init>(Lcom/android/settings/applications/DirectoryAccessDetails;Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Lcom/android/settings/applications/DirectoryAccessDetails$ExternalVolume;Landroid/support/v7/preference/PreferenceCategory;Ljava/util/Set;)V

    invoke-interface {v13, v15}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 256
    nop

    .line 232
    const/4 v13, 0x1

    goto :goto_4

    .line 257
    :cond_12
    const/4 v0, 0x1

    return v0

    .line 140
    :goto_5
    :try_start_3
    throw v16
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 196
    :goto_6
    if-eqz v15, :cond_14

    if-eqz v2, :cond_13

    :try_start_4
    invoke-interface {v15}, Landroid/database/Cursor;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_7

    :catch_1
    move-exception v0

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    :cond_13
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    :cond_14
    :goto_7
    throw v1
.end method
