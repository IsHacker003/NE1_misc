.class public Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;
.super Landroid/widget/ArrayAdapter;
.source "RestrictedListPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/RestrictedListPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RestrictedArrayAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private final mSelectedIndex:I

.field final synthetic this$0:Lcom/android/settings/RestrictedListPreference;


# direct methods
.method public constructor <init>(Lcom/android/settings/RestrictedListPreference;Landroid/content/Context;[Ljava/lang/CharSequence;I)V
    .locals 1

    .line 190
    iput-object p1, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/android/settings/RestrictedListPreference;

    .line 191
    const p1, 0x7f0d0124    # @layout/restricted_dialog_singlechoice 'res/layout/restricted_dialog_singlechoice.xml'

    const v0, 0x7f0a0383    # @id/text1

    invoke-direct {p0, p2, p1, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    .line 192
    iput p4, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    .line 193
    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    .line 224
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .line 197
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 198
    invoke-virtual {p0, p1}, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/CharSequence;

    .line 199
    const v0, 0x7f0a0383    # @id/text1

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckedTextView;

    .line 200
    const v1, 0x7f0a02b0    # @id/restricted_lock_icon

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 201
    iget-object v2, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->this$0:Lcom/android/settings/RestrictedListPreference;

    invoke-virtual {v2, p3}, Lcom/android/settings/RestrictedListPreference;->isRestrictedForEntry(Ljava/lang/CharSequence;)Z

    move-result p3

    const/4 v2, 0x0

    if-eqz p3, :cond_0

    .line 202
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 203
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 204
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 206
    :cond_0
    iget p3, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    const/4 v3, -0x1

    const/4 v4, 0x1

    if-eq p3, v3, :cond_2

    .line 207
    iget p3, p0, Lcom/android/settings/RestrictedListPreference$RestrictedArrayAdapter;->mSelectedIndex:I

    if-ne p1, p3, :cond_1

    move v2, v4

    nop

    :cond_1
    invoke-virtual {v0, v2}, Landroid/widget/CheckedTextView;->setChecked(Z)V

    .line 209
    :cond_2
    invoke-virtual {v0}, Landroid/widget/CheckedTextView;->isEnabled()Z

    move-result p1

    if-nez p1, :cond_3

    .line 210
    invoke-virtual {v0, v4}, Landroid/widget/CheckedTextView;->setEnabled(Z)V

    .line 212
    :cond_3
    const/16 p1, 0x8

    invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 214
    :goto_0
    return-object p2
.end method

.method public hasStableIds()Z
    .locals 1

    .line 219
    const/4 v0, 0x1

    return v0
.end method
