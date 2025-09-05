.class public Lcom/android/settings/ActivityPicker$PickAdapter;
.super Landroid/widget/BaseAdapter;
.source "ActivityPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ActivityPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PickAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ActivityPicker$PickAdapter$Item;
    }
.end annotation


# instance fields
.field private final mInflater:Landroid/view/LayoutInflater;

.field private final mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/ActivityPicker$PickAdapter$Item;",
            ">;)V"
        }
    .end annotation

    .line 281
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 282
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/LayoutInflater;

    iput-object p1, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 283
    iput-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    .line 284
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 290
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 297
    iget-object v0, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    .line 304
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .line 311
    if-nez p2, :cond_0

    .line 312
    iget-object p2, p0, Lcom/android/settings/ActivityPicker$PickAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v0, 0x7f0d00dc    # @layout/pick_item 'res/layout/pick_item.xml'

    const/4 v1, 0x0

    invoke-virtual {p2, v0, p3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 315
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ActivityPicker$PickAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;

    .line 316
    move-object p3, p2

    check-cast p3, Landroid/widget/TextView;

    .line 317
    iget-object v0, p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->label:Ljava/lang/CharSequence;

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    iget-object p1, p1, Lcom/android/settings/ActivityPicker$PickAdapter$Item;->icon:Landroid/graphics/drawable/Drawable;

    const/4 v0, 0x0

    invoke-virtual {p3, p1, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 320
    return-object p2
.end method
