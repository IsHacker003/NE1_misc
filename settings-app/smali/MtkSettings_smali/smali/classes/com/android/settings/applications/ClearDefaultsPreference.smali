.class public Lcom/android/settings/applications/ClearDefaultsPreference;
.super Landroid/support/v7/preference/Preference;
.source "ClearDefaultsPreference.java"


# static fields
.field protected static final TAG:Ljava/lang/String;


# instance fields
.field private mActivitiesButton:Landroid/widget/Button;

.field protected mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

.field private mPackageName:Ljava/lang/String;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mUsbManager:Landroid/hardware/usb/IUsbManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    const-class v0, Lcom/android/settings/applications/ClearDefaultsPreference;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ClearDefaultsPreference;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 79
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    const v0, 0x7f040129    # @attr/preferenceStyle

    const v1, 0x101008e    # @android:attr/preferenceStyle

    invoke-static {p1, v0, v1}, Landroid/support/v4/content/res/TypedArrayUtils;->getAttr(Landroid/content/Context;II)I

    move-result v0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .line 68
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/settings/applications/ClearDefaultsPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 69
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 57
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    const p2, 0x7f0d0035    # @layout/app_preferred_settings 'res/layout/app_preferred_settings.xml'

    invoke-virtual {p0, p2}, Lcom/android/settings/applications/ClearDefaultsPreference;->setLayoutResource(I)V

    .line 61
    invoke-static {p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object p2

    iput-object p2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    .line 62
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 63
    const-string p1, "usb"

    invoke-static {p1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object p1

    .line 64
    invoke-static {p1}, Landroid/hardware/usb/IUsbManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/hardware/usb/IUsbManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    .line 65
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/hardware/usb/IUsbManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ClearDefaultsPreference;)Ljava/lang/String;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/content/pm/PackageManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    return-object p0
.end method

.method static synthetic access$300(Lcom/android/settings/applications/ClearDefaultsPreference;Ljava/lang/String;)Z
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/android/settings/applications/ClearDefaultsPreference;)Landroid/appwidget/AppWidgetManager;
    .locals 0

    .line 43
    iget-object p0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    return-object p0
.end method

.method static synthetic access$500(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/widget/TextView;)V
    .locals 0

    .line 43
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    return-void
.end method

