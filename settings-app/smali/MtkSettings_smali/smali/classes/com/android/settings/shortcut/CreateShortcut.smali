.class public Lcom/android/settings/shortcut/CreateShortcut;
.super Landroid/app/LauncherActivity;
.source "CreateShortcut.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/shortcut/CreateShortcut$ShortcutsUpdateTask;
    }
.end annotation


# static fields
.field static final SHORTCUT_ID_PREFIX:Ljava/lang/String; = "component-shortcut-"


# instance fields
.field private isSupportCustomizedUI:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 55
    invoke-direct {p0}, Landroid/app/LauncherActivity;-><init>()V

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/shortcut/CreateShortcut;->isSupportCustomizedUI:Z

    return-void
.end method

.method private createIcon(III)Landroid/graphics/Bitmap;
    .locals 3

    .line 136
    new-instance v0, Landroid/view/ContextThemeWrapper;

    const v1, 0x1030224    # @android:style/Theme.Material

    invoke-direct {v0, p0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 137
    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 138
    invoke-virtual {p0, p1}, Lcom/android/settings/shortcut/CreateShortcut;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 139
    instance-of v0, p1, Landroid/graphics/drawable/LayerDrawable;

    if-eqz v0, :cond_0

    .line 140
    check-cast p1, Landroid/graphics/drawable/LayerDrawable;

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/LayerDrawable;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 142
    :cond_0
    const v0, 0x1020006    # @android:id/icon

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 144
    const/high16 p1, 0x40000000    # 2.0f

    invoke-static {p3, p1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 145
    invoke-virtual {p2, p1, p1}, Landroid/view/View;->measure(II)V

    .line 146
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result p1

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result p3

    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {p1, p3, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 148
    new-instance p3, Landroid/graphics/Canvas;

    invoke-direct {p3, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 149
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p2, v2, v2, v0, v1}, Landroid/view/View;->layout(IIII)V

    .line 150
    invoke-virtual {p2, p3}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 151
    return-object p1
.end method

.method static getBaseIntent()Landroid/content/Intent;
    .locals 2

    .line 194
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "com.android.settings.SHORTCUT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method private static getCustomizedIcon(Landroid/content/pm/ActivityInfo;)I
    .locals 2

    .line 232
    if-eqz p0, :cond_3

    .line 233
    iget-object p0, p0, Landroid/content/pm/ActivityInfo;->metaData:Landroid/os/Bundle;

    .line 234
    if-eqz p0, :cond_3

    .line 235
    const/4 v0, 0x0

    .line 236
    const-string v1, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {p0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 237
    const-string v0, "com.android.settings.FRAGMENT_CLASS"

    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 240
    :cond_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 241
    const-class p0, Lcom/android/settings/notification/ConfigureNotificationSettings;

    .line 242
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 241
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    const v1, 0x7f080158    # @drawable/ic_settings 'res/drawable/ic_settings.xml'

    if-eqz p0, :cond_1

    .line 243
    return v1

    .line 244
    :cond_1
    const-class p0, Lcom/android/settings/notification/NotificationStation;

    .line 245
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 244
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 246
    return v1

    .line 247
    :cond_2
    const-class p0, Lcom/android/settings/applications/manageapplications/ManageApplications;

    .line 248
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    .line 247
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_3

    .line 249
    return v1

    .line 255
    :cond_3
    const/4 p0, 0x0

    return p0
.end method

.method private logCreateShortcut(Landroid/content/pm/ResolveInfo;)V
    .locals 3

    .line 127
    if-eqz p1, :cond_1

    iget-object v0, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-nez v0, :cond_0

    goto :goto_0

    .line 130
    :cond_0
    invoke-static {p0}, Lcom/android/settings/overlay/FeatureFactory;->getFactory(Landroid/content/Context;)Lcom/android/settings/overlay/FeatureFactory;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/settings/overlay/FeatureFactory;->getMetricsFeatureProvider()Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;

    move-result-object v0

    const/16 v1, 0x33d

    iget-object p1, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object p1, p1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const/4 v2, 0x0

    new-array v2, v2, [Landroid/util/Pair;

    invoke-virtual {v0, p0, v1, p1, v2}, Lcom/android/settingslib/core/instrumentation/MetricsFeatureProvider;->action(Landroid/content/Context;ILjava/lang/String;[Landroid/util/Pair;)V

    .line 133
    return-void

    .line 128
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;
    .locals 5

    .line 89
    const/high16 v0, 0x14000000

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 90
    const-class v0, Landroid/content/pm/ShortcutManager;

    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ShortcutManager;

    .line 91
    iget-object p2, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 93
    iget-boolean v1, p0, Lcom/android/settings/shortcut/CreateShortcut;->isSupportCustomizedUI:Z

    if-eqz v1, :cond_0

    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-nez v1, :cond_0

    .line 94
    invoke-static {p2}, Lcom/android/settings/shortcut/CreateShortcut;->getCustomizedIcon(Landroid/content/pm/ActivityInfo;)I

    move-result v1

    iput v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    .line 97
    :cond_0
    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz v1, :cond_1

    iget v1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    const v2, 0x7f0d014d    # @layout/shortcut_badge_maskable 'res/layout/shortcut_badge_maskable.xml'

    .line 100
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070139    # @dimen/shortcut_size_maskable '120.0dp'

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 98
    invoke-direct {p0, v1, v2, v3}, Lcom/android/settings/shortcut/CreateShortcut;->createIcon(III)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 97
    invoke-static {v1}, Landroid/graphics/drawable/Icon;->createWithAdaptiveBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/drawable/Icon;

    move-result-object v1

    goto :goto_0

    .line 101
    :cond_1
    const v1, 0x7f080122    # @drawable/ic_launcher_settings 'res/drawable/ic_launcher_settings.xml'

    invoke-static {p0, v1}, Landroid/graphics/drawable/Icon;->createWithResource(Landroid/content/Context;I)Landroid/graphics/drawable/Icon;

    move-result-object v1

    .line 102
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "component-shortcut-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 103
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 104
    new-instance v3, Landroid/content/pm/ShortcutInfo$Builder;

    invoke-direct {v3, p0, v2}, Landroid/content/pm/ShortcutInfo$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 105
    invoke-virtual {v3, p3}, Landroid/content/pm/ShortcutInfo$Builder;->setShortLabel(Ljava/lang/CharSequence;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 106
    invoke-virtual {v2, p1}, Landroid/content/pm/ShortcutInfo$Builder;->setIntent(Landroid/content/Intent;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v2

    .line 107
    invoke-virtual {v2, v1}, Landroid/content/pm/ShortcutInfo$Builder;->setIcon(Landroid/graphics/drawable/Icon;)Landroid/content/pm/ShortcutInfo$Builder;

    move-result-object v1

    .line 108
    invoke-virtual {v1}, Landroid/content/pm/ShortcutInfo$Builder;->build()Landroid/content/pm/ShortcutInfo;

    move-result-object v1

    .line 109
    invoke-virtual {v0, v1}, Landroid/content/pm/ShortcutManager;->createShortcutResultIntent(Landroid/content/pm/ShortcutInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 110
    if-nez v0, :cond_2

    .line 111
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 113
    :cond_2
    const-string v1, "android.intent.extra.shortcut.ICON_RESOURCE"

    const v2, 0x7f0f0002    # @mipmap/ic_launcher_settings 'res/mipmap-hdpi/ic_launcher_settings.png'

    .line 114
    invoke-static {p0, v2}, Landroid/content/Intent$ShortcutIconResource;->fromContext(Landroid/content/Context;I)Landroid/content/Intent$ShortcutIconResource;

    move-result-object v2

    .line 113
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 115
    const-string v1, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 116
    const-string p1, "android.intent.extra.shortcut.NAME"

    invoke-virtual {v0, p1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 118
    iget p1, p2, Landroid/content/pm/ActivityInfo;->icon:I

    if-eqz p1, :cond_3

    .line 119
    const-string p1, "android.intent.extra.shortcut.ICON"

    iget p2, p2, Landroid/content/pm/ActivityInfo;->icon:I

    const p3, 0x7f0d014c    # @layout/shortcut_badge 'res/layout/shortcut_badge.xml'

    .line 121
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070138    # @dimen/shortcut_size '40.0dp'

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 119
    invoke-direct {p0, p2, p3, v1}, Lcom/android/settings/shortcut/CreateShortcut;->createIcon(III)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 123
    :cond_3
    return-object v0
.end method

.method protected getTargetIntent()Landroid/content/Intent;
    .locals 2

    .line 74
    invoke-static {}, Lcom/android/settings/shortcut/CreateShortcut;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 65
    invoke-super {p0, p1}, Landroid/app/LauncherActivity;->onCreate(Landroid/os/Bundle;)V

    .line 68
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v0, 0x7f050006    # @bool/config_cust_shortcut_icon 'false'

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/android/settings/shortcut/CreateShortcut;->isSupportCustomizedUI:Z

    .line 70
    return-void
.end method

.method protected onEvaluateShowIcons()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 0

    .line 79
    invoke-virtual {p0, p3}, Lcom/android/settings/shortcut/CreateShortcut;->itemForPosition(I)Landroid/app/LauncherActivity$ListItem;

    move-result-object p1

    .line 80
    iget-object p2, p1, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    invoke-direct {p0, p2}, Lcom/android/settings/shortcut/CreateShortcut;->logCreateShortcut(Landroid/content/pm/ResolveInfo;)V

    .line 81
    invoke-virtual {p0, p3}, Lcom/android/settings/shortcut/CreateShortcut;->intentForPosition(I)Landroid/content/Intent;

    move-result-object p2

    iget-object p3, p1, Landroid/app/LauncherActivity$ListItem;->resolveInfo:Landroid/content/pm/ResolveInfo;

    iget-object p1, p1, Landroid/app/LauncherActivity$ListItem;->label:Ljava/lang/CharSequence;

    invoke-virtual {p0, p2, p3, p1}, Lcom/android/settings/shortcut/CreateShortcut;->createResultIntent(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object p1

    const/4 p2, -0x1

    invoke-virtual {p0, p2, p1}, Lcom/android/settings/shortcut/CreateShortcut;->setResult(ILandroid/content/Intent;)V

    .line 83
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->finish()V

    .line 84
    return-void
.end method

.method protected onQueryPackageManager(Landroid/content/Intent;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/shortcut/CreateShortcut;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object p1

    .line 171
    const-string v0, "connectivity"

    .line 172
    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 173
    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 174
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_0
    if-ltz v1, :cond_4

    .line 175
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ResolveInfo;

    .line 176
    iget-object v3, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v4, Lcom/android/settings/Settings$TetherSettingsActivity;

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 178
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->isTetheringSupported()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {p0}, Lcom/android/settingslib/Utils;->isWifiOnly(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 179
    :cond_1
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_1

    .line 182
    :cond_2
    iget-object v2, v2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    const-class v3, Lcom/android/settings/Settings$DreamSettingsActivity;

    .line 183
    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 184
    sget-boolean v2, Lcom/mediatek/settings/FeatureOption;->MTK_GMO_RAM_OPTIMIZE:Z

    if-eqz v2, :cond_3

    .line 185
    invoke-interface {p1, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 174
    :cond_3
    :goto_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 189
    :cond_4
    return-object p1
.end method

.method protected onSetContentView()V
    .locals 1

    .line 161
    const v0, 0x7f0d0029    # @layout/activity_list 'res/layout/activity_list.xml'

    invoke-virtual {p0, v0}, Lcom/android/settings/shortcut/CreateShortcut;->setContentView(I)V

    .line 162
    return-void
.end method
