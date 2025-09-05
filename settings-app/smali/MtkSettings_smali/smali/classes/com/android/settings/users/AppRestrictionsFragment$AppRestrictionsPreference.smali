.class Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;
.super Landroid/support/v14/preference/SwitchPreference;
.source "AppRestrictionsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/AppRestrictionsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "AppRestrictionsPreference"
.end annotation


# instance fields
.field private hasSettings:Z

.field private immutable:Z

.field private listener:Landroid/view/View$OnClickListener;

.field private mChildren:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/support/v7/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private panelOpen:Z

.field private restrictions:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 141
    invoke-direct {p0, p1}, Landroid/support/v14/preference/SwitchPreference;-><init>(Landroid/content/Context;)V

    .line 138
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    .line 142
    const p1, 0x7f0d00e0    # @layout/preference_app_restrictions 'res/layout/preference_app_restrictions.xml'

    invoke-virtual {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setLayoutResource(I)V

    .line 143
    iput-object p2, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    .line 144
    return-void
.end method

.method static synthetic access$300(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Landroid/view/View$OnClickListener;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Z)V
    .locals 0

    .line 132
    invoke-direct {p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->setSettingsEnabled(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/ArrayList;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$800(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Z
    .locals 0

    .line 132
    iget-boolean p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    return p0
.end method

.method static synthetic access$900(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;)Ljava/util/List;
    .locals 0

    .line 132
    iget-object p0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->mChildren:Ljava/util/List;

    return-object p0
.end method

.method private setSettingsEnabled(Z)V
    .locals 0

    .line 147
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    .line 148
    return-void
.end method


# virtual methods
.method getRestrictions()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;"
        }
    .end annotation

    .line 163
    iget-object v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    return-object v0
.end method

.method isImmutable()Z
    .locals 1

    .line 159
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    return v0
.end method

.method isPanelOpen()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V
    .locals 5

    .line 180
    invoke-super {p0, p1}, Landroid/support/v14/preference/SwitchPreference;->onBindViewHolder(Landroid/support/v7/preference/PreferenceViewHolder;)V

    .line 182
    const v0, 0x7f0a0053    # @id/app_restrictions_settings

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 183
    iget-boolean v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 184
    const v1, 0x7f0a02fb    # @id/settings_divider

    invoke-virtual {p1, v1}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 185
    iget-boolean v4, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->hasSettings:Z

    if-eqz v4, :cond_1

    .line 184
    move v2, v3

    goto :goto_1

    .line 185
    :cond_1
    nop

    .line 184
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 186
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 189
    const v0, 0x7f0a0052    # @id/app_restrictions_pref

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->listener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    invoke-virtual {v0, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 193
    const v0, 0x1020018    # @android:id/widget_frame

    invoke-virtual {p1, v0}, Landroid/support/v7/preference/PreferenceViewHolder;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/view/ViewGroup;

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setEnabled(Z)V

    .line 195
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    if-lez v0, :cond_2

    .line 196
    invoke-virtual {p1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Switch;

    .line 197
    invoke-virtual {p0}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->isImmutable()Z

    move-result v0

    xor-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setEnabled(Z)V

    .line 198
    invoke-virtual {p1, p0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 199
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setClickable(Z)V

    .line 200
    invoke-virtual {p1, v1}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 201
    new-instance v0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference$1;-><init>(Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;Landroid/widget/Switch;)V

    invoke-virtual {p1, v0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 208
    :cond_2
    return-void
.end method

.method setImmutable(Z)V
    .locals 0

    .line 155
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->immutable:Z

    .line 156
    return-void
.end method

.method setPanelOpen(Z)V
    .locals 0

    .line 171
    iput-boolean p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->panelOpen:Z

    .line 172
    return-void
.end method

.method setRestrictions(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Landroid/content/RestrictionEntry;",
            ">;)V"
        }
    .end annotation

    .line 151
    iput-object p1, p0, Lcom/android/settings/users/AppRestrictionsFragment$AppRestrictionsPreference;->restrictions:Ljava/util/ArrayList;

    .line 152
    return-void
.end method
