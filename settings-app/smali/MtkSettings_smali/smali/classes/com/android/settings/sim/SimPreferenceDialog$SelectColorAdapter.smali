.class Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;
.super Landroid/widget/ArrayAdapter;
.source "SimPreferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/sim/SimPreferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SelectColorAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mResId:I

.field final synthetic this$0:Lcom/android/settings/sim/SimPreferenceDialog;


# direct methods
.method public constructor <init>(Lcom/android/settings/sim/SimPreferenceDialog;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    .line 277
    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 278
    iput-object p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    .line 279
    iput p3, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    .line 280
    return-void
.end method


# virtual methods
.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 320
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 321
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 323
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v0}, Lcom/android/settings/sim/SimPreferenceDialog;->access$000(Lcom/android/settings/sim/SimPreferenceDialog;)I

    move-result v0

    if-ne v0, p1, :cond_0

    .line 324
    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    goto :goto_0

    .line 326
    :cond_0
    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 328
    :goto_0
    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 p3, 0x0

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 329
    return-object p2
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 284
    iget-object p3, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    .line 285
    invoke-virtual {p3, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/view/LayoutInflater;

    .line 289
    iget-object v0, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 290
    const v1, 0x7f07008e    # @dimen/color_swatch_size '16.0dp'

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 291
    const v2, 0x7f07008f    # @dimen/color_swatch_stroke_width '4.0dp'

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 293
    if-nez p2, :cond_0

    .line 295
    iget p2, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->mResId:I

    const/4 v2, 0x0

    invoke-virtual {p3, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 296
    new-instance p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    invoke-direct {p3, p0, v2}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;-><init>(Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;Lcom/android/settings/sim/SimPreferenceDialog$1;)V

    .line 297
    new-instance v2, Landroid/graphics/drawable/ShapeDrawable;

    new-instance v3, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v3}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ShapeDrawable;-><init>(Landroid/graphics/drawable/shapes/Shape;)V

    .line 298
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicHeight(I)V

    .line 299
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/ShapeDrawable;->setIntrinsicWidth(I)V

    .line 300
    invoke-virtual {v2}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    int-to-float v0, v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 301
    const v0, 0x7f0a00c8    # @id/color_text

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    .line 302
    const v0, 0x7f0a00c5    # @id/color_icon

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 303
    iput-object v2, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    .line 304
    invoke-virtual {p2, p3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 305
    goto :goto_0

    .line 306
    :cond_0
    nop

    .line 307
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;

    .line 310
    :goto_0
    iget-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->label:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    iget-object v0, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter;->this$0:Lcom/android/settings/sim/SimPreferenceDialog;

    invoke-static {v1}, Lcom/android/settings/sim/SimPreferenceDialog;->access$300(Lcom/android/settings/sim/SimPreferenceDialog;)[I

    move-result-object v1

    aget p1, v1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 312
    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/ShapeDrawable;->getPaint()Landroid/graphics/Paint;

    move-result-object p1

    sget-object v0, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 313
    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 314
    iget-object p1, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object p3, p3, Lcom/android/settings/sim/SimPreferenceDialog$SelectColorAdapter$ViewHolder;->swatch:Landroid/graphics/drawable/ShapeDrawable;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 315
    return-object p2
.end method
