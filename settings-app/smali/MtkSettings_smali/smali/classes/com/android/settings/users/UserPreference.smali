.class public Lcom/android/settings/users/UserPreference;
.super Lcom/android/settingslib/RestrictedPreference;
.source "UserPreference.java"


# static fields
.field public static final SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Lcom/android/settings/users/UserPreference;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mDeleteClickListener:Landroid/view/View$OnClickListener;

.field private mSerialNumber:I

.field private mSettingsClickListener:Landroid/view/View$OnClickListener;

.field private mUserId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 41
    new-instance v0, Lcom/android/settings/users/UserPreference$1;

    invoke-direct {v0}, Lcom/android/settings/users/UserPreference$1;-><init>()V

    sput-object v0, Lcom/android/settings/users/UserPreference;->SERIAL_NUMBER_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6

    .line 64
    const/16 v3, -0xa

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/users/UserPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V

    .line 65
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/view/View$OnClickListener;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/android/settingslib/RestrictedPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 59
    const/16 p1, -0xa

    iput p1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 71
    if-nez p5, :cond_0

    if-eqz p4, :cond_1

    .line 72
    :cond_0
    const p1, 0x7f0d0128    # @layout/restricted_preference_user_delete_widget 'res/layout/restricted_preference_user_delete_widget.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->setWidgetLayoutResource(I)V

    .line 74
    :cond_1
    iput-object p5, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    .line 75
    iput-object p4, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    .line 76
    iput p3, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 77
    const/4 p1, 0x1

    invoke-virtual {p0, p1}, Lcom/android/settings/users/UserPreference;->useAdminDisabledSummary(Z)V

    .line 78
    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/users/UserPreference;)I
    .locals 0

    .line 35
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->getSerialNumber()I

    move-result p0

    return p0
.end method

.method private canDeleteUser()Z
    .locals 3

    .line 143
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 144
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "no_remove_user"

    .line 145
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    .line 144
    invoke-static {v0, v1, v2}, Lcom/android/settingslib/RestrictedLockUtils;->hasBaseUserRestriction(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 143
    :goto_0
    return v0
.end method

.method private dimIcon(Z)V
    .locals 2

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 82
    if-eqz v0, :cond_1

    .line 83
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    if-eqz p1, :cond_0

    const/16 p1, 0x66

    goto :goto_0

    :cond_0
    const/16 p1, 0xff

    :goto_0
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 84
    invoke-virtual {p0, v0}, Lcom/android/settings/users/UserPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 86
    :cond_1
    return-void
.end method

.method private getSerialNumber()I
    .locals 2

    .line 149
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-ne v0, v1, :cond_0

    const/high16 v0, -0x80000000

    return v0

    .line 150
    :cond_0
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    .line 152
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xa

    if-ne v0, v1, :cond_1

    .line 153
    const v0, 0x7fffffff

    return v0

    .line 154
    :cond_1
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    const/16 v1, -0xb

    if-ne v0, v1, :cond_2

    .line 155
    const v0, 0x7ffffffe

    return v0

    .line 157
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iget v1, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    .line 158
    invoke-virtual {v0, v1}, Landroid/os/UserManager;->getUserSerialNumber(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    .line 159
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    if-gez v0, :cond_3

    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0

    .line 161
    :cond_3
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mSerialNumber:I

    return v0
.end method


# virtual methods
.method public getUserId()I
    .locals 1

    .line 165
    iget v0, p0, Lcom/android/settings/users/UserPreference;->mUserId:I

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 6

    .line 104
    invoke-super {p0, p1}, Lcom/android/settingslib/RestrictedPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 105
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->isDisabledByAdmin()Z

    move-result v0

    .line 106
    invoke-direct {p0, v0}, Lcom/android/settings/users/UserPreference;->dimIcon(Z)V

    .line 107
    const v1, 0x7f0a03ba    # @id/user_delete_widget

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 108
    const/4 v2, 0x0

    const/16 v3, 0x8

    if-eqz v1, :cond_1

    .line 109
    if-eqz v0, :cond_0

    move v4, v3

    goto :goto_0

    :cond_0
    move v4, v2

    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 111
    :cond_1
    if-nez v0, :cond_6

    .line 112
    const v0, 0x7f0a0113    # @id/divider_delete

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 113
    const v1, 0x7f0a0114    # @id/divider_manage

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 114
    const v4, 0x7f0a039a    # @id/trash_user

    invoke-virtual {p1, v4}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 115
    if-eqz v4, :cond_3

    .line 116
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->canDeleteUser()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 117
    invoke-virtual {v4, v2}, Landroid/view/View;->setVisibility(I)V

    .line 118
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 119
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v4, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 120
    invoke-virtual {v4, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_1

    .line 122
    :cond_2
    invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V

    .line 123
    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 126
    :cond_3
    :goto_1
    const v0, 0x7f0a0202    # @id/manage_user

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 127
    if-eqz p1, :cond_6

    .line 128
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_5

    .line 129
    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 130
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mDeleteClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_4

    .line 131
    goto :goto_2

    .line 130
    :cond_4
    move v2, v3

    :goto_2
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    invoke-virtual {p1, p0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    .line 135
    :cond_5
    invoke-virtual {p1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 136
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 140
    :cond_6
    :goto_3
    return-void
.end method

.method protected shouldHideSecondTarget()Z
    .locals 3

    .line 90
    invoke-virtual {p0}, Lcom/android/settings/users/UserPreference;->isDisabledByAdmin()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 92
    return v1

    .line 94
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/users/UserPreference;->canDeleteUser()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 96
    return v2

    .line 99
    :cond_1
    iget-object v0, p0, Lcom/android/settings/users/UserPreference;->mSettingsClickListener:Landroid/view/View$OnClickListener;

    if-nez v0, :cond_2

    goto :goto_0

    :cond_2
    move v1, v2

    :goto_0
    return v1
.end method
