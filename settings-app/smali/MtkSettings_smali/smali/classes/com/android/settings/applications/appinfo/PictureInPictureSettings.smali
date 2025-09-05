.class public Lcom/android/settings/applications/appinfo/PictureInPictureSettings;
.super Lcom/android/settings/notification/EmptyTextSettings;
.source "PictureInPictureSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;
    }
.end annotation


# static fields
.field static final IGNORE_PACKAGE_LIST:Ljava/util/List;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIconDrawableFactory:Landroid/util/IconDrawableFactory;

.field private mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 53
    const-class v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->TAG:Ljava/lang/String;

    .line 55
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    .line 57
    sget-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 117
    invoke-direct {p0}, Lcom/android/settings/notification/EmptyTextSettings;-><init>()V

    .line 119
    return-void
.end method

.method public static checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z
    .locals 3

    .line 101
    sget-object v0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->IGNORE_PACKAGE_LIST:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 102
    return v0

    .line 107
    :cond_0
    if-eqz p1, :cond_2

    .line 108
    array-length p0, p1

    const/4 v1, 0x1

    sub-int/2addr p0, v1

    :goto_0
    if-ltz p0, :cond_2

    .line 109
    aget-object v2, p1, p0

    invoke-virtual {v2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    return v1

    .line 108
    :cond_1
    add-int/lit8 p0, p0, -0x1

    goto :goto_0

    .line 114
    :cond_2
    return v0
.end method


# virtual methods
.method collectPipApps(I)Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Landroid/content/pm/ApplicationInfo;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 201
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getProfiles(I)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 202
    iget v2, v2, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 203
    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 206
    iget-object v2, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    const/4 v3, 0x1

    invoke-virtual {v2, v3, v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getInstalledPackagesAsUser(II)Ljava/util/List;

    move-result-object v2

    .line 208
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/PackageInfo;

    .line 209
    iget-object v4, v3, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    iget-object v5, v3, Landroid/content/pm/PackageInfo;->activities:[Landroid/content/pm/ActivityInfo;

    invoke-static {v4, v5}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->checkPackageHasPictureInPictureActivities(Ljava/lang/String;[Landroid/content/pm/ActivityInfo;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 211
    new-instance v4, Landroid/util/Pair;

    iget-object v3, v3, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v4, v3, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 213
    :cond_1
    goto :goto_2

    .line 214
    :cond_2
    goto :goto_1

    .line 215
    :cond_3
    return-object v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 191
    const/16 v0, 0x32c

    return v0
.end method

.method protected getPreferenceScreenResId()I
    .locals 1

    .line 186
    const v0, 0x7f15007d    # @xml/picture_in_picture_settings 'res/xml/picture_in_picture_settings.xml'

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 128
    invoke-super {p0, p1}, Lcom/android/settings/notification/EmptyTextSettings;->onCreate(Landroid/os/Bundle;)V

    .line 130
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    .line 131
    new-instance p1, Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    iget-object v0, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-direct {p1, v0}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;-><init>(Landroid/content/pm/PackageManager;)V

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    .line 132
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mUserManager:Landroid/os/UserManager;

    .line 133
    iget-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mContext:Landroid/content/Context;

    invoke-static {p1}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    .line 134
    return-void
.end method

.method public onResume()V
    .locals 11

    .line 138
    invoke-super {p0}, Lcom/android/settings/notification/EmptyTextSettings;->onResume()V

    .line 141
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 142
    invoke-virtual {v0}, Landroid/support/v7/preference/PreferenceScreen;->removeAll()V

    .line 146
    iget-object v1, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mPackageManager:Lcom/android/settingslib/wrapper/PackageManagerWrapper;

    invoke-virtual {v1}, Lcom/android/settingslib/wrapper/PackageManagerWrapper;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 147
    nop

    .line 148
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->collectPipApps(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 149
    new-instance v3, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;

    invoke-direct {v3, v1}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$AppComparator;-><init>(Landroid/content/pm/PackageManager;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 152
    invoke-virtual {p0}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v3

    .line 153
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/Pair;

    .line 154
    iget-object v5, v4, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    .line 155
    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 156
    invoke-static {v4}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v6

    .line 157
    iget-object v7, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 158
    invoke-virtual {v5, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    .line 160
    new-instance v9, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v9, v3}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 161
    iget-object v10, p0, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->mIconDrawableFactory:Landroid/util/IconDrawableFactory;

    invoke-virtual {v10, v5, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 162
    invoke-virtual {v1, v8, v6}, Landroid/content/pm/PackageManager;->getUserBadgedLabel(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 163
    iget v4, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3, v4, v7}, Lcom/android/settings/applications/appinfo/PictureInPictureDetails;->getPreferenceSummary(Landroid/content/Context;ILjava/lang/String;)I

    move-result v4

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setSummary(I)V

    .line 165
    new-instance v4, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$1;

    invoke-direct {v4, p0, v7, v5}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings$1;-><init>(Lcom/android/settings/applications/appinfo/PictureInPictureSettings;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)V

    invoke-virtual {v9, v4}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 174
    invoke-virtual {v0, v9}, Landroid/support/v7/preference/PreferenceScreen;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 175
    goto :goto_0

    .line 176
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0

    .line 180
    invoke-super {p0, p1, p2}, Lcom/android/settings/notification/EmptyTextSettings;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 181
    const p1, 0x7f120a27    # @string/picture_in_picture_empty_text 'No installed apps support Picture-in-picture'

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/appinfo/PictureInPictureSettings;->setEmptyText(I)V

    .line 182
    return-void
.end method