.method private isDefaultBrowser(Ljava/lang/String;)Z
    .locals 2

    .line 169
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getDefaultBrowserPackageNameAsUser(I)Ljava/lang/String;

    move-result-object v0

    .line 170
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private resetLaunchDefaultsUi(Landroid/widget/TextView;)V
    .locals 1

    .line 174
    const v0, 0x7f12018d    # @string/auto_launch_disable_text 'No defaults set.'

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 176
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 177
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 91
    invoke-super {p0, p1}, Landroid/support/v7/preference/Preference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 93
    const v0, 0x7f0a00bb    # @id/clear_activities_button

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    .line 94
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    new-instance v1, Lcom/android/settings/applications/ClearDefaultsPreference$1;

    invoke-direct {v1, p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference$1;-><init>(Lcom/android/settings/applications/ClearDefaultsPreference;Landroid/support/v7/preference/PreferenceViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 115
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->updateUI(Landroid/support/v7/preference/PreferenceViewHolder;)Z

    .line 116
    return-void
.end method

.method public setAppEntry(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 86
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 87
    return-void
.end method

.method public setPackageName(Ljava/lang/String;)V
    .locals 0

    .line 82
    iput-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 83
    return-void
.end method

.method public updateUI(Landroid/support/v7/preference/PreferenceViewHolder;)Z
    .locals 10

    .line 119
    iget-object v0, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppWidgetManager:Landroid/appwidget/AppWidgetManager;

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mAppEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v1, v1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 120
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->hasBindAppWidgetPermission(Ljava/lang/String;)Z

    move-result v0

    .line 122
    const v1, 0x7f0a005f    # @id/auto_launch

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 123
    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPm:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/android/settingslib/applications/AppUtils;->hasPreferredActivities(Landroid/content/pm/PackageManager;Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 124
    invoke-direct {p0, v1}, Lcom/android/settings/applications/ClearDefaultsPreference;->isDefaultBrowser(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mUsbManager:Landroid/hardware/usb/IUsbManager;

    iget-object v4, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mPackageName:Ljava/lang/String;

    .line 125
    invoke-static {v1, v4}, Lcom/android/settingslib/applications/AppUtils;->hasUsbDefaults(Landroid/hardware/usb/IUsbManager;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 126
    :cond_0
    move v1, v3

    goto :goto_1

    .line 125
    :cond_1
    :goto_0
    nop

    .line 126
    move v1, v2

    :goto_1
    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 127
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ClearDefaultsPreference;->resetLaunchDefaultsUi(Landroid/widget/TextView;)V

    goto/16 :goto_6

    .line 129
    :cond_2
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 131
    move v4, v2

    goto :goto_2

    .line 129
    :cond_3
    nop

    .line 131
    move v4, v3

    :goto_2
    if-eqz v0, :cond_4

    .line 132
    const v5, 0x7f120190    # @string/auto_launch_label_generic 'Defaults'

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 134
    :cond_4
    const v5, 0x7f12018f    # @string/auto_launch_label 'Open by default'

    invoke-virtual {p1, v5}, Landroid/widget/TextView;->setText(I)V

    .line 137
    :goto_3
    invoke-virtual {p0}, Lcom/android/settings/applications/ClearDefaultsPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 138
    const/4 v6, 0x0

    .line 139
    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0700e9    # @dimen/installed_app_details_bullet_offset '8.0dp'

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 141
    const/4 v8, 0x2

    if-eqz v1, :cond_6

    .line 142
    const v1, 0x7f12018e    # @string/auto_launch_enable_text 'You’ve chosen to launch this app by default for some actions.'

    invoke-virtual {v5, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    .line 144
    new-instance v6, Landroid/text/SpannableString;

    invoke-direct {v6, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 145
    if-eqz v4, :cond_5

    .line 146
    new-instance v9, Landroid/text/style/BulletSpan;

    invoke-direct {v9, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-virtual {v6, v9, v3, v1, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 148
    :cond_5
    nop

    .line 149
    new-array v1, v8, [Ljava/lang/CharSequence;

    aput-object v6, v1, v3

    const-string v6, "\n"

    aput-object v6, v1, v2

    invoke-static {v1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v6

    .line 151
    :cond_6
    if-eqz v0, :cond_9

    .line 152
    const v0, 0x7f1200db    # @string/always_allow_bind_appwidgets_text 'You’ve chosen to allow this app to create widgets and access their data.'

    .line 153
    invoke-virtual {v5, v0}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    .line 154
    new-instance v1, Landroid/text/SpannableString;

    invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 155
    if-eqz v4, :cond_7

    .line 156
    new-instance v4, Landroid/text/style/BulletSpan;

    invoke-direct {v4, v7}, Landroid/text/style/BulletSpan;-><init>(I)V

    .line 157
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 156
    invoke-virtual {v1, v4, v3, v0, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 159
    :cond_7
    if-nez v6, :cond_8

    .line 160
    new-array v0, v8, [Ljava/lang/CharSequence;

    aput-object v1, v0, v3

    const-string v1, "\n"

    aput-object v1, v0, v2

    :goto_4
    invoke-static {v0}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 162
    move-object v6, v0

    goto :goto_5

    .line 160
    :cond_8
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/CharSequence;

    aput-object v6, v0, v3

    const-string v3, "\n"

    aput-object v3, v0, v2

    aput-object v1, v0, v8

    const/4 v1, 0x3

    const-string v3, "\n"

    aput-object v3, v0, v1

    goto :goto_4

    .line 162
    :cond_9
    :goto_5
    invoke-virtual {p1, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 163
    iget-object p1, p0, Lcom/android/settings/applications/ClearDefaultsPreference;->mActivitiesButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 165
    :goto_6
    return v2
.end method
