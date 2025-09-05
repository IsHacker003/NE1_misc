.class public Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;
.super Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RestrictedListPreferenceDialogFragment"
.end annotation


# instance fields
.field private mLastCheckedPosition:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 228
    invoke-direct {p0}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;-><init>()V

    .line 230
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)Lcom/android/settings/RestrictedListPreference;
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/RestrictedListPreference;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)I
    .locals 0

    .line 228
    invoke-direct {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getLastCheckedPosition()I

    move-result p0

    return p0
.end method

.method private getCustomizablePreference()Lcom/android/settings/RestrictedListPreference;
    .locals 1

    .line 242
    invoke-virtual {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getPreference()Landroid/support/v7/preference/DialogPreference;

    move-result-object v0

    check-cast v0, Lcom/android/settings/RestrictedListPreference;

    return-object v0
.end method

.method private getLastCheckedPosition()I
    .locals 2

    .line 278
    iget v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 279
    invoke-direct {p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->getCustomizablePreference()Lcom/android/settings/RestrictedListPreference;

    move-result-object v0

    .line 280
    invoke-virtual {v0}, Lcom/android/settings/RestrictedListPreference;->getSelectedValuePos()I

    move-result v0

    iput v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    .line 282
    :cond_0
    iget v0, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    return v0
.end method

.method public static newInstance(Ljava/lang/String;)Landroid/support/v14/preference/ListPreferenceDialogFragment;
    .locals 3

    .line 233
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;

    invoke-direct {v0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;-><init>()V

    .line 235
    new-instance v1, Landroid/os/Bundle;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(I)V

    .line 236
    const-string v2, "key"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v1}, Landroid/support/v14/preference/ListPreferenceDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 238
    return-object v0
.end method


# virtual methods
.method protected getOnItemClickListener()Landroid/content/DialogInterface$OnClickListener;
    .locals 1

    .line 247
    new-instance v0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment$1;-><init>(Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;)V

    return-object v0
.end method

.method protected setClickedDialogEntryIndex(I)V
    .locals 0

    .line 291
    invoke-super {p0, p1}, Lcom/android/settings/CustomListPreference$CustomListPreferenceDialogFragment;->setClickedDialogEntryIndex(I)V

    .line 292
    iput p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedListPreferenceDialogFragment;->mLastCheckedPosition:I

    .line 293
    return-void
.end method
