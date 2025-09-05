.class public Lcom/android/settings/TimeoutListPreference;
.super Lcom/android/settings/RestrictedListPreference;
.source "TimeoutListPreference.java"


# instance fields
.field private mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

.field private final mInitialEntries:[Ljava/lang/CharSequence;

.field private final mInitialValues:[Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    .line 41
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object p1

    iput-object p1, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/TimeoutListPreference;)Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;
    .locals 0

    .line 33
    iget-object p0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    return-object p0
.end method


# virtual methods
.method protected onDialogCreated(Landroid/app/Dialog;)V
    .locals 1

    .line 57
    invoke-super {p0, p1}, Lcom/android/settings/RestrictedListPreference;->onDialogCreated(Landroid/app/Dialog;)V

    .line 58
    invoke-virtual {p1}, Landroid/app/Dialog;->create()V

    .line 59
    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz v0, :cond_0

    .line 60
    const v0, 0x7f0a0034    # @id/admin_disabled_other_options

    invoke-virtual {p1, v0}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 61
    const v0, 0x7f0a0036    # @id/admin_more_details_link

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/android/settings/TimeoutListPreference$1;

    invoke-direct {v0, p0}, Lcom/android/settings/TimeoutListPreference$1;-><init>(Lcom/android/settings/TimeoutListPreference;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    :cond_0
    return-void
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 0

    .line 47
    invoke-super {p0, p1, p2}, Lcom/android/settings/RestrictedListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;Landroid/content/DialogInterface$OnClickListener;)V

    .line 48
    iget-object p2, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-eqz p2, :cond_0

    .line 49
    const p2, 0x7f0d002a    # @layout/admin_disabled_other_options_footer 'res/layout/admin_disabled_other_options_footer.xml'

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(I)Landroid/app/AlertDialog$Builder;

    goto :goto_0

    .line 51
    :cond_0
    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    .line 53
    :goto_0
    return-void
.end method

.method public removeUnusableTimeouts(JLcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V
    .locals 6

    .line 73
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "device_policy"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/admin/DevicePolicyManager;

    .line 75
    if-nez v0, :cond_0

    .line 76
    return-void

    .line 79
    :cond_0
    if-nez p3, :cond_1

    iget-object v0, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->isDisabledByAdmin()Z

    move-result v0

    if-nez v0, :cond_1

    .line 80
    return-void

    .line 82
    :cond_1
    if-nez p3, :cond_2

    .line 83
    const-wide p1, 0x7fffffffffffffffL

    .line 86
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 87
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 88
    const/4 v2, 0x0

    move v3, v2

    :goto_0
    iget-object v4, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    array-length v4, v4

    if-ge v3, v4, :cond_4

    .line 89
    iget-object v4, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 90
    cmp-long v4, v4, p1

    if-gtz v4, :cond_3

    .line 91
    iget-object v4, p0, Lcom/android/settings/TimeoutListPreference;->mInitialEntries:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 92
    iget-object v4, p0, Lcom/android/settings/TimeoutListPreference;->mInitialValues:[Ljava/lang/CharSequence;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 98
    :cond_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_5

    .line 99
    invoke-virtual {p0, p3}, Lcom/android/settings/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 100
    return-void

    .line 102
    :cond_5
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/settings/TimeoutListPreference;->setDisabledByAdmin(Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;)V

    .line 105
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v4

    array-length v4, v4

    if-eq v3, v4, :cond_7

    .line 106
    invoke-virtual {p0}, Lcom/android/settings/TimeoutListPreference;->getValue()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 107
    new-array v4, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeoutListPreference;->setEntries([Ljava/lang/CharSequence;)V

    .line 108
    new-array v0, v2, [Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/TimeoutListPreference;->setEntryValues([Ljava/lang/CharSequence;)V

    .line 109
    iput-object p3, p0, Lcom/android/settings/TimeoutListPreference;->mAdmin:Lcom/android/settingslib/RestrictedLockUtils$EnforcedAdmin;

    .line 110
    int-to-long v4, v3

    cmp-long p3, v4, p1

    if-gtz p3, :cond_6

    .line 111
    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_1

    .line 112
    :cond_6
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    if-lez p3, :cond_7

    .line 113
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p3

    add-int/lit8 p3, p3, -0x1

    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    invoke-interface {p3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    cmp-long p3, v0, p1

    if-nez p3, :cond_7

    .line 116
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/settings/TimeoutListPreference;->setValue(Ljava/lang/String;)V

    .line 123
    :cond_7
    :goto_1
    return-void
.end method
