.class public Lcom/android/settings/accounts/AccountRestrictionHelper;
.super Ljava/lang/Object;
.source "AccountRestrictionHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    .line 31
    return-void
.end method

.method public static showAccount([Ljava/lang/String;Ljava/util/ArrayList;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .line 66
    nop

    .line 67
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 68
    nop

    .line 69
    array-length v2, p0

    move v3, v0

    :goto_0
    if-ge v3, v2, :cond_2

    aget-object v4, p0, v3

    .line 70
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 71
    return v1

    .line 69
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 75
    :cond_1
    move v0, v1

    :cond_2
    return v0
.end method


# virtual methods
.method public createAccessiblePreferenceCategory(Landroid/content/Context;)Lcom/android/settings/AccessiblePreferenceCategory;
    .locals 1

    .line 56
    new-instance v0, Lcom/android/settings/AccessiblePreferenceCategory;

    invoke-direct {v0, p1}, Lcom/android/settings/AccessiblePreferenceCategory;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method public enforceRestrictionOnPreference(Lcom/android/settingslib/RestrictedPreference;Ljava/lang/String;I)V
    .locals 1

    .line 41
    if-nez p1, :cond_0

    .line 42
    return-void

    .line 44
    :cond_0
    invoke-virtual {p0, p2, p3}, Lcom/android/settings/accounts/AccountRestrictionHelper;->hasBaseUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 45
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lcom/android/settingslib/RestrictedPreference;->setEnabled(Z)V

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual {p1, p2, p3}, Lcom/android/settingslib/RestrictedPreference;->checkRestrictionAndSetDisabled(Ljava/lang/String;I)V

    .line 49
    :goto_0
    return-void
.end method

.method public hasBaseUserRestriction(Ljava/lang/String;I)Z
    .locals 1

    .line 52
    iget-object v0, p0, Lcom/android/settings/accounts/AccountRestrictionHelper;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    return p1
.end method
