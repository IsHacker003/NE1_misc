.class public Lcom/android/settings/users/RestrictionUtils;
.super Ljava/lang/Object;
.source "RestrictionUtils.java"


# static fields
.field public static final sRestrictionDescriptions:[I

.field public static final sRestrictionKeys:[Ljava/lang/String;

.field public static final sRestrictionTitles:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 33
    const-string v0, "no_share_location"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    .line 40
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    const v3, 0x7f120b44    # @string/restriction_location_enable_title 'Location'

    aput v3, v1, v2

    sput-object v1, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    .line 47
    new-array v0, v0, [I

    const v1, 0x7f120b43    # @string/restriction_location_enable_summary 'Let apps use your location information'

    aput v1, v0, v2

    sput-object v0, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    return-void
.end method

.method public static getRestrictions(Landroid/content/Context;Landroid/os/UserHandle;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/os/UserHandle;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 60
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 61
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 62
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 63
    invoke-virtual {p0, p1}, Landroid/os/UserManager;->getUserRestrictions(Landroid/os/UserHandle;)Landroid/os/Bundle;

    move-result-object p0

    .line 65
    const/4 p1, 0x0

    move v2, p1

    :goto_0
    sget-object v3, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    array-length v3, v3

    if-ge v2, v3, :cond_0

    .line 66
    new-instance v3, Landroid/content/RestrictionEntry;

    sget-object v4, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v4, v4, v2

    sget-object v5, Lcom/android/settings/users/RestrictionUtils;->sRestrictionKeys:[Ljava/lang/String;

    aget-object v5, v5, v2

    .line 68
    invoke-virtual {p0, v5, p1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    invoke-direct {v3, v4, v5}, Landroid/content/RestrictionEntry;-><init>(Ljava/lang/String;Z)V

    .line 69
    sget-object v4, Lcom/android/settings/users/RestrictionUtils;->sRestrictionTitles:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/RestrictionEntry;->setTitle(Ljava/lang/String;)V

    .line 70
    sget-object v4, Lcom/android/settings/users/RestrictionUtils;->sRestrictionDescriptions:[I

    aget v4, v4, v2

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/RestrictionEntry;->setDescription(Ljava/lang/String;)V

    .line 71
    invoke-virtual {v3, v6}, Landroid/content/RestrictionEntry;->setType(I)V

    .line 72
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 75
    :cond_0
    return-object v1
.end method

.method public static setRestrictions(Landroid/content/Context;Ljava/util/ArrayList;Landroid/os/UserHandle;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;",
            "Landroid/os/UserHandle;",
            ")V"
        }
    .end annotation

    .line 80
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object p0

    .line 81
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/RestrictionEntry;

    .line 82
    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/RestrictionEntry;->getSelectedState()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v1, v0, p2}, Landroid/os/UserManager;->setUserRestriction(Ljava/lang/String;ZLandroid/os/UserHandle;)V

    .line 83
    goto :goto_0

    .line 84
    :cond_0
    return-void
.end method
