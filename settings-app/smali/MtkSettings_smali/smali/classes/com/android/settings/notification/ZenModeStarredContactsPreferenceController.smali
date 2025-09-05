.class public Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;
.super Lcom/android/settings/notification/AbstractZenModePreferenceController;
.source "ZenModeStarredContactsPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceClickListener;


# instance fields
.field mFallbackIntent:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mPackageManager:Landroid/content/pm/PackageManager;

.field private mPreference:Landroid/support/v7/preference/Preference;

.field private final mPriorityCategory:I

.field mStarredContactsIntent:Landroid/content/Intent;
    .annotation build Lcom/android/internal/annotations/VisibleForTesting;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/settingslib/core/lifecycle/Lifecycle;I)V
    .locals 1

    .line 55
    const-string v0, "zen_mode_starred_contacts"

    invoke-direct {p0, p1, v0, p2}, Lcom/android/settings/notification/AbstractZenModePreferenceController;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/android/settingslib/core/lifecycle/Lifecycle;)V

    .line 56
    iput p3, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPriorityCategory:I

    .line 57
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 59
    new-instance p1, Landroid/content/Intent;

    const-string p2, "com.android.contacts.action.LIST_STARRED"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    .line 61
    new-instance p1, Landroid/content/Intent;

    const-string p2, "android.intent.action.MAIN"

    invoke-direct {p1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    .line 62
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    const-string p2, "android.intent.category.APP_CONTACTS"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 63
    return-void
.end method

.method private getStarredContacts()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 134
    iget-object v1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v3, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "display_name"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v4

    const-string v5, "starred=1"

    const-string v7, "times_contacted"

    const/4 v6, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 139
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 141
    :cond_0
    const/4 v2, 0x0

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 142
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_0

    .line 144
    :cond_1
    return-object v0
.end method

.method private isIntentValid()Z
    .locals 2

    .line 148
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 149
    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 148
    :goto_1
    return v0
.end method


# virtual methods
.method public displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V
    .locals 1

    .line 67
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->displayPreference(Landroid/support/v7/preference/PreferenceScreen;)V

    .line 68
    const-string v0, "zen_mode_starred_contacts"

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    .line 69
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-virtual {p1, p0}, Landroid/support/v7/preference/Preference;->setOnPreferenceClickListener(Landroid/support/v7/preference/Preference$OnPreferenceClickListener;)V

    .line 70
    return-void
.end method

.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    .line 74
    const-string v0, "zen_mode_starred_contacts"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 5

    .line 79
    iget v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPriorityCategory:I

    const/4 v1, 0x1

    const/4 v2, 0x2

    const/16 v3, 0x8

    const/4 v4, 0x0

    if-ne v0, v3, :cond_1

    .line 80
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 81
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityCallSenders()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 82
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->isIntentValid()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    move v1, v4

    :goto_0
    return v1

    .line 83
    :cond_1
    iget v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPriorityCategory:I

    const/4 v3, 0x4

    if-ne v0, v3, :cond_3

    .line 84
    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    invoke-virtual {v0, v3}, Lcom/android/settings/notification/ZenModeBackend;->isPriorityCategoryEnabled(I)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mBackend:Lcom/android/settings/notification/ZenModeBackend;

    .line 85
    invoke-virtual {v0}, Lcom/android/settings/notification/ZenModeBackend;->getPriorityMessageSenders()I

    move-result v0

    if-ne v0, v2, :cond_2

    .line 86
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->isIntentValid()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 84
    :cond_2
    move v1, v4

    :goto_1
    return v1

    .line 89
    :cond_3
    return v4
.end method

.method public onPreferenceClick(Landroid/support/v7/preference/Preference;)Z
    .locals 1

    .line 123
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPackageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v0}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 124
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mStarredContactsIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 126
    :cond_0
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mFallbackIntent:Landroid/content/Intent;

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 128
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 6

    .line 95
    invoke-super {p0, p1}, Lcom/android/settings/notification/AbstractZenModePreferenceController;->updateState(Landroid/support/v7/preference/Preference;)V

    .line 97
    invoke-direct {p0}, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->getStarredContacts()Ljava/util/List;

    move-result-object p1

    .line 98
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    .line 100
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 102
    if-nez v0, :cond_0

    .line 103
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    const v0, 0x7f121191    # @string/zen_mode_from_none 'None'

    invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 105
    :cond_0
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    const/4 v4, 0x2

    if-ge v3, v4, :cond_1

    if-ge v3, v0, :cond_1

    .line 106
    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 105
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 109
    :cond_1
    const/4 v3, 0x3

    if-ne v0, v3, :cond_2

    .line 110
    invoke-interface {p1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 111
    :cond_2
    if-le v0, v4, :cond_3

    .line 112
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v3, 0x7f100046    # @plurals/zen_mode_starred_contacts_summary_additional_contacts

    sub-int/2addr v0, v4

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 114
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    .line 112
    invoke-virtual {p1, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 118
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/android/settings/notification/ZenModeStarredContactsPreferenceController;->mPreference:Landroid/support/v7/preference/Preference;

    invoke-static {}, Landroid/icu/text/ListFormatter;->getInstance()Landroid/icu/text/ListFormatter;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/icu/text/ListFormatter;->format(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 119
    return-void
.end method
