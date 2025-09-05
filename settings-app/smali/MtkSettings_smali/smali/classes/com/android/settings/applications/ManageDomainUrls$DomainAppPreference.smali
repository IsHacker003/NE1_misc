.class Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;
.super Lcom/android/settings/widget/AppPreference;
.source "ManageDomainUrls.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/ManageDomainUrls;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "DomainAppPreference"
.end annotation


# instance fields
.field private final mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

.field private final mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

.field private final mPm:Landroid/content/pm/PackageManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/applications/ApplicationsState;Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)V
    .locals 0

    .line 235
    invoke-direct {p0, p1}, Lcom/android/settings/widget/AppPreference;-><init>(Landroid/content/Context;)V

    .line 236
    iput-object p2, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    .line 237
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 238
    iput-object p3, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    .line 239
    iget-object p1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->ensureLabel(Landroid/content/Context;)V

    .line 240
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setState()V

    .line 241
    iget-object p1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    .line 242
    iget-object p1, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object p1, p1, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 244
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState$AppEntry;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    return-object p0
.end method

.method static synthetic access$100(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)Lcom/android/settingslib/applications/ApplicationsState;
    .locals 0

    .line 228
    iget-object p0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mApplicationsState:Lcom/android/settingslib/applications/ApplicationsState;

    return-object p0
.end method

.method private getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 4

    .line 276
    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    .line 277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getIntentVerificationStatusAsUser(Ljava/lang/String;I)I

    move-result v0

    .line 278
    const v1, 0x7f120596    # @string/domain_urls_summary_none 'Don’t open supported links'

    const/4 v2, 0x3

    if-ne v0, v2, :cond_0

    .line 279
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mPm:Landroid/content/pm/PackageManager;

    invoke-static {v0, p1}, Lcom/android/settings/Utils;->getHandledDomains(Landroid/content/pm/PackageManager;Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    .line 284
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 285
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 286
    :cond_1
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 287
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120597    # @string/domain_urls_summary_one 'Open %s'

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 289
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const v3, 0x7f120598    # @string/domain_urls_summary_some 'Open %s and other URLs'

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p1, v2}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    aput-object p1, v1, v2

    invoke-virtual {v0, v3, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private setState()V
    .locals 1

    .line 247
    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 248
    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->getDomainsSummary(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 249
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 2

    .line 258
    iget-object v0, p0, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->mEntry:Lcom/android/settingslib/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settingslib/applications/ApplicationsState$AppEntry;->icon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p1, Landroid/support/v7/preference/PreferenceViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;

    invoke-direct {v1, p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference$1;-><init>(Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 270
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/widget/AppPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 271
    return-void
.end method

.method public reuse()V
    .locals 0

    .line 252
    invoke-direct {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->setState()V

    .line 253
    invoke-virtual {p0}, Lcom/android/settings/applications/ManageDomainUrls$DomainAppPreference;->notifyChanged()V

    .line 254
    return-void
.end method
