.class final Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;
.super Landroid/widget/ArrayAdapter;
.source "EditUserPhotoController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/users/EditUserPhotoController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "RestrictedPopupMenuAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List<",
            "Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 460
    const v0, 0x7f0d0126    # @layout/restricted_popup_menu_item 'res/layout/restricted_popup_menu_item.xml'

    const v1, 0x7f0a0382    # @id/text

    invoke-direct {p0, p1, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;IILjava/util/List;)V

    .line 461
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .line 465
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 466
    invoke-virtual {p0, p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedPopupMenuAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;

    .line 467
    const p3, 0x7f0a0382    # @id/text

    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    .line 468
    const v0, 0x7f0a02af    # @id/restricted_icon

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 470
    invoke-virtual {p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-virtual {p3, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 471
    invoke-virtual {p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByAdmin()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-virtual {p1}, Lcom/android/settings/users/EditUserPhotoController$RestrictedMenuItem;->isRestrictedByBase()Z

    move-result p1

    if-nez p1, :cond_1

    .line 472
    goto :goto_1

    :cond_1
    const/16 v2, 0x8

    .line 471
    :goto_1
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 474
    return-object p2
.end method
