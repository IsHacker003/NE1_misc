.class public Lcom/android/settings/accounts/AccountTypePreferenceLoader;
.super Ljava/lang/Object;
.source "AccountTypePreferenceLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;
    }
.end annotation


# instance fields
.field private mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

.field private mFragment:Landroid/support/v14/preference/PreferenceFragment;

.field private mUserHandle:Landroid/os/UserHandle;


# direct methods
.method public constructor <init>(Landroid/support/v14/preference/PreferenceFragment;Lcom/android/settingslib/accounts/AuthenticatorHelper;Landroid/os/UserHandle;)V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    .line 68
    iput-object p2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 69
    iput-object p3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    .line 70
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 0

    .line 51
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$100(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/os/UserHandle;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/accounts/AccountTypePreferenceLoader;)Landroid/support/v14/preference/PreferenceFragment;
    .locals 0

    .line 51
    iget-object p0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    return-object p0
.end method

.method private isSafeIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;Ljava/lang/String;)Z
    .locals 2

    .line 190
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    .line 191
    invoke-virtual {v0, p3}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p3

    .line 192
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p1, p2, v1, v0}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object p2

    .line 193
    if-nez p2, :cond_0

    .line 194
    return v1

    .line 196
    :cond_0
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 197
    iget-object p2, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 200
    :try_start_0
    iget-object p3, p3, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object p1

    .line 201
    iget p2, p2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget p1, p1, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    if-ne p2, p1, :cond_1

    const/4 v1, 0x1

    nop

    :cond_1
    return v1

    .line 202
    :catch_0
    move-exception p1

    .line 203
    const-string p2, "AccountTypePrefLoader"

    const-string p3, "Intent considered unsafe due to exception."

    invoke-static {p2, p3, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 206
    return v1
.end method


# virtual methods
.method public addPreferencesForType(Ljava/lang/String;Landroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;
    .locals 6

    .line 79
    nop

    .line 80
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->containsAccountType(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 81
    nop

    .line 83
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mAuthenticatorHelper:Lcom/android/settingslib/accounts/AuthenticatorHelper;

    invoke-virtual {v0, p1}, Lcom/android/settingslib/accounts/AuthenticatorHelper;->getAccountTypeDescription(Ljava/lang/String;)Landroid/accounts/AuthenticatorDescription;

    move-result-object p1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2

    .line 84
    if-eqz p1, :cond_0

    :try_start_1
    iget v0, p1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    if-eqz v0, :cond_0

    .line 91
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v2, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    const/4 v4, 0x0

    invoke-virtual {v0, v2, v4, v3}, Landroid/app/Activity;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 93
    iget-object v2, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/support/v14/preference/PreferenceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    .line 94
    const v3, 0x7f1301e0    # @style/Theme.SettingsBase

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v5}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 95
    new-instance v3, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;

    .line 96
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-direct {v3, v5, v0, v4}, Lcom/android/settings/utils/LocalClassLoaderContextThemeWrapper;-><init>(Ljava/lang/Class;Landroid/content/Context;I)V

    .line 97
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 98
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getPreferenceManager()Landroid/support/v7/preference/PreferenceManager;

    move-result-object v0

    iget v2, p1, Landroid/accounts/AuthenticatorDescription;->accountPreferencesId:I

    invoke-virtual {v0, v3, v2, p2}, Landroid/support/v7/preference/PreferenceManager;->inflateFromResource(Landroid/content/Context;ILandroid/support/v7/preference/PreferenceScreen;)Landroid/support/v7/preference/PreferenceScreen;

    move-result-object p2
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    .line 105
    move-object v1, p2

    goto :goto_0

    .line 103
    :catch_0
    move-exception p2

    goto :goto_1

    .line 101
    :catch_1
    move-exception p2

    goto :goto_2

    .line 105
    :cond_0
    :goto_0
    goto :goto_3

    .line 103
    :catch_2
    move-exception p1

    move-object p1, v1

    .line 104
    :goto_1
    const-string p2, "AccountTypePrefLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 101
    :catch_3
    move-exception p1

    move-object p1, v1

    .line 102
    :goto_2
    const-string p2, "AccountTypePrefLoader"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Couldn\'t load preferences.xml file from "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/accounts/AuthenticatorDescription;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 107
    :cond_1
    :goto_3
    return-object v1
.end method

.method public updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V
    .locals 6

    .line 118
    iget-object v0, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mFragment:Landroid/support/v14/preference/PreferenceFragment;

    invoke-virtual {v0}, Landroid/support/v14/preference/PreferenceFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 119
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p1}, Landroid/support/v7/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 120
    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceGroup;->getPreference(I)Landroid/support/v7/preference/Preference;

    move-result-object v2

    .line 121
    instance-of v3, v2, Landroid/support/v7/preference/PreferenceGroup;

    if-eqz v3, :cond_0

    .line 122
    move-object v3, v2

    check-cast v3, Landroid/support/v7/preference/PreferenceGroup;

    invoke-virtual {p0, v3, p2, p3}, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->updatePreferenceIntents(Landroid/support/v7/preference/PreferenceGroup;Ljava/lang/String;Landroid/accounts/Account;)V

    .line 124
    :cond_0
    invoke-virtual {v2}, Landroid/support/v7/preference/Preference;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 125
    if-eqz v3, :cond_3

    .line 140
    invoke-virtual {v3}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "android.settings.LOCATION_SOURCE_SETTINGS"

    invoke-static {v4, v5}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 144
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;

    const-class v4, Lcom/android/settings/location/LocationSettings;

    .line 145
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f120801    # @string/location_settings_title 'Location'

    invoke-direct {v3, p0, v4, v5}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$FragmentStarter;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Ljava/lang/String;I)V

    .line 144
    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    goto :goto_1

    .line 147
    :cond_1
    const/high16 v4, 0x10000

    iget-object v5, p0, Lcom/android/settings/accounts/AccountTypePreferenceLoader;->mUserHandle:Landroid/os/UserHandle;

    .line 148
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    .line 147
    invoke-virtual {v0, v3, v4, v5}, Landroid/content/pm/PackageManager;->resolveActivityAsUser(Landroid/content/Intent;II)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 149
    if-nez v4, :cond_2

    .line 150
    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceGroup;->removePreference(Landroid/support/v7/preference/Preference;)Z

    .line 151
    goto :goto_0

    .line 153
    :cond_2
    const-string v4, "account"

    invoke-virtual {v3, v4, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 154
    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v4

    const/high16 v5, 0x10000000

    or-int/2addr v4, v5

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 155
    new-instance v3, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;

    invoke-direct {v3, p0, v0, p2}, Lcom/android/settings/accounts/AccountTypePreferenceLoader$1;-><init>(Lcom/android/settings/accounts/AccountTypePreferenceLoader;Landroid/content/pm/PackageManager;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 180
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 181
    goto :goto_0

    .line 182
    :cond_4
    return-void
.end method
