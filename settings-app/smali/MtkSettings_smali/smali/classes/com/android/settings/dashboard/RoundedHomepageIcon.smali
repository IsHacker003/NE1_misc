.class public Lcom/android/settings/dashboard/RoundedHomepageIcon;
.super Landroid/graphics/drawable/LayerDrawable;
.source "RoundedHomepageIcon.java"


# instance fields
.field mBackgroundColor:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;)V
    .locals 6

    .line 35
    const/4 v0, 0x2

    new-array v0, v0, [Landroid/graphics/drawable/Drawable;

    .line 36
    const v1, 0x7f080116    # @drawable/ic_homepage_generic_background 'res/drawable/ic_homepage_generic_background.xml'

    invoke-virtual {p1, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const/4 v1, 0x1

    aput-object p2, v0, v1

    .line 35
    invoke-direct {p0, v0}, Landroid/graphics/drawable/LayerDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 31
    const/4 p2, -0x1

    iput p2, p0, Lcom/android/settings/dashboard/RoundedHomepageIcon;->mBackgroundColor:I

    .line 39
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    .line 40
    const p2, 0x7f0700bb    # @dimen/dashboard_tile_foreground_image_inset '6.0dp'

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 41
    move-object v0, p0

    move v2, v5

    move v3, v5

    move v4, v5

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/dashboard/RoundedHomepageIcon;->setLayerInset(IIIII)V

    .line 42
    return-void
.end method


# virtual methods
.method public setBackgroundColor(I)V
    .locals 2

    .line 45
    iput p1, p0, Lcom/android/settings/dashboard/RoundedHomepageIcon;->mBackgroundColor:I

    .line 46
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/dashboard/RoundedHomepageIcon;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    sget-object v1, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, p1, v1}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 47
    return-void
.end method
