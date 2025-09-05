.class public Lcom/android/settings/users/UserSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "UserSettings.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings/search/Indexable;
.implements Lcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/users/UserSettings$SummaryProvider;
    }
.end annotation


# static fields
.field public static final SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

.field public static final SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

.field private static sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddUser:Lcom/android/settingslib/RestrictedPreference;

.field private mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

.field private mAddedUserId:I

.field private mAddingUser:Z

.field private mAddingUserName:Ljava/lang/String;

.field private mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

.field private mDeletingUserDialog:Landroid/app/ProgressDialog;

.field private mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

.field private mHandler:Landroid/os/Handler;

.field private mMePreference:Lcom/android/settings/users/UserPreference;

.field private mRemovingUserId:I

.field private mShouldUpdateUserList:Z

.field private mUpdateUserListOperate:Z

.field private mUserCaps:Lcom/android/settings/users/UserCapabilities;

.field private mUserChangeReceiver:Landroid/content/BroadcastReceiver;

.field private mUserIcons:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

.field private final mUserLock:Ljava/lang/Object;

.field private mUserManager:Landroid/os/UserManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 148
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    .line 1198
    sget-object v0, Lcom/android/settings/users/-$$Lambda$UserSettings$Eg6plZiaX7G7UUvF4Q46lU8PMRw;->INSTANCE:Lcom/android/settings/users/-$$Lambda$UserSettings$Eg6plZiaX7G7UUvF4Q46lU8PMRw;

    sput-object v0, Lcom/android/settings/users/UserSettings;->SUMMARY_PROVIDER_FACTORY:Lcom/android/settings/dashboard/SummaryLoader$SummaryProviderFactory;

    .line 1201
    new-instance v0, Lcom/android/settings/users/UserSettings$14;

    invoke-direct {v0}, Lcom/android/settings/users/UserSettings$14;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserSettings;->SEARCH_INDEX_DATA_PROVIDER:Lcom/android/settings/search/Indexable$SearchIndexProvider;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 139
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 140
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 144
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 145
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    .line 147
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    .line 150
    new-instance v1, Lcom/android/settings/users/EditUserInfoController;

    invoke-direct {v1}, Lcom/android/settings/users/EditUserInfoController;-><init>()V

    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    .line 163
    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mUpdateUserListOperate:Z

    .line 165
    new-instance v0, Lcom/android/settings/users/UserSettings$1;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$1;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    .line 182
    new-instance v0, Lcom/android/settings/users/UserSettings$2;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$2;-><init>(Lcom/android/settings/users/UserSettings;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onUserCreated(I)V

    return-void
.end method

.method static synthetic access$1000(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    return p0
.end method

.method static synthetic access$1200(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->switchUserNow(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/android/settings/users/UserSettings;I)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->launchChooseLockscreen()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->exitGuest()V

    return-void
.end method

.method static synthetic access$1600(Lcom/android/settings/users/UserSettings;)Ljava/lang/Object;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    return-object p0
.end method

.method static synthetic access$1700(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createTrustedUser()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1800(Lcom/android/settings/users/UserSettings;)Landroid/content/pm/UserInfo;
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->createRestrictedProfile()Landroid/content/pm/UserInfo;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1902(Lcom/android/settings/users/UserSettings;Z)Z
    .locals 0

    .line 93
    iput-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/settings/users/UserSettings;IZ)V
    .locals 0

    .line 93
    invoke-direct {p0, p1, p2}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    return-void
.end method

.method static synthetic access$2000(Lcom/android/settings/users/UserSettings;)Lcom/android/settings/users/UserCapabilities;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    return-object p0
.end method

.method static synthetic access$2100(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 0

    .line 93
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->dismissDeleteUserDialog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/settings/users/UserSettings;)I
    .locals 0

    .line 93
    iget p0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p0
.end method

.method static synthetic access$402(Lcom/android/settings/users/UserSettings;I)I
    .locals 0

    .line 93
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/settings/users/UserSettings;)Landroid/util/SparseArray;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/users/UserSettings;)Landroid/os/Handler;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$700(Lcom/android/settings/users/UserSettings;Ljava/lang/String;)V
    .locals 0

    .line 93
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->finishLoadProfile(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/settings/users/UserSettings;)Landroid/os/UserManager;
    .locals 0

    .line 93
    iget-object p0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static synthetic access$900(Lcom/android/settings/users/UserSettings;)V
    .locals 0

    .line 93
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeUserNow()V

    return-void
.end method

.method private addUserNow(I)V
    .locals 2

    .line 724
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 725
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 726
    if-ne p1, v1, :cond_0

    const v1, 0x7f120f0b    # @string/user_new_user_name 'New user'

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 727
    :cond_0
    const v1, 0x7f120f0a    # @string/user_new_profile_name 'New profile'

    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    :goto_0
    iput-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    .line 729
    new-instance v1, Lcom/android/settings/users/UserSettings$12;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/users/UserSettings$12;-><init>(Lcom/android/settings/users/UserSettings;I)V

    .line 757
    invoke-virtual {v1}, Lcom/android/settings/users/UserSettings$12;->start()V

    .line 758
    monitor-exit v0

    .line 759
    return-void

    .line 758
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method static assignDefaultPhoto(Landroid/content/Context;I)Z
    .locals 1

    .line 1122
    if-nez p0, :cond_0

    .line 1123
    const/4 p0, 0x0

    return p0

    .line 1125
    :cond_0
    const-string v0, "user"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 1126
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 1127
    invoke-virtual {v0, p1, p0}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1129
    const/4 p0, 0x1

    return p0
.end method

.method static copyMeProfilePhoto(Landroid/content/Context;Landroid/content/pm/UserInfo;)V
    .locals 3

    .line 1134
    sget-object v0, Landroid/provider/ContactsContract$Profile;->CONTENT_URI:Landroid/net/Uri;

    .line 1136
    if-eqz p1, :cond_0

    iget p1, p1, Landroid/content/pm/UserInfo;->id:I

    goto :goto_0

    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 1138
    :goto_0
    nop

    .line 1139
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v2, 0x1

    .line 1138
    invoke-static {v1, v0, v2}, Landroid/provider/ContactsContract$Contacts;->openContactPhotoInputStream(Landroid/content/ContentResolver;Landroid/net/Uri;Z)Ljava/io/InputStream;

    move-result-object v0

    .line 1142
    if-nez v0, :cond_1

    .line 1143
    invoke-static {p0, p1}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    .line 1144
    return-void

    .line 1147
    :cond_1
    const-string v1, "user"

    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/os/UserManager;

    .line 1148
    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 1149
    invoke-virtual {p0, p1, v1}, Landroid/os/UserManager;->setUserIcon(ILandroid/graphics/Bitmap;)V

    .line 1151
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1153
    goto :goto_1

    .line 1152
    :catch_0
    move-exception p0

    .line 1154
    :goto_1
    return-void
.end method

.method private createRestrictedProfile()Landroid/content/pm/UserInfo;
    .locals 3

    .line 445
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->createRestrictedProfile(Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 446
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 447
    const/4 v0, 0x0

    return-object v0

    .line 449
    :cond_0
    return-object v0
.end method

.method private createTrustedUser()Landroid/content/pm/UserInfo;
    .locals 3

    .line 453
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/UserManager;->createUser(Ljava/lang/String;I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 454
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget v2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v1, v2}, Lcom/android/settings/users/UserSettings;->assignDefaultPhoto(Landroid/content/Context;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 455
    const/4 v0, 0x0

    return-object v0

    .line 457
    :cond_0
    return-object v0
.end method

.method private dismissDeleteUserDialog()V
    .locals 1

    .line 1171
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1172
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->dismiss()V

    .line 1174
    :cond_0
    return-void
.end method

.method private encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1039
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/drawable/CircleFramedDrawable;->getInstance(Landroid/content/Context;Landroid/graphics/Bitmap;)Lcom/android/settingslib/drawable/CircleFramedDrawable;

    move-result-object p1

    .line 1040
    return-object p1
.end method

.method private exitGuest()V
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v0, :cond_0

    .line 775
    return-void

    .line 777
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    .line 778
    return-void
.end method

.method private finishLoadProfile(Ljava/lang/String;)V
    .locals 4

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f120f20    # @string/user_you 'You (%s)'

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 383
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    .line 384
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserIcon(I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 385
    if-eqz v0, :cond_1

    .line 386
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 387
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 389
    :cond_1
    return-void
.end method

.method private static getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
    .locals 1

    .line 1101
    nop

    .line 1103
    sget-object v0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 1104
    if-nez v0, :cond_0

    .line 1105
    const/4 v0, 0x0

    .line 1106
    invoke-static {p0, p1, v0}, Lcom/android/internal/util/UserIcons;->getDefaultUserIcon(Landroid/content/res/Resources;IZ)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 1105
    invoke-static {p0}, Lcom/android/internal/util/UserIcons;->convertToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1108
    sget-object p0, Lcom/android/settings/users/UserSettings;->sDarkDefaultUserBitmapCache:Landroid/util/SparseArray;

    invoke-virtual {p0, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1110
    :cond_0
    return-object v0
.end method

.method private getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 987
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 988
    nop

    .line 989
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/16 v1, -0x2710

    invoke-static {v0, v1}, Lcom/android/settings/users/UserSettings;->getDefaultUserIconAsBitmap(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 988
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    .line 991
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDefaultIconDrawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private getMaxRealUsers()I
    .locals 4

    .line 953
    invoke-static {}, Landroid/os/UserManager;->getMaxSupportedUsers()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 954
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v1}, Landroid/os/UserManager;->getUsers()Ljava/util/List;

    move-result-object v1

    .line 956
    nop

    .line 957
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/UserInfo;

    .line 958
    invoke-virtual {v3}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 959
    add-int/lit8 v2, v2, 0x1

    .line 961
    :cond_0
    goto :goto_0

    .line 962
    :cond_1
    sub-int/2addr v0, v2

    return v0
.end method

.method private hasLockscreenSecurity()Z
    .locals 2

    .line 392
    new-instance v0, Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;-><init>(Landroid/content/Context;)V

    .line 393
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->isSecure(I)Z

    move-result v0

    return v0
.end method

.method private isInitialized(Landroid/content/pm/UserInfo;)Z
    .locals 0

    .line 1035
    iget p1, p1, Landroid/content/pm/UserInfo;->flags:I

    and-int/lit8 p1, p1, 0x10

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method static synthetic lambda$static$1(Landroid/app/Activity;Lcom/android/settings/dashboard/SummaryLoader;)Lcom/android/settings/dashboard/SummaryLoader$SummaryProvider;
    .locals 1

    .line 1199
    new-instance v0, Lcom/android/settings/users/UserSettings$SummaryProvider;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/UserSettings$SummaryProvider;-><init>(Landroid/content/Context;Lcom/android/settings/dashboard/SummaryLoader;)V

    return-object v0
.end method

.method public static synthetic lambda$updateUserList$0(Lcom/android/settings/users/UserSettings;ILandroid/support/v7/preference/Preference;)Z
    .locals 2

    .line 891
    nop

    .line 892
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 894
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p2}, Landroid/support/v7/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p2

    .line 893
    invoke-virtual {v0, v1, p2}, Landroid/os/UserManager;->createGuest(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/UserInfo;

    move-result-object p2

    .line 895
    if-eqz p2, :cond_0

    .line 896
    iget p1, p2, Landroid/content/pm/UserInfo;->id:I

    .line 900
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object p2

    invoke-interface {p2, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 903
    goto :goto_0

    .line 901
    :catch_0
    move-exception p1

    .line 902
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 904
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method private launchChooseLockscreen()V
    .locals 3

    .line 397
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.app.action.SET_NEW_PASSWORD"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 398
    const-string v1, "minimum_quality"

    const/high16 v2, 0x10000

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 400
    const/16 v1, 0xa

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/users/UserSettings;->startActivityForResult(Landroid/content/Intent;I)V

    .line 401
    return-void
.end method

.method private loadIconsAsync(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 966
    new-instance v0, Lcom/android/settings/users/UserSettings$13;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$13;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/List;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 983
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$13;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 984
    return-void
.end method

.method private loadProfile()V
    .locals 2

    .line 351
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 354
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v1, 0x7f120f00    # @string/user_exit_guest_title 'Remove guest'

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 355
    return-void

    .line 358
    :cond_0
    new-instance v0, Lcom/android/settings/users/UserSettings$3;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$3;-><init>(Lcom/android/settings/users/UserSettings;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 377
    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserSettings$3;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 378
    return-void
.end method

.method private onAddUserClicked(I)V
    .locals 3

    .line 417
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 418
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_1

    .line 419
    const/4 v1, 0x2

    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 424
    :pswitch_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 425
    invoke-direct {p0, v1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 427
    :cond_0
    const/4 p1, 0x7

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 421
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 422
    nop

    .line 432
    :cond_1
    :goto_0
    monitor-exit v0

    .line 433
    return-void

    .line 432
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onManageUserClicked(IZ)V
    .locals 2

    .line 461
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 462
    const/16 v0, -0xb

    if-ne p1, v0, :cond_0

    .line 463
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    .line 464
    const-string p2, "guest_user"

    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 465
    new-instance p2, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v0, Lcom/android/settings/users/UserDetailsSettings;

    .line 466
    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p2

    .line 467
    invoke-virtual {p2, p1}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const p2, 0x7f120f01    # @string/user_guest 'Guest'

    .line 468
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 469
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 470
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 471
    return-void

    .line 473
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v0

    .line 474
    invoke-virtual {v0}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v1, v1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v1, :cond_1

    .line 475
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 476
    const-string v1, "user_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 477
    const-string p1, "new_user"

    invoke-virtual {v0, p1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 478
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class p2, Lcom/android/settings/users/RestrictedProfileSettings;

    .line 479
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 480
    invoke-virtual {p1, v0}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    const p2, 0x7f120f14    # @string/user_restrictions_title 'App & content access'

    .line 481
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 482
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 483
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 484
    goto :goto_0

    :cond_1
    iget p2, v0, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne p2, v1, :cond_2

    .line 486
    invoke-static {p0}, Lcom/android/settings/users/OwnerInfoSettings;->show(Landroid/app/Fragment;)V

    goto :goto_0

    .line 487
    :cond_2
    iget-object p2, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p2, p2, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz p2, :cond_3

    .line 488
    new-instance p2, Landroid/os/Bundle;

    invoke-direct {p2}, Landroid/os/Bundle;-><init>()V

    .line 489
    const-string v1, "user_id"

    invoke-virtual {p2, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 490
    new-instance p1, Lcom/android/settings/core/SubSettingLauncher;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;-><init>(Landroid/content/Context;)V

    const-class v1, Lcom/android/settings/users/UserDetailsSettings;

    .line 491
    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/android/settings/core/SubSettingLauncher;->setDestination(Ljava/lang/String;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 492
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setArguments(Landroid/os/Bundle;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    iget-object p2, v0, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    .line 493
    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setTitle(Ljava/lang/CharSequence;)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 494
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getMetricsCategory()I

    move-result p2

    invoke-virtual {p1, p2}, Lcom/android/settings/core/SubSettingLauncher;->setSourceMetricsCategory(I)Lcom/android/settings/core/SubSettingLauncher;

    move-result-object p1

    .line 495
    invoke-virtual {p1}, Lcom/android/settings/core/SubSettingLauncher;->launch()V

    .line 497
    :cond_3
    :goto_0
    return-void
.end method

.method private onRemoveUserClicked(I)V
    .locals 3

    .line 436
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter v0

    .line 437
    :try_start_0
    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v1, :cond_0

    .line 438
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 439
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 441
    :cond_0
    monitor-exit v0

    .line 442
    return-void

    .line 441
    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method private onUserCreated(I)V
    .locals 1

    .line 500
    iput p1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 501
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    .line 502
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->isResumed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 503
    const-string p1, "UserSettings"

    const-string v0, "Cannot show dialog after onPause"

    invoke-static {p1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 504
    return-void

    .line 506
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 507
    const/4 p1, 0x4

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 509
    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 511
    :goto_0
    return-void
.end method

.method private removeThisUser()V
    .locals 2

    .line 711
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    if-nez v0, :cond_0

    .line 712
    const-string v0, "UserSettings"

    const-string v1, "Cannot remove current user when switching is disabled"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    return-void

    .line 716
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/app/IActivityManager;->switchUser(I)Z

    .line 717
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->removeUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 720
    goto :goto_0

    .line 718
    :catch_0
    move-exception v0

    .line 719
    const-string v0, "UserSettings"

    const-string v1, "Unable to remove self user"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    :goto_0
    return-void
.end method

.method private removeUserNow()V
    .locals 2

    .line 694
    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 695
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->removeThisUser()V

    goto :goto_0

    .line 698
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->showDeleteUserDialog()V

    .line 699
    new-instance v0, Lcom/android/settings/users/UserSettings$11;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$11;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 706
    invoke-virtual {v0}, Lcom/android/settings/users/UserSettings$11;->start()V

    .line 708
    :goto_0
    return-void
.end method

.method private setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V
    .locals 1

    .line 995
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget p2, p2, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/graphics/Bitmap;

    .line 996
    if-eqz p2, :cond_0

    .line 997
    invoke-direct {p0, p2}, Lcom/android/settings/users/UserSettings;->encircle(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Drawable;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 999
    :cond_0
    return-void
.end method

.method private showDeleteUserDialog()V
    .locals 3

    .line 1158
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    if-nez v0, :cond_0

    .line 1159
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    .line 1160
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    .line 1161
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1208bc    # @string/master_clear_progress_text 'Please wait...'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1160
    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 1162
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 1163
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 1165
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->isShowing()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1166
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mDeletingUserDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 1168
    :cond_1
    return-void
.end method

.method private switchUserNow(I)V
    .locals 1

    .line 763
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManager;->getService()Landroid/app/IActivityManager;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/app/IActivityManager;->switchUser(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 766
    goto :goto_0

    .line 764
    :catch_0
    move-exception p1

    .line 767
    :goto_0
    return-void
.end method

.method private updateUserList()V
    .locals 19

    .line 781
    move-object/from16 v0, p0

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/settings/users/UserSettings;->mUpdateUserListOperate:Z

    .line 782
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    if-nez v2, :cond_0

    return-void

    .line 783
    :cond_0
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v1}, Landroid/os/UserManager;->getUsers(Z)Ljava/util/List;

    move-result-object v2

    .line 784
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 786
    invoke-static {v3}, Lcom/android/settings/Utils;->isVoiceCapable(Landroid/content/Context;)Z

    move-result v4

    .line 787
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 788
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 789
    const/16 v7, -0xb

    .line 790
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 792
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    if-eqz v8, :cond_10

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/pm/UserInfo;

    .line 793
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->supportsSwitchToByUser()Z

    move-result v11

    if-nez v11, :cond_1

    .line 796
    goto :goto_0

    .line 799
    :cond_1
    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v12

    if-ne v11, v12, :cond_2

    .line 800
    iget-object v9, v0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    goto/16 :goto_5

    .line 801
    :cond_2
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 803
    iget v7, v8, Landroid/content/pm/UserInfo;->id:I

    .line 804
    goto :goto_0

    .line 814
    :cond_3
    iget-object v11, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v11, v11, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v11, :cond_5

    if-nez v4, :cond_4

    .line 815
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v11

    if-eqz v11, :cond_5

    .line 816
    :cond_4
    move v11, v1

    goto :goto_1

    .line 815
    :cond_5
    nop

    .line 816
    move v11, v10

    :goto_1
    iget-object v12, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v12, v12, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v12, :cond_6

    if-nez v4, :cond_6

    .line 817
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v12

    if-nez v12, :cond_6

    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isGuest()Z

    move-result v12

    if-nez v12, :cond_6

    .line 818
    move v12, v1

    goto :goto_2

    .line 817
    :cond_6
    nop

    .line 818
    move v12, v10

    :goto_2
    new-instance v15, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v14

    const/16 v16, 0x0

    iget v13, v8, Landroid/content/pm/UserInfo;->id:I

    .line 819
    if-eqz v11, :cond_7

    .line 820
    move-object/from16 v17, v0

    goto :goto_3

    .line 819
    :cond_7
    nop

    .line 820
    move-object/from16 v17, v9

    :goto_3
    if-eqz v12, :cond_8

    move-object/from16 v18, v0

    goto :goto_4

    :cond_8
    move-object/from16 v18, v9

    :goto_4
    move v9, v13

    move-object v13, v15

    move-object v11, v15

    move-object/from16 v15, v16

    move/from16 v16, v9

    invoke-direct/range {v13 .. v18}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 821
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "id="

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v11, v9}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 822
    invoke-virtual {v6, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 823
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isAdmin()Z

    move-result v9

    if-eqz v9, :cond_9

    .line 824
    const v9, 0x7f120ed6    # @string/user_admin 'Admin'

    invoke-virtual {v11, v9}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 826
    :cond_9
    iget-object v9, v8, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    invoke-virtual {v11, v9}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 827
    invoke-virtual {v11, v10}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    .line 829
    move-object v9, v11

    :goto_5
    if-nez v9, :cond_a

    .line 830
    goto/16 :goto_0

    .line 832
    :cond_a
    invoke-direct {v0, v8}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v10

    if-nez v10, :cond_c

    .line 833
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_b

    .line 834
    const v10, 0x7f120f1e    # @string/user_summary_restricted_not_set_up 'Not set up - Restricted profile'

    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    goto :goto_6

    .line 836
    :cond_b
    const v10, 0x7f120f1d    # @string/user_summary_not_set_up 'Not set up'

    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 840
    :goto_6
    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v10, v10, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-nez v10, :cond_d

    .line 841
    invoke-virtual {v9, v0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 842
    invoke-virtual {v9, v1}, Lcom/android/settings/users/UserPreference;->setSelectable(Z)V

    goto :goto_7

    .line 844
    :cond_c
    invoke-virtual {v8}, Landroid/content/pm/UserInfo;->isRestricted()Z

    move-result v10

    if-eqz v10, :cond_d

    .line 845
    const v10, 0x7f120f1f    # @string/user_summary_restricted_profile 'Restricted profile'

    invoke-virtual {v9, v10}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 847
    :cond_d
    :goto_7
    iget-object v10, v8, Landroid/content/pm/UserInfo;->iconPath:Ljava/lang/String;

    if-eqz v10, :cond_f

    .line 848
    iget-object v10, v0, Lcom/android/settings/users/UserSettings;->mUserIcons:Landroid/util/SparseArray;

    iget v11, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-virtual {v10, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    if-nez v10, :cond_e

    .line 850
    iget v8, v8, Landroid/content/pm/UserInfo;->id:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 851
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    goto :goto_8

    .line 853
    :cond_e
    invoke-direct {v0, v9, v8}, Lcom/android/settings/users/UserSettings;->setPhotoId(Landroid/support/v7/preference/Preference;Landroid/content/pm/UserInfo;)V

    goto :goto_8

    .line 857
    :cond_f
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v9, v8}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 859
    :goto_8
    goto/16 :goto_0

    .line 862
    :cond_10
    iget-boolean v2, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-eqz v2, :cond_11

    .line 863
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, -0xa

    const/4 v15, 0x0

    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 865
    invoke-virtual {v2, v10}, Lcom/android/settings/users/UserPreference;->setEnabled(Z)V

    .line 866
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mAddingUserName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 867
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v2, v8}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 868
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 872
    :cond_11
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-nez v2, :cond_16

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddGuest:Z

    if-nez v2, :cond_12

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v2, :cond_16

    .line 875
    :cond_12
    new-instance v2, Lcom/android/settings/users/UserPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v12

    const/4 v13, 0x0

    const/16 v14, -0xb

    .line 877
    iget-object v8, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v8, v8, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz v8, :cond_13

    if-eqz v4, :cond_13

    move-object v15, v0

    goto :goto_9

    :cond_13
    move-object v15, v9

    :goto_9
    const/16 v16, 0x0

    move-object v11, v2

    invoke-direct/range {v11 .. v16}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 879
    const v4, 0x7f120f01    # @string/user_guest 'Guest'

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setTitle(I)V

    .line 880
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getEncircledDefaultIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 881
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 882
    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v4, :cond_14

    .line 883
    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v3, v3, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_a

    .line 884
    :cond_14
    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v4, v4, Lcom/android/settings/users/UserCapabilities;->mDisallowSwitchUser:Z

    if-eqz v4, :cond_15

    .line 885
    invoke-static {v3}, Lcom/android/settingslib/RestrictedLockUtils;->getDeviceOwner(Landroid/content/Context;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_a

    .line 887
    :cond_15
    invoke-virtual {v2, v9}, Lcom/android/settings/users/UserPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 889
    :goto_a
    nop

    .line 890
    new-instance v3, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;

    invoke-direct {v3, v0, v7}, Lcom/android/settings/users/-$$Lambda$UserSettings$wMqzhBHYMbgNNY7TSuzlNB8n9UY;-><init>(Lcom/android/settings/users/UserSettings;I)V

    invoke-virtual {v2, v3}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 909
    :cond_16
    sget-object v2, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    invoke-static {v6, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 911
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 914
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_17

    .line 915
    invoke-direct {v0, v5}, Lcom/android/settings/users/UserSettings;->loadIconsAsync(Ljava/util/List;)V

    .line 919
    :cond_17
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/support/v7/preference/PreferenceGroup;->removeAll()V

    .line 921
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz v2, :cond_18

    .line 922
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    const v3, 0x7f120f07    # @string/user_list_title 'Users & profiles'

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(I)V

    goto :goto_b

    .line 924
    :cond_18
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v2, v9}, Landroid/support/v7/preference/PreferenceGroup;->setTitle(Ljava/lang/CharSequence;)V

    .line 927
    :goto_b
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_19

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/users/UserPreference;

    .line 928
    const v4, 0x7fffffff

    invoke-virtual {v3, v4}, Lcom/android/settings/users/UserPreference;->setOrder(I)V

    .line 929
    iget-object v4, v0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {v4, v3}, Landroid/support/v7/preference/PreferenceGroup;->addPreference(Landroid/support/v7/preference/Preference;)Z

    .line 930
    goto :goto_c

    .line 933
    :cond_19
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-nez v2, :cond_1a

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUserSetByAdmin:Z

    if-eqz v2, :cond_1e

    .line 934
    :cond_1a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 935
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->canAddMoreUsers()Z

    move-result v2

    .line 936
    iget-object v3, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-eqz v2, :cond_1b

    iget-boolean v4, v0, Lcom/android/settings/users/UserSettings;->mAddingUser:Z

    if-nez v4, :cond_1b

    move v4, v1

    goto :goto_d

    :cond_1b
    move v4, v10

    :goto_d
    invoke-virtual {v3, v4}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    .line 937
    if-nez v2, :cond_1c

    .line 938
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v3, 0x7f120ec9    # @string/user_add_max_count 'You can add up to %1$d users'

    new-array v1, v1, [Ljava/lang/Object;

    invoke-direct/range {p0 .. p0}, Lcom/android/settings/users/UserSettings;->getMaxRealUsers()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v10

    invoke-virtual {v0, v3, v1}, Lcom/android/settings/users/UserSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_e

    .line 940
    :cond_1c
    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1, v9}, Lcom/android/settingslib/RestrictedPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 942
    :goto_e
    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {v1}, Lcom/android/settingslib/RestrictedPreference;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_1e

    .line 943
    iget-object v1, v0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 944
    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v2, v2, Lcom/android/settings/users/UserCapabilities;->mDisallowAddUser:Z

    if-eqz v2, :cond_1d

    iget-object v2, v0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-object v9, v2, Lcom/android/settings/users/UserCapabilities;->mEnforcedAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    nop

    .line 943
    :cond_1d
    invoke-virtual {v1, v9}, Lcom/android/settingslib/RestrictedPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 948
    :cond_1e
    iput-boolean v10, v0, Lcom/android/settings/users/UserSettings;->mUpdateUserListOperate:Z

    .line 949
    return-void
.end method


# virtual methods
.method public getDialogMetricsCategory(I)I
    .locals 0

    .line 669
    packed-switch p1, :pswitch_data_0

    .line 689
    const/4 p1, 0x0

    return p1

    .line 687
    :pswitch_0
    const/16 p1, 0x259

    return p1

    .line 685
    :pswitch_1
    const/16 p1, 0x258

    return p1

    .line 683
    :pswitch_2
    const/16 p1, 0x257

    return p1

    .line 681
    :pswitch_3
    const/16 p1, 0x256

    return p1

    .line 673
    :pswitch_4
    const/16 p1, 0x252

    return p1

    .line 679
    :pswitch_5
    const/16 p1, 0x255

    return p1

    .line 677
    :pswitch_6
    const/16 p1, 0x254

    return p1

    .line 675
    :pswitch_7
    const/16 p1, 0x253

    return p1

    .line 671
    :pswitch_8
    const/16 p1, 0x24f

    return p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getHelpResource()I
    .locals 1

    .line 1079
    const v0, 0x7f12071d    # @string/help_url_users ''

    return v0
.end method

.method public getMetricsCategory()I
    .locals 1

    .line 201
    const/16 v0, 0x60

    return v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .line 405
    invoke-super {p0, p1, p2, p3}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 407
    const/16 v0, 0xa

    if-ne p1, v0, :cond_0

    .line 408
    if-eqz p2, :cond_1

    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->hasLockscreenSecurity()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 409
    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->addUserNow(I)V

    goto :goto_0

    .line 412
    :cond_0
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/settings/users/EditUserInfoController;->onActivityResult(IILandroid/content/Intent;)V

    .line 414
    :cond_1
    :goto_0
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1045
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_4

    .line 1046
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result v0

    .line 1047
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result p1

    const v1, 0x7f0a0202    # @id/manage_user

    if-eq p1, v1, :cond_3

    const v1, 0x7f0a039a    # @id/trash_user

    if-eq p1, v1, :cond_0

    goto :goto_0

    .line 1049
    :cond_0
    iget-boolean p1, p0, Lcom/android/settings/users/UserSettings;->mUpdateUserListOperate:Z

    if-eqz p1, :cond_1

    .line 1050
    return-void

    .line 1052
    :cond_1
    nop

    .line 1053
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "no_remove_user"

    .line 1054
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 1053
    invoke-static {p1, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->checkIfRestrictionEnforced(Landroid/content/Context;Ljava/lang/String;I)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    move-result-object p1

    .line 1055
    if-eqz p1, :cond_2

    .line 1056
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/settingslib/RestrictedLockUtils;->sendShowAdminSupportDetailsIntent(Landroid/content/Context;Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    goto :goto_0

    .line 1059
    :cond_2
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 1061
    goto :goto_0

    .line 1063
    :cond_3
    const/4 p1, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    .line 1067
    :cond_4
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 10

    .line 206
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 207
    const v0, 0x7f1500b3    # @xml/user_settings 'res/xml/user_settings.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserSettings;->addPreferencesFromResource(I)V

    .line 208
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "device_provisioned"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_0

    .line 209
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    .line 210
    return-void

    .line 212
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 213
    new-instance v0, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    const-string v1, "user_settings_add_users_when_locked"

    .line 214
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getLifecycle()Lcom/android/settingslib/core/lifecycle/Lifecycle;

    move-result-object v4

    invoke-direct {v0, v3, v1, v4}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    iput-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 215
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 218
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 219
    invoke-virtual {v0, v1}, Landroid/support/v7/preference/Preference;->setOnPreferenceChangeListener(Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;)V

    .line 221
    if-eqz p1, :cond_3

    .line 222
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 223
    const-string v0, "adding_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    .line 225
    :cond_1
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 226
    const-string v0, "removing_user"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 228
    :cond_2
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 231
    :cond_3
    invoke-static {v3}, Lcom/android/settings/users/UserCapabilities;->create(Landroid/content/Context;)Lcom/android/settings/users/UserCapabilities;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    .line 232
    const-string p1, "user"

    invoke-virtual {v3, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    .line 233
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez p1, :cond_4

    .line 234
    return-void

    .line 237
    :cond_4
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v7

    .line 239
    const-string p1, "user_list"

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Landroid/support/v7/preference/PreferenceGroup;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserListCategory:Landroid/support/v7/preference/PreferenceGroup;

    .line 240
    new-instance p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPrefContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, p1

    invoke-direct/range {v4 .. v9}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 243
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const-string v0, "user_me"

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserPreference;->setKey(Ljava/lang/String;)V

    .line 244
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1, p0}, Lcom/android/settings/users/UserPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 245
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-eqz p1, :cond_5

    .line 246
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const v0, 0x7f120ed6    # @string/user_admin 'Admin'

    invoke-virtual {p1, v0}, Lcom/android/settings/users/UserPreference;->setSummary(I)V

    .line 248
    :cond_5
    const-string p1, "user_add"

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/android/settingslib/RestrictedPreference;

    iput-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    .line 249
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedPreference;->useAdminDisabledSummary(Z)V

    .line 251
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddUser:Z

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    invoke-static {p1}, Lcom/android/settings/Utils;->isDeviceProvisioned(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 252
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 253
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, p0}, Lcom/android/settingslib/RestrictedPreference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 255
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-nez p1, :cond_7

    .line 256
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    const v0, 0x7f120ecf    # @string/user_add_user_menu 'Add user'

    invoke-virtual {p1, v0}, Lcom/android/settingslib/RestrictedPreference;->setTitle(I)V

    goto :goto_0

    .line 259
    :cond_6
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    invoke-virtual {p1, v2}, Lcom/android/settingslib/RestrictedPreference;->setVisible(Z)V

    .line 261
    :cond_7
    :goto_0
    new-instance v6, Landroid/content/IntentFilter;

    const-string p1, "android.intent.action.USER_REMOVED"

    invoke-direct {v6, p1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 262
    const-string p1, "android.intent.action.USER_INFO_CHANGED"

    invoke-virtual {v6, p1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 263
    iget-object v4, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v7, 0x0

    iget-object v8, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v3 .. v8}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 264
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 265
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 266
    iput-boolean v2, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 267
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 12

    .line 522
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 523
    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 524
    :cond_0
    const v2, 0x104000a    # @android:string/ok

    const/4 v3, 0x2

    const/high16 v4, 0x1040000    # @android:string/cancel

    packed-switch p1, :pswitch_data_0

    .line 663
    return-object v1

    .line 653
    :pswitch_0
    iget-object v5, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    const/4 v7, 0x0

    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    .line 656
    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v8

    const v9, 0x7f120aae    # @string/profile_info_settings_title 'Profile info'

    .line 659
    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object v11

    .line 653
    move-object v6, p0

    move-object v10, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/settings/users/EditUserInfoController;->createDialog(Landroid/app/Fragment;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;ILcom/android/settings/users/EditUserInfoController$OnContentChangedCallback;Landroid/os/UserHandle;)Landroid/app/Dialog;

    move-result-object p1

    .line 660
    return-object p1

    .line 638
    :pswitch_1
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120efe    # @string/user_exit_guest_confirm_title 'Remove guest?'

    .line 639
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120efd    # @string/user_exit_guest_confirm_message 'All apps and data in this session will be deleted.'

    .line 640
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120eff    # @string/user_exit_guest_dialog_remove 'Remove'

    new-instance v2, Lcom/android/settings/users/UserSettings$10;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$10;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 641
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 648
    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 649
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 650
    return-object p1

    .line 624
    :pswitch_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120f09    # @string/user_need_lock_message 'Before you can create a restricted profile, you’ll need to set up a screen lock to protect your apps ...'

    .line 625
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f15    # @string/user_set_lock_button 'Set lock'

    new-instance v2, Lcom/android/settings/users/UserSettings$9;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$9;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 626
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 633
    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 634
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 635
    return-object p1

    .line 597
    :pswitch_3
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 598
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    .line 599
    const-string v1, "title"

    const v4, 0x7f120ece    # @string/user_add_user_item_title 'User'

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 600
    const-string v1, "summary"

    const v4, 0x7f120ecd    # @string/user_add_user_item_summary 'Users have their own apps and content'

    invoke-virtual {p0, v4}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v1, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 601
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 602
    const-string v4, "title"

    const v5, 0x7f120ecc    # @string/user_add_profile_item_title 'Restricted profile'

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 603
    const-string v4, "summary"

    const v5, 0x7f120ecb    # @string/user_add_profile_item_summary 'You can restrict access to apps and content from your account'

    invoke-virtual {p0, v5}, Lcom/android/settings/users/UserSettings;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 604
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 605
    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 606
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 607
    new-instance v6, Landroid/widget/SimpleAdapter;

    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->getContext()Landroid/content/Context;

    move-result-object v1

    const v4, 0x7f0d01b8    # @layout/two_line_list_item 'res/layout/two_line_list_item.xml'

    const-string v0, "title"

    const-string v5, "summary"

    filled-new-array {v0, v5}, [Ljava/lang/String;

    move-result-object v5

    new-array v7, v3, [I

    fill-array-data v7, :array_0

    move-object v0, v6

    move v3, v4

    move-object v4, v5

    move-object v5, v7

    invoke-direct/range {v0 .. v5}, Landroid/widget/SimpleAdapter;-><init>(Landroid/content/Context;Ljava/util/List;I[Ljava/lang/String;[I)V

    .line 611
    const v0, 0x7f120ed4    # @string/user_add_user_type_title 'Add'

    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 612
    new-instance v0, Lcom/android/settings/users/UserSettings$8;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$8;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-virtual {p1, v6, v0}, Landroid/app/AlertDialog$Builder;->setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 621
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    return-object p1

    .line 537
    :pswitch_4
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120ed8    # @string/user_cannot_manage_message 'Only the phone’s owner can manage users.'

    .line 538
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 539
    invoke-virtual {p1, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 540
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 537
    return-object p1

    .line 584
    :pswitch_5
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120f1b    # @string/user_setup_profile_dialog_message 'Set up profile now?'

    .line 585
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$7;

    invoke-direct {v0, p0}, Lcom/android/settings/users/UserSettings$7;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 586
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 592
    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 593
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 594
    return-object p1

    .line 570
    :pswitch_6
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120f1a    # @string/user_setup_dialog_title 'Set up user now?'

    .line 571
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f19    # @string/user_setup_dialog_message 'Make sure the person is available to take the device and set up their space'

    .line 572
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f18    # @string/user_setup_button_setup_now 'Set up now'

    new-instance v2, Lcom/android/settings/users/UserSettings$6;

    invoke-direct {v2, p0}, Lcom/android/settings/users/UserSettings$6;-><init>(Lcom/android/settings/users/UserSettings;)V

    .line 573
    invoke-virtual {p1, v0, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    const v0, 0x7f120f17    # @string/user_setup_button_setup_later 'Not now'

    .line 579
    invoke-virtual {p1, v0, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 580
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 581
    return-object p1

    .line 542
    :pswitch_7
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/app/Activity;->getPreferences(I)Landroid/content/SharedPreferences;

    move-result-object v5

    .line 544
    const-string v7, "key_add_user_long_message_displayed"

    invoke-interface {v5, v7, v6}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    .line 546
    if-eqz v6, :cond_1

    .line 547
    const v7, 0x7f120ed1    # @string/user_add_user_message_short 'When you add a new user, that person needs to set up their space.\n\nAny user can update apps for all  ...'

    goto :goto_0

    .line 548
    :cond_1
    const v7, 0x7f120ed0    # @string/user_add_user_message_long 'You can share this device with other people by creating additional users. Each user has their own sp ...'

    .line 549
    :goto_0
    if-ne p1, v3, :cond_2

    .line 550
    const/4 v3, 0x1

    nop

    .line 551
    :cond_2
    new-instance p1, Landroid/app/AlertDialog$Builder;

    invoke-direct {p1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v0, 0x7f120ed3    # @string/user_add_user_title 'Add new user?'

    .line 552
    invoke-virtual {p1, v0}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 553
    invoke-virtual {p1, v7}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    new-instance v0, Lcom/android/settings/users/UserSettings$5;

    invoke-direct {v0, p0, v3, v6, v5}, Lcom/android/settings/users/UserSettings$5;-><init>(Lcom/android/settings/users/UserSettings;IZLandroid/content/SharedPreferences;)V

    .line 554
    invoke-virtual {p1, v2, v0}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 565
    invoke-virtual {p1, v4, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object p1

    .line 566
    invoke-virtual {p1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object p1

    .line 567
    return-object p1

    .line 526
    :pswitch_8
    nop

    .line 527
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object p1

    iget v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    new-instance v1, Lcom/android/settings/users/UserSettings$4;

    invoke-direct {v1, p0}, Lcom/android/settings/users/UserSettings$4;-><init>(Lcom/android/settings/users/UserSettings;)V

    invoke-static {p1, v0, v1}, Lcom/android/settings/users/UserDialogs;->createRemoveDialog(Landroid/content/Context;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/Dialog;

    move-result-object p1

    .line 534
    return-object p1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch

    :array_0
    .array-data 4
        0x7f0a038e    # @id/title
        0x7f0a034a    # @id/summary
    .end array-data
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 6

    .line 323
    nop

    .line 324
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/UserManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 325
    const-string v1, "no_remove_user"

    invoke-virtual {v0, v1}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v1

    .line 326
    const/4 v2, 0x1

    xor-int/2addr v1, v2

    invoke-virtual {v0}, Landroid/os/UserManager;->canSwitchUsers()Z

    move-result v0

    .line 327
    iget-object v3, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v3, v3, Lcom/android/settings/users/UserCapabilities;->mIsAdmin:Z

    if-nez v3, :cond_0

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserName()Ljava/lang/String;

    move-result-object v0

    .line 329
    nop

    .line 330
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f120f11    # @string/user_remove_user_menu 'Delete %1$s from this device'

    new-array v4, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-virtual {v1, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-interface {p1, v5, v2, v5, v0}, Landroid/view/Menu;->add(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v0

    .line 331
    invoke-interface {v0, v5}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 333
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 334
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 298
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 300
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 304
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mUserChangeReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 305
    return-void

    .line 301
    :cond_1
    :goto_0
    return-void
.end method

.method public onDialogShowing()V
    .locals 0

    .line 515
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDialogShowing()V

    .line 517
    invoke-virtual {p0, p0}, Lcom/android/settings/users/UserSettings;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 518
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1

    .line 1071
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserLock:Ljava/lang/Object;

    monitor-enter p1

    .line 1072
    const/4 v0, -0x1

    :try_start_0
    iput v0, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    .line 1073
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 1074
    monitor-exit p1

    .line 1075
    return-void

    .line 1074
    :catchall_0
    move-exception v0

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public onLabelChanged(Ljava/lang/CharSequence;)V
    .locals 1

    .line 1089
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 1090
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .line 338
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 339
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 340
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->onRemoveUserClicked(I)V

    .line 341
    return v1

    .line 343
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onPause()V
    .locals 1

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    .line 293
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 294
    return-void
.end method

.method public onPhotoChanged(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1084
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1085
    return-void
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 5

    .line 1003
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mMePreference:Lcom/android/settings/users/UserPreference;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne p1, v0, :cond_2

    .line 1004
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mIsGuest:Z

    if-eqz p1, :cond_0

    .line 1005
    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    .line 1006
    return v2

    .line 1009
    :cond_0
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p1}, Landroid/os/UserManager;->isLinkedUser()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 1010
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result p1

    invoke-direct {p0, p1, v1}, Lcom/android/settings/users/UserSettings;->onManageUserClicked(IZ)V

    goto :goto_0

    .line 1012
    :cond_1
    const/16 p1, 0x9

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1014
    :cond_2
    instance-of v0, p1, Lcom/android/settings/users/UserPreference;

    if-eqz v0, :cond_4

    .line 1015
    check-cast p1, Lcom/android/settings/users/UserPreference;

    invoke-virtual {p1}, Lcom/android/settings/users/UserPreference;->getUserId()I

    move-result p1

    .line 1017
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object p1

    .line 1018
    invoke-direct {p0, p1}, Lcom/android/settings/users/UserSettings;->isInitialized(Landroid/content/pm/UserInfo;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1019
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x2

    iget v4, p1, Landroid/content/pm/UserInfo;->id:I

    iget p1, p1, Landroid/content/pm/UserInfo;->serialNumber:I

    invoke-virtual {v2, v3, v4, p1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1022
    :cond_3
    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mAddUser:Lcom/android/settingslib/RestrictedPreference;

    if-ne p1, v0, :cond_6

    .line 1025
    iget-object p1, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean p1, p1, Lcom/android/settings/users/UserCapabilities;->mCanAddRestrictedProfile:Z

    if-eqz p1, :cond_5

    .line 1026
    const/4 p1, 0x6

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserSettings;->showDialog(I)V

    goto :goto_0

    .line 1028
    :cond_5
    invoke-direct {p0, v2}, Lcom/android/settings/users/UserSettings;->onAddUserClicked(I)V

    .line 1031
    :cond_6
    :goto_0
    return v1
.end method

.method public onResume()V
    .locals 3

    .line 271
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 273
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    iget-boolean v0, v0, Lcom/android/settings/users/UserCapabilities;->mEnabled:Z

    if-nez v0, :cond_0

    .line 274
    return-void

    .line 276
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getPreferenceScreen()Landroid/support/v7/preference/PreferenceScreen;

    move-result-object v0

    .line 278
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    invoke-virtual {v1}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 279
    iget-object v1, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    iget-object v2, p0, Lcom/android/settings/users/UserSettings;->mAddUserWhenLockedPreferenceController:Lcom/android/settings/users/AddUserWhenLockedPreferenceController;

    .line 280
    invoke-virtual {v2}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->getPreferenceKey()Ljava/lang/String;

    move-result-object v2

    .line 279
    invoke-virtual {v0, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings/users/AddUserWhenLockedPreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 283
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings/users/UserSettings;->mShouldUpdateUserList:Z

    if-eqz v0, :cond_2

    .line 284
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mUserCaps:Lcom/android/settings/users/UserCapabilities;

    invoke-virtual {p0}, Lcom/android/settings/users/UserSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/users/UserCapabilities;->updateAddUserCapabilities(Landroid/content/Context;)V

    .line 285
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->loadProfile()V

    .line 286
    invoke-direct {p0}, Lcom/android/settings/users/UserSettings;->updateUserList()V

    .line 288
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 309
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0, p1}, Lcom/android/settings/users/EditUserInfoController;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 311
    const-string v0, "adding_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mAddedUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 312
    const-string v0, "removing_user"

    iget v1, p0, Lcom/android/settings/users/UserSettings;->mRemovingUserId:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 313
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/android/settings/users/UserSettings;->mEditUserInfoController:Lcom/android/settings/users/EditUserInfoController;

    invoke-virtual {v0}, Lcom/android/settings/users/EditUserInfoController;->startingActivityForResult()V

    .line 318
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 319
    return-void
.end method
