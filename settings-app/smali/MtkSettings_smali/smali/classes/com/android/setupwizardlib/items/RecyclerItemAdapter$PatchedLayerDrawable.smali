.class Lcom/android/setupwizardlib/items/RecyclerItemAdapter$PatchedLayerDrawable;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RecyclerItemAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/setupwizardlib/items/RecyclerItemAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "PatchedLayerDrawable"
.end annotation


# direct methods
.method constructor <init>([Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 238
    invoke-direct {p0, p1}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 239
    return-void
.end method


# virtual methods
.method public getPadding(Landroid/graphics/Rect;)Z
    .locals 1

    .line 243
    invoke-super {p0, p1}, Landroid/graphics/drawable/LayerDrawable;->getPadding(Landroid/graphics/Rect;)Z

    move-result v0

    .line 244
    if-eqz v0, :cond_1

    iget v0, p1, Landroid/graphics/Rect;->left:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->top:I

    if-nez v0, :cond_0

    iget v0, p1, Landroid/graphics/Rect;->right:I

    if-nez v0, :cond_0

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
