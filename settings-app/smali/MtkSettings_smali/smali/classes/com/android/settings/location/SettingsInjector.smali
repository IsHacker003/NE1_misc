.class Lcom/android/settings/location/SettingsInjector;
.super Ljava/lang/Object;
.source "SettingsInjector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/location/SettingsInjector$Setting;,
        Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;,
        Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private final mSettings:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/android/settings/location/SettingsInjector$Setting;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 105
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 106
    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    .line 107
    new-instance p1, Ljava/util/HashSet;

    invoke-direct {p1}, Ljava/util/HashSet;-><init>()V

    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    .line 108
    new-instance p1, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/settings/location/SettingsInjector$StatusLoadingHandler;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/SettingsInjector$1;)V

    iput-object p1, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    .line 109
    return-void
.end method

.method static synthetic access$200(Lcom/android/settings/location/SettingsInjector;)Landroid/content/Context;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/location/SettingsInjector;)Ljava/util/Set;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    return-object p0
.end method

.method static synthetic access$400(Lcom/android/settings/location/SettingsInjector;)Landroid/os/Handler;
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    return-object p0
.end method

.method private addServiceSetting(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/location/InjectedSetting;)Landroid/support/v7/preference/Preference;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;",
            "Lcom/android/settings/location/InjectedSetting;",
            ")",
            "Landroid/support/v7/preference/Preference;"
        }
    .end annotation

    .line 306
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 307
    nop

    .line 309
    const/4 v1, 0x0

    :try_start_0
    new-instance v2, Landroid/content/pm/PackageItemInfo;

    invoke-direct {v2}, Landroid/content/pm/PackageItemInfo;-><init>()V

    .line 310
    iget v3, p3, Lcom/android/settings/location/InjectedSetting;->iconId:I

    iput v3, v2, Landroid/content/pm/PackageItemInfo;->icon:I

    .line 311
    iget-object v3, p3, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    iput-object v3, v2, Landroid/content/pm/PackageItemInfo;->packageName:Ljava/lang/String;

    .line 312
    iget-object v3, p3, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    const/16 v4, 0x80

    invoke-virtual {v0, v3, v4}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 314
    iget-object v3, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-static {v3}, Landroid/util/IconDrawableFactory;->newInstance(Landroid/content/Context;)Landroid/util/IconDrawableFactory;

    move-result-object v3

    iget-object v4, p3, Lcom/android/settings/location/InjectedSetting;->mUserHandle:Landroid/os/UserHandle;

    .line 315
    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v4

    invoke-virtual {v3, v2, v0, v4}, Landroid/util/IconDrawableFactory;->getBadgedIcon(Landroid/content/pm/PackageItemInfo;Landroid/content/pm/ApplicationInfo;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 318
    goto :goto_0

    .line 316
    :catch_0
    move-exception v0

    .line 317
    const-string v2, "SettingsInjector"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t get ApplicationInfo for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p3, Lcom/android/settings/location/InjectedSetting;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 319
    move-object v0, v1

    :goto_0
    iget-object v2, p3, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 320
    new-instance v2, Lcom/android/settings/widget/AppPreference;

    invoke-direct {v2, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    goto :goto_1

    .line 321
    :cond_0
    new-instance v2, Lcom/android/settings/widget/RestrictedAppPreference;

    iget-object v3, p3, Lcom/android/settings/location/InjectedSetting;->userRestriction:Ljava/lang/String;

    invoke-direct {v2, p1, v3}, Lcom/android/settings/widget/RestrictedAppPreference;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 322
    :goto_1
    iget-object p1, p3, Lcom/android/settings/location/InjectedSetting;->title:Ljava/lang/String;

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 323
    invoke-virtual {v2, v1}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 324
    invoke-virtual {v2, v0}, Landroid/support/v7/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 325
    new-instance p1, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;

    invoke-direct {p1, p0, p3}, Lcom/android/settings/location/SettingsInjector$ServiceSettingClickedListener;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;)V

    invoke-virtual {v2, p1}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 326
    invoke-interface {p2, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-object v2
.end method

.method private getSettings(Landroid/os/UserHandle;)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/List<",
            "Lcom/android/settings/location/InjectedSetting;",
            ">;"
        }
    .end annotation

    .line 122
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 123
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.location.SettingInjectorService"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 125
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v2

    .line 126
    nop

    .line 127
    const/16 v3, 0x80

    invoke-virtual {v0, v1, v3, v2}, Landroid/content/pm/PackageManager;->queryIntentServicesAsUser(Landroid/content/Intent;II)Ljava/util/List;

    move-result-object v1

    .line 128
    const-string v3, "SettingsInjector"

    const/4 v4, 0x3

    invoke-static {v3, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 129
    const-string v3, "SettingsInjector"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Found services for profile id "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-direct {v3, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 134
    :try_start_0
    invoke-static {v5, p1, v0}, Lcom/android/settings/location/SettingsInjector;->parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings/location/InjectedSetting;

    move-result-object v6

    .line 135
    if-nez v6, :cond_1

    .line 136
    const-string v6, "SettingsInjector"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to load service info "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 138
    :cond_1
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 142
    :catch_0
    move-exception v6

    .line 143
    const-string v7, "SettingsInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load service info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 140
    :catch_1
    move-exception v6

    .line 141
    const-string v7, "SettingsInjector"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unable to load service info "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v7, v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 144
    :goto_1
    nop

    .line 145
    :goto_2
    goto :goto_0

    .line 146
    :cond_2
    const-string p1, "SettingsInjector"

    invoke-static {p1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 147
    const-string p1, "SettingsInjector"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loaded settings for profile id "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    :cond_3
    return-object v3
.end method

.method private static parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings/location/InjectedSetting;
    .locals 6

    .line 213
    sget-object v0, Landroid/R$styleable;->SettingInjectorService:[I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p3

    .line 217
    const/4 p4, 0x1

    :try_start_0
    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object p4

    .line 218
    nop

    .line 219
    const/4 v0, 0x0

    invoke-virtual {p3, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 220
    const/4 v1, 0x2

    .line 221
    invoke-virtual {p3, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 222
    const/4 v2, 0x3

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 224
    const-string v4, "SettingsInjector"

    invoke-static {v4, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 225
    const-string v2, "SettingsInjector"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parsed title: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", iconId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ", settingsActivity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    :cond_0
    new-instance v2, Lcom/android/settings/location/InjectedSetting$Builder;

    invoke-direct {v2}, Lcom/android/settings/location/InjectedSetting$Builder;-><init>()V

    .line 229
    invoke-virtual {v2, p0}, Lcom/android/settings/location/InjectedSetting$Builder;->setPackageName(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 230
    invoke-virtual {p0, p1}, Lcom/android/settings/location/InjectedSetting$Builder;->setClassName(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 231
    invoke-virtual {p0, p4}, Lcom/android/settings/location/InjectedSetting$Builder;->setTitle(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 232
    invoke-virtual {p0, v0}, Lcom/android/settings/location/InjectedSetting$Builder;->setIconId(I)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 233
    invoke-virtual {p0, p2}, Lcom/android/settings/location/InjectedSetting$Builder;->setUserHandle(Landroid/os/UserHandle;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 234
    invoke-virtual {p0, v1}, Lcom/android/settings/location/InjectedSetting$Builder;->setSettingsActivity(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 235
    invoke-virtual {p0, v3}, Lcom/android/settings/location/InjectedSetting$Builder;->setUserRestriction(Ljava/lang/String;)Lcom/android/settings/location/InjectedSetting$Builder;

    move-result-object p0

    .line 236
    invoke-virtual {p0}, Lcom/android/settings/location/InjectedSetting$Builder;->build()Lcom/android/settings/location/InjectedSetting;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 238
    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    .line 228
    return-object p0

    .line 238
    :catchall_0
    move-exception p0

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    throw p0
.end method

.method private static parseServiceInfo(Landroid/content/pm/ResolveInfo;Landroid/os/UserHandle;Landroid/content/pm/PackageManager;)Lcom/android/settings/location/InjectedSetting;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xmlpull/v1/XmlPullParserException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 162
    iget-object v0, p0, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 163
    iget-object v1, v0, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 165
    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v2, 0x1

    and-int/2addr v1, v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 166
    const-string v1, "SettingsInjector"

    const/4 v4, 0x5

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 167
    const-string p1, "SettingsInjector"

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Ignoring attempt to inject setting from app not in system image: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 169
    return-object v3

    .line 173
    :cond_0
    nop

    .line 175
    :try_start_0
    const-string v1, "android.location.SettingInjectorService"

    invoke-virtual {v0, p2, v1}, Landroid/content/pm/ServiceInfo;->loadXmlMetaData(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/content/res/XmlResourceParser;

    move-result-object v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 176
    if-eqz v1, :cond_4

    .line 181
    :try_start_1
    invoke-static {v1}, Landroid/util/Xml;->asAttributeSet(Lorg/xmlpull/v1/XmlPullParser;)Landroid/util/AttributeSet;

    move-result-object p0

    .line 184
    :goto_0
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v3

    if-eq v3, v2, :cond_1

    const/4 v4, 0x2

    if-eq v3, v4, :cond_1

    goto :goto_0

    .line 188
    :cond_1
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v2

    .line 189
    const-string v3, "injected-location-setting"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 194
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    .line 195
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v3

    .line 194
    invoke-virtual {p2, v2, v3}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object p2

    .line 196
    iget-object v2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v2, v3, p1, p2, p0}, Lcom/android/settings/location/SettingsInjector;->parseAttributes(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;Landroid/content/res/Resources;Landroid/util/AttributeSet;)Lcom/android/settings/location/InjectedSetting;

    move-result-object p0
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 201
    if-eqz v1, :cond_2

    .line 202
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    .line 196
    :cond_2
    return-object p0

    .line 190
    :cond_3
    :try_start_2
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    const-string p1, "Meta-data does not start with injected-location-setting tag"

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 177
    :cond_4
    new-instance p1, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No android.location.SettingInjectorService meta-data for "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, ": "

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 201
    :catchall_0
    move-exception p0

    goto :goto_2

    .line 197
    :catch_0
    move-exception p0

    move-object v3, v1

    goto :goto_1

    .line 201
    :catchall_1
    move-exception p0

    move-object v1, v3

    goto :goto_2

    .line 197
    :catch_1
    move-exception p0

    .line 198
    :goto_1
    :try_start_3
    new-instance p0, Lorg/xmlpull/v1/XmlPullParserException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "Unable to load resources for package "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, v0, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/xmlpull/v1/XmlPullParserException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 201
    :goto_2
    if-eqz v1, :cond_5

    .line 202
    invoke-interface {v1}, Landroid/content/res/XmlResourceParser;->close()V

    :cond_5
    throw p0
.end method


# virtual methods
.method public getInjectedSettings(Landroid/content/Context;I)Ljava/util/List;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "I)",
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation

    .line 249
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 250
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 252
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    .line 253
    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_2

    .line 254
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 255
    const/4 v5, -0x2

    if-eq p2, v5, :cond_0

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne p2, v5, :cond_1

    .line 256
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 257
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/location/InjectedSetting;

    .line 258
    invoke-direct {p0, p1, v1, v5}, Lcom/android/settings/location/SettingsInjector;->addServiceSetting(Landroid/content/Context;Ljava/util/List;Lcom/android/settings/location/InjectedSetting;)Landroid/support/v7/preference/Preference;

    move-result-object v6

    .line 259
    iget-object v7, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    new-instance v8, Lcom/android/settings/location/SettingsInjector$Setting;

    const/4 v9, 0x0

    invoke-direct {v8, p0, v5, v6, v9}, Lcom/android/settings/location/SettingsInjector$Setting;-><init>(Lcom/android/settings/location/SettingsInjector;Lcom/android/settings/location/InjectedSetting;Landroid/support/v7/preference/Preference;Lcom/android/settings/location/SettingsInjector$1;)V

    invoke-interface {v7, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 260
    goto :goto_1

    .line 253
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 264
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/location/SettingsInjector;->reloadStatusMessages()V

    .line 266
    return-object v1
.end method

.method public hasInjectedSettings(I)Z
    .locals 6

    .line 276
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mContext:Landroid/content/Context;

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 277
    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v0

    .line 278
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 279
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    .line 280
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/UserHandle;

    .line 281
    const/4 v5, -0x2

    if-eq p1, v5, :cond_0

    invoke-virtual {v4}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    if-ne p1, v5, :cond_1

    .line 282
    :cond_0
    invoke-direct {p0, v4}, Lcom/android/settings/location/SettingsInjector;->getSettings(Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object v4

    .line 283
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/location/InjectedSetting;

    .line 284
    const/4 p1, 0x1

    return p1

    .line 279
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 288
    :cond_2
    return v2
.end method

.method public reloadStatusMessages()V
    .locals 3

    .line 295
    const-string v0, "SettingsInjector"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 296
    const-string v0, "SettingsInjector"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "reloadingStatusMessages: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/settings/location/SettingsInjector;->mSettings:Ljava/util/Set;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    :cond_0
    iget-object v0, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/location/SettingsInjector;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 299
    return-void
.end method
